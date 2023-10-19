<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\Models\ClassModel;
use App\Models\User;
use App\Models\StudentAddFeesModel;
use App\Models\SettingsModel;
use Stripe\Stripe;
use Session;

class FeesCollectionController extends Controller
{
    public function collect_fees(Request $request)
    {
        if(!empty($request->all()))
        {
            $data['getRecord'] = User::getCollectFeesStudent();
        }
        $data['getClass']=ClassModel::getClass();
        $data['header_title']="Collect Fees";
        return view('admin.fees_collection.collect_fees',$data);
    }
    public function collect_fees_add($student_id,Request $request)
    {
        $data['getFees'] = StudentAddFeesModel::getFees($student_id);
        $getStudent = User::getSingleClass($student_id);   
        $data['getStudent'] = $getStudent;
        $data['header_title']= "Add Collect Fees";
        $data['paid_amount'] = StudentAddFeesModel::getPaidAmount($student_id,$getStudent->class_id);
        return view('admin.fees_collection.add_collect_fees',$data);
    }
    public function collect_fees_insert($student_id,Request $request)
    {
        $getStudent = User::getSingleClass($student_id);
        $paid_amount = StudentAddFeesModel::getPaidAmount($student_id,$getStudent->class_id);
       
        if(!empty($request->amount))
        {
            $RemainingAmount = $getStudent->amount - $paid_amount;
            if($RemainingAmount >= $request->amount)
            {
                $remaining_amount_user = $RemainingAmount - $request->amount;
                $payment = new StudentAddFeesModel;
                $payment->student_id = $student_id;
                $payment->class_id = $getStudent->class_id;
                $payment->paid_amount = $request->amount;
                $payment->total_amount = $RemainingAmount;
                $payment->remaining_amount = $remaining_amount_user;
                $payment->payment_type = $request->payment_type;
                $payment->remark = $request->remark;
                $payment->created_by = Auth::user()->id;
                $payment->is_payment = 1;
                $payment->save();
                return redirect()->back()->with('success','Fees Successfully Added');
            }
            else
            {
                return redirect()->back()->with('error','Your Amount greater than Remaining amount');
            }
        }
        else
        {
            return redirect()->back()->with('error','Your Amount Is Not Valid');
        }          
    }

    //student side work
    public function CollectFeesStudent(Request $request)
    {
        $student_id = Auth::user()->id;
        $data['getFees'] = StudentAddFeesModel::getFees($student_id);
        $getStudent = User::getSingleClass($student_id);   
        $data['getStudent'] = $getStudent;
        $data['header_title']= "Fees Collection";
        $data['paid_amount'] = StudentAddFeesModel::getPaidAmount(Auth::user()->id,Auth::user()->class_id);
        return view('student.my_fees_collection',$data);
    }
    public function CollectFeesStudentPayment(Request $request)
    {
        $getStudent = User::getSingleClass(Auth::user()->id);
        $paid_amount = StudentAddFeesModel::getPaidAmount(Auth::user()->id,Auth::user()->class_id);
       
        if(!empty($request->amount))
        {
            $RemainingAmount = $getStudent->amount - $paid_amount;
            if($RemainingAmount >= $request->amount)
            {
                $remaining_amount_user = $RemainingAmount - $request->amount;
                $payment = new StudentAddFeesModel;
                $payment->student_id = Auth::user()->id;
                $payment->class_id = Auth::user()->class_id;
                $payment->paid_amount = $request->amount;
                $payment->total_amount = $RemainingAmount;
                $payment->remaining_amount = $remaining_amount_user;
                $payment->payment_type = $request->payment_type;
                $payment->remark = $request->remark;
                $payment->created_by = Auth::user()->id;
                $payment->save();

                $getSetting = SettingsModel::getSingle();

                if($request->payment_type == 'Paypal')
                {
                    $query = array();
                    $query['business'] = $getSetting->paypal_email;
                    $query['cmd'] = '_xclick';
                    $query['item_name'] = "Student Fees";
                    $query['no_shipping'] = '1';
                    $query['item_number'] = $payment->id;
                    $query['amount'] = $request->amount;
                    $query['currency_code'] = 'USD';
                    $query['cancel_return'] = url('student/paypal/payment-error');
                    $query['return'] = url('student/paypal/payment-success');

                    $query_string = http_build_query($query);
                    // header('Location: https://www.paypal.com/cgi-bin/webscr?'.$query_string);
                    header('Location: https://www.sandbox.paypal.com/cgi-bin/webscr?'.$query_string);
                    exit();
                }
                else if($request->payment_type == 'Stripe')
                {
                    $setPublicKey = $getSetting->stripe_key;
                    $setApiKey = $getSetting->stripe_secret;

                    Stripe::setApiKey($setApiKey);
                    $finalprice =$request->amount * 100;
                    $session =\Stripe\Checkout\Session::create([
                        'customer_email' => Auth::user()->email,
                        'payment_method_types' => ['card'],
                        'line_items' =>[[
                            // 'name' => 'Student Fees',
                            // 'description' => 'Student Fees',
                            // 'images' => [ url('assets/img/logo-2x.png') ],
                            // 'amount' => intval($finalprice),
                            // 'currency' => 'usd',
                            'price_data' => [
                                'currency' => 'INR',
                                'unit_amount' => intval($finalprice),
                                'product_data' => [
                                  'name' => 'Student Fees',
                                  'description' => 'Student Fees',
                                  'images' => [url('public/dist/img/user2-160x160.jpg')],
                                ],
                              ],
                            'quantity' => 1,
                        ]],
                        'mode' => 'payment',
                        'success_url' => url('student/stripe/payment-success'),
                        'cancel_url' => url('student/stripe/payment-error'),
                        ]);
                        $payment->stripe_session_id = $session['id'];
                        $payment->save();

                        $data['session_id'] = $session['id'];
                        Session::put('stripe_session_id',$session['id']);
                        $data['setPublicKey'] = $setPublicKey;
                        return view('stripe_charge',$data);
                }                
            }
            else
            {
                return redirect()->back()->with('error','Your Amount greater than Remaining amount'); 
            }
        }
        else
        {
            return redirect()->back()->with('error','Your Amount Is Not Valid');
        }        
    }
    public function PaymentError()
    {
        return redirect('student/fees_collection')->with('error','Error: Please Try Again Later');
    }
    public function PaymentSuccess(Request $request)
    {
        if(!empty($request->item_number) && !empty($request->st) && $request->st == 'Completed')
        {
            $fees = StudentAddFeesModel::getSingle($request->item_number);
            if(!empty($fees))
            {
                $fees->is_payment = 1;
                $fees->payment_data = json_encode($request->all());
                $fees->save();                
                return redirect('student/fees_collection')->with('success','Your Payment Successfully');  
            }
            else
            {
                return redirect('student/fees_collection')->with('error','Error: Please Try Again Later');  
            }
        }
        else
        {
            return redirect('student/fees_collection')->with('error','Error: Please Try Again Later'); 
        }
    }
    public function PaymentSuccessStripe(Request $request)
    {
        $getSetting = SettingsModel::getSingle();
        $setPublicKey = $getSetting->stripe_key;
        $setApiKey = $getSetting->stripe_secret;

        $trans_id = Session::get('stripe_session_id');
        $getFee = StudentAddFeesModel::where('stripe_session_id','=',$trans_id)->first();
        \Stripe\Stripe::setApiKey($setApiKey);
        $getdata = \Stripe\Checkout\Session::retrieve($trans_id);
        if(!empty($getdata->id) && $getdata->id == $trans_id && !empty($getFee) && 
        $getdata->status == 'complete' && $getdata->payment_status == 'paid')
        {
            $getFee->is_payment = 1;
            $getFee->payment_data = json_encode($getdata);
            $getFee->save();
            Session::forget('stripe_session_id');//for session remove
            return redirect('student/fees_collection')->with('success','Your Payment Successfully');  
        }
        else
        {
            return redirect('student/fees_collection')->with('error','Error: Please Try Again Later'); 
        }
    }

     //parent side work
     public function CollectFeesStudentParent($student_id,Request $request)
     {
         $data['getFees'] = StudentAddFeesModel::getFees($student_id);
         $getStudent = User::getSingleClass($student_id);
         $data['getStudent'] = $getStudent;
         $data['header_title']= "Fees Collection";
         $data['paid_amount'] = StudentAddFeesModel::getPaidAmount($student_id,$getStudent->class_id);
         return view('parent.my_fees_collection',$data);
     }
     public function CollectFeesStudentPaymentParent($student_id,Request $request)
    {
        $getStudent = User::getSingleClass($student_id);
        $paid_amount = StudentAddFeesModel::getPaidAmount($student_id,$getStudent->class_id);
       
        if(!empty($request->amount))
        {
            $RemainingAmount = $getStudent->amount - $paid_amount;
            if($RemainingAmount >= $request->amount)
            {
                $remaining_amount_user = $RemainingAmount - $request->amount;
                $payment = new StudentAddFeesModel;
                $payment->student_id = $getStudent->id;
                $payment->class_id = $getStudent->class_id;
                $payment->paid_amount = $request->amount;
                $payment->total_amount = $RemainingAmount;
                $payment->remaining_amount = $remaining_amount_user;
                $payment->payment_type = $request->payment_type;
                $payment->remark = $request->remark;
                $payment->created_by = Auth::user()->id;
                $payment->save();

                $getSetting = SettingsModel::getSingle();

                if($request->payment_type == 'Paypal')
                {
                    $query = array();
                    $query['business'] = $getSetting->paypal_email;
                    $query['cmd'] = '_xclick';
                    $query['item_name'] = "Student Fees";
                    $query['no_shipping'] = '1';
                    $query['item_number'] = $payment->id;
                    $query['amount'] = $request->amount;
                    $query['currency_code'] = 'USD';
                    $query['cancel_return'] = url('parent/paypal/payment-error/'.$student_id);
                    $query['return'] = url('parent/paypal/payment-success/'.$student_id);

                    $query_string = http_build_query($query);
                    // header('Location: https://www.paypal.com/cgi-bin/webscr?'.$query_string);
                    header('Location: https://www.sandbox.paypal.com/cgi-bin/webscr?'.$query_string);
                    exit();
                }
                else if($request->payment_type == 'Stripe')
                {
                    $setPublicKey = $getSetting->stripe_key;
                    $setApiKey = $getSetting->stripe_secret;

                    Stripe::setApiKey($setApiKey);
                    $finalprice =$request->amount * 100;
                    $session =\Stripe\Checkout\Session::create([
                        'customer_email' => Auth::user()->email,
                        'payment_method_types' => ['card'],
                        'line_items' =>[[
                            // 'name' => 'Student Fees',
                            // 'description' => 'Student Fees',
                            // 'images' => [ url('assets/img/logo-2x.png') ],
                            // 'amount' => intval($finalprice),
                            // 'currency' => 'usd',
                            'price_data' => [
                                'currency' => 'INR',
                                'unit_amount' => intval($finalprice),
                                'product_data' => [
                                  'name' => 'Student Fees',
                                  'description' => 'Student Fees',
                                  'images' => [url('public/dist/img/user2-160x160.jpg')],
                                ],
                              ],
                            'quantity' => 1,
                        ]],
                        'mode' => 'payment',
                        'success_url' => url('parent/stripe/payment-success/'.$student_id),
                        'cancel_url' => url('parent/stripe/payment-error/'.$student_id),
                        ]);
                        $payment->stripe_session_id = $session['id'];
                        $payment->save();

                        $data['session_id'] = $session['id'];
                        Session::put('stripe_session_id',$session['id']);
                        $data['setPublicKey'] = $setPublicKey;
                        return view('stripe_charge',$data);
                }                
            }
            else
            {
                return redirect()->back()->with('error','Your Amount greater than Remaining amount'); 
            }
        }
        else
        {
            return redirect()->back()->with('error','Your Amount Is Not Valid');
        }           
    }
    public function PaymentErrorParent($student_id)
    {
        return redirect('parent/my_student/fees_collection/'.$student_id)->with('error','Error: Please Try Again Later');
    }
    public function PaymentSuccessParent($student_id,Request $request)
    {
        if(!empty($request->item_number) && !empty($request->st) && $request->st == 'Completed')
        {
            $fees = StudentAddFeesModel::getSingle($request->item_number);
            if(!empty($fees))
            {
                $fees->is_payment = 1;
                $fees->payment_data = json_encode($request->all());
                $fees->save();                
                return redirect('parent/my_student/fees_collection/'.$student_id)->with('success','Your Payment Successfully');  
            }
            else
            {
                return redirect('parent/my_student/fees_collection/'.$student_id)->with('error','Error: Please Try Again Later');  
            }
        }
        else
        {
            return redirect('parent/my_student/fees_collection/'.$student_id)->with('error','Error: Please Try Again Later'); 
        }
    }
    public function PaymentSuccessStripeParent($student_id,Request $request)
    {
        $getSetting = SettingsModel::getSingle();
        $setPublicKey = $getSetting->stripe_key;
        $setApiKey = $getSetting->stripe_secret;

        $trans_id = Session::get('stripe_session_id');
        $getFee = StudentAddFeesModel::where('stripe_session_id','=',$trans_id)->first();
        \Stripe\Stripe::setApiKey($setApiKey);
        $getdata = \Stripe\Checkout\Session::retrieve($trans_id);
        // dd($getdata);
        if(!empty($getdata->id) && $getdata->id == $trans_id && !empty($getFee) && 
        $getdata->status == 'complete' && $getdata->payment_status == 'paid')
        {
            $getFee->is_payment = 1;
            $getFee->payment_data = json_encode($getdata);
            $getFee->save();
            Session::forget('stripe_session_id');//for session remove
            return redirect('parent/my_student/fees_collection/'.$student_id)->with('success','Your Payment Successfully'); 
        }
        else
        {
            return redirect('parent/my_student/fees_collection/'.$student_id)->with('error','Error: Please Try Again Later'); 
        }
    }
}

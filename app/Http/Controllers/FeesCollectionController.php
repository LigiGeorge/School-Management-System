<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\Models\ClassModel;
use App\Models\User;
use App\Models\StudentAddFeesModel;

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
}

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
        $data['getStudent'] = User::getSingleClass($student_id);   
        $data['header_title']="Add Collect Fees";
        return view('admin.fees_collection.add_collect_fees',$data);
    }
    public function collect_fees_insert($student_id,Request $request)
    {
        $getStudent = User::getSingleClass($student_id);

        $payment = new StudentAddFeesModel;
        $payment->student_id = $student_id;
        $payment->class_id = $getStudent->class_id;
        $payment->paid_amount = $request->amount;
        $payment->payment_type = $request->payment_type;
        $payment->remark = $request->remark;
        $payment->created_by = Auth::user()->id;
        $payment->save();
        return redirect()->back()->with('success','Fees Successfully Added');
    }
}

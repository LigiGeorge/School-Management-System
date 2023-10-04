<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ClassModel;
use App\Models\ClassSubjectModel;

class ClassTimetableController extends Controller
{
    public function list()
    {
        $data['getClass']=ClassModel::getClass();
        $data['header_title']="Class Timetable List";
        return view('admin.class_timetable.list',$data);
    }   
    public function get_subject(Request $request)
    {
        $getSubject = ClassSubjectModel::MySubject($request->class_id);
        

    } 
}

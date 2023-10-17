<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ClassModel;
use App\Models\ClassSubjectModel;
use App\Models\HomeworkModel;
use App\Models\AssignClassTeacherModel;
use Auth;
use Str;

class HomeworkController extends Controller
{
    public function homework()
    {
        $data['getRecord'] = HomeworkModel::getRecord();
        $data['header_title']="Homework";
        return view('admin.homework.list',$data);
    }
    public function add()
    {
        $data['getClass'] = ClassModel::getClass();
        $data['header_title']="Add New Homework";
        return view('admin.homework.add',$data);
    }
    public function insert(Request $request)
    {
        $homework = new HomeworkModel;
        $homework->class_id = trim($request->class_id);
        $homework->subject_id = trim($request->subject_id);
        $homework->homework_date = trim($request->homework_date);
        $homework->submission_date = trim($request->submission_date);
        $homework->description = trim($request->description);
        $homework->created_by = Auth::user()->id;

        if(!empty($request->file('document_file')))
        {
            $ext=$request->file('document_file')->getClientOriginalExtension();
            $file=$request->file('document_file');
            $randomStr=date('Ymdhis').Str::random(20);
            $filename=strtolower($randomStr).'.'.$ext;
            $file->move('upload/homework/',$filename);
            $homework->document_file=$filename;
        }
        $homework->save();
        return redirect('admin/homework/homework')->with('success',"Homework Successfully Created");
    }
    public function edit($id)
    {
        $getRecord = HomeworkModel::getSingle($id);
        $data['getRecord'] = $getRecord;
        $data['getSubject'] = ClassSubjectModel::MySubject($getRecord->class_id);
        $data['getClass'] = ClassModel::getClass();
        $data['header_title']="Edit Homework";
        return view('admin.homework.edit',$data);
    }
    public function update($id,Request $request)
    {
        $homework = HomeworkModel::getSingle($id);
        $homework->class_id = trim($request->class_id);
        $homework->subject_id = trim($request->subject_id);
        $homework->homework_date = trim($request->homework_date);
        $homework->submission_date = trim($request->submission_date);
        $homework->description = trim($request->description);        

        if(!empty($request->file('document_file')))
        {
            if(!empty($homework->getDocument()))
            {
                unlink('upload/homework/'.$homework->document_file);
            }
            $ext=$request->file('document_file')->getClientOriginalExtension();
            $file=$request->file('document_file');
            $randomStr=date('Ymdhis').Str::random(20);
            $filename=strtolower($randomStr).'.'.$ext;
            $file->move('upload/homework/',$filename);
            $homework->document_file=$filename;
        }
        $homework->save();
        return redirect('admin/homework/homework')->with('success',"Homework Successfully Updated");
    }
    public function delete($id)
    {
        $homework = HomeworkModel::getSingle($id);
        $homework->is_delete = 1;
        $homework->save();   
        return redirect()->back()->with('success',"Homework Successfully Deleted");     
    }
    public function ajax_get_subject(Request $request)
    {
        $class_id = $request->class_id;
        $getSubject = ClassSubjectModel::MySubject($class_id);
        $html = ''; 
        $html .='<option value="">Select Subject</option>';       
        foreach($getSubject as $subject) 
        {
            $html .='<option value="'.$subject->subject_id.'">'.$subject->subject_name.'</option>';  
        }
        $json['success'] = $html;
        echo json_encode($json);
    }

    //teacher side work
    public function homeworkTeacher()
    {
        $class_ids = array();
        $getClass= AssignClassTeacherModel::getMyClassSubjectGroup(Auth::user()->id);
        foreach($getClass as $class)
        {
            $class_ids[] = $class->class_id;
        }
        $data['getRecord'] = HomeworkModel::getRecordTeacher($class_ids);
        $data['header_title']="Homework";
        return view('teacher.homework.list',$data);
    }
    public function addTeacher()
    {
        $data['getClass'] = AssignClassTeacherModel::getMyClassSubjectGroup(Auth::user()->id);
        $data['header_title']="Add New Homework";
        return view('teacher.homework.add',$data);
    }
    public function insertTeacher(Request $request)
    {
        $homework = new HomeworkModel;
        $homework->class_id = trim($request->class_id);
        $homework->subject_id = trim($request->subject_id);
        $homework->homework_date = trim($request->homework_date);
        $homework->submission_date = trim($request->submission_date);
        $homework->description = trim($request->description);
        $homework->created_by = Auth::user()->id;

        if(!empty($request->file('document_file')))
        {
            $ext=$request->file('document_file')->getClientOriginalExtension();
            $file=$request->file('document_file');
            $randomStr=date('Ymdhis').Str::random(20);
            $filename=strtolower($randomStr).'.'.$ext;
            $file->move('upload/homework/',$filename);
            $homework->document_file=$filename;
        }
        $homework->save();
        return redirect('teacher/homework/homework')->with('success',"Homework Successfully Created");
    }
    public function editTeacher($id)
    {
        $getRecord = HomeworkModel::getSingle($id);
        $data['getRecord'] = $getRecord;
        $data['getSubject'] = ClassSubjectModel::MySubject($getRecord->class_id);
        $data['getClass'] = AssignClassTeacherModel::getMyClassSubjectGroup(Auth::user()->id);
        $data['header_title']="Edit Homework";
        return view('teacher.homework.edit',$data);
    }
    public function updateTeacher($id,Request $request)
    {
        $homework = HomeworkModel::getSingle($id);
        $homework->class_id = trim($request->class_id);
        $homework->subject_id = trim($request->subject_id);
        $homework->homework_date = trim($request->homework_date);
        $homework->submission_date = trim($request->submission_date);
        $homework->description = trim($request->description);        

        if(!empty($request->file('document_file')))
        {
            if(!empty($homework->getDocument()))
            {
                unlink('upload/homework/'.$homework->document_file);
            }
            $ext=$request->file('document_file')->getClientOriginalExtension();
            $file=$request->file('document_file');
            $randomStr=date('Ymdhis').Str::random(20);
            $filename=strtolower($randomStr).'.'.$ext;
            $file->move('upload/homework/',$filename);
            $homework->document_file=$filename;
        }
        $homework->save();
        return redirect('teacher/homework/homework')->with('success',"Homework Successfully Updated");
    }
}

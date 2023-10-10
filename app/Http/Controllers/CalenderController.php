<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\WeekModel;
use App\Models\ClassSubjectModel;
use App\Models\ClassSubjectTimetableModel;
use Auth;

class CalenderController extends Controller
{
    public function MyCalender()
    {   
        $result = array();
        $getRecord = ClassSubjectModel::MySubject(Auth::user()->class_id);
        foreach($getRecord as $value)
        {
            $dataS['name'] = $value->subject_name;
            $getWeek = WeekModel::getRecord();
            $week = array();
            foreach($getWeek as $valueW)
            {
                $dataW = array();                
                $dataW['week_name'] = $valueW->name;
                $dataW['fullcalender_day'] = $valueW->fullcalender_day;
                $ClassSubject = ClassSubjectTimetableModel::getRecordClassSubject($value->class_id,
                $value->subject_id,$valueW->id);
                if(!empty($ClassSubject))
                {
                    $dataW['start_time'] = $ClassSubject->start_time;
                    $dataW['end_time'] = $ClassSubject->end_time;
                    $dataW['room_number'] = $ClassSubject->room_number;
                    $week[] = $dataW;
                }               
            }
            $dataS['week'] = $week; 
            $result[] = $dataS;
        }        
        $data['getMyTimetable'] = $result;
        $data['getRecord'] = $result;            
        $data['header_title']="My Calender";
        return view('student.my_calender',$data);
    }
}

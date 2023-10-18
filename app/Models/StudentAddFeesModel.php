<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class StudentAddFeesModel extends Model
{
    use HasFactory;

    protected $table='student_add_fees';

    static public function getSingle($id)
    {
        return self::find($id);
    }
    static public function getFees($student_id)
    {
        return self::select('student_add_fees.*','class.name as class_name','users.name as created_name')
                    ->join('class','class.id','=','student_add_fees.class_id')
                    ->join('users','users.id','=','student_add_fees.created_by')
                    ->where('student_add_fees.student_id','=',$student_id)
                    ->get();
    }
}

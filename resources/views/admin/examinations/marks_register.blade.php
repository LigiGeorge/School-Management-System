@extends('layouts.app')
@section('content')

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Marks Register</h1>
          </div>                    
        </div>
      </div><!-- /.container-fluid -->
    </section>
        
    <!-- Main content -->
    <section class="content">      
      <div class="container-fluid">
        <div class="row">           
          <div class="col-md-12">                      
            <div class="card">  
            <div class="card-header">
                <h3 class="card-title">Search Marks Register</h3>
              </div>          
              <form method="get" action="">
              {{csrf_field()}}
                <div class="card-body">
                  <div class="row">
                  <div class="form-group col-md-3">
                    <label>Exam Name</label>
                     <select name="exam_id" class="form-control" required>
                        <option value="">Select</option>
                        @foreach($getExam as $exam)
                        <option {{ (Request::get('exam_id') == $exam->id) ? 'selected' : '' }} value="{{ $exam->id }}">{{ $exam->name }}</option>
                        @endforeach
                     </select>  
                  </div>
                  <div class="form-group col-md-3">
                    <label>Class</label>
                     <select name="class_id" class="form-control"required >
                        <option value="">Select</option>
                        @foreach($getClass as $class)
                        <option {{ (Request::get('class_id') == $class->id) ? 'selected' : '' }} value="{{ $class->id }}">{{ $class->name }}</option>
                        @endforeach
                     </select>  
                  </div>                 

                  <div class="form-group col-md-3">
                    <button class="btn btn-primary" type="submit" style="margin-top:30px;">Search</button>
                    <a href="{{url('admin/examinations/marks_register')}}" class="btn btn-success" style="margin-top: 30px;">Reset</a>
                  </div>

                  </div>                                  
                </div>
              </form>
            </div>                    
          @include('_message')
            
             @if(!empty($getSubject) && !empty($getSubject->count()))           
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Marks Register</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body p-0">
                <table class="table table-striped">
                  <thead>
                    <tr>
                      <th>Student Name</th>
                      @foreach($getSubject as $subject)
                      <th>
                        {{ $subject->subject_name }} <br>
                        ({{ $subject->subject_type }} : {{ $subject->passing_mark }} / {{ $subject->full_marks }})

                      </th>
                      @endforeach                      
                      <th>Action</th>
                    </tr>
                  </thead>
                  <tbody>
                    @if(!empty($getStudent) && !empty($getStudent->count()))
                        @foreach($getStudent as $student)
                        <tr>
                            <td>{{ $student->name }} {{ $student->last_name }}</td>
                            @foreach($getSubject as $subject)
                            <td>
                                <div style="margin: bottom 10px;">
                                    Class Work
                                    <input type="text" name="" style="width: 200px;" class="form-control" placeholder="Enter Marks">
                                </div>
                                <br>
                                <div style="margin: bottom 10px;">
                                    Home Work
                                    <input type="text" name="" style="width: 200px;" class="form-control" placeholder="Enter Marks">
                                </div>
                                <br>
                                <div style="margin: bottom 10px;">
                                    Test Work
                                    <input type="text" name="" style="width: 200px;" class="form-control" placeholder="Enter Marks">
                                </div>
                                <br>
                                <div style="margin: bottom 10px;">
                                    Exam 
                                    <input type="text" name="" style="width: 200px;" class="form-control" placeholder="Enter Marks">
                                </div>
                            </td>
                            @endforeach
                            <td>
                                <button type="button" class="btn btn-success">Save</button>
                            </td>
                        </tr>
                        @endforeach
                    @endif
                  </tbody>
                </table>                                
              </div>
              <!-- /.card-body -->
            </div>
            @endif      
           
          <!-- /.col -->
        </div>
        <!-- /.row -->
        
        
        
        
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  @endsection
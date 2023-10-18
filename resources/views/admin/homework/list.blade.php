@extends('layouts.app')
@section('content')
<div class="content-wrapper">
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Homework</h1>
          </div>
          <div class="col-sm-6" style="text-align:right;">
            <a href="{{url('admin/homework/homework/add')}}" class="btn btn-primary">Add New Homework</a>
          </div>          
        </div>
      </div>
    </section>
    <section class="content">      
      <div class="container-fluid">
        <div class="row">          
        <div class="col-md-12">                    
        <div class="card">  
            <div class="card-header">
                <h3 class="card-title">Search Homework</h3>
              </div>          
              <form method="get" action="">
              {{csrf_field()}}
                <div class="card-body">
                  <div class="row">
                  <div class="form-group col-md-2">
                    <label>Class</label>
                    <input type="text" class="form-control" name="class_name" value="{{Request::get('class_name')}}" placeholder="Class Name">
                  </div>
                  <div class="form-group col-md-2">
                    <label>Subject</label>
                    <input type="text" class="form-control" name="subject_name" value="{{Request::get('subject_name')}}" placeholder="Subject Name">                    
                  </div>
                  <div class="form-group col-md-2">
                    <label>Homework Date From</label>
                    <input type="date" class="form-control" name="homework_date_from" value="{{Request::get('homework_date_from')}}">                    
                  </div>
                  <div class="form-group col-md-2">
                    <label>Homework Date To</label>
                    <input type="date" class="form-control" name="homework_date_to" value="{{Request::get('homework_date_to')}}">                    
                  </div>
                  <div class="form-group col-md-2">
                    <label>Submission Date From</label>
                    <input type="date" class="form-control" name="submission_date_from" value="{{Request::get('submission_date_from')}}">                    
                  </div>
                  <div class="form-group col-md-2">
                    <label>Submission Date To</label>
                    <input type="date" class="form-control" name="submission_date_to" value="{{Request::get('submission_date_to')}}">                    
                  </div>
                  <div class="form-group col-md-2">
                    <label>Created Date From</label>
                    <input type="date" class="form-control" name="created_date_from" value="{{Request::get('created_date_from')}}">                    
                  </div>
                  <div class="form-group col-md-2">
                    <label>Created Date To</label>
                    <input type="date" class="form-control" name="created_date_to" value="{{Request::get('created_date_to')}}">                    
                  </div>

                  <div class="form-group col-md-2">
                    <button class="btn btn-primary" type="submit" style="margin-top:30px;">Search</button>
                    <a href="{{url('admin/homework/homework')}}" class="btn btn-success" style="margin-top: 30px;">Reset</a>
                  </div>

                  </div>                                  
                </div>
              </form>
            </div>              
          @include('_message')
            <!-- <div class="card"> -->
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Homework List</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body p-0">
                <table class="table table-striped">
                  <thead>
                    <tr>
                      <th style="width: 10px">#</th>
                      <th>Class</th>
                      <th>Subject</th>
                      <th>Homework Date</th>
                      <th>Submission Date</th>
                      <th>Document</th>
                      <th>Created By</th>
                      <th>Created Date</th>
                      <th>Action</th>
                    </tr>
                  </thead>
                  <tbody>
                   @forelse($getRecord as $value)
                   <tr>
                    <td>{{ $value->id }}</td>
                    <td>{{ $value->class_name }}</td>
                    <td>{{ $value->subject_name }}</td>
                    <td>{{ date('d-m-Y',strtotime($value->homework_date)) }}</td>
                    <td>{{ date('d-m-Y',strtotime($value->submission_date)) }}</td>
                    <td>
                      @if(!empty($value->getDocument()))
                      <a href="{{ $value->getDocument() }}" download="" class="btn btn-primary">Download</a>
                      @endif
                    </td>
                    <td>{{ $value->created_by_name }}</td>
                    <td>{{ date('d-m-Y',strtotime($value->created_at)) }}</td>
                    <td style="min-width:350px;">
                        <a href="{{url('admin/homework/homework/edit/'.$value->id)}}" class="btn btn-primary">Edit</a>
                        <a href="{{url('admin/homework/homework/delete/'.$value->id)}}" class="btn btn-danger">Delete</a>
                        <a href="{{url('admin/homework/homework/submitted/'.$value->id)}}" class="btn btn-success">Submitted Homework</a>
                    </td>
                   </tr>
                   @empty
                   <tr>
                    <td colspan="100%">Record Not Found</td>                    
                   </tr>
                   @endforelse
                  </tbody>
                </table>
                <div style="padding:10px;float:right;">
                {!! $getRecord->appends(Illuminate\Support\Facades\Request::except('page'))->links() !!}
                </div>
              </div>
              <!-- /.card-body -->
            <!-- </div> -->
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
        
        
        
        
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  @endsection
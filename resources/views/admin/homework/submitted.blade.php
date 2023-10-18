@extends('layouts.app')
@section('content')
<div class="content-wrapper">
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Submitted Homework</h1>
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
                <h3 class="card-title">Search Submitted Homework</h3>
              </div>          
              <form method="get" action="">
              {{csrf_field()}}
                <div class="card-body">
                  <div class="row">    
                  <div class="form-group col-md-2">
                    <label>Student First Name</label>
                    <input type="text" class="form-control" name="first_name" value="{{Request::get('first_name')}}" placeholder="Student First Name">                    
                  </div>
                  <div class="form-group col-md-2">
                    <label>Student Last Name</label>
                    <input type="text" class="form-control" name="last_name" value="{{Request::get('last_name')}}" placeholder="Student Last Name">                    
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
                    <a href="{{url('admin/homework/homework/submitted/'.$homework_id)}}" class="btn btn-success" style="margin-top: 30px;">Reset</a>
                  </div>

                  </div>                                  
                </div>
              </form>
            </div>              
          @include('_message')
            <!-- <div class="card"> -->
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Submitted Homework List</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body p-0">
                <table class="table table-striped">
                  <thead>
                    <tr>
                      <th style="width: 10px">#</th>
                      <th>Student Name</th>
                      <th>Document</th>
                      <th>Description</th>
                      <th>Created Date</th>
                    </tr>
                  </thead>
                  <tbody>
                   @forelse($getRecord as $value)
                   <tr>
                    <td>{{ $value->id }}</td>
                    <td>{{ $value->first_name }} {{ $value->last_name }}</td>
                    <td>
                      @if(!empty($value->getDocument()))
                      <a href="{{ $value->getDocument() }}" download="" class="btn btn-primary">Download</a>
                      @endif
                    </td>
                    <td>{!! $value->description !!}</td>
                    <td>{{ date('d-m-Y',strtotime($value->created_at)) }}</td>
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
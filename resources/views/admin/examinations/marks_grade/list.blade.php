@extends('layouts.app')
@section('content')

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Marks Grade</h1>
          </div>
          <div class="col-sm-6" style="text-align:right;">
            <a href="{{url('admin/examinations/marks_grade/add')}}" class="btn btn-primary">Add New Exam</a>
          </div>          
        </div>
      </div><!-- /.container-fluid -->
    </section>
        
    <!-- Main content -->
    <section class="content">      
      <div class="container-fluid">
        <div class="row">           
          <div class="col-md-12">                      
                             
          @include('_message')
            <div class="card">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Exam List</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body p-0">
                <table class="table table-striped">
                  <thead>
                    <tr>
                      <th style="width: 10px">#</th>
                      <th>Exam Name</th>
                      <th>Note</th>
                      <th>Created By</th>
                      <th>Created Date</th>
                      <th>Action</th>
                    </tr>
                  </thead>
                  <tbody>
                   
                  </tbody>
                </table>
                
              </div>
              <!-- /.card-body -->
            </div>
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
@extends('layouts.app')
@section('content')

<div class="content-wrapper">   
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Add New Notice Board</h1>
          </div>          
        </div>
      </div>
    </section>
    <section class="content">
      <div class="container-fluid">
        <div class="row">         
          <div class="col-md-12">            
            <div class="card card-primary">
            
              <form method="post" action="">
              {{csrf_field()}}
                <div class="card-body">
                  <div class="form-group">
                    <label>Title</label>
                    <input type="text" class="form-control" name="title" value="{{old('title')}}" required placeholder="Title">
                  </div>
                  <div class="form-group">
                    <label>Notice Date</label>
                    <input type="date" class="form-control" name="notice_date" value="{{old('notice_date')}}" required>
                  </div>
                  <div class="form-group">
                    <label>Publish Date</label>
                    <input type="date" class="form-control" name="publish_date" value="{{old('publish_date')}}" required>
                  </div>
                  <div class="form-group">
                    <label style="display:block;">Message To</label>
                    <label style="margin-right : 50px;"><input type="checkbox" name="message_to[]" value="3"> Student</label>
                    <label style="margin-right : 50px;"><input type="checkbox" name="message_to[]" value="4"> Parent</label>
                    <label style="margin-right : 50px;"><input type="checkbox" name="message_to[]" value="2"> Teacher</label>
                  </div>
                  <div class="form-group">
                    <label>Message</label>
                    <textarea id="compose-textarea" name="message" class="form-control" style="height: 300px">
                    </textarea>
                  </div>             
                  
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Submit</button>
                </div>
              </form>
            </div>            
          </div>         
        </div>        
      </div>
    </section>    
  </div>

@endsection
@section('script')
<script src="{{ url('public/dist/plugins/summernote/summernote-bs4.min.js') }}"></script>
<script type="text/javascript">
  $(function () {
    //Add text editor
    $('#compose-textarea').summernote({
        height :200,
        codemirror : {
            theme : 'monokai'
        }

    });
  });
</script>
@endsection
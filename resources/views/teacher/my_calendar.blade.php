@extends('layouts.app')
@section('style')
<style type="text/css">
    .fc-daygrid-event{        
        white-space: normal;
    }
</style>
@endsection
@section('content')
<div class="content-wrapper">   
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>My Calendar</h1>
          </div>
          
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">         
          <div class="col-md-12"> 
          <div id="calender">

          </div>
          </div>
         
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>

@endsection
@section('script')
<script src="{{ url('public/dist/fullcalender/index.global.js') }}"></script>
<script type="text/javascript">
    var events = new Array();
    
    @foreach($getClassTimetable as $value)
        
            events.push({
                title : '{{ $value->class_name }} - {{ $value->subject_name }}',
                daysOfWeek : [ '{{ $value->fullcalender_day }}' ],
                startTime : '{{ $value->start_time  }}',
                endTime : '{{ $value->end_time  }}',
            });
        
    @endforeach

    var calendarID = document.getElementById('calender'); 
    var calendar = new FullCalendar.Calendar(calendarID, { 
        headerToolbar: {
            left: 'prev,next today',
            center: 'title',
            right: 'dayGridMonth,timeGridWeek,timeGridDay,listMonth' 
        },
        initialDate : '<?=date('Y-m-d')?>',
        navLinks : true,
        editable : false,
        events : events,
        initialView : 'dayGridMonth',
    });
    calendar.render();
</script>

@endsection
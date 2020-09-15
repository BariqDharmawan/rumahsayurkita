@extends('layouts.app')
@section('title', 'CMS - ' . $page->name)
@section('content')

<meta name="csrf-token" content="{{ csrf_token() }}">

    <section class="content-header">
      <h1>
        CMS Pages
      </h1>
      <ol class="breadcrumb">
        <li><a href="{{route('index')}}">Home</a></li>
        <li><a href="{{route('cmsPages')}}">CMS</a></li>
        <li class="active">CMS Pages</li>
      </ol>
    </section>

    <!-- Start Page Content -->
        <section class="content">
              <div class="box box-default">
                <div class="box-header with-border">
    @include('layouts.message')
                    <div class="box-tools pull-left">
                        <a class="btn waves-effect waves-light btn-primary " href="{{route('cmsPages')}}">Back</a>
                    </div>
                    @if($page->slug == 'faq')
                        <div class="dt-buttons float-right">
                            <a href="javascript:void(0)" class="btn dt-button toolTip m-l-20 float-right addFaq" data-toggle="tooltip" data-placement="bottom"
                                title="Add FAQ">Add FAQ</a>
                        </div>
                    @endif
            </div>
            @if($page->slug == 'faq')
            <div class="card p-10" style="padding: 20px">

                            <div class="m-t-30">
                                <button id="addqa" class="btn btn-success btn-rounded" style="display: none;" onclick="addQA()" type="button">Add</button>
                            </div>
                    @foreach($faqs as $faq)
                    <div class="faqQnA" id="faqQnA_{{$faq->id}}">
                        <a href="javascript:void(0)" class="toolTip m-l-20 float-right deleteQnA" data-toggle="tooltip" data-placement="bottom" id="deleteqna_{{$faq->id}}"
                            title="Delete">Delete</a>
                        <div contenteditable="false" placeholder="Edit Question" class="w-100 questions m-t-10 m-b-20" id="question_{{$faq->id}}"
                            style="font-weight: bold">
                            {!! $faq->question !!}
                        </div>
                        <div class="answers m-b-40" id="answer_{{$faq->id}}">
                            {!! $faq->answer !!}
                        </div>
                        <hr>
                    </div>
                    @endforeach @if(count($faqs) > 0)
                    <div class="m-t-30">
                        <button id="editqa" class="btn btn-info btn-rounded" onclick="editQA()" type="button">Edit</button>
                        <button id="saveqa" style="display:none;" class="btn btn-success btn-rounded" onclick="saveQA()" type="button">Save</button>
                    </div>
                    @endif
                </div>


            @endif
        </div>
    </div>
    <!-- End PAge Content -->
</section>
@endsection
 @push('scripts')
<script type="text/javascript">
    $(".addAnswers").summernote({
            minHeight: '100px'
        });

        $('#faq_1').find('.note-editable').attr('id', 'note-editable_1');

        @if($type == 'edit')
            $(".click2edit").summernote({
                minHeight: '100px'
            });
            $('#edit').hide();
            /*$(".answers").summernote({
                minHeight: '100px'
            });
            $('#editqa').hide();
            $(".questions").addClass('editableDiv');
            $(".questions").attr('contenteditable', true);*/
        @endif

        window.edit = function() {
            $(".click2edit").summernote({
                minHeight: '100px',
                toolbar: [
               // ["style", ["style"]],
                //["font", ["bold", "underline", "clear"]],
               // ["fontname", ["fontname"]],
               // ["color", ["color"]],
               // ["para", ["ul", "ol", "paragraph"]],
                //["table", ["table"]],
                //["insert", ["link", "picture", "video"]],
              //  ["view", ["fullscreen", "codeview", "help"]]
            ],
            });
            $('#edit').hide();
        },
        window.editQA = function() {
            $(".answers").summernote({
                minHeight: '100px',
                toolbar: [
               // ["style", ["style"]],
                //["font", ["bold", "underline", "clear"]],
               // ["fontname", ["fontname"]],
               // ["color", ["color"]],
               // ["para", ["ul", "ol", "paragraph"]],
                //["table", ["table"]],
                //["insert", ["link", "picture", "video"]],
              //  ["view", ["fullscreen", "codeview", "help"]]
            ],
            });
            $('#editqa').hide();
            $('#saveqa').show();
            $(".questions").addClass('editableDiv p-10');
            $(".questions").attr('contenteditable', true);
            var faqqna = $('.faqQnA');
            for (var i = 0; i < faqqna.length; i++) {
                var id = $(faqqna[i]).attr('id').split('_')[1];
                console.log(id);
                $('#faqQnA_'+id).find('.note-editable').attr('id', 'note-editableqna_'+id);
            }

        },
        window.saveQA = function() {

            var faqs = $(document).find('.faqQnA');
            var questions = [];
            var ids = [];
            var answers = [];
            var qflag = 0;
            var aflag = 0;
            console.log(faqs);
            for (var i = 0; i < faqs.length; i++) {
                var id = $(faqs[i]).attr('id').split('_')[1];
                questions[i] = $('#question_'+id).text();
                ids[i] = id;
                if($.trim(questions[i])=="")
                {
                    qflag++;
                    (!$('#question_'+id+"-error").is(':visible')) ? $('#question_'+id).closest('.faqQnA').append('<div id="question_'+id+'-error" class="invalid-feedback animated fadeInDown" style="display: block;">Question cannot be blank.</div>') : $('#question_'+id+"-error").show();
                }
                else
                {
                    $('#question_'+id+"-error").remove();
                }
                answers[i] = $('#note-editableqna_'+id).html();

                if($.trim(answers[i])=="")
                {
                    aflag++;
                    (!$('#answer_'+id+"-error").is(':visible')) ? $('#answer_'+id).closest('.faqQnA').append('<div id="answer_'+id+'-error" class="invalid-feedback animated fadeInDown" style="display: block;">Answer cannot be blank.</div>') : $('#answer_'+id+"-error").show();
                }
                else
                {
                    $('#answer_'+id+"-error").remove();
                }
            }
            if(qflag == 0 && aflag == 0)
            {
                $('#saveqa').prop('disabled', true);
                $.ajax({
                  headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                  },
                    url: "{{route('updateFAQs')}}",
                    type: "POST",
                    data: {questions: questions, answers: answers, ids: ids},
                    success: function(res){
                        var data = JSON.parse(res);
                        $('#saveqa').prop('disabled', false);
                        if(data.status == 1)
                        {
                            $('.answers').each(function( index ) {
                                $(this).summernote('destroy');
                            });
                            $(".questions").removeClass('editableDiv');
                            $(".questions").attr('contenteditable', false);
                            $('#saveqa').hide();
                            $('#editqa').show();
                            toastr.success(data.message,"Status",{
                                timeOut: 5000,
                                "closeButton": true,
                                "debug": false,
                                "newestOnTop": true,
                                "progressBar": true,
                                "positionClass": "toast-top-right",
                                "preventDuplicates": true,
                                "onclick": null,
                                "showDuration": "300",
                                "hideDuration": "1000",
                                "extendedTimeOut": "1000",
                                "showEasing": "swing",
                                "hideEasing": "linear",
                                "showMethod": "fadeIn",
                                "hideMethod": "fadeOut",
                                "tapToDismiss": false

                            });
                        }
                        else
                        {
                            toastr.error(data.message,"Status",{
                                timeOut: 5000,
                                "closeButton": true,
                                "debug": false,
                                "newestOnTop": true,
                                "progressBar": true,
                                "positionClass": "toast-top-right",
                                "preventDuplicates": true,
                                "onclick": null,
                                "showDuration": "300",
                                "hideDuration": "1000",
                                "extendedTimeOut": "1000",
                                "showEasing": "swing",
                                "hideEasing": "linear",
                                "showMethod": "fadeIn",
                                "hideMethod": "fadeOut",
                                "tapToDismiss": false

                            });
                        }
                    }
                })
            }
        },
        window.addQA = function() {

            var faqs = $(document).find('.faq');
            var questions = [];
            var answers = [];
            var qflag = 0;
            var aflag = 0;
            for (var i = 0; i < faqs.length; i++) {
                var id = $(faqs[i]).attr('id').split('_')[1];
                questions[i] = $('#addQuestion_'+id).text();

                if($.trim(questions[i])=="")
                {
                    qflag++;
                    (!$('#addQuestion_'+id+"-error").is(':visible')) ? $('#addQuestion_'+id).closest('.faq').append('<div id="addQuestion_'+id+'-error" class="invalid-feedback animated fadeInDown" style="display: block;">Question cannot be blank.</div>') : $('#addQuestion_'+id+"-error").show();
                }
                else
                {
                    $('#addQuestion_'+id+"-error").remove();
                }
                answers[i] = $('#note-editable_'+id).html();

                if($.trim(answers[i])=="")
                {
                    aflag++;
                    (!$('#addAnswer_'+id+"-error").is(':visible')) ? $('#addAnswer_'+id).closest('.faq').append('<div id="addAnswer_'+id+'-error" class="invalid-feedback animated fadeInDown" style="display: block;">Answer cannot be blank.</div>') : $('#addAnswer_'+id+"-error").show();
                }
                else
                {
                    $('#addAnswer_'+id+"-error").remove();
                }
            }
            if(qflag == 0 && aflag == 0)
            {
                $('#addqa').prop('disabled', true);
                $.ajax({
                      headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                      },
                    url: "{{route('addFAQs')}}",
                    type: "POST",
                    data: {questions: questions, answers: answers},
                    success: function(res){
                        var data = JSON.parse(res);
                        $('#addqa').prop('disabled', false);
                        if(data.status == 1)
                        {
                            $('.addAnswers').each(function( index ) {
                                $(this).summernote('destroy');
                            });
                            $(".addQuestions").removeClass('editableDiv');
                            $(".addQuestions").attr('contenteditable', false);
                            toastr.success(data.message,"Status",{
                                timeOut: 5000,
                                "closeButton": true,
                                "debug": false,
                                "newestOnTop": true,
                                "progressBar": true,
                                "positionClass": "toast-top-right",
                                "preventDuplicates": true,
                                "onclick": null,
                                "showDuration": "300",
                                "hideDuration": "1000",
                                "extendedTimeOut": "1000",
                                "showEasing": "swing",
                                "hideEasing": "linear",
                                "showMethod": "fadeIn",
                                "hideMethod": "fadeOut",
                                "tapToDismiss": false

                            });
                            location.reload();
                        }
                        else
                        {
                            toastr.error(data.message,"Status",{
                                timeOut: 5000,
                                "closeButton": true,
                                "debug": false,
                                "newestOnTop": true,
                                "progressBar": true,
                                "positionClass": "toast-top-right",
                                "preventDuplicates": true,
                                "onclick": null,
                                "showDuration": "300",
                                "hideDuration": "1000",
                                "extendedTimeOut": "1000",
                                "showEasing": "swing",
                                "hideEasing": "linear",
                                "showMethod": "fadeIn",
                                "hideMethod": "fadeOut",
                                "tapToDismiss": false

                            });
                        }
                    }
                })
            }
        },
        window.save = function() {
            $('#save').prop('disabled', true);
            $.ajax({
                  headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                  },
                url: "{{route('updateCms', ['slug' => $page->slug])}}",
                type: "POST",
                data: {content: $('.note-editable').html()},
                success: function(res){
                    var data = JSON.parse(res);
                    $('#save').prop('disabled', false);
                    if(data.status == 1)
                    {
                        $(".click2edit").summernote('destroy');
                        $('#edit').show();
                        toastr.success(data.message,"Status",{
                            timeOut: 5000,
                            "closeButton": true,
                            "debug": false,
                            "newestOnTop": true,
                            "progressBar": true,
                            "positionClass": "toast-top-right",
                            "preventDuplicates": true,
                            "onclick": null,
                            "showDuration": "300",
                            "hideDuration": "1000",
                            "extendedTimeOut": "1000",
                            "showEasing": "swing",
                            "hideEasing": "linear",
                            "showMethod": "fadeIn",
                            "hideMethod": "fadeOut",
                            "tapToDismiss": false

                        });
                    }
                    else
                    {
                        toastr.error(data.message,"Status",{
                            timeOut: 5000,
                            "closeButton": true,
                            "debug": false,
                            "newestOnTop": true,
                            "progressBar": true,
                            "positionClass": "toast-top-right",
                            "preventDuplicates": true,
                            "onclick": null,
                            "showDuration": "300",
                            "hideDuration": "1000",
                            "extendedTimeOut": "1000",
                            "showEasing": "swing",
                            "hideEasing": "linear",
                            "showMethod": "fadeIn",
                            "hideMethod": "fadeOut",
                            "tapToDismiss": false

                        });
                    }
                }
            })

        }

        $('.addFaq').click(function(){
            var total = $('.faq').length + 1;

            var content = '<div id="faq_'+total+'" class="faq m-t-30"><h5>Add title</h5><a href="javascript:void(0)" class="toolTip m-l-20 float-right delete" data-toggle="tooltip" data-placement="bottom" id="delete_'+total+'" title="Delete">Delete</a><div contenteditable="true" placeholder="Add Question" class="w-100 addQuestions editableDiv m-t-10 m-b-20 p-10" id="addQuestion_'+total+'"></div><h5>Add Content</h5><div class="addAnswers m-b-40" id="addAnswer_'+total+'"></div><hr></div>';
            $('.faqs').prepend(content);
            $(".addAnswers").summernote({
                minHeight: '100px',
                toolbar: [
               // ["style", ["style"]],
                //["font", ["bold", "underline", "clear"]],
               // ["fontname", ["fontname"]],
               // ["color", ["color"]],
               // ["para", ["ul", "ol", "paragraph"]],
                //["table", ["table"]],
                //["insert", ["link", "picture", "video"]],
              //  ["view", ["fullscreen", "codeview", "help"]]
            ],
            });
            $('#faq_'+total).find('.note-editable').attr('id', 'note-editable_'+total).html("");
            $("#addqa").show();
        });

        $(document).on('click', '.delete', function(){
            $(this).closest('.faq').remove();
            if($('.faq').length <= 0)
                $('#addqa').hide();
        });

        $(document).on('click', '.deleteQnA', function(){
            var id = $(this).attr('id').split('_')[1];
            $.ajax({
                url: "{{route('deleteFAQ')}}"+'/'+id,
                type: "POST",
                success: function(res){
                    var data = JSON.parse(res);
                    if(data.status == 1)
                    {
                        $('#deleteqna_'+id).closest('.faqQnA').remove();
                        if($('.faqQnA').length <= 0)
                            $('#saveqa').parent().hide();
                        toastr.success(data.message,"Status",{
                            timeOut: 5000,
                            "closeButton": true,
                            "debug": false,
                            "newestOnTop": true,
                            "progressBar": true,
                            "positionClass": "toast-top-right",
                            "preventDuplicates": true,
                            "onclick": null,
                            "showDuration": "300",
                            "hideDuration": "1000",
                            "extendedTimeOut": "1000",
                            "showEasing": "swing",
                            "hideEasing": "linear",
                            "showMethod": "fadeIn",
                            "hideMethod": "fadeOut",
                            "tapToDismiss": false

                        });
                    }
                    else
                    {
                        toastr.error(data.message,"Status",{
                            timeOut: 5000,
                            "closeButton": true,
                            "debug": false,
                            "newestOnTop": true,
                            "progressBar": true,
                            "positionClass": "toast-top-right",
                            "preventDuplicates": true,
                            "onclick": null,
                            "showDuration": "300",
                            "hideDuration": "1000",
                            "extendedTimeOut": "1000",
                            "showEasing": "swing",
                            "hideEasing": "linear",
                            "showMethod": "fadeIn",
                            "hideMethod": "fadeOut",
                            "tapToDismiss": false

                        });
                    }
                }
            })
        });

</script>

@endpush
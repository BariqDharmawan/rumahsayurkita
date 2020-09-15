
<button class="btn btn-primary" type="button" id="backToUser">Back</button>
<hr>
    <table class="table table-bordered table-responsive" id="table">
        <thead>
            <th>Name</th>
            <th>USER ID</th>
            <th>Contact Number</th>
            <th>State</th>
            <th>City</th>
            <th>Created At</th>
            <th>User Status</th>
            <th>Action</th>
        </thead>
        <tbody>
            @foreach($users as $user)
                <tr>
                    <td>{{$user->name}}</td>
                    <td>{{$user->email}}</td>
                    <td>{{$user->mobile_number}}</td>
                    <td>{{$user->state}}</td>
                    <td>{{$user->city}}</td>
                    <td>{{date('d-m-Y',strtotime($user->created_at))}}</td>
                    <td>
                        @if($user->status === 'IN')
                            Pending
                        @elseif($user->status === 'DL')
                            Blocked
                        @else
                            Active
                        @endif
                    </td>
                    <td>
                        <button class="btn btn-primary btn-sm" onclick="approve('{{$user->id}}')">Approve</button>
                        <button class="btn btn-danger btn-sm" onclick="decline('{{$user->id}}')">Decline</button>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
<script>
            $("#backToUser").click(function(){
                $("#ListPending").hide();
                $("#listUser").show();
            });

            $("#table").DataTable();

            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });

            function approve(id){
                let ok = confirm("Are You Sure?");
                if(ok){
                 
                    $.ajax({
                        url:"{{ url('admin/users/updateStatus') }}",
                        type:'get',
                        data:{
                            user_id:id,
                            status:"AC",
                        },
                        success:function(data){
                            if(data === 'success'){
                                // $("#ListPending").show();
                                // $("#ListPending").html("<img src='{{ url('public/images/25.gif') }}'/> Wait..");
                                // $("#ListPending").load("{{ url('admin/user/get-pending') }}");                
                                // $("#listUser").hide();
                                alert("Approve successfully!");
                                window.location.reload();
                            }
                            else{
                                alert("Failed to update!");
                            }

                        }
                    })
                }
                else{
                    return (false);
                }

            }

            function decline(id){
                let ok = confirm("Are You Sure?");
                if(ok){
                    $.ajax({
                        url:"{{ url('admin/users/updateStatus') }}",
                        type:'get',
                        data:{
                            user_id:id,
                            status:"DL",
                        },
                        success:function(data){
                            if(data === 'success'){
                                // $("#ListPending").show();
                                // $("#ListPending").html("<img src='{{ url('public/images/25.gif') }}'/> Wait..");
                                // $("#ListPending").load("{{ url('admin/user/get-pending') }}");                
                                // $("#listUser").hide();
                                alert("Declined successfully!");
                                window.location.reload();

                            }
                            else{
                                alert("Failed to update!");
                            }
                        }
                    })
               }
                else{
                    return (false);
                }
            }
</script>
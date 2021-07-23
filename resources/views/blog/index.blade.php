@extends('layouts/app')
@section('content')
{{--    <h1>{{$title}}</h1>--}}
    @if($list>0)
        <div class="row">
            <div class="col-md-6">
                <h4 class ="box-title">{{$title}}</h4>
            </div>
            <div class="col-md-6 text-right">
                <a href = "/blog/create/" class="btn btn-sm btn-success">Add new Blog</a>
            </div>
        </div>
        <p class="session-msg">{{session('msg')}}</p>
        <div class = "row">
            <table class = "table table-bordered ">
                <thead>
                <tr class = "text-center">
                    <th scope = "col">S.N</th>
                    <th scope = "col">Title</th>
                    <th scope = "col">Creator</th>
                    <th scope = "col">Action</th>
                </tr>
                </thead>
                <tbody>
                <?php $counter = 1; ?>
                @foreach($list as $a => $b)
                    <tr class = "text-center">
                        <th scope = "row">{{$counter++}}</th>
                        <td>{{$b['title']}}</td>
                        <td>{{$b['created_by']}}</td>
                        <td>
                            <a class = "btn btn-sm btn-success" href = "/blog/edit/{{$b['id']}}">Edit</a>
                            <a class = "btn btn-sm btn-danger" href = "/blog/delete/{{$b['id']}}">Delete</a>
                        </td>

                    </tr>
                @endforeach
                </tbody>
            </table>
            {{--    <div class="card">--}}
            {{--        <div class="card-header">--}}
            {{--            <a href = "">{{$b['title']}}</a>--}}
            {{--        </div>--}}
            {{--        <div class="card-body">--}}
            {{--            {{$b['description']}}--}}
            {{--        </div>--}}
            {{--    </div>--}}
        </div>




    @endif
@endsection
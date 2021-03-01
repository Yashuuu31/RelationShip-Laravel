@extends('layout.master')

@section('content')
    <div class="container mt-5">
        <h1 class="text-center">{{ $moduleName }}</h1>
        <hr>
    </div>
    <div class="container-fluid">

        <h1>{{$data ?? '---'}}</h1>
    </div>
@endsection
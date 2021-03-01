@extends('layout.master')

@section('content')
    <div class="container mt-5">
        <h1 class="text-center">Laravel All Relation Ship</h1>
        <hr>

        <ul>
            <li class="h3"><a href="{{ route('one_to_one') }}">One To One</a></li>
            <li class="h3"><a href="{{ route('one_to_many') }}">One To Many</a></li>
            <li class="h3"><a href="{{ route('one_to_one_belong') }}">One To One Belong's To</a></li>
            <li class="h3"><a href="{{ route('one_to_many_belong') }}">One To Many Belong's To</a></li>
        </ul>
    </div>
@endsection
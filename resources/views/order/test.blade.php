@extends('layouts.app')
@section('content')
<div class="col-md-3">
    <form  role="form" method="POST" action="{{url('/adduser') }}">
        {{ csrf_field() }}
        <div class="form-group">
            <label for="name">姓名：</label>
            <input id="name" type="text" class="input" name="name" >
        </div>
            <div class="form-group">
                <label for="phone">手机：</label>
                <input id="phone" type="phone" class="input" name="phone" >
            </div>
                <div class="form-group">
                    <input id="address" type="hidden" class="input" name="address" >
                </div>
                    <div class="form-group">
                        <input id="qq" type="hidden" class="input" name="qq" >
                    </div>
                        <div class="form-group">
                            <input id="weixin" type="hidden" class="input" name="weixin" >
                        </div>
                            <div class="form-group">
                                <input id="from" type="hidden" class="input" name="from" >
                            </div>
                                <button type="submit" class="btn btn-primary">
                                    提交
                                </button>
                                @if (count($errors) > 0)
                                <div class="alert alert-danger">
                                    <ul>
                                        @foreach ($errors->all() as $error)
                                        <li>{{ $error }}</li>
                                        @endforeach
                                    </ul>
                                </div>
                                @endif
                                @if ($msg=='1')
                                <div class="alert alert-success">
                                    <ul>
                                    <li>提交成功</li>
                                    </ul>
                                </div>
                                @endif
    </form>
</div>
@endsection

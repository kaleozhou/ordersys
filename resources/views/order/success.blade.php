<!DOCTYPE html>
<!-- saved from url=(0052)http://www.wforder.com/demo/2016/wforder/wforder.php -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"> 
<title>订购成功！</title>
<meta name="generator" content="kaleo订单系统">
<meta name="author" content="系统开发者：kaleo QQ：616801795">
<meta name="copyright" content="kaleozhou">
<style type="text/css">
*{margin:0;padding:0;}body{font:14px Microsoft YaHei,\5FAE\8F6F\96C5\9ED1,SimSun,\5B8B\4F53,Arial,Verdana;color:#000;text-align:left;padding-top:3%;background:#FFF;}a:link,a:visited{color:#F00;text-decoration:none;}a:hover{color:#090;text-decoration:underline;}ul,li{list-style:none;display:block;}img{border:0 none;vertical-align:middle;}.wenxin{width:100%;height:auto;overflow:hidden;text-align:center;}.top{width:60%;height:auto;overflow:hidden;line-height:40px;margin:0 auto 20px;padding:5px 15px;text-align:left;border:2px solid #E6E6E6;background:#FFF;}.top span{float:left;}.top span.a{color:#390;font-size:16px;font-weight:bold;margin-right:10px;}.top span.b{color:#999;}.top span.c{float:right;}.codeimg{height:auto;overflow:hidden;margin-bottom:10px;text-align:center;}.bottom{padding:5px 10px;color:#090;}.codeimg img{width:220px;padding:8px;border:8px solid #F2F2F2;}@media(max-width:500px){.top{width:90%;line-height:25px;padding:5px 3%;}.top span{float:left;display:block;}}#head{width:100%;padding:0 0 10px;text-align:center;border-bottom:1px dotted #DDD;}#wfok{max-width:600px;width:100%;margin:10px auto;}#wfok ul{width:100%;height:auto;overflow:hidden;}#wfok li{width:100%;height:40px;line-height:2em;}#wfok li span.l{float:left;width:30%;text-align:right;margin-right:4%;}#wfok li span.r{float:left;width:65%;color:#BD0000;}#foot{width:100%;padding:10px 0;text-align:center;border-top:1px dotted #DDD;}#foot p.go{font-size:12px;color:#090;margin-bottom:20px;}#head img{max-width:600px;width:100%;max-height:90px;*width:expression(this.width>600&&this.width>this.height?600:true);*height:expression(this.height>90?90:true);}#foot img{max-width:600px;width:100%;max-height:50px;*width:expression(this.width>600&&this.width>this.height?600:true);*height:expression(this.height>50?50:true);}#time{font:14px Arial,Verdana;color:#F90;font-weight:bold;}
</style>
<script type="text/javascript">var i=60;function settime(){i--;time.innerHTML=i;if(i<=0){window.location="http://localhost/order";}}setInterval("settime()",1000);</script>
</head>
<body>
<div id="head">
    <img src="{{url('order_files')}}/wfddok.gif">
</div>
<div id="wfok">
    <ul>
        <li>
            <span class="l">订单编号：</span>
            <span class="r">{{$order->ordnumber}}</span>
        </li>
        <li>
            <span class="l">订购产品：</span>
            <span class="r">{{$order->product_name}}</span>
        </li>
         
               
        <li>
            <span class="l">您的姓名：</span>
            <span class="r">{{$customer->name}}</span>
        </li>
        <li>
            <span class="l">手机号码：</span>
            <span class="r">{{$customer->phone}}</span>
        </li>
        <li>
            <span class="l">收货地址：</span>
            <span class="r">{{$customer->province}}{{$customer->city}}{{$customer->arrea}}{{$customer->address}}</span>
        </li>
        <li style="border:none;">
            <span class="l">付款方式：</span>
            @if ($order->paymethon=='cod')
            <span class="r">货到付款</span>
            @elseif ($order->paymethon=='alipay')
            <span class="r">支付宝</span>
            @else
            <span class="r">微信支付</span>
            @endif
        </li>
        <li style="border:none;">
            <span class="l">留言：</span>
            <span class="r">{{$order->remark}}</span>
        </li>
    </ul>
</div>
<div id="foot">
    <p class="go">温馨提示：本页面将在 <span id="time">33</span> 秒后自动返回...</p>
    <p><a href="{{url('order')}}" title="立即返回"><img src="{{url('order_files')}}/wfgo.gif" alt="返回"></a></p>
</div>
<!-------------------------- 此处添加统计转化代码 -------------------------->

<!-------------------------- 此处添加统计转化代码 -------------------------->

</body></html>

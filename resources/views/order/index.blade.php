<!DOCTYPE html>
<!-- saved from url=(0077)http://www.wforder.com/demo/2016/wforder/wftemplate/webdd.php?p=10000&t=62749 -->
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <style type="text/css">
        .wffahuo-wffahuo * {
            margin: 0;
            padding: 0;
            border: 0;
            list-style: none;
        }
        
        .wffahuo-wffahuo {
            position: relative;
            width: undefinedpx;
            height: undefinedpx;
            overflow: hidden;
            font: 12px/1.5 Verdana, Geneva, sans-serif;
            text-align: left;
            background: #fff;
        }
        
        .wffahuo-wffahuo .loading {
            position: absolute;
            z-index: 9999;
            width: 100%;
            height: 100%;
            color: #666;
            text-align: center;
            padding-top: 0px;
            background: #fff url(images/28236-loading.gif) center 0px no-repeat;
        }
        
        .wffahuo-wffahuo .pic {
            position: relative;
            width: undefinedpx;
            height: 0px;
            overflow: hidden;
        }
        
        .wffahuo-wffahuo .txt li,
        .wffahuo-wffahuo .txt li span,
        .wffahuo-wffahuo .txt-bg {
            width: undefinedpx;
            height: defaultpx!important;
            line-height: defaultpx!important;
            overflow: hidden;
        }
        
        .wffahuo-wffahuo .txt li p a {
            display: inline;
        }

    </style>

    <title>{{$title}}</title>
    <meta name="generator" content="kaleo订单系统】">
    <meta name="author" content="kaleo">
    <meta name="copyright" content="kaleo订单系统">
    <script type="text/javascript" src="{{url('js/order/wfdq.js')}}"></script>
    <script type="text/javascript" src="{{url('js/order/wffh.js')}}"></script>
    <script type="text/javascript" src="{{url('js/order/wfgd.js')}}"></script>
    <script type="text/javascript" src="{{url('js/order/wfwin.js')}}"></script>
    <script type="text/javascript"> 
        wfFocus.set({
            id: 'wffahuo',
            pattern: 'wffahuo',
            time: 3
        });

    </script>
    <link href="{{url('images/order_files/wfwebstyle.css')}}" rel="stylesheet" type="text/css">
    <style type="text/css">
        #wforder {
            width: 980px;
            background: #FFFFFF;
        }
        
        .wfwarp {
            border: 5px solid #0B9AD4;
        }
        
        .wftitlea,
        .wftitleb {
            border-bottom: 1px solid #0B9AD4;

        }
        
        .wfrxian {
            border-right: 1px solid #0B9AD4;
        }
        
        .wfsubbox input {
            background: #0B9AD4;
        }
        
        .wfsubbox input:hover {
            background: #1FB6F3;
        }
        
        .wffahuo ul li {
            background: #FFFFFF;
        }

    </style>
</head>

<body marginwidth="0" marginheight="0">
    <div id="wforder">
        <div class="wfwarp">
            <div class="wforderl" id="wfforml">
                <div class="wfforml">
                    <div class="wfrxian">
                        <form id="wfform" name="wfform" action="{{url('/order/add')}}" method="post" onsubmit="return wfpostcheck()" target="_parent">
                            {{csrf_field()}}
                            <div class="wftitlea">
                                <img src="{{url('images/order_files/titlea.gif')}}" width="450" border="0">
                            </div>
                            <div class="wfbdbox">
                                <label class="wfbdxx"><em>*</em>产品名称</label>
                                <div class="wfdxbox red">
                                @foreach ($products as $product)
                                @if ($product->id-1==0)
                                <p><input type="radio" name="wfproduct" id="wfproduct{{$product->id-1 }}" alt="{{$product->price}}" value="{{$product->name}}" checked=true onclick="selectproduct()"><label for="wfproduct{{$product->id-1}}">{{$product->name}}</label></p>
                                @else
                                <p><input type="radio" name="wfproduct" id="wfproduct{{$product->id-1 }}" alt="{{$product->price}}" value="{{$product->name}}" onclick="selectproduct()"><label for="wfproduct{{$product->id-1}}">{{$product->name}}</label></p>
                                @endif
                                @endforeach
                                </div>
                            </div>


                            <div class="wfbdbox">
                                <label class="wfbdxx"><em>*</em>数量</label>
                                <div class="wftextmun">
                                    <a onclick="wftotal(0,'dx')" title="减1" class="setmun jian"></a><input type="text" name="wfmun" value="1" onchange="wftotal('ok','dx')">
                                    <a onclick="wftotal(1,'dx')" title="加1" class="setmun jia"></a><span class="blm">（件）　应付金额：<em class="wfrmb">¥</em><em id="showprice">{{$products[0]->price}}</em></span>
                                    <input type='hidden' name='amount' id='amount' value='{{$products[0]->price}}'/>
                                </div>
                            </div>
                            <div class="wfbdbox">
                                <label class="wfbdxx"><em>*</em>姓名</label>
                                <div class="wftextbox">
                                    <input type="text" name="wfname">
                                </div>
                            </div>
                            <div class="wfbdbox">
                                <label class="wfbdxx"><em>*</em>手机号码</label>
                                <div class="wftextbox">
                                    <input type="text" name="wfmob" id="wfmob">
                                </div>
                            </div>
                            <div class="wfbdbox">
                                <label class="wfbdxx"><em>*</em>所在地区</label>
                                <div class="wfxlbox">
                                    <select id="wfprovince" name="wfprovince" class="wfdqxl"><option value="省份">省份</option><option value="北京市">北京市</option><option value="天津市">天津市</option><option value="上海市">上海市</option><option value="重庆市">重庆市</option><option value="河北省">河北省</option><option value="山西省">山西省</option><option value="内蒙古">内蒙古</option><option value="辽宁省">辽宁省</option><option value="吉林省">吉林省</option><option value="黑龙江省">黑龙江省</option><option value="江苏省">江苏省</option><option value="浙江省">浙江省</option><option value="安徽省">安徽省</option><option value="福建省">福建省</option><option value="江西省">江西省</option><option value="山东省">山东省</option><option value="河南省">河南省</option><option value="湖北省">湖北省</option><option value="湖南省">湖南省</option><option value="广东省">广东省</option><option value="广西">广西</option><option value="海南省">海南省</option><option value="四川省">四川省</option><option value="贵州省">贵州省</option><option value="云南省">云南省</option><option value="西藏">西藏</option><option value="陕西省">陕西省</option><option value="甘肃省">甘肃省</option><option value="青海省">青海省</option><option value="宁夏">宁夏</option><option value="新疆">新疆</option><option value="香港">香港</option><option value="澳门">澳门</option><option value="台湾省">台湾省</option></select><select id="wfcity" name="wfcity" class="wfdqxl"><option value="城市">城市</option></select><select id="wfarea" name="wfarea" class="wfdqxl nomar"><option value="区县">区县</option></select>
                                </div>
                            </div>
                            <div class="wfbdbox">
                                <label class="wfbdxx"><em>*</em>详细地址</label>
                                <div class="wftextbox">
                                    <input type="text" name="wfaddress">
                                </div>
                            </div>

                            <div class="wfbdbox">
                                <label class="wfbdxx"><em>*</em>付款方式</label>
                                <div class="wfdxbox">
                                    <div class="wfpayfs">
                                        <span class="paybr"><input type="radio" name="wfpay" id="wfpay1" checked="" value="cod" onclick="wftgp(1);wfpaydiv(0);"><label for="wfpay1"><img src="{{url('images/order_files/fka.gif')}}" disabled=""></label></span>
                                        <span class="paybr"><input type="radio" name="wfpay" id="wfpay2" value="alipay" onclick="wftgb(1);wfpaydiv(1);"><label for="wfpay2"><img src="{{url('images/order_files/fkb.gif')}}" disabled=""></label></span>
                                        <!--
                                        <span class="paybr"><input type="radio" name="wfpay" id="wfpay4" value="weixin" onclick="wftgb(1);wfpaydiv(3);"><input type="hidden" name="wfwxpaytype" value="native"><label for="wfpay4"><img src="images/order_files/fkd.gif" disabled=""></label></span>
                                        -->
                                    </div>
                                </div>
                            </div>
                            <div class="wfbdbox">
                                <div id="paydiv0" class="wfpayps">
                                    <p><span class="green">温馨提示：</span>选择货到付款在家等快递公司送货上门，先验货后付款！</p>
                                </div>
                                <div id="paydiv1" class="wfpayps" style="display:none;">
                                    <p><span class="green">温馨提示：</span>全球领先的第三方支付平台，在线支付，安全可靠！</p>
                                </div>
                                <div id="paydiv2" class="wfpayps" style="display:none;">
                                    <p><span class="green">温馨提示：</span>请选择您要在线付款的银行，在线支付，安全可靠！</p>
                                </div>
                                <div id="paydiv3" class="wfpayps" style="display:none;">
                                    <p><span class="green">温馨提示：</span>全球领先的第三方支付平台，在线支付，安全可靠！</p>
                                </div>
                                <div id="paydiv4" class="wfpayps" style="display:none;">
                                    <p><span class="green">温馨提示：</span>提交后请用你的手机登陆支付宝或微信扫描二维码完成付款！</p>
                                </div>
                                <div id="paydiv5" class="wfpayps" style="display:none;">
                                    <p><span class="green">温馨提示：</span>请拨打我们网站上的免费客服电话，索要银行汇款帐号。</p>
                                </div>
                            </div>
                            <div class="wfbdbox">
                                <label class="wfbdxx">留言</label>
                                <div class="wftextarea">
                                    <textarea name="wfguest">请尽快安排发货，送货之前手机联系，谢谢！</textarea>
                                </div>
                            </div>
                            <div class="wfsubbox">
                                <input type="submit" name="wfsubmit" value="立即提交订单">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="wforderr">
                <div class="wfformr">
                    <div class="wftitleb">
                        <img src="{{url('images/order_files/titleb.gif')}}" width="310" height="45" border="0">
                    </div>
                    <div class="wffahuo_wrap">
                        <div id="wffahuo" class="wffahuo wffahuo wffahuo-wffahuo" style="height: 429px;">
                            <ul class="wffhlist" style="margin-top: 0px;">
                                @foreach ($customers as $cus)
                                <li style="opacity: 1;"><span>{{substr($cus->created_at,0,10)}}</span><span>{{$cus->province}}的{{$cus->name}}</span><span>［{{$cus->phone}}］</span><span>您订购的 
                                        {{$cus->city}}  {{$cus->area}}元 已发货！</span></li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                    <button type="button" onclick="adduser()">tijiao</button>
                </div>
            </div>
            <div style="clear:both;"></div>
        </div>
    </div>
    <script type="text/javascript" src="{{url('js/order/wfbd.js')}}"></script>
    <script type="text/javascript" src="{{url('js/order/order.js')}}"></script>
    <script type="text/javascript" src="{{url('js/ordersys.js')}}"></script>

</body>

</html>

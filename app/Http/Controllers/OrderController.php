<?php
namespace App\Http\Controllers;
use App\Model\Order;
use App\Model\Product;
use App\Model\Customer;
use Illuminate\Http\Request;
use Log;
class OrderController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //        $this->middleware('auth');
    }
    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($category_id=1)
    {

        $products=Product::where('category_id',$category_id)->get();
        $customers=Customer::where('address',$category_id)->get();
        return view('order/index')
            ->with('title','订单')
            ->with('customers',$customers)
            ->with('products',$products);
    }
    //添加订单
    public function add(Request $request)
    {
        $order=new Order();
        $input=$request->all();
        //查询客户是不是已经存在，不存在则创建
        $customer=Customer::firstOrNew(['phone'=>$input['wfmob']]);
        $customer->name=$input['wfname'];
        $customer->phone=$input['wfmob'];
        $customer->province=$input['wfprovince'];
        $customer->city=$input['wfcity'];
        $customer->area=$input['wfarea'];
        $customer->address=$input['wfaddress'];
        $customer->save();
        //创建订单
        $product=Product::where('name',$input['wfproduct'])->first();
        $order->product_id=$product->id;
        $order->product_name=$product->name;
        $order->customer_id=$customer->id;
        $maxidstr=substr(Order::all()->max('id')+10000000001,-4);
        $order->ordnumber=date('YmdHi').$maxidstr;
        $order->num=$input['wfmun'];
        $order->amount=$input['amount'];
        $order->paymethon=$input['wfpay'];
        $order->remark=$input['wfguest'];
        $order->ifpayed=false;
        /*
         * 0 未发货
         * 1 已发货
         * 2 已完成
         * 3 被拒收
         */
        $order->status=0;
        $order->save();
        if ($order->paymethon=='alipay') {
            // code...
            $alipay=app('alipay.web');
            $alipay->setOutTradeNo($order->ordnumber);
            $alipay->setTotalFee($order->amount);
            $alipay->setSubject($order->product_name);
            $alipay->setBody('订购'.$order->product_name.$order->num.'件');
            //$alipay->setQrPayMode('4'); //该设置为可选，添加该参数设置，支持二维码支付。 
            // 跳转到支付页面。
            return redirect()->to($alipay->getPayLink());
        }
    }
    public function webNotify(Request $request)
    {
        //验证请求
        if (! app('alipay.web')->verify()) {
            Log::info('Alipay notify post data verification fail.');
            return 'fail';
        }
         // 判断通知类型。
        switch ($request->input('trade_status')) {
            case 'TRADE_SUCCESS':
            case 'TRADE_FINISHED':
                // TODO: 支付成功，取得订单号进行其它相关操作。
                break;
        }
        return 'success';
    }
    public function webReturn(Request $request)
    {
        //验证请求
        if (! app('alipay.web')->verify()) {
            Log::info('Alipay return query data verification fail.');
            //return redirect()->to(url('order'));
        }
        //判断通知类型
        switch ($request->input('trade_status')) {
            case 'TRADE_SUCCESS':
                // TODO: 支付成功，取得订单号进行其它相关操作。
                $ordnumber=$request->out_trade_no;
                $order=Order::where('ordnumber',$ordnumber)->first();
                $order->tradenumber=$request->trade_no;
                $order->ifpayed=true;
                $order->save();
                $customer=Customer::find($order->customer_id);
                return view('order/success')
                    ->with('order',$order)
                    ->with('customer',$customer);

            case 'TRADE_FINISHED':
                break;
        }
    }
}

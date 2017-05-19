<?php
namespace App\Http\Controllers;
use App\Model\Userdata;
use App\Model\Keyword;
use Illuminate\Http\Request;
use Log;
class UserdataController extends Controller
{
    public function adduser(Request $request){
        $this->validate($request, [
            'name' => 'required',
            'phone' => 'regex:/^1[34578][0-9]{9}$/'
        ]);
        $i=0;
        $status=0; 
        $input=$request->all();
        $userdata=new Userdata();
        if (!empty($input['name'])) {
            $userdata->name=$input['name'];
            $i++;
        }
        if (!empty($input['phone'])) {
            $userdata->phone=$input['phone'];
            $i++;
        }
        if (!empty($input['address'])) {
            $userdata->address=$input['address'];
            $i++;
        }
        if (!empty($input['from'])) {
            $userdata->from=$input['from'];
            $i++;
        }
        if (!empty($input['qq'])) {
            $userdata->qq=$input['qq'];
            $i++;
        }
        if (!empty($input['weixin'])) {
            $userdata->weixin=$input['weixin'];
            $i++;
        }
        if ($i>=2) {
            $userdata->save();
            $status=1; 
        }
        return view('order/test')->with('msg',$status);
    }

    public function adduserapi(Request $request){
        try{
            $i=0;
            $status=false; 
            $input=$request->all();
            if (!empty($input['phone'])) {
                $userdata=Userdata::firstOrCreate(['phone'=>$input['phone']]);
                $userdata->phone=$input['phone'];
                $i++;
                if (!empty($input['name'])) {
                    $userdata->name=$input['name'];
                    $i++;
                }
                if (!empty($input['address'])) {
                    $userdata->address=$input['address'];
                    $i++;
                }
                if (!empty($input['from'])) {
                    $userdata->from=$from;
                    $from=$input['from'];
                    $keystr=split($from,'?');
                    if (!empty($keystr)) {
                        $keyword=Keyword::where('url','like',"%$keystr")->first();
                        if (!empty($keyword)) {
                            $userdata->qq=$keyword->keyword;
                        }
                    }
                    $i++;
                }
                if (!empty($input['qq'])) {
                    $userdata->qq=$input['qq'];
                    $i++;
                }
                if (!empty($input['weixin'])) {
                    $userdata->weixin=$input['weixin'];
                    $i++;
                }
                if ($i>=2) {
                    if($userdata->save())
                    {
                        $status=true;
                    }
                    else
                    {
                        $status=false;
                    }
                }
            }
        }catch(Exception $e){
            $status=$e;
        }
        return response()->json(['result' => $status]);
    }
}

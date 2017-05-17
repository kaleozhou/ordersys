<?php

use Illuminate\Database\Seeder;

class CustomerTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //随机生成后四位数
        $phones=array('136','151','181','139','182','186','157','180','185','177','187');
        $names=array('周','赵','王','孙','陈','吴','杨','聂','钱','李','袁');
        $provinces=array('安徽','重庆','北京市','广东','山东','江苏','河南','上海','河北','浙江','陕西','湖南 ','重庆','安徽','吉林' );
        $citys=array('养猪技术大全光盘版','养猪技术大全U盘版','养猪搭配套餐');

        foreach ($provinces as $key) {
            $i=0;
            $str1=rand(1001,9999);
            $str2=rand(1001,9999);
            $str1=substr($str1,-4);
            $str2=substr($str2,-4);
            $str3=rand(0,10);
            $str4=rand(0,10);
            $str5=rand(1,3);
            $str6=rand(0,2);
            switch ($str5) {
            case 1:
                $time=date('Y/m/d',strtotime('-1 day'));
                break;
            case 2:
                $time=date('Y/m/d',strtotime('-2 day'));
                break;
            case 3:
                $time=date('Y/m/d',strtotime('-3 day'));
                break;
            default:
                $time=date('Y/m/d',strtotime('0 day'));
                break;
            }
            $name=$names[$str3].'先生';
            $phonestr=$phones[$str4];
            if ($str6==2) {
                $area='500';
            }
            else {
                $area='298';
            }
            $phonestr=$phones[$str4];
            // code...
            DB::table('customers')->insert([
                'name'=>$name,
                'phone'=>$phonestr.'****'.$str2,
                'province'=>$key,
                'city'=>$citys[$str6],
                'area'=>$area,
                'address'=>'1',
                'created_at'=>$time,
                'updated_at'=>$time,
            ]);
            $i++;
        }
    }
}

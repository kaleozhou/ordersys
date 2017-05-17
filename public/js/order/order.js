function selectproduct(){
    var products=document.getElementsByName('wfproduct');
    for (var i = 0; i < products.length; i++) {
        if (products[i].checked==true) {
            var price=products[i].alt;
        };
    };
    var showprice=document.getElementById('showprice');
    var num=document.wfform.wfmun.value;
    var sum=price*num;
    showprice.innerHTML=sum.toFixed(2);
    document.getElementById('amount').value=sum.toFixed(2);
}


function login_fr_show () {
    document.getElementById("login_fr").style.display="block";
}

function  login_fr_none() {
    document.getElementById("login_fr").style.display="none";
}




function displayTime(){
//1.获取div元素
    var timeDiv=document.getElementById("timeDiv");
//2.获取系统当前时间

    var t = new Date();

    var n= t.getFullYear();
    var y =t.getMonth();
    var r =t.getDate();


    var h = t.getHours();
    var m = t.getMinutes();
    var s = t.getSeconds();
    var clock = (h >= 12) ? "下午":"上午";
    // h = (h > 12) ? h-12 :h;
    h = (h < 10) ? "0" + h : h;
    m = (m < 10) ? "0" + m : m;
    s = (s < 10) ? "0" + s : s;

    var nowTime =n+"/"+y+"/"+r+"<br>"+clock+" "+h+":"+m+":"+s;

    var strNowTime=nowTime.toLocaleString();
    //3.将系统时间设置到div元素中
    timeDiv.innerHTML=strNowTime;
}
//每隔1秒调用一次displayTime函数
function start(){
    window.setInterval("displayTime()",1000)//单位是毫秒
}
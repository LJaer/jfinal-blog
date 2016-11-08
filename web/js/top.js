$(document).ready(function () {
    var cookFirstCategoryId = getCookie("firstcategoryid");
    if(null==cookFirstCategoryId){
        setCookie("firstcategoryid","index-title");
    }
});

function titleChoice(obj){
    //获取点击的firstcategoryid
    var firstcategoryid = $(obj).attr("firstcategoryid");
    //secondcategoryid
    var secondcategoryid = -1;
    //获取cookie里的firstcategoryid
    var cookieFirstCategoryId = getCookie("firstcategoryid");
    var cookieSecondCategoryId = getCookie("secondcategoryid");
    delCookie("firstcategoryid");
    setCookie("firstcategoryid", firstcategoryid);
    //判断是否为首页
    if (firstcategoryid!="index-title"){
        window.location.href =  "/ArticleList?"+"page=1&firstcategoryid="+firstcategoryid+"&secondcategoryid="+secondcategoryid;
    }else{
        setCookie("firstcategoryid", "index-title");
        window.location.href = "/";
    }
}

function changeColor(obj){
    //获取当前firstCategoryId
    var cookieFirstCategoryId = getCookie("firstcategoryid");
    var firstCategoryId = $(obj).attr("firstcategoryid");
    var color = "red";
    var currentColor = $(obj).css("color");

    if (firstCategoryId!=cookieFirstCategoryId){
        if( currentColor !="rgb(255, 255, 255)"){
            color = "white";
        }
        $(obj).css("color",color);
    }
}

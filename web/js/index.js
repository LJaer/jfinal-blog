$(document).ready(function(){
    InitCarousel();
});

//照片轮播
function InitCarousel(){
    /*轮播间隔*/
    $('#myCarousel').carousel({
        interval: 2000
    })
    /*轮播图片html拼接*/
    var html;
    $.get(
        '/showPictures/picturesList',
        function(data){
            //轮播（Carousel）指标
            var carouselHtml1 = "";
            //轮播（Carousel）项目
            var carouselHtml2 = "";
            var picturesList = data;
            for(var i = 0;i<picturesList.length;i++){
                if (i==0){
                    carouselHtml1 +=  "<li data-target=\"#myCarousel\" data-slide-to=\""+i+"\" class=\"active\"></li>";
                    carouselHtml2 += "<div class=\"item active\"><img src=\"http://localhost:18080/showimage/"+picturesList[i].name+"\" alt=\"\"></div>";
                }else{
                    carouselHtml1 +=  "<li data-target=\"#myCarousel\" data-slide-to=\""+i+"\"></li>";
                    carouselHtml2 += "<div class=\"item\"><img src=\"http://localhost:18080/showimage/"+picturesList[i].name+"\" alt=\"\"></div>";
                }
            }
            $("#carousel-indicators-id").html(carouselHtml1);
            $("#carousel-inner-id").html(carouselHtml2);
        });
}
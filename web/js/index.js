// 点击按钮，返回顶部
function topFunction() {
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;
}

let index=24;
let indexSearch=24;
let count;

window.onload=function () {
    waterallowData();
};

function waterallowData() {
    $.post("image/getNewData/"+index,function (data) {
        console.log(data);
        $("#loadMessage").html("正在加载中...")
        if(data.data!=null){
            let i=0;
            data.data.forEach((image)=>{
                $("#center").append("<div class=\"col-md-4 col-sm-6\">\n" +
                    "                <div class=\"portfolio-item\">\n" +
                    "<!--                    大图-->\n" +
                    "                    <a href=\""+image.bigImageSrc+"\" data-lightbox=\"image-1\"><div class=\"thumb\">\n" +
                    "                        <div class=\"hover-effect\">\n" +
                    "                            <div class=\"hover-content\">\n" +
                    "                                <h1><strong>"+image.animeName+" </strong><em>"+image.imageRole+"</em></h1>\n" +
                    "                                <p style='margin: 0px'><span style='font-size: 1.2em;color: #5cb85c;font-weight: bold'>"+image.imageResolution+" </span>"+tagsIsEmpty(image.tags)+"</p>\n" +
                    // "                                 <p style=\"margin: 0;height: 15px;color: #b9def0\">上传者 "+image.imageAuthor+" "+image.imageSize+"</p>\n" +
                    "                            </div>\n" +
                    "                        </div>\n" +
                    "                        <div class=\"image\">\n" +
                    "<!--                            前台缩略图-->\n" +
                    "                            <img src=\""+image.smImageSrc+"\">\n" +
                    "                        </div>\n" +
                    "                    </div></a>\n" +
                    "                       <div class=\"div-hot\">\n" +
                    "                            <span class=\"author\">"+image.imageAuthor+" "+image.imageSize+"</span>\n" +
                    "                            <div class=\"hot\">\n" +
                    "                                <span class=\"hot-count\">"+image.imageLike+"</span>\n" +
                    "                                <p style='display: none' name='p-id' class='p"+i.toString()+"'>"+image.imageId+"</p>\n" +
                    "                                <img class=\"like\"  src=\"img/like-black.png\" style=\"width: 30px;\">\n" +
                    "                             </div>\n" +
                    "                        </div>"+
                    "                </div>\n" +
                    "            </div>")
                i++;
            });
            $("#loadMessage").html(data.errorMsg)
        } else {
            $("#loadMessage").html(data.errorMsg)
        }
        //每次加载过后都执行一遍
        userLikeShow();
        //加载到数据后index随后增加一
        if(data.flag){
            index+=24;
        }

    });
}
//判断标签是否为空
function tagsIsEmpty(tags){
    if(tags==null || tags==""){
        return "";
    }else {
        return tags.toString().replaceAll("#"," ")
    }
}

//设置点赞功能
$(document).click(function(e) { // 在页面任意位置点击而触发此事件
    if($(e.target).attr("class")=="like"){
        count=$(e.target).parent("div").children("span");
        let imageData={
            "imageLike":parseInt(count.html())+1,
            "imageId":$(e.target).parent("div").children("p").html()
        }
        // $(location).attr('href','login.html');

        $.get("image/likeImage",imageData,function (data){
            if(data.flag){
                count.html(parseInt(count.html())+1);
                $(e.target).attr("class","like-red");
            }
        });
        //计数加一

        // count.html((int)count.html()+1);
    }
})

//监听点击回车
document.onkeydown = function (e) {
    var theEvent = window.event || e;
    var code = theEvent.keyCode || theEvent.which || theEvent.charCode;
    if (code == 13) {
        searchInit();
    }
};

function searchInit() {
    if($("#input-search").val()==null || $("#input-search").val()==""){

    }else {
        $("#center").html("");
        $(".load-more-button").attr("onclick","search()")
        indexSearch=24;
        search()
    }
}

function search(){
    $.post("image/search/"+indexSearch,{search:$("#input-search").val()},function (data){
        console.log(data);
        $("#loadMessage").html("正在加载中...")
        if(data.data!=null){
            let i=0;
            data.data.forEach((image)=>{
                console.log(image);
                $("#center").append("<div class=\"col-md-4 col-sm-6\">\n" +
                    "                <div class=\"portfolio-item\">\n" +
                    "<!--                    大图-->\n" +
                    "                    <a href=\""+image.bigImageSrc+"\" data-lightbox=\"image-1\"><div class=\"thumb\">\n" +
                    "                        <div class=\"hover-effect\">\n" +
                    "                            <div class=\"hover-content\">\n" +
                    "                                <h1><strong>"+image.animeName+" </strong><em>"+image.imageRole+"</em></h1>\n" +
                    "                                <p style='margin: 0px'><span style='font-size: 1.2em;color: #5cb85c;font-weight: bold'>"+image.imageResolution+" </span>"+tagsIsEmpty(image.tags)+"</p>\n" +
                    // "                                 <p style=\"margin: 0;height: 15px;color: #b9def0\">上传者 "+image.imageAuthor+" "+image.imageSize+"</p>\n" +
                    "                            </div>\n" +
                    "                        </div>\n" +
                    "                        <div class=\"image\">\n" +
                    "<!--                            前台缩略图-->\n" +
                    "                            <img src=\""+image.smImageSrc+"\">\n" +
                    "                        </div>\n" +
                    "                    </div></a>\n" +
                    "                       <div class=\"div-hot\">\n" +
                    "                            <span class=\"author\">"+image.imageAuthor+" "+image.imageSize+"</span>\n" +
                    "                            <div class=\"hot\">\n" +
                    "                                <span class=\"hot-count\">"+image.imageLike+"</span>\n" +
                    "                                <p style='display: none' name='p-id' class='p"+i.toString()+"'>"+image.imageId+"</p>\n" +
                    "                                <img class=\"like\"  src=\"img/like-black.png\" style=\"width: 30px;\">\n" +
                    "                             </div>\n" +
                    "                        </div>"+
                    "                </div>\n" +
                    "            </div>")
                i++;
            });
            $("#loadMessage").html(data.errorMsg)
        } else {
            $("#loadMessage").html(data.errorMsg)
        }
        //每次加载过后都执行一遍
        userLikeShow();
        //加载到数据后index随后增加一
        if(data.flag){
            indexSearch+=24;
        }
    })
}

function userLikeShow(){
    $.get("image/userLikeShow",function (data){
        console.log(data);
        if(data.flag&&data.data!=null){
            data.data.forEach(userToImage=>{
                switch (userToImage.imageId) {
                    case $(".p0").html():
                        $(".p0").parent("div").children("img").attr("class","like-red");
                        $(".p0").removeAttr("class");
                        break;
                    case $(".p1").html():
                        $(".p1").parent("div").children("img").attr("class","like-red");
                        $(".p1").removeAttr("class");
                        break;
                    case $(".p2").html():
                        $(".p2").parent("div").children("img").attr("class","like-red");
                        $(".p2").removeAttr("class");
                        break;
                    case $(".p3").html():
                        $(".p3").parent("div").children("img").attr("class","like-red");
                        $(".p3").removeAttr("class");
                        break;
                    case $(".p4").html():
                        $(".p4").parent("div").children("img").attr("class","like-red");
                        $(".p4").removeAttr("class");
                        break;
                    case $(".p5").html():
                        $(".p5").parent("div").children("img").attr("class","like-red");
                        $(".p5").removeAttr("class");
                        break;
                    case $(".p6").html():
                        $(".p6").parent("div").children("img").attr("class","like-red");
                        $(".p6").removeAttr("class");
                        break;
                    case $(".p7").html():
                        $(".p7").parent("div").children("img").attr("class","like-red");
                        $(".p7").removeAttr("class");
                        break;
                    case $(".p8").html():
                        $(".p8").parent("div").children("img").attr("class","like-red");
                        $(".p8").removeAttr("class");
                        break;
                    case $(".p9").html():
                        $(".p9").parent("div").children("img").attr("class","like-red");
                        $(".p9").removeAttr("class");
                        break;
                    case $(".p10").html():
                        $(".p10").parent("div").children("img").attr("class","like-red");
                        $(".p10").removeAttr("class");
                        break;
                    case $(".p11").html():
                        $(".p11").parent("div").children("img").attr("class","like-red");
                        $(".p11").removeAttr("class");
                        break;
                    case $(".p12").html():
                        $(".p12").parent("div").children("img").attr("class","like-red");
                        $(".p12").removeAttr("class");
                        break;
                    case $(".p13").html():
                        $(".p13").parent("div").children("img").attr("class","like-red");
                        $(".p13").removeAttr("class");
                        break;
                    case $(".p14").html():
                        $(".p14").parent("div").children("img").attr("class","like-red");
                        $(".p14").removeAttr("class");
                        break;
                    case $(".p15").html():
                        $(".p15").parent("div").children("img").attr("class","like-red");
                        $(".p15").removeAttr("class");
                        break;
                    case $(".p16").html():
                        $(".p16").parent("div").children("img").attr("class","like-red");
                        $(".p16").removeAttr("class");
                        break;
                    case $(".p17").html():
                        $(".p17").parent("div").children("img").attr("class","like-red");
                        $(".p17").removeAttr("class");
                        break;
                    case $(".p18").html():
                        $(".p18").parent("div").children("img").attr("class","like-red");
                        $(".p18").removeAttr("class");
                        break;
                    case $(".p19").html():
                        $(".p19").parent("div").children("img").attr("class","like-red");
                        $(".p19").removeAttr("class");
                        break;
                    case $(".p20").html():
                        $(".p20").parent("div").children("img").attr("class","like-red");
                        $(".p20").removeAttr("class");
                        break;
                    case $(".p21").html():
                        $(".p21").parent("div").children("img").attr("class","like-red");
                        $(".p21").removeAttr("class");
                        break;
                    case $(".p22").html():
                        $(".p22").parent("div").children("img").attr("class","like-red");
                        $(".p22").removeAttr("class");
                        break;
                    case $(".p23").html():
                        $(".p23").parent("div").children("img").attr("class","like-red");
                        $(".p23").removeAttr("class");
                        break;
                }
            })
            $("p[name='p-id']").removeAttr("class");
        }
    })
}






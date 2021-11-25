// 点击按钮，返回顶部
function topFunction() {
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;
}


let index=24;
let id=0;

$(function () {
    waterallowData();
});



function waterallowData() {
    $.post("image/getMeData/"+index,function (data) {
        console.log(data);
        $("#loadMessage").html("正在加载中...")
        if(data.data!=null){
            data.data.forEach((image)=>{
                console.log(image);
                $("#center").append("<div class=\"col-md-4 col-sm-6\">\n" +
                    "                <div class=\"portfolio-item\">\n" +
                    "<!--                    大图-->\n" +
                    "                    <a href=\""+image.bigImageSrc+"\" data-lightbox=\"image-1\"><div class=\"thumb\">\n" +
                    "                        <div class=\"hover-effect\">\n" +
                    "                            <div class=\"hover-content\">\n" +
                    "                                <h1><strong>"+image.animeName+" </strong><em>"+image.imageRole+"</em></h1>\n" +
                    "                                <p style=\"margin: 0;height: 15px\">"+tagsIsEmpty(image.tags)+"</p>\n" +
                    "                                 <p style=\"margin: 0;height: 15px;color: #b9def0\">上传者 "+image.imageAuthor+" "+image.imageSize+"</p>\n" +
                    "                            </div>\n" +
                    "                        </div>\n" +
                    "                        <div class=\"image\">\n" +
                    "<!--                            前台缩略图-->\n" +
                    "                            <img src=\""+image.smImageSrc+"\">\n" +
                    "                        </div>\n" +
                    "                    </div></a>\n" +
                    "                </div>\n" +
                    "               <button class=\"btn-delete\" style='float: right;'>删除<span style='display: none'>"+image.imageId+"</span>\n</button>\n"+
                    "            </div>")
            });
            $("#loadMessage").html(data.errorMsg)
        } else {
            $("#loadMessage").html(data.errorMsg)
        }
        //加载到数据后index随后增加一
        if(data.flag){
            index+=24;
        }

    });
}

function tagsIsEmpty(tags){
    if(tags==null || tags==""){
        return "";
    }else {
        return tags.toString().replaceAll("#"," ")
    }
}
//  "                <div class=\"delete\"></div><button onclick=\"isDelete()\" class=\"btn btn-warning\">删除</button></div>\n"+

$(document).click(function(e) { // 在页面任意位置点击而触发此事件
    if($(e.target).attr("class")=="btn-delete"){
        $("#is-delete").css("display","block");
        id=$(e.target).children('span').html()
    }
})

//点击是的操作
function deleteYes (){
    console.log(id);
    $.post("image/deleteImage",{"id":id},function (data){
        $("#is-delete").css("display","none");
        alert(data.errorMsg);
        $(location).attr('href','me.html');
    })
}

function deleteNo(){
    $("#is-delete").css("display","none");
}








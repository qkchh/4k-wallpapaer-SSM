//监听点击回车
document.onkeydown = function (e) { // 回车提交表单
// 兼容FF和IE和Opera
    var theEvent = window.event || e;
    var code = theEvent.keyCode || theEvent.which || theEvent.charCode;
    if (code == 13) {
        addTags();
    }
};

function addTags() {
    let tags=$("#tags").val();
    if(tags!=""){
        $("#tags").val("")
        $("#text-ul").append("<li title='tt'>"+tags+"</li>");
    }
}


//点击上传按钮提交数据
$(document).ready(function(){
    $("#submit").click(function () {
        $("#message").css("display","block")
        $("#message").css("color","#ccc")
        $("#message").html("正在上传中...<img src=\"img/loading.gif\" style=\"width: auto\">");
        // $("#submit").attr("type","submit");
        let tags="";
        $("#text-ul li").each(function () {
            tags+=$(this).text()+"#";
        });
        let formData = new FormData();
        formData.append( "imageTags",tags);
        formData.append( "imageAnimeName",$("#animeName").val());
        formData.append( "imageRole",$("#imageRole").val());
        let files=$("#imageFile")[0].files;
        for (i=0;i<files.length;i++){
            console.log(files[i]);
            formData.append("imageFile",files[i]);
        }
        // $.post("image/upload",formData,function (){
        //     console.log("123");
        // })
        $.ajax({
            url:"image/upload",
            type:"post",
            data:formData,
            processData: false, // 告诉jQuery不要去处理发送的数据
            contentType: false, // 告诉jQuery不要去设置Content-Type请求头
            success: function(data) {
                console.log(data);
                console.log(data.errorMsg);
                if(!data.flag){
                    $("#message").css("color","red")
                    $("#message").html(data.errorMsg);

                }else {
                    $("#message").css("color","#ccc")
                    $("#message").html(data.errorMsg);
                    $(location).attr('href','me.html');
                }
            }
        })
    });
});

//点击标签取消上传标签
$(document).click(function(e) {
   if($(e.target)[0].tagName=="LI"){
       $(e.target).remove();
   }
});



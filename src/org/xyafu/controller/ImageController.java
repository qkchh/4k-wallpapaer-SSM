package org.xyafu.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.xyafu.dao.ImageLikeDao;
import org.xyafu.pojo.*;
import org.xyafu.service.BigImageService;
import org.xyafu.service.ImageLikeService;
import org.xyafu.service.ImageService;
import org.xyafu.service.SmImageService;
import org.xyafu.utils.ImageUtils;
import org.xyafu.utils.KeyCodeImageUtil;
import org.xyafu.utils.UuidUtil;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.text.DecimalFormat;
import java.util.List;


@RestController
@RequestMapping("/image")
public class ImageController {

    @Autowired
    private ImageService imageService;
    @Autowired
    private BigImageService bigImageService;
    @Autowired
    private SmImageService smImageService;
    @Autowired
    private ImageLikeService imageLikeService;
    //定义一个image类
    Image image = new Image();
    //定义一个计数类，计算图片的总条数
    Integer count=0;
    //声明获取小数后两位
    DecimalFormat df = new DecimalFormat("0.00");

    /**
     * 获取图片数据并返回页面
     */
    @PostMapping("/getData/{index}")
    public ResultInfo getData(@PathVariable("index") Integer index){
        //初始化的时候获取总条数
        if(count==0){
            count=imageService.findCount();
        }
        //如果请求大于count总条数，就终止请求并返回前端
        if(!(index-24<count)){
            return new ResultInfo(false,"已经加载到底了");
        }
        //用image收集index便于后面数据库的查询
        image.setEnd(index);
        image.setStart(index-24);
        //调用数据库进行分页查询
        List<Image> imageSrc = imageService.findImageSrcByIndex(image);
        //如果imageSrc.size()小于24则输出到底了
        System.out.println(imageSrc.size()%24!=0);
        if(imageSrc.size()%24!=0){
            return new ResultInfo(true,imageSrc,"已经加载到底了");
        }
        return new ResultInfo(true,imageSrc,"加载更多");
    }

    /**
     * 最新发布的图片
     */
    @PostMapping("/getNewData/{index}")
    public ResultInfo getNewData(@PathVariable("index") Integer index){
        //初始化的时候获取总条数
        if(count==0){
            count=imageService.findCount();
        }
        //如果请求大于count总条数，就终止请求并返回前端
        if(!(index-24<count)){
            return new ResultInfo(false,"已经加载到底了");
        }
        //用image收集index便于后面数据库的查询
        image.setEnd(index);
        image.setStart(index-24);
        //调用数据库进行分页查询
        List<Image> imageSrc = imageService.findImageSrcByDate(image);
        System.out.println(index);
        //如果imageSrc.size()小于24则输出到底了
        System.out.println(imageSrc.size()%24!=0);
        if(imageSrc.size()%24!=0){
            return new ResultInfo(true,imageSrc,"已经加载到底了");
        }
        return new ResultInfo(true,imageSrc,"加载更多");
    }

    /**
     * 最热的图片
     */
    @PostMapping("/getHotData/{index}")
    public ResultInfo getHotData(@PathVariable("index") Integer index){
        //初始化的时候获取总条数
        if(count==0){
            count=imageService.findCount();
        }
        //如果请求大于count总条数，就终止请求并返回前端
        if(!(index-24<count)){
            return new ResultInfo(false,"已经加载到底了");
        }
        //用image收集index便于后面数据库的查询
        image.setEnd(index);
        image.setStart(index-24);
        //调用数据库进行分页查询
        List<Image> imageSrc = imageService.findImageSrcByHotLike(image);
        //如果imageSrc.size()小于24则输出到底了
        System.out.println(imageSrc.size()%24!=0);
        if(imageSrc.size()%24!=0){
            return new ResultInfo(true,imageSrc,"已经加载到底了");
        }
        return new ResultInfo(true,imageSrc,"加载更多");
    }

    /**
     * 图片的上传
     */
    @PostMapping("/upload")
    public ResultInfo upload(@RequestPart("imageFile") List<MultipartFile> imageFile,ImageMessage imageMessage,HttpServletRequest request){
        //设置前台传来的数据信息
        image.setAnimeName(imageMessage.getImageAnimeName());
        image.setImageRole(imageMessage.getImageRole());
        image.setTags(imageMessage.getImageTags());

        //上传图片
        System.out.println(imageFile.size());
        if(imageFile!=null){
            if(imageFile.size() > 0){
                for (MultipartFile MuImage : imageFile) {
                    if(!MuImage.isEmpty()){
                        //生成一个uuid作为文件的名字 //获取图片的类型作为后缀
                        Long uuid= ImageUtils.getSnowId();
                        String imageId=uuid.toString();
                        String name=imageId+"."+MuImage.getContentType().split("/")[1];
                        image.setImageId(imageId);
                        //获取Size大小
                        Double size_mb= Double.parseDouble(String.valueOf(MuImage.getSize())) / (1024*1024);
                        String imageSize = df.format(size_mb)+"MB";
                        image.setImageSize(imageSize);
                        //获取图片名称
                        String imageName=MuImage.getOriginalFilename();
                        image.setImageName(imageName);
                        try {
                            //生成BufferedImage类型用来获取分辨率
                            BufferedImage images = ImageIO.read(MuImage.getInputStream());
                            String imageResolution=images.getWidth()+" * " +images.getHeight();
                            image.setImageResolution(imageResolution);

                            //下载到文件夹
                            File file=new File("E:/Java/Java03作业/images/bigImages/"+name);
                            MuImage.transferTo(file);
                            image.setBigImageSrc("/images/bigImages/"+name);
                            //生成缩略图
                            ImageUtils.ScalingOfCutting(file,"E:/Java/Java03作业/images/smImages/"+imageId);
                            image.setSmImageSrc("/images/smImages/"+imageId+".jpg");
                        } catch (IOException e) {
                            e.printStackTrace();
                            return new ResultInfo(false,"数据上传异常");
                        }
                        //临时设置一个用户
                        ImageUser user=(ImageUser)request.getSession().getAttribute("user");
                        image.setImageAuthor(user.getImageUserName());
                        System.out.println(image.toString());
                        //最后向数据库插入内容
                        int b = imageService.insertAll(image);
                        if(b<=0){
                            return new ResultInfo(false,"数据上传失败");
                        }
                    }
                }
            }
        }
        return new ResultInfo(true,"图片上传成功");
    }

    /**
     * 我的上传图片
     */
    @PostMapping("/getMeData/{index}")
    public ResultInfo getMeData(@PathVariable("index") Integer index, HttpSession session){
        ImageUser user = (ImageUser) session.getAttribute("user");
        if(user==null){
            return new ResultInfo(false,"当前用户未登录");
        }
        //初始化的时候获取总条数
        if(count==0){
            count=imageService.findCount();
        }
        //如果请求大于count总条数，就终止请求并返回前端
        if(!(index-24<count)){
            return new ResultInfo(false,"已经加载到底了");
        }
        //用image收集index便于后面数据库的查询
        image.setEnd(index);
        image.setStart(index-24);
        image.setImageAuthor(user.getImageUserName());
        //调用数据库进行分页查询
        List<Image> imageSrc = imageService.findImageSrcByUser(image);
        System.out.println(index);
        //如果imageSrc.size()小于24则输出到底了
        System.out.println(imageSrc.size()%24!=0);
        if(imageSrc.size()%24!=0){
            return new ResultInfo(true,imageSrc,"已经加载到底了");
        }
        //当前用户页面下没有图片时候
        if(imageSrc.size()==0){
            return new ResultInfo(true,imageSrc,"还没上传过图片，上传个图片试试吧");
        }
        return new ResultInfo(true,imageSrc,"加载更多");
    }

    /**
     * 删除图片操作
     */
    @PostMapping("/deleteImage")
    public ResultInfo deleteImage(String id){
        image.setImageId(id);
        int i = imageService.deleteImage(image);
        if(i<=0){
            return new ResultInfo(false,"删除图片失败");
        }
        return new ResultInfo(true,"删除图片成功");
    }

    /**
     * 图片的点赞数
     */
    @GetMapping("/likeImage")
    public ResultInfo likeImage(ImageData imageData,HttpSession session){
        int b = imageLikeService.updateImageLike(imageData);
        if(b<=0){
            return new ResultInfo(false,"修改失败");
        }
        if(session.getAttribute("user")!=null){
            ImageUser user=(ImageUser) session.getAttribute("user");
            UserToImage userToImage = new UserToImage();
            userToImage.setUserAndImage(UuidUtil.getUuid());
            userToImage.setUserName(user.getImageUserName());
            userToImage.setImageId(imageData.getImageId());
            imageLikeService.insertUserToImage(userToImage);
        }
        return new ResultInfo(true,"修改成功");
    }

    /**
     * 用户点赞过的图片显示
     */
    @GetMapping("/userLikeShow")
    public ResultInfo userLikeShow(HttpSession session){
        if(session.getAttribute("user")!=null){
            ImageUser user = (ImageUser) session.getAttribute("user");
            List<UserToImage> all = imageLikeService.findAll(user);
            return new ResultInfo(true,all,"查询成功");
        }
        return new ResultInfo(false);
    }

    /**
     * 图片搜索
     */
    @PostMapping ("/search/{indexSearch}")
    public ResultInfo searchImage(String search,@PathVariable("indexSearch") Integer index){
        search="%"+search+"%";
        //初始化的时候获取总条数
        if(count==0){
            count=imageService.findCount();
        }
        //如果请求大于count总条数，就终止请求并返回前端
        if(!(index-24<count)){
            return new ResultInfo(false,"已经加载到底了");
        }
        //用image收集index便于后面数据库的查询
        image.setEnd(index);
        image.setStart(index-24);
        image.setTags(search);
        //调用数据库进行分页查询
        List<Image> imageSrc = imageService.findImageSrcByLike(image);
        System.out.println(imageSrc.size());
        //如果imageSrc.size()小于24则输出到底了
        System.out.println(imageSrc.size()%24!=0);
        if(imageSrc.size()%24!=0){
            return new ResultInfo(true,imageSrc,"已经加载到底了");
        }
        return new ResultInfo(true,imageSrc,"加载更多");
    }

    /**
     * 我的喜欢
     */
    @PostMapping("/getMyLikeData/{index}")
    public ResultInfo getMyLikeData(@PathVariable("index") Integer index,HttpSession session){
        //初始化的时候获取总条数
        if(count==0){
            count=imageService.findCount();
        }
        //如果请求大于count总条数，就终止请求并返回前端
        if(!(index-24<count)){
            return new ResultInfo(false,"已经加载到底了");
        }
        ImageUser user = (ImageUser) session.getAttribute("user");
        if(user==null){
            return new ResultInfo(false,"当前用户未登录");
        }
        //用image收集index便于后面数据库的查询
        image.setEnd(index);
        image.setStart(index-24);
        image.setImageUserName(user.getImageUserName());
        //调用数据库进行分页查询
        List<Image> imageSrc = imageService.findImageSrcByMyLike(image);
        //如果imageSrc.size()小于24则输出到底了
        System.out.println(imageSrc.size()%24!=0);
        if(imageSrc.size()%24!=0){
            return new ResultInfo(true,imageSrc,"已经加载到底了");
        }
        return new ResultInfo(true,imageSrc,"加载更多");
    }
}

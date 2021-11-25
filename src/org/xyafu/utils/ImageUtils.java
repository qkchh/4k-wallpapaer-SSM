package org.xyafu.utils;

import net.coobird.thumbnailator.Thumbnails;
import net.coobird.thumbnailator.geometry.Positions;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;

public final class ImageUtils {

    /**
     * 缩放图片并裁剪466*360
     * @param fromPic 传入图片文件
     * @param toPic 传出路径
     */
    public static void ScalingOfCutting(File fromPic, String toPic) throws IOException {
        //压缩至指定图片尺寸，保持图片不变形，多余部分裁剪掉
        //压缩至指定图片尺寸（例如：横400高300），保持图片不变形，多余部分裁剪掉
        BufferedImage image = ImageIO.read(fromPic);
        Thumbnails.Builder builder = null;
        int imageWidth = image.getWidth();
        int imageHeitht = image.getHeight();
        if ((float)360 / 466 != (float)imageWidth / imageHeitht) {
            if (imageWidth > imageHeitht) {
                image = Thumbnails.of(fromPic)
                        .height(360)
                        .outputQuality(1.0)
                        .asBufferedImage();
            } else {
                image = Thumbnails
                        .of(fromPic)
                        .width(466)
                        .outputQuality(1.0)
                        .asBufferedImage();
            }
            builder = Thumbnails.of(image)
                    .sourceRegion(Positions.CENTER, 466, 360)
                    .outputQuality(1.0)
                    .size(466, 360);
        } else {
            builder = Thumbnails.of(image)
                    .outputQuality(1.0)
                    .size(466, 360);
        }
        builder.outputFormat("jpg").toFile(toPic);
        //scale 参数是浮点数,大于1表示放大,小于1表示缩小
        //outputQuality 参数是浮点数,质量压缩,0-1之间
        //keepAspectRatio 在调整尺寸时保持比例,默认为true,如果要剪裁到特定的比例,设置为false即可
    }

    /**
     * 获取雪花ID
     */
    public static long getSnowId(){
        IdWorker idWorker = new IdWorker(1,1,1);
        return idWorker.nextId();
    }


}

package org.xyafu.pojo;

import java.util.Date;

public class Image {
    private String imageId;//图片的id
    private String bigImageSrc;//小图片的路径
    private String smImageSrc;//大图片的路径
    private Integer start;//分页的开始值
    private Integer end;//分页的结束值
    private String tags;//图片的标签
    private String animeName;//图片的动漫名称后游戏名称
    private String imageRole;//图片的动漫角色
    private String imageAuthor;//上传者的用户名
    private String imageSize;//图片的大小
    private Date upDate;//图片删除时间
    private Date deleteDate;//图片删除时间
    private int imageLike;//图片的点赞数
    private String imageName;//图片上传的名称
    private String imageResolution;//图片的分辨率
    private String imageUserName;//图片上传者

    public String getBigImageSrc() {
        return bigImageSrc;
    }

    public void setBigImageSrc(String bigImageSrc) {
        this.bigImageSrc = bigImageSrc;
    }

    public String getSmImageSrc() {
        return smImageSrc;
    }

    public void setSmImageSrc(String smImageSrc) {
        this.smImageSrc = smImageSrc;
    }

    public Integer getStart() {
        return start;
    }

    public void setStart(Integer start) {
        this.start = start;
    }

    public Integer getEnd() {
        return end;
    }

    public void setEnd(Integer end) {
        this.end = end;
    }

    public String getTags() {
        return tags;
    }

    public void setTags(String tags) {
        this.tags = tags;
    }

    public String getAnimeName() {
        return animeName;
    }

    public void setAnimeName(String animeName) {
        this.animeName = animeName;
    }

    public String getImageRole() {
        return imageRole;
    }

    public void setImageRole(String imageRole) {
        this.imageRole = imageRole;
    }

    public String getImageId() {
        return imageId;
    }

    public void setImageId(String imageId) {
        this.imageId = imageId;
    }

    public String getImageSize() {
        return imageSize;
    }

    public void setImageSize(String imageSize) {
        this.imageSize = imageSize;
    }

    public String getImageAuthor() {
        return imageAuthor;
    }

    public void setImageAuthor(String imageAuthor) {
        this.imageAuthor = imageAuthor;
    }

    public Date getDeleteDate() {
        return deleteDate;
    }

    public void setDeleteDate(Date deleteDate) {
        this.deleteDate = deleteDate;
    }

    public int getImageLike() {
        return imageLike;
    }

    public void setImageLike(int imageLike) {
        this.imageLike = imageLike;
    }

    public String getImageName() {
        return imageName;
    }

    public void setImageName(String imageName) {
        this.imageName = imageName;
    }

    public String getImageResolution() {
        return imageResolution;
    }

    public void setImageResolution(String imageResolution) {
        this.imageResolution = imageResolution;
    }

    public Date getUpDate() {
        return upDate;
    }

    public void setUpDate(Date upDate) {
        this.upDate = upDate;
    }

    public String getImageUserName() {
        return imageUserName;
    }

    public void setImageUserName(String imageUserName) {
        this.imageUserName = imageUserName;
    }

    @Override
    public String toString() {
        return "Image{" +
                "imageId='" + imageId + '\'' +
                ", bigImageSrc='" + bigImageSrc + '\'' +
                ", smImageSrc='" + smImageSrc + '\'' +
                ", start=" + start +
                ", end=" + end +
                ", tags='" + tags + '\'' +
                ", animeName='" + animeName + '\'' +
                ", imageRole='" + imageRole + '\'' +
                ", imageAuthor='" + imageAuthor + '\'' +
                ", imageSize='" + imageSize + '\'' +
                ", upDate=" + upDate +
                ", deleteDate=" + deleteDate +
                ", imageLike=" + imageLike +
                ", imageName='" + imageName + '\'' +
                ", imageResolution='" + imageResolution + '\'' +
                ", imageUserName='" + imageUserName + '\'' +
                '}';
    }
}

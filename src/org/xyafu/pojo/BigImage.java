package org.xyafu.pojo;


import java.util.Date;

public class BigImage {
    private String bigImageId;
    private String bigImageAuthor,bigImageSrc,bigImageResolution;
    private String bigImageAnimeName,bigImageRole;
    private String bigImageName,bigImageSize,bigImageTags;
    private Date bigImageUpDate,bigImageDeleteDate;
    private int bigImageDeleteState;

    public String getBigImageId() {
        return bigImageId;
    }

    public void setBigImageId(String bigImageId) {
        this.bigImageId = bigImageId;
    }

    public String getBigImageAuthor() {
        return bigImageAuthor;
    }

    public void setBigImageAuthor(String bigImageAuthor) {
        this.bigImageAuthor = bigImageAuthor;
    }

    public String getBigImageSrc() {
        return bigImageSrc;
    }

    public void setBigImageSrc(String bigImageSrc) {
        this.bigImageSrc = bigImageSrc;
    }

    public String getBigImageResolution() {
        return bigImageResolution;
    }

    public void setBigImageResolution(String bigImageResolution) {
        this.bigImageResolution = bigImageResolution;
    }

    public String getBigImageName() {
        return bigImageName;
    }

    public void setBigImageName(String bigImageName) {
        this.bigImageName = bigImageName;
    }

    public String getBigImageSize() {
        return bigImageSize;
    }

    public void setBigImageSize(String bigImageSize) {
        this.bigImageSize = bigImageSize;
    }

    public String getBigImageTags() {
        return bigImageTags;
    }

    public void setBigImageTags(String bigImageTags) {
        this.bigImageTags = bigImageTags;
    }

    public String getBigImageAnimeName() {
        return bigImageAnimeName;
    }

    public void setBigImageAnimeName(String bigImageAnimeName) {
        this.bigImageAnimeName = bigImageAnimeName;
    }

    public String getBigImageRole() {
        return bigImageRole;
    }

    public void setBigImageRole(String bigImageRole) {
        this.bigImageRole = bigImageRole;
    }

    public Date getBigImageUpDate() {
        return bigImageUpDate;
    }

    public void setBigImageUpDate(Date bigImageUpDate) {
        this.bigImageUpDate = bigImageUpDate;
    }

    public Date getBigImageDeleteDate() {
        return bigImageDeleteDate;
    }

    public void setBigImageDeleteDate(Date bigImageDeleteDate) {
        this.bigImageDeleteDate = bigImageDeleteDate;
    }

    public int getBigImageDeleteState() {
        return bigImageDeleteState;
    }

    public void setBigImageDeleteState(int bigImageDeleteState) {
        this.bigImageDeleteState = bigImageDeleteState;
    }

    @Override
    public String toString() {
        return "BigImage{" +
                "bigImageId=" + bigImageId +
                ", bigImageAuthor='" + bigImageAuthor + '\'' +
                ", bigImageSrc='" + bigImageSrc + '\'' +
                ", bigImageResolution='" + bigImageResolution + '\'' +
                ", bigImageAnimeName='" + bigImageAnimeName + '\'' +
                ", bigImageRole='" + bigImageRole + '\'' +
                ", bigImageName='" + bigImageName + '\'' +
                ", bigImageSize='" + bigImageSize + '\'' +
                ", bigImageTags='" + bigImageTags + '\'' +
                ", bigImageUpDate=" + bigImageUpDate +
                ", bigImageDeleteDate=" + bigImageDeleteDate +
                ", bigImageDeleteState=" + bigImageDeleteState +
                '}';
    }
}

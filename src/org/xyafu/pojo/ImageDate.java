package org.xyafu.pojo;

import java.util.Date;

public class ImageDate {
    private String imageId;
    private Date imageUpDate,imageDeleteDate;

    public String getImageId() {
        return imageId;
    }

    public void setImageId(String imageId) {
        this.imageId = imageId;
    }

    public Date getImageUpDate() {
        return imageUpDate;
    }

    public void setImageUpDate(Date imageUpDate) {
        this.imageUpDate = imageUpDate;
    }

    public Date getImageDeleteDate() {
        return imageDeleteDate;
    }

    public void setImageDeleteDate(Date imageDeleteDate) {
        this.imageDeleteDate = imageDeleteDate;
    }
}

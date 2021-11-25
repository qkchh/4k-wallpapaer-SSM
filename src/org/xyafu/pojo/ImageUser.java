package org.xyafu.pojo;

public class ImageUser {
    private String imageUserId;
    private String imageUserName;
    private String imageUserPassword;

    public String getImageUserId() {
        return imageUserId;
    }

    public void setImageUserId(String imageUserId) {
        this.imageUserId = imageUserId;
    }

    public String getImageUserName() {
        return imageUserName;
    }

    public void setImageUserName(String imageUserName) {
        this.imageUserName = imageUserName;
    }

    public String getImageUserPassword() {
        return imageUserPassword;
    }

    public void setImageUserPassword(String imageUserPassword) {
        this.imageUserPassword = imageUserPassword;
    }

    @Override
    public String toString() {
        return "ImageUser{" +
                "imageUserId='" + imageUserId + '\'' +
                ", imageUserName='" + imageUserName + '\'' +
                ", imageUserPassword='" + imageUserPassword + '\'' +
                '}';
    }
}

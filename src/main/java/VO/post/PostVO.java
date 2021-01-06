package VO.post;

public class PostVO {
    private int postId;
    private String postType;
    private String rentalFee;
    private String postTitle;
    private String postContents;
    private String rentalDate;
    private int like;
    private int dislike;
    private int viewCnt;
    private int delYn;
    private String createDate;
    private String writer;
    private String image1;
    private String image2;
    private String image3;

    public int getPostId() {
        return postId;
    }

    public void setPostId(int postId) {
        this.postId = postId;
    }

    public String getWriter() {
        return writer;
    }

    public void setWriter(String writer) {
        this.writer = writer;
    }

    public String getPostType() {
        return postType;
    }

    public void setRentalFee(String rentalFee) {
        this.rentalFee = rentalFee;
    }

    public String getRentalFee() {
        return rentalFee;
    }

    public void setPostType(String postType) {
        this.postType = postType;
    }

    public String getPostTitle() {
        return postTitle;
    }

    public void setPostTitle(String postTitle) {
        this.postTitle = postTitle;
    }

    public String getPostContents() {
        return postContents;
    }

    public void setPostContents(String postContents) {
        this.postContents = postContents;
    }

    public String getRentalDate() {
        return rentalDate;
    }

    public void setRentalDate(String rentalDate) {
        this.rentalDate = rentalDate;
    }

    public int getLike() {
        return like;
    }

    public void setLike(int like) {
        this.like = like;
    }

    public int getDislike() {
        return dislike;
    }

    public void setDislike(int dislike) {
        this.dislike = dislike;
    }

    public int getViewCnt() {
        return viewCnt;
    }

    public void setViewCnt(int viewCnt) {
        this.viewCnt = viewCnt;
    }

    public int getDelYn() {
        return delYn;
    }

    public void setDelYn(int delYn) {
        this.delYn = delYn;
    }

    public String getCreateDate() {
        return createDate;
    }

    public void setCreateDate(String createDate) {
        this.createDate = createDate;
    }

    public String getImage1() {
        return image1;
    }

    public void setImage1(String image1) {
        this.image1 = image1;
    }

    public String getImage2() {
        return image2;
    }

    public void setImage2(String image2) {
        this.image2 = image2;
    }

    public String getImage3() {
        return image3;
    }

    public void setImage3(String image3) {
        this.image3 = image3;
    }

    @Override
    public String toString() {
        return "PostVO{" +
            "postId=" + postId +
            ", postType='" + postType + '\'' +
            ", rentalFee='" + rentalFee + '\'' +
            ", postTitle='" + postTitle + '\'' +
            ", postContents='" + postContents + '\'' +
            ", rentalDate='" + rentalDate + '\'' +
            ", like=" + like +
            ", dislike=" + dislike +
            ", viewCnt=" + viewCnt +
            ", delYn=" + delYn +
            ", createDate='" + createDate + '\'' +
            ", writer='" + writer + '\'' +
            ", image1='" + image1 + '\'' +
            ", image2='" + image2 + '\'' +
            ", image3='" + image3 + '\'' +
            '}';
    }
}

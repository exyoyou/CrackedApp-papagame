package com.join.mgps.dto;

import com.join.mgps.rpc.h;

/* JADX INFO: loaded from: classes3.dex */
public class ShareBean {
    private String articleId;
    private int from;
    private String gameId;
    private String imagePath;
    private String imageUrl;
    private BannerBean intentData;
    private String qZoneShareUrl;
    private String qqUrl;
    private int target;
    private String text;
    private String title;
    private String wechatFriendUrl;
    private String wechatShareUrl;
    private String weiboShareUrl;

    public ShareBean() {
        this.imageUrl = h.M + "/upload/images/wf_ico.png?ver=2.2";
        this.gameId = "0";
    }

    public String getArticleId() {
        return this.articleId;
    }

    public int getFrom() {
        return this.from;
    }

    public String getGameId() {
        return this.gameId;
    }

    public String getImagePath() {
        return this.imagePath;
    }

    public String getImageUrl() {
        return this.imageUrl;
    }

    public BannerBean getIntentData() {
        return this.intentData;
    }

    public String getQqUrl() {
        return this.qqUrl;
    }

    public int getTarget() {
        return this.target;
    }

    public String getText() {
        return this.text;
    }

    public String getTitle() {
        return this.title;
    }

    public String getWechatFriendUrl() {
        return this.wechatFriendUrl;
    }

    public String getWechatShareUrl() {
        return this.wechatShareUrl;
    }

    public String getWeiboShareUrl() {
        return this.weiboShareUrl;
    }

    public String getqZoneShareUrl() {
        return this.qZoneShareUrl;
    }

    public void setArticleId(String articleId) {
        this.articleId = articleId;
    }

    public void setFrom(int from) {
        this.from = from;
    }

    public void setGameId(String gameId) {
        this.gameId = gameId;
    }

    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    public void setIntentData(BannerBean intentData) {
        this.intentData = intentData;
    }

    public void setQqUrl(String qqUrl) {
        this.qqUrl = qqUrl;
    }

    public void setTarget(int target) {
        this.target = target;
    }

    public void setText(String text) {
        this.text = text;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setWechatFriendUrl(String wechatFriendUrl) {
        this.wechatFriendUrl = wechatFriendUrl;
    }

    public void setWechatShareUrl(String wechatShareUrl) {
        this.wechatShareUrl = wechatShareUrl;
    }

    public void setWeiboShareUrl(String weiboShareUrl) {
        this.weiboShareUrl = weiboShareUrl;
    }

    public void setqZoneShareUrl(String qZoneShareUrl) {
        this.qZoneShareUrl = qZoneShareUrl;
    }

    public String toString() {
        return "ShareBean{imageUrl='" + this.imageUrl + "', title='" + this.title + "', text='" + this.text + "', weiboShareUrl='" + this.weiboShareUrl + "', qZoneShareUrl='" + this.qZoneShareUrl + "', wechatShareUrl='" + this.wechatShareUrl + "', wechatFriendUrl='" + this.wechatFriendUrl + "', qqUrl='" + this.qqUrl + "'}";
    }

    public ShareBean(String imageUrl, String title, String text, String weiboShareUrl, String qZoneShareUrl, String wechatShareUrl, String wechatFriendUrl, String qqUrl) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(h.M);
        sb2.append("/upload/images/wf_ico.png?ver=2.2");
        this.gameId = "0";
        this.imageUrl = imageUrl;
        this.title = title;
        this.text = text;
        this.weiboShareUrl = weiboShareUrl;
        this.qZoneShareUrl = qZoneShareUrl;
        this.wechatShareUrl = wechatShareUrl;
        this.wechatFriendUrl = wechatFriendUrl;
        this.qqUrl = qqUrl;
    }
}

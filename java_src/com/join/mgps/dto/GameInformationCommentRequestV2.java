package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class GameInformationCommentRequestV2 {
    private String comment_id;
    private String information_id;
    private int page;
    private String token;
    private String uid;

    public String getComment_id() {
        return this.comment_id;
    }

    public String getInformation_id() {
        return this.information_id;
    }

    public int getPage() {
        return this.page;
    }

    public String getToken() {
        return this.token;
    }

    public String getUid() {
        return this.uid;
    }

    public void setComment_id(String comment_id) {
        this.comment_id = comment_id;
    }

    public void setInformation_id(String information_id) {
        this.information_id = information_id;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }
}

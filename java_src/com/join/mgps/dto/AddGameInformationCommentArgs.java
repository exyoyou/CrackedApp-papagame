package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class AddGameInformationCommentArgs {
    private String comment_id;
    private String information_id;
    private String msg;
    private String ruid;
    private String uid;
    private String userToken;

    public String getComment_id() {
        return this.comment_id;
    }

    public String getInformation_id() {
        return this.information_id;
    }

    public String getMsg() {
        return this.msg;
    }

    public String getRuid() {
        return this.ruid;
    }

    public String getUid() {
        return this.uid;
    }

    public String getUserToken() {
        return this.userToken;
    }

    public void setComment_id(String comment_id) {
        this.comment_id = comment_id;
    }

    public void setInformation_id(String information_id) {
        this.information_id = information_id;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public void setRuid(String ruid) {
        this.ruid = ruid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public void setUserToken(String userToken) {
        this.userToken = userToken;
    }
}

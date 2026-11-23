package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class RequestCommitReplyArgs {
    private String content;
    private String game_id;
    private String head_portrait;
    private String ip_address;
    private String mobile_phone_model;
    private int random_num;
    private String reply_comment_id;
    private int reply_comment_user_id;
    private String reply_comment_user_name;
    private int uid;
    private String user_name;

    public RequestCommitReplyArgs(int uid, String game_id, String head_portrait, String user_name, String mobile_phone_model, String ip_address, int random_num, String content, String reply_comment_id, String reply_comment_user_name, int reply_comment_user_id) {
        this.uid = uid;
        this.game_id = game_id;
        this.head_portrait = head_portrait;
        this.user_name = user_name;
        this.mobile_phone_model = mobile_phone_model;
        this.ip_address = ip_address;
        this.random_num = random_num;
        this.content = content;
        this.reply_comment_id = reply_comment_id;
        this.reply_comment_user_name = reply_comment_user_name;
        this.reply_comment_user_id = reply_comment_user_id;
    }

    public String getContent() {
        return this.content;
    }

    public String getGame_id() {
        return this.game_id;
    }

    public String getHead_portrait() {
        return this.head_portrait;
    }

    public String getIp_address() {
        return this.ip_address;
    }

    public String getMobile_phone_model() {
        return this.mobile_phone_model;
    }

    public int getRandom_num() {
        return this.random_num;
    }

    public String getReply_comment_id() {
        return this.reply_comment_id;
    }

    public int getReply_comment_user_id() {
        return this.reply_comment_user_id;
    }

    public String getReply_comment_user_name() {
        return this.reply_comment_user_name;
    }

    public int getUid() {
        return this.uid;
    }

    public String getUser_name() {
        return this.user_name;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public void setGame_id(String game_id) {
        this.game_id = game_id;
    }

    public void setHead_portrait(String head_portrait) {
        this.head_portrait = head_portrait;
    }

    public void setIp_address(String ip_address) {
        this.ip_address = ip_address;
    }

    public void setMobile_phone_model(String mobile_phone_model) {
        this.mobile_phone_model = mobile_phone_model;
    }

    public void setRandom_num(int random_num) {
        this.random_num = random_num;
    }

    public void setReply_comment_id(String reply_comment_id) {
        this.reply_comment_id = reply_comment_id;
    }

    public void setReply_comment_user_id(int reply_comment_user_id) {
        this.reply_comment_user_id = reply_comment_user_id;
    }

    public void setReply_comment_user_name(String reply_comment_user_name) {
        this.reply_comment_user_name = reply_comment_user_name;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }
}

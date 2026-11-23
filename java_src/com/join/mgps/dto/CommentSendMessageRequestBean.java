package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class CommentSendMessageRequestBean {
    private String content;
    private String game_id;
    private String ip_address;
    private int is_reply;
    private int member_id;
    private String member_name;
    private String mobile_model;
    private float score;
    private String token;

    public CommentSendMessageRequestBean() {
    }

    public String getContent() {
        return this.content;
    }

    public String getGame_id() {
        return this.game_id;
    }

    public String getToken() {
        return this.token;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public void setGame_id(String game_id) {
        this.game_id = game_id;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public CommentSendMessageRequestBean(String game_id, String content, float score, int member_id, String member_name, String token, String mobile_model, String ip_address, int is_reply) {
        this.game_id = game_id;
        this.content = content;
        this.score = score;
        this.member_id = member_id;
        this.member_name = member_name;
        this.token = token;
        this.mobile_model = mobile_model;
        this.ip_address = ip_address;
        this.is_reply = is_reply;
    }
}

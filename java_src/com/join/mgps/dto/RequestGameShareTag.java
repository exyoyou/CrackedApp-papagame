package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class RequestGameShareTag {
    private String game_id;
    private String score;
    private String tag_des_id;
    private int tag_des_type;
    private String token;
    private int uid;

    public String getGame_id() {
        return this.game_id;
    }

    public String getScore() {
        return this.score;
    }

    public String getTag_des_id() {
        return this.tag_des_id;
    }

    public int getTag_des_type() {
        return this.tag_des_type;
    }

    public String getToken() {
        return this.token;
    }

    public int getUid() {
        return this.uid;
    }

    public void setGame_id(String game_id) {
        this.game_id = game_id;
    }

    public void setScore(String score) {
        this.score = score;
    }

    public void setTag_des_id(String tag_des_id) {
        this.tag_des_id = tag_des_id;
    }

    public void setTag_des_type(int tag_des_type) {
        this.tag_des_type = tag_des_type;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }
}

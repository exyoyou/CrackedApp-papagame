package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class RequestPraiseArgs extends BaseDto {
    private String comment_id;
    private String game_id;
    private int uid;

    public RequestPraiseArgs(String comment_id, int uid, String game_id) {
        this.comment_id = comment_id;
        this.game_id = game_id;
        this.uid = uid;
    }

    public String getComment_id() {
        return this.comment_id;
    }

    public String getGame_id() {
        return this.game_id;
    }

    public int getUid() {
        return this.uid;
    }

    public void setComment_id(String comment_id) {
        this.comment_id = comment_id;
    }

    public void setGame_id(String game_id) {
        this.game_id = game_id;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }
}

package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class CommentPraiseRequestBean extends CommentRequest {
    private String comment_id;
    private String game_id;
    private int type;
    private String user_token;

    public String getComment_id() {
        return this.comment_id;
    }

    public String getGame_id() {
        return this.game_id;
    }

    public int getType() {
        return this.type;
    }

    public String getUser_token() {
        return this.user_token;
    }

    public void setComment_id(String comment_id) {
        this.comment_id = comment_id;
    }

    public void setGame_id(String game_id) {
        this.game_id = game_id;
    }

    public void setType(int type) {
        this.type = type;
    }

    public void setUser_token(String user_token) {
        this.user_token = user_token;
    }
}

package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class IntroductionCommentDetailParamsBean implements Serializable {
    private int comment_id;
    private long game_id;
    private int parent_comment_id;
    private int post_id;

    public int getComment_id() {
        return this.comment_id;
    }

    public long getGame_id() {
        return this.game_id;
    }

    public int getParent_comment_id() {
        return this.parent_comment_id;
    }

    public int getPost_id() {
        return this.post_id;
    }

    public void setComment_id(int comment_id) {
        this.comment_id = comment_id;
    }

    public void setGame_id(long game_id) {
        this.game_id = game_id;
    }

    public void setParent_comment_id(int parent_comment_id) {
        this.parent_comment_id = parent_comment_id;
    }

    public void setPost_id(Integer post_id) {
        this.post_id = post_id.intValue();
    }
}

package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class CommitContextDataBean implements Serializable {
    InformationCommentBean comment_data;
    private boolean is_parent;
    RewardBean is_reward;
    private boolean val;

    public InformationCommentBean getComment_data() {
        return this.comment_data;
    }

    public RewardBean getIs_reward() {
        return this.is_reward;
    }

    public boolean isVal() {
        return this.val;
    }

    public boolean is_parent() {
        return this.is_parent;
    }

    public void setComment_data(InformationCommentBean comment_data) {
        this.comment_data = comment_data;
    }

    public void setIs_parent(boolean is_parent) {
        this.is_parent = is_parent;
    }

    public void setIs_reward(RewardBean is_reward) {
        this.is_reward = is_reward;
    }

    public void setVal(boolean val) {
        this.val = val;
    }
}

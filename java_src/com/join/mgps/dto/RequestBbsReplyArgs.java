package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class RequestBbsReplyArgs {
    private Integer commentId;
    private String content;
    private Integer pid;
    private Integer ruid;
    private Integer uid;

    public Integer getCommentId() {
        return this.commentId;
    }

    public String getContent() {
        return this.content;
    }

    public Integer getPid() {
        return this.pid;
    }

    public Integer getRuid() {
        return this.ruid;
    }

    public Integer getUid() {
        return this.uid;
    }

    public void setCommentId(Integer commentId) {
        this.commentId = commentId;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public void setRuid(Integer ruid) {
        this.ruid = ruid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }
}

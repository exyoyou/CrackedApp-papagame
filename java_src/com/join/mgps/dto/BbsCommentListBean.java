package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class BbsCommentListBean {
    private String avatar;
    private Integer commentId;
    private String createTime;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private Integer f68021id;
    private boolean isReplay = true;
    private Integer like;
    private String msg;
    private String nickname;
    private Integer pid;
    private Boolean praise;
    private String ravatar;
    private int replies;
    private Integer reply;
    private List<BbsCommentListBean> replyList;
    private String rnickname;
    private Integer ruid;
    private Integer status;
    private Integer uid;

    public String getAvatar() {
        return this.avatar;
    }

    public Integer getCommentId() {
        return this.commentId;
    }

    public String getCreateTime() {
        return this.createTime;
    }

    public Integer getId() {
        return this.f68021id;
    }

    public Integer getLike() {
        return this.like;
    }

    public String getMsg() {
        return this.msg;
    }

    public String getNickname() {
        return this.nickname;
    }

    public Integer getPid() {
        return this.pid;
    }

    public Boolean getPraise() {
        return this.praise;
    }

    public String getRavatar() {
        return this.ravatar;
    }

    public int getReplies() {
        return this.replies;
    }

    public Integer getReply() {
        return this.reply;
    }

    public List<BbsCommentListBean> getReplyList() {
        return this.replyList;
    }

    public String getRnickname() {
        return this.rnickname;
    }

    public Integer getRuid() {
        return this.ruid;
    }

    public Integer getStatus() {
        return this.status;
    }

    public Integer getUid() {
        return this.uid;
    }

    public boolean isReplay() {
        return this.isReplay;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public void setCommentId(Integer commentId) {
        this.commentId = commentId;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public void setId(Integer id2) {
        this.f68021id = id2;
    }

    public void setLike(Integer like) {
        this.like = like;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public void setPraise(Boolean praise) {
        this.praise = praise;
    }

    public void setRavatar(String ravatar) {
        this.ravatar = ravatar;
    }

    public void setReplay(boolean replay) {
        this.isReplay = replay;
    }

    public void setReplies(int replies) {
        this.replies = replies;
    }

    public void setReply(Integer reply) {
        this.reply = reply;
    }

    public void setReplyList(List<BbsCommentListBean> replyList) {
        this.replyList = replyList;
    }

    public void setRnickname(String rnickname) {
        this.rnickname = rnickname;
    }

    public void setRuid(Integer ruid) {
        this.ruid = ruid;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }
}

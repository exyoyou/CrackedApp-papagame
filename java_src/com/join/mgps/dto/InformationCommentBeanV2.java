package com.join.mgps.dto;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class InformationCommentBeanV2 implements Serializable {
    private String avatar;
    private String commentId;
    private String createTime;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private String f68078id;
    private int like;
    private String msg;
    private String nickname;
    private String pid;
    private String postCid;
    private Boolean praise;
    private String ravatar;
    private int replies;
    private int reply;
    private List<InformationCommentBeanV2> replyList;
    private String rnickname;
    private String ruid;
    private int status;
    private String uid;

    public InformationCommentBeanV2() {
    }

    public String getAvatar() {
        return this.avatar;
    }

    public String getCommentId() {
        return this.commentId;
    }

    public String getCreateTime() {
        return this.createTime;
    }

    public String getId() {
        return this.f68078id;
    }

    public int getLike() {
        return this.like;
    }

    public String getMsg() {
        return this.msg;
    }

    public String getNickname() {
        return this.nickname;
    }

    public String getPid() {
        return this.pid;
    }

    public String getPostCid() {
        return this.postCid;
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

    public int getReply() {
        return this.reply;
    }

    public List<InformationCommentBeanV2> getReplyList() {
        return this.replyList;
    }

    public String getRnickname() {
        return this.rnickname;
    }

    public String getRuid() {
        return this.ruid;
    }

    public int getStatus() {
        return this.status;
    }

    public String getUid() {
        return this.uid;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public void setCommentId(String commentId) {
        this.commentId = commentId;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public void setId(String id2) {
        this.f68078id = id2;
    }

    public void setLike(int like) {
        this.like = like;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    public void setPostCid(String postCid) {
        this.postCid = postCid;
    }

    public void setPraise(Boolean praise) {
        this.praise = praise;
    }

    public void setRavatar(String ravatar) {
        this.ravatar = ravatar;
    }

    public void setReplies(int replies) {
        this.replies = replies;
    }

    public void setReply(int reply) {
        this.reply = reply;
    }

    public void setReplyList(List<InformationCommentBeanV2> replyList) {
        this.replyList = replyList;
    }

    public void setRnickname(String rnickname) {
        this.rnickname = rnickname;
    }

    public void setRuid(String ruid) {
        this.ruid = ruid;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public InformationCommentBeanV2(InformationCommentBeanV2 bean) {
        this.avatar = bean.getAvatar();
        this.commentId = bean.getCommentId();
        this.createTime = bean.getCreateTime();
        this.f68078id = bean.getId();
        this.like = bean.getLike();
        this.msg = bean.getMsg();
        this.nickname = bean.getNickname();
        this.pid = bean.getPid();
        this.postCid = bean.getPostCid();
        this.praise = bean.getPraise();
        this.ravatar = bean.getRavatar();
        this.replies = bean.getReplies();
        this.reply = bean.getReply();
        this.rnickname = bean.getRnickname();
        this.ruid = bean.getRuid();
        this.status = bean.getStatus();
        this.uid = bean.getUid();
        if (this.replyList == null) {
            this.replyList = new ArrayList();
        }
        this.replyList.addAll(bean.getReplyList());
    }
}

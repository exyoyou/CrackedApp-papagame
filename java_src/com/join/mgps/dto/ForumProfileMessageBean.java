package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class ForumProfileMessageBean {
    public static final String TYPE_BEST = "best";
    public static final String TYPE_BESTANSWER = "bestanswer";
    public static final String TYPE_COMMENT = "comment";
    public static final String TYPE_PRAISE = "praise";
    public static final String TYPE_REPLY = "reply";
    private long add_time;
    private int comment_id;
    private String from_avatar_src;
    private String from_nickname;
    private boolean from_officialAccount;
    private String from_type;
    private int from_uid;
    private String message;
    private int pid;
    private ForumBean.ForumPostsBean posts;
    private ForumBean.ForumCommentReplyBean reply;
    private int rid;
    private int svip_level;
    private int vip_level;

    public long getAdd_time() {
        return this.add_time;
    }

    public int getComment_id() {
        return this.comment_id;
    }

    public String getFrom_avatar_src() {
        return this.from_avatar_src;
    }

    public String getFrom_nickname() {
        return this.from_nickname;
    }

    public String getFrom_type() {
        return this.from_type;
    }

    public int getFrom_uid() {
        return this.from_uid;
    }

    public String getMessage() {
        return this.message;
    }

    public int getPid() {
        return this.pid;
    }

    public ForumBean.ForumPostsBean getPosts() {
        return this.posts;
    }

    public ForumBean.ForumCommentReplyBean getReply() {
        return this.reply;
    }

    public int getRid() {
        return this.rid;
    }

    public int getSvip_level() {
        return this.svip_level;
    }

    public int getVip_level() {
        return this.vip_level;
    }

    public boolean isFrom_officialAccount() {
        return this.from_officialAccount;
    }

    public void setAdd_time(long add_time) {
        this.add_time = add_time;
    }

    public void setComment_id(int comment_id) {
        this.comment_id = comment_id;
    }

    public void setComment_pid(int comment_pid) {
        this.comment_id = comment_pid;
    }

    public void setFrom_avatar_src(String from_avatar_src) {
        this.from_avatar_src = from_avatar_src;
    }

    public void setFrom_nickname(String from_nickname) {
        this.from_nickname = from_nickname;
    }

    public void setFrom_officialAccount(boolean from_officialAccount) {
        this.from_officialAccount = from_officialAccount;
    }

    public void setFrom_type(String from_type) {
        this.from_type = from_type;
    }

    public void setFrom_uid(int from_uid) {
        this.from_uid = from_uid;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public void setPosts(ForumBean.ForumPostsBean posts) {
        this.posts = posts;
    }

    public void setReply(ForumBean.ForumCommentReplyBean reply) {
        this.reply = reply;
    }

    public void setRid(int rid) {
        this.rid = rid;
    }

    public void setSvip_level(int svip_level) {
        this.svip_level = svip_level;
    }

    public void setVip_level(int vip_level) {
        this.vip_level = vip_level;
    }
}

package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class MessageDetailFeedBackBean {
    private FeedbackIssue feedbackIssue;
    private List<FeedbackReplies> feedbackReplies;

    public static class FeedbackIssue {
        private String appVer;
        private String content;
        private String createBy;
        private long createTime;
        private String gameId;
        private String gameName;

        /* JADX INFO: renamed from: id, reason: collision with root package name */
        private String f68079id;
        private int issueType;
        private String mobile;
        private String mobileModel;
        private String mobileVer;
        private String qq;
        private List<String> screenPics;
        private int status;
        private String uid;
        private String updateBy;
        private long updateTime;
        private String username;

        public String getAppVer() {
            return this.appVer;
        }

        public String getContent() {
            return this.content;
        }

        public String getCreateBy() {
            return this.createBy;
        }

        public long getCreateTime() {
            return this.createTime;
        }

        public String getGameId() {
            return this.gameId;
        }

        public String getGameName() {
            return this.gameName;
        }

        public String getId() {
            return this.f68079id;
        }

        public int getIssueType() {
            return this.issueType;
        }

        public String getMobile() {
            return this.mobile;
        }

        public String getMobileModel() {
            return this.mobileModel;
        }

        public String getMobileVer() {
            return this.mobileVer;
        }

        public String getQq() {
            return this.qq;
        }

        public List<String> getScreenPics() {
            return this.screenPics;
        }

        public int getStatus() {
            return this.status;
        }

        public String getUid() {
            return this.uid;
        }

        public String getUpdateBy() {
            return this.updateBy;
        }

        public long getUpdateTime() {
            return this.updateTime;
        }

        public String getUsername() {
            return this.username;
        }

        public void setAppVer(String appVer) {
            this.appVer = appVer;
        }

        public void setContent(String content) {
            this.content = content;
        }

        public void setCreateBy(String createBy) {
            this.createBy = createBy;
        }

        public void setCreateTime(long createTime) {
            this.createTime = createTime;
        }

        public void setGameId(String gameId) {
            this.gameId = gameId;
        }

        public void setGameName(String gameName) {
            this.gameName = gameName;
        }

        public void setId(String id2) {
            this.f68079id = id2;
        }

        public void setIssueType(int issueType) {
            this.issueType = issueType;
        }

        public void setMobile(String mobile) {
            this.mobile = mobile;
        }

        public void setMobileModel(String mobileModel) {
            this.mobileModel = mobileModel;
        }

        public void setMobileVer(String mobileVer) {
            this.mobileVer = mobileVer;
        }

        public void setQq(String qq) {
            this.qq = qq;
        }

        public void setScreenPics(List<String> screenPics) {
            this.screenPics = screenPics;
        }

        public void setStatus(int status) {
            this.status = status;
        }

        public void setUid(String uid) {
            this.uid = uid;
        }

        public void setUpdateBy(String updateBy) {
            this.updateBy = updateBy;
        }

        public void setUpdateTime(long updateTime) {
            this.updateTime = updateTime;
        }

        public void setUsername(String username) {
            this.username = username;
        }
    }

    public static class FeedbackReplies {
        private String avatar;
        private long createTime;
        private String replyContent;
        private String replyUid;
        private String username;

        public String getAvatar() {
            return this.avatar;
        }

        public long getCreateTime() {
            return this.createTime;
        }

        public String getReplyContent() {
            return this.replyContent;
        }

        public String getReplyUid() {
            return this.replyUid;
        }

        public String getUsername() {
            return this.username;
        }

        public void setAvatar(String avatar) {
            this.avatar = avatar;
        }

        public void setCreateTime(long createTime) {
            this.createTime = createTime;
        }

        public void setReplyContent(String replyContent) {
            this.replyContent = replyContent;
        }

        public void setReplyUid(String replyUid) {
            this.replyUid = replyUid;
        }

        public void setUsername(String username) {
            this.username = username;
        }
    }

    public FeedbackIssue getFeedbackIssue() {
        return this.feedbackIssue;
    }

    public List<FeedbackReplies> getFeedbackReplies() {
        return this.feedbackReplies;
    }

    public void setFeedbackIssue(FeedbackIssue feedbackIssue) {
        this.feedbackIssue = feedbackIssue;
    }

    public void setFeedbackReplies(List<FeedbackReplies> feedbackReplies) {
        this.feedbackReplies = feedbackReplies;
    }
}

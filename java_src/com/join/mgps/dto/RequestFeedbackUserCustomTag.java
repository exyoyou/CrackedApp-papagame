package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class RequestFeedbackUserCustomTag {
    private Integer feedbackType;
    private String feedbackUid;
    private String gameId;
    private String reason;
    private String tagName;

    public Integer getFeedbackType() {
        return this.feedbackType;
    }

    public String getFeedbackUid() {
        return this.feedbackUid;
    }

    public String getGameId() {
        return this.gameId;
    }

    public String getReason() {
        return this.reason;
    }

    public String getTagName() {
        return this.tagName;
    }

    public void setFeedbackType(Integer feedbackType) {
        this.feedbackType = feedbackType;
    }

    public void setFeedbackUid(String feedbackUid) {
        this.feedbackUid = feedbackUid;
    }

    public void setGameId(String gameId) {
        this.gameId = gameId;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public void setTagName(String tagName) {
        this.tagName = tagName;
    }
}

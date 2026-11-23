package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class RequestModFeedbackArgs {
    private String contact;
    private String gameId;
    private String questionType;
    private int uid;

    public String getContact() {
        return this.contact;
    }

    public String getGameId() {
        return this.gameId;
    }

    public String getQuestionType() {
        return this.questionType;
    }

    public int getUid() {
        return this.uid;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public void setGameId(String gameId) {
        this.gameId = gameId;
    }

    public void setQuestionType(String questionType) {
        this.questionType = questionType;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }
}

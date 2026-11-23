package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class CommentAlllistIntentData implements Serializable {
    int bespeakSwitch;
    String commentContent;
    String commentId;
    String commentScoreSwitch;
    float commentStars;
    int cpu_type;
    String gameId;
    int gameIsStart;
    String gameType;
    String packageName;
    int sgcSwitch;

    public int getBespeakSwitch() {
        return this.bespeakSwitch;
    }

    public String getCommentContent() {
        return this.commentContent;
    }

    public String getCommentId() {
        return this.commentId;
    }

    public String getCommentScoreSwitch() {
        return this.commentScoreSwitch;
    }

    public float getCommentStars() {
        return this.commentStars;
    }

    public int getCpu_type() {
        return this.cpu_type;
    }

    public String getGameId() {
        return this.gameId;
    }

    public int getGameIsStart() {
        return this.gameIsStart;
    }

    public String getGameType() {
        return this.gameType;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public int getSgcSwitch() {
        return this.sgcSwitch;
    }

    public void setBespeakSwitch(int bespeakSwitch) {
        this.bespeakSwitch = bespeakSwitch;
    }

    public void setCommentContent(String commentContent) {
        this.commentContent = commentContent;
    }

    public void setCommentId(String commentId) {
        this.commentId = commentId;
    }

    public void setCommentScoreSwitch(String commentScoreSwitch) {
        this.commentScoreSwitch = commentScoreSwitch;
    }

    public void setCommentStars(float commentStars) {
        this.commentStars = commentStars;
    }

    public void setCpu_type(int cpu_type) {
        this.cpu_type = cpu_type;
    }

    public void setGameId(String gameId) {
        this.gameId = gameId;
    }

    public void setGameIsStart(int gameIsStart) {
        this.gameIsStart = gameIsStart;
    }

    public void setGameType(String gameType) {
        this.gameType = gameType;
    }

    public void setPackageName(String packageName) {
        this.packageName = packageName;
    }

    public void setSgcSwitch(int sgcSwitch) {
        this.sgcSwitch = sgcSwitch;
    }
}

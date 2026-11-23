package com.bytedance.android.metrics;

/* JADX INFO: loaded from: classes9.dex */
public class Params {
    private ActionType actionType;
    private String anchorId;
    private long duration;
    private EnterFromMerge enterFromMerge;
    private EnterMethod enterMethod;
    private String requestId;
    private long roomId;

    public Params(long j10, String str, String str2, EnterFromMerge enterFromMerge, EnterMethod enterMethod, ActionType actionType, long j11) {
        this.roomId = j10;
        this.anchorId = str;
        this.requestId = str2;
        this.enterFromMerge = enterFromMerge;
        this.enterMethod = enterMethod;
        this.actionType = actionType;
        this.duration = j11;
    }

    public ActionType getActionType() {
        return this.actionType;
    }

    public String getAnchorId() {
        return this.anchorId;
    }

    public long getDuration() {
        return this.duration;
    }

    public EnterFromMerge getEnterFromMerge() {
        return this.enterFromMerge;
    }

    public EnterMethod getEnterMethod() {
        return this.enterMethod;
    }

    public String getRequestId() {
        return this.requestId;
    }

    public long getRoomId() {
        return this.roomId;
    }

    public void setActionType(ActionType actionType) {
        this.actionType = actionType;
    }

    public void setAnchorId(String str) {
        this.anchorId = str;
    }

    public void setDuration(long j10) {
        this.duration = j10;
    }

    public void setEnterFromMerge(EnterFromMerge enterFromMerge) {
        this.enterFromMerge = enterFromMerge;
    }

    public void setEnterMethod(EnterMethod enterMethod) {
        this.enterMethod = enterMethod;
    }

    public void setRequestId(String str) {
        this.requestId = str;
    }

    public void setRoomId(long j10) {
        this.roomId = j10;
    }
}

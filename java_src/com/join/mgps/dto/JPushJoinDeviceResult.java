package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class JPushJoinDeviceResult {
    private String msg;
    private int openPraise;
    private int openPush;
    private int openReply;
    private boolean result;

    public String getMsg() {
        return this.msg;
    }

    public int getOpenPraise() {
        return this.openPraise;
    }

    public int getOpenPush() {
        return this.openPush;
    }

    public int getOpenReply() {
        return this.openReply;
    }

    public boolean isResult() {
        return this.result;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public void setOpenPraise(int openPraise) {
        this.openPraise = openPraise;
    }

    public void setOpenPush(int openPush) {
        this.openPush = openPush;
    }

    public void setOpenReply(int openReply) {
        this.openReply = openReply;
    }

    public void setResult(boolean result) {
        this.result = result;
    }
}

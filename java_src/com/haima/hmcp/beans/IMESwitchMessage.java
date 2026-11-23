package com.haima.hmcp.beans;

/* JADX INFO: loaded from: classes5.dex */
public class IMESwitchMessage extends BaseSwitchIMEMessageProtocol {
    public String getCode() {
        return this.code;
    }

    public String getEvent() {
        return this.event;
    }

    public String getMessage() {
        return this.message;
    }

    public void setCode(String str) {
        this.code = str;
    }

    public void setEvent(String str) {
        this.event = str;
    }

    public void setMessage(String str) {
        this.message = str;
    }
}

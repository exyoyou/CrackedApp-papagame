package com.haima.hmcp.beans;

/* JADX INFO: loaded from: classes5.dex */
public abstract class BaseResult {
    public Integer clientIPType;
    public int code;
    public String errorCode;
    public String errorMsg;
    public String msg;
    public int retryRequestCount;

    public String toString() {
        return "code = " + this.code + ":msg = " + this.msg + ":errorCode = " + this.errorCode + ":errorMsg=" + this.errorMsg + ":retryRequestCount=" + this.retryRequestCount;
    }
}

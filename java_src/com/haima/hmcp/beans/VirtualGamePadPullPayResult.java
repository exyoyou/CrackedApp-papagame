package com.haima.hmcp.beans;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class VirtualGamePadPullPayResult implements Serializable {
    private static final long serialVersionUID = 1;
    public String action;
    public String code;
    public String msg;

    public String getAction() {
        return this.action;
    }

    public String getCode() {
        return this.code;
    }

    public String getMsg() {
        return this.msg;
    }

    public void setAction(String str) {
        this.action = str;
    }

    public void setCode(String str) {
        this.code = str;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public String toString() {
        return "VirtualGamePadPullPayResult{code='" + this.code + "', msg='" + this.msg + "', action='" + this.action + "'}";
    }
}

package com.sdk.base.framework.bean;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class OauthResultMode implements Serializable {
    private int code;
    private String msg;
    private Object object;
    private String seq;
    private int status;

    public OauthResultMode() {
    }

    public int getCode() {
        return this.code;
    }

    public String getMsg() {
        return this.msg;
    }

    public Object getObject() {
        return this.object;
    }

    public String getSeq() {
        return this.seq;
    }

    public int getStatus() {
        return this.status;
    }

    public void setCode(int i10) {
        this.code = i10;
    }

    public void setMsg(String str) {
        this.msg = str;
    }

    public void setObject(Object obj) {
        this.object = obj;
    }

    public void setSeq(String str) {
        this.seq = str;
    }

    public void setStatus(int i10) {
        this.status = i10;
    }

    public String toString() {
        return "OauthResultMode{code=" + this.code + ", msg='" + this.msg + "', status=" + this.status + ", object=" + this.object + ", seq='" + this.seq + "'}";
    }

    public OauthResultMode(int i10, String str, int i11) {
        this.code = i10;
        this.msg = str;
        this.status = i11;
    }

    public OauthResultMode(int i10, String str, int i11, Object obj, String str2) {
        this.code = i10;
        this.msg = str;
        this.status = i11;
        this.object = obj;
        this.seq = str2;
    }
}

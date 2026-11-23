package com.papa91.arc.bean;

/* JADX INFO: loaded from: classes2.dex */
public class Response<T> {
    private int code;
    private T data;
    private int flag;
    private String message;
    private String version;

    public int getCode() {
        return this.code;
    }

    public T getData() {
        return this.data;
    }

    public int getFlag() {
        return this.flag;
    }

    public String getMessage() {
        return this.message;
    }

    public String getVersion() {
        return this.version;
    }

    public void setCode(int i10) {
        this.code = i10;
    }

    public void setData(T t10) {
        this.data = t10;
    }

    public void setFlag(int i10) {
        this.flag = i10;
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public void setVersion(String str) {
        this.version = str;
    }
}

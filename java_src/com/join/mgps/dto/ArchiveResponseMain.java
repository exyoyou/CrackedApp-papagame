package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class ArchiveResponseMain<T> {
    private int code;
    private T data_info;
    private String msg;
    private int succ;

    public int getCode() {
        return this.code;
    }

    public T getData_info() {
        return this.data_info;
    }

    public String getMsg() {
        return this.msg;
    }

    public int getSucc() {
        return this.succ;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public void setData_info(T data_info) {
        this.data_info = data_info;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public void setSucc(int succ) {
        this.succ = succ;
    }
}

package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class Response {
    private int error_type;
    private String msg;
    private boolean result;

    public int getError_type() {
        return this.error_type;
    }

    public String getMsg() {
        return this.msg;
    }

    public boolean isResult() {
        return this.result;
    }

    public void setError_type(int error_type) {
        this.error_type = error_type;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public void setResult(boolean result) {
        this.result = result;
    }
}

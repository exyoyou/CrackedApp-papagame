package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class CreateArchiveRecordBean {
    String error_msg;
    boolean is_success;
    int rid;

    public String getError_msg() {
        return this.error_msg;
    }

    public int getRid() {
        return this.rid;
    }

    public boolean isIs_success() {
        return this.is_success;
    }

    public void setError_msg(String error_msg) {
        this.error_msg = error_msg;
    }

    public void setIs_success(boolean is_success) {
        this.is_success = is_success;
    }

    public void setRid(int rid) {
        this.rid = rid;
    }
}

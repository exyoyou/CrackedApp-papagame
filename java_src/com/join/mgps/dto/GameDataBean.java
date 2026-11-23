package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class GameDataBean {
    private String error_msg;
    private boolean is_success;
    private int msg_info;

    public GameDataBean() {
    }

    public String getError_msg() {
        return this.error_msg;
    }

    public int getMsg_info() {
        return this.msg_info;
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

    public void setMsg_info(int msg_info) {
        this.msg_info = msg_info;
    }

    public GameDataBean(String error_msg, boolean is_success) {
        this.error_msg = error_msg;
        this.is_success = is_success;
    }
}

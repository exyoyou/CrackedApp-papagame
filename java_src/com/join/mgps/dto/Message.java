package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class Message {
    private String error_msg;
    private boolean is_success;
    private List<MessageInfo> msg_info;

    public String getError_msg() {
        return this.error_msg;
    }

    public List<MessageInfo> getMsg_info() {
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

    public void setMsg_info(List<MessageInfo> msg_info) {
        this.msg_info = msg_info;
    }
}

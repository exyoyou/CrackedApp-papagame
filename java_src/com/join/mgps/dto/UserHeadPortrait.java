package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class UserHeadPortrait {
    private String error_msg;
    private List<String> head_portrait_pic;
    private boolean is_success;
    private String user_info;

    public UserHeadPortrait() {
    }

    public String getError_msg() {
        return this.error_msg;
    }

    public List<String> getHead_portrait_pic() {
        return this.head_portrait_pic;
    }

    public String getUser_info() {
        return this.user_info;
    }

    public boolean isIs_success() {
        return this.is_success;
    }

    public boolean is_success() {
        return this.is_success;
    }

    public void setError_msg(String error_msg) {
        this.error_msg = error_msg;
    }

    public void setHead_portrait_pic(List<String> head_portrait_pic) {
        this.head_portrait_pic = head_portrait_pic;
    }

    public void setIs_success(boolean is_success) {
        this.is_success = is_success;
    }

    public void setUser_info(String user_info) {
        this.user_info = user_info;
    }

    public UserHeadPortrait(String error_msg, boolean is_success, String user_info, List<String> head_portrait_pic) {
        this.error_msg = error_msg;
        this.is_success = is_success;
        this.user_info = user_info;
        this.head_portrait_pic = head_portrait_pic;
    }
}

package com.join.mgps.dto;

import com.fasterxml.jackson.annotation.JsonProperty;

/* JADX INFO: loaded from: classes3.dex */
public class AccountTokenSuccess {
    private String error_code;
    private String error_msg;

    @JsonProperty
    private boolean is_success;
    private AccountBean user_info;

    public AccountTokenSuccess() {
    }

    public String getError_code() {
        return this.error_code;
    }

    public String getError_msg() {
        return this.error_msg;
    }

    public AccountBean getUser_info() {
        return this.user_info;
    }

    public boolean is_success() {
        return this.is_success;
    }

    public void setError_code(String error_code) {
        this.error_code = error_code;
    }

    public void setError_msg(String error_msg) {
        this.error_msg = error_msg;
    }

    public void setIs_success(boolean is_success) {
        this.is_success = is_success;
    }

    public void setUser_info(AccountBean user_info) {
        this.user_info = user_info;
    }

    public AccountTokenSuccess(String error_msg, String error_code, boolean is_success, AccountBean user_info) {
        this.error_msg = error_msg;
        this.error_code = error_code;
        this.is_success = is_success;
        this.user_info = user_info;
    }
}

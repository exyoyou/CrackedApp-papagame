package com.join.mgps.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class BluetoothHandleBlackListData {
    private List<DataInfo> data_info;
    private String error_code;
    private String error_msg;

    @JsonProperty
    private boolean is_success;
    private AccountBean user_info;

    public static class DataInfo {

        /* JADX INFO: renamed from: id, reason: collision with root package name */
        @JsonProperty
        private String f68025id;
        private String model_number;

        public String getId() {
            return this.f68025id;
        }

        public String getModel_number() {
            return this.model_number;
        }

        public void setId(String id2) {
            this.f68025id = id2;
        }

        public void setModel_number(String model_number) {
            this.model_number = model_number;
        }
    }

    public List<DataInfo> getData_info() {
        return this.data_info;
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

    public void setData_info(List<DataInfo> data_info) {
        this.data_info = data_info;
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
}

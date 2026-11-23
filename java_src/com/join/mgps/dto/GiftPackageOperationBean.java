package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class GiftPackageOperationBean implements Serializable {
    private String code;
    private String error_info;
    private String flag;
    private GiftPackageOperationMessageBean messages;
    private String requesttype;
    private String version;

    public String getCode() {
        return this.code;
    }

    public String getError_info() {
        return this.error_info;
    }

    public String getFlag() {
        return this.flag;
    }

    public GiftPackageOperationMessageBean getMessages() {
        return this.messages;
    }

    public String getRequesttype() {
        return this.requesttype;
    }

    public String getVersion() {
        return this.version;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public void setError_info(String error_info) {
        this.error_info = error_info;
    }

    public void setFlag(String flag) {
        this.flag = flag;
    }

    public void setMessages(GiftPackageOperationMessageBean messages) {
        this.messages = messages;
    }

    public void setRequesttype(String requesttype) {
        this.requesttype = requesttype;
    }

    public void setVersion(String version) {
        this.version = version;
    }
}

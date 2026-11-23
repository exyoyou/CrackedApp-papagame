package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class GiftPackageInfoBean implements Serializable {
    private String code;
    private String flag;
    private GiftPackageInfoMessageBean messages;
    private String requesttype;
    private String version;

    public String getCode() {
        return this.code;
    }

    public String getFlag() {
        return this.flag;
    }

    public GiftPackageInfoMessageBean getMessages() {
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

    public void setFlag(String flag) {
        this.flag = flag;
    }

    public void setMessages(GiftPackageInfoMessageBean messages) {
        this.messages = messages;
    }

    public void setRequesttype(String requesttype) {
        this.requesttype = requesttype;
    }

    public void setVersion(String version) {
        this.version = version;
    }
}

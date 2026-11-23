package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class CollectionBean {
    private String code;
    private String flag;
    private CollectionMessageBean messages;
    private String requesttype;
    private String version;

    public CollectionBean() {
    }

    public String getCode() {
        return this.code;
    }

    public String getFlag() {
        return this.flag;
    }

    public CollectionMessageBean getMessages() {
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

    public void setMessages(CollectionMessageBean messages) {
        this.messages = messages;
    }

    public void setRequesttype(String requesttype) {
        this.requesttype = requesttype;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public CollectionBean(String flag, String code, String version, String requesttype, CollectionMessageBean messages) {
        this.flag = flag;
        this.code = code;
        this.version = version;
        this.requesttype = requesttype;
        this.messages = messages;
    }
}

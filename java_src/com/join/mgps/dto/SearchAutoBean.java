package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class SearchAutoBean {
    private String code;
    private String flag;
    private SearchAutoMessageBean messages;
    private String requesttype;
    private String version;

    public SearchAutoBean() {
    }

    public String getCode() {
        return this.code;
    }

    public String getFlag() {
        return this.flag;
    }

    public SearchAutoMessageBean getMessages() {
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

    public void setMessages(SearchAutoMessageBean messages) {
        this.messages = messages;
    }

    public void setRequesttype(String requesttype) {
        this.requesttype = requesttype;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public SearchAutoBean(String flag, String code, String version, String requesttype, SearchAutoMessageBean messages) {
        this.flag = flag;
        this.code = code;
        this.version = version;
        this.requesttype = requesttype;
        this.messages = messages;
    }
}

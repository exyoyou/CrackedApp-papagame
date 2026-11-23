package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class InformationMainBean<E> {
    private int code;
    private int flag;
    private InformationMessageBean messages;
    private String requesttype;
    private String version;

    public InformationMainBean() {
    }

    public int getCode() {
        return this.code;
    }

    public int getFlag() {
        return this.flag;
    }

    public InformationMessageBean getMessages() {
        return this.messages;
    }

    public String getRequesttype() {
        return this.requesttype;
    }

    public String getVersion() {
        return this.version;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public void setFlag(int flag) {
        this.flag = flag;
    }

    public void setMessages(InformationMessageBean messages) {
        this.messages = messages;
    }

    public void setRequesttype(String requesttype) {
        this.requesttype = requesttype;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public InformationMainBean(int flag, int code, String version, String requesttype, InformationMessageBean messages) {
        this.flag = flag;
        this.code = code;
        this.version = version;
        this.requesttype = requesttype;
        this.messages = messages;
    }
}

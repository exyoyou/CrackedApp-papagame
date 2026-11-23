package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class RecomDataAllBean {
    private int code;
    private String error_info;
    private int flag;
    private RecomDataMessageBean messages;
    private String requesttype;
    private String version;

    public RecomDataAllBean() {
    }

    public int getCode() {
        return this.code;
    }

    public String getError_info() {
        return this.error_info;
    }

    public int getFlag() {
        return this.flag;
    }

    public RecomDataMessageBean getMessages() {
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

    public void setError_info(String error_info) {
        this.error_info = error_info;
    }

    public void setFlag(int flag) {
        this.flag = flag;
    }

    public void setMessages(RecomDataMessageBean messages) {
        this.messages = messages;
    }

    public void setRequesttype(String requesttype) {
        this.requesttype = requesttype;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public RecomDataAllBean(int flag, int code, String version, String requesttype, RecomDataMessageBean messages) {
        this.flag = flag;
        this.code = code;
        this.version = version;
        this.requesttype = requesttype;
        this.messages = messages;
    }
}

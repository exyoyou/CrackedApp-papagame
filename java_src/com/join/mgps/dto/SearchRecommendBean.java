package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class SearchRecommendBean {
    private String code;
    private String flag;
    private SearchRemMessageBean messages;
    private String requesttype;
    private String version;

    public SearchRecommendBean() {
    }

    public String getCode() {
        return this.code;
    }

    public String getFlag() {
        return this.flag;
    }

    public SearchRemMessageBean getMessages() {
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

    public void setMessages(SearchRemMessageBean messages) {
        this.messages = messages;
    }

    public void setRequesttype(String requesttype) {
        this.requesttype = requesttype;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public SearchRecommendBean(String flag, String code, String version, String requesttype, SearchRemMessageBean messages) {
        this.flag = flag;
        this.code = code;
        this.version = version;
        this.requesttype = requesttype;
        this.messages = messages;
    }
}

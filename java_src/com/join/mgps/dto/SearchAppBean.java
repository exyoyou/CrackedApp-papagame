package com.join.mgps.dto;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
@JsonIgnoreProperties(ignoreUnknown = true)
public class SearchAppBean implements Serializable {
    private String code;
    private String flag;
    private SearchAppMessageBean messages;
    private String version;

    public SearchAppBean() {
    }

    public String getCode() {
        return this.code;
    }

    public String getFlag() {
        return this.flag;
    }

    public SearchAppMessageBean getMessages() {
        return this.messages;
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

    public void setMessages(SearchAppMessageBean messages) {
        this.messages = messages;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public SearchAppBean(String flag, String code, String version, SearchAppMessageBean messages) {
        this.flag = flag;
        this.code = code;
        this.version = version;
        this.messages = messages;
    }
}

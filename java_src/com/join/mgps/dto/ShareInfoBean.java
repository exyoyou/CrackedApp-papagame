package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class ShareInfoBean implements Serializable {
    private String description;
    private String head_url;
    private Integer uid;
    private String user_name;

    public String getDescription() {
        return this.description;
    }

    public String getHead_url() {
        return this.head_url;
    }

    public Integer getUid() {
        return this.uid;
    }

    public String getUser_name() {
        return this.user_name;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setHead_url(String head_url) {
        this.head_url = head_url;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }
}

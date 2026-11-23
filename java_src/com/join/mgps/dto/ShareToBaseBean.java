package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class ShareToBaseBean {
    private String device_id;
    private int group_id;
    private int group_uid;
    private int page;
    private String token;
    private int uid;
    private String version;

    public String getDevice_id() {
        return this.device_id;
    }

    public int getGroup_id() {
        return this.group_id;
    }

    public int getGroup_uid() {
        return this.group_uid;
    }

    public int getPage() {
        return this.page;
    }

    public String getToken() {
        return this.token;
    }

    public int getUid() {
        return this.uid;
    }

    public String getVersion() {
        return this.version;
    }

    public void setDevice_id(String device_id) {
        this.device_id = device_id;
    }

    public void setGroup_id(int group_id) {
        this.group_id = group_id;
    }

    public void setGroup_uid(int group_uid) {
        this.group_uid = group_uid;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public String toString() {
        return "{uid=" + this.uid + ", token='" + this.token + "', group_id=" + this.group_id + ", group_uid=" + this.group_uid + ", page=" + this.page + ", version='" + this.version + "', device_id='" + this.device_id + "'}";
    }
}

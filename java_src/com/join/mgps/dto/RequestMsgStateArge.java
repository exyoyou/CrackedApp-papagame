package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class RequestMsgStateArge {
    private String content;
    private int tag_id;
    private int uid;

    public RequestMsgStateArge(int uid, String content, int tag_id) {
        this.uid = uid;
        this.content = content;
        this.tag_id = tag_id;
    }

    public String getContent() {
        return this.content;
    }

    public int getTag_id() {
        return this.tag_id;
    }

    public int getUid() {
        return this.uid;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public void setTag_id(int tag_id) {
        this.tag_id = tag_id;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }
}

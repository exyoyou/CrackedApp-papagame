package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class IgnoreNoticeRequestArgs {
    private int message_id;
    private String message_type;
    private int uid;

    public IgnoreNoticeRequestArgs() {
    }

    public int getMessage_id() {
        return this.message_id;
    }

    public String getMessage_type() {
        return this.message_type;
    }

    public int getUid() {
        return this.uid;
    }

    public void setMessage_id(int message_id) {
        this.message_id = message_id;
    }

    public void setMessage_type(String message_type) {
        this.message_type = message_type;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public IgnoreNoticeRequestArgs(int uid, int message_id, String message_type) {
        this.uid = uid;
        this.message_id = message_id;
        this.message_type = message_type;
    }
}

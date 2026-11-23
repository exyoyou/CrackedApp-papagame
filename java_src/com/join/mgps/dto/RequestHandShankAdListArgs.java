package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class RequestHandShankAdListArgs {
    private int message_id;
    private String message_type;
    private int uid;

    public RequestHandShankAdListArgs(int uid, int msg_id, String msg_type) {
        this.uid = uid;
        this.message_id = msg_id;
        this.message_type = msg_type;
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
}

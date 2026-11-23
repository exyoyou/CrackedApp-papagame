package com.cloudplay.messagesdk.entity;

/* JADX INFO: loaded from: classes9.dex */
public class RegistRequest {
    private Action action;
    private RegistRequestData data;

    public Action getAction() {
        return this.action;
    }

    public RegistRequestData getData() {
        return this.data;
    }

    public void setAction(Action action) {
        this.action = action;
    }

    public void setData(RegistRequestData registRequestData) {
        this.data = registRequestData;
    }

    public String toString() {
        return "RegistRequest{action=" + this.action + ", data=" + this.data + '}';
    }
}

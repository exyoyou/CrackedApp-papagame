package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class GameDiscoverMainBean<E> {
    private int code;
    private int flag;
    private GameDiscoverMessageBean messages;
    private String requesttype;
    private String version;

    public GameDiscoverMainBean() {
    }

    public int getCode() {
        return this.code;
    }

    public int getFlag() {
        return this.flag;
    }

    public GameDiscoverMessageBean getMessages() {
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

    public void setMessages(GameDiscoverMessageBean messages) {
        this.messages = messages;
    }

    public void setRequesttype(String requesttype) {
        this.requesttype = requesttype;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public GameDiscoverMainBean(int flag, int code, String version, String requesttype, GameDiscoverMessageBean messages) {
        this.flag = flag;
        this.code = code;
        this.version = version;
        this.requesttype = requesttype;
        this.messages = messages;
    }
}

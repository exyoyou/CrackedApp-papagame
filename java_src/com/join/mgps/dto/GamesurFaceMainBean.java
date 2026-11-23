package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class GamesurFaceMainBean {
    private int code;
    private int flag;
    private GamesurFaceMessageBean messages;
    private String version;

    public GamesurFaceMainBean() {
    }

    public int getCode() {
        return this.code;
    }

    public int getFlag() {
        return this.flag;
    }

    public GamesurFaceMessageBean getMessages() {
        return this.messages;
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

    public void setMessages(GamesurFaceMessageBean messages) {
        this.messages = messages;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public String toString() {
        return "GamesurFaceMainBean{flag=" + this.flag + ", code=" + this.code + ", version='" + this.version + "', messages=" + this.messages + '}';
    }

    public GamesurFaceMainBean(int flag, int code, String version, GamesurFaceMessageBean messages) {
        this.flag = flag;
        this.code = code;
        this.version = version;
        this.messages = messages;
    }
}

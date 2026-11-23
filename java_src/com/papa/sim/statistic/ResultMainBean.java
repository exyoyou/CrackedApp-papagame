package com.papa.sim.statistic;

/* JADX INFO: loaded from: classes2.dex */
public class ResultMainBean<E> {
    private int code;
    private int flag;
    private ResultMessageBean<E> messages;
    private String requesttype;
    private String version;

    public ResultMainBean() {
    }

    public int getCode() {
        return this.code;
    }

    public int getFlag() {
        return this.flag;
    }

    public ResultMessageBean<E> getMessages() {
        return this.messages;
    }

    public String getRequesttype() {
        return this.requesttype;
    }

    public String getVersion() {
        return this.version;
    }

    public void setCode(int i10) {
        this.code = i10;
    }

    public void setFlag(int i10) {
        this.flag = i10;
    }

    public void setMessages(ResultMessageBean<E> resultMessageBean) {
        this.messages = resultMessageBean;
    }

    public void setRequesttype(String str) {
        this.requesttype = str;
    }

    public void setVersion(String str) {
        this.version = str;
    }

    public ResultMainBean(int i10, int i11, String str, String str2, ResultMessageBean<E> resultMessageBean) {
        this.flag = i10;
        this.code = i11;
        this.version = str;
        this.requesttype = str2;
        this.messages = resultMessageBean;
    }
}

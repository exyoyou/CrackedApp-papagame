package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class RecomRequestBean<E> extends BaseDto {
    private String channel_num;
    private String deviceid;
    private RecomRequestMessage<E> messages;
    private String requesttype;
    private String sign;
    private String version;

    public RecomRequestBean() {
    }

    public String getChannel_num() {
        return this.channel_num;
    }

    public String getDeviceid() {
        return this.deviceid;
    }

    public RecomRequestMessage getMessages() {
        return this.messages;
    }

    public String getRequesttype() {
        return this.requesttype;
    }

    public String getSign() {
        return this.sign;
    }

    public String getVersion() {
        return this.version;
    }

    public void setChannel_num(String channel_num) {
        this.channel_num = channel_num;
    }

    public void setDeviceid(String deviceid) {
        this.deviceid = deviceid;
    }

    public void setMessages(RecomRequestMessage messages) {
        this.messages = messages;
    }

    public void setRequesttype(String requesttype) {
        this.requesttype = requesttype;
    }

    public void setSign(String sign) {
        this.sign = sign;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public RecomRequestBean(String version, String deviceid, String requesttype, String channel_num, String sign, RecomRequestMessage messages) {
        this.version = version;
        this.deviceid = deviceid;
        this.requesttype = requesttype;
        this.sign = sign;
        this.messages = messages;
        this.channel_num = channel_num;
    }
}

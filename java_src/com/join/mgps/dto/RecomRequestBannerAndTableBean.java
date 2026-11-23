package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class RecomRequestBannerAndTableBean extends BaseDto {
    private String deviceid;
    private RecomRequestBannerAndTableMessage messages;
    private String requesttype;
    private String sign;
    private String version;

    public RecomRequestBannerAndTableBean() {
    }

    public String getDeviceid() {
        return this.deviceid;
    }

    public RecomRequestBannerAndTableMessage getMessages() {
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

    public void setDeviceid(String deviceid) {
        this.deviceid = deviceid;
    }

    public void setMessages(RecomRequestBannerAndTableMessage messages) {
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

    public RecomRequestBannerAndTableBean(String version, String deviceid, String requesttype, String sign, RecomRequestBannerAndTableMessage messages) {
        this.version = version;
        this.deviceid = deviceid;
        this.requesttype = requesttype;
        this.sign = sign;
        this.messages = messages;
    }
}

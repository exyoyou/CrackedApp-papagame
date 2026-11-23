package com.join.mgps.dto;

import com.join.android.app.mgsim.wufun.b;

/* JADX INFO: loaded from: classes3.dex */
public class CommonRequestBean<E> {
    private String androidId;
    private String channel_num;
    private String deviceid;
    private CommonRequestMessage<E> messages;
    private String package_name;
    private String package_type;
    private String platform;
    private String requesttype;
    private String sign;
    private int target_version;
    private String version;

    public CommonRequestBean() {
        this.target_version = b.f35541n.intValue();
        this.package_type = "wufun";
        this.platform = "wufun";
        this.package_name = "com.join.android.app.mgsim.wufun";
    }

    public String getAndroidId() {
        return this.androidId;
    }

    public String getChannel_num() {
        return this.channel_num;
    }

    public String getDeviceid() {
        return this.deviceid;
    }

    public CommonRequestMessage getMessages() {
        return this.messages;
    }

    public String getPackage_name() {
        return this.package_name;
    }

    public String getPackage_type() {
        return this.package_type;
    }

    public String getPlatform() {
        return this.platform;
    }

    public String getRequesttype() {
        return this.requesttype;
    }

    public String getSign() {
        return this.sign;
    }

    public int getTarget_version() {
        return this.target_version;
    }

    public String getVersion() {
        return this.version;
    }

    public void setAndroidId(String androidId) {
        this.androidId = androidId;
    }

    public void setChannel_num(String channel_num) {
        this.channel_num = channel_num;
    }

    public void setDeviceid(String deviceid) {
        this.deviceid = deviceid;
    }

    public void setMessages(CommonRequestMessage messages) {
        this.messages = messages;
    }

    public void setPackage_name(String package_name) {
        this.package_name = package_name;
    }

    public void setPackage_type(String package_type) {
        this.package_type = package_type;
    }

    public void setPlatform(String platform) {
        this.platform = platform;
    }

    public void setRequesttype(String requesttype) {
        this.requesttype = requesttype;
    }

    public void setSign(String sign) {
        this.sign = sign;
    }

    public void setTarget_version(int target_version) {
        this.target_version = target_version;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public CommonRequestBean(String version, String deviceid, String androidId, String requesttype, String channel_num, String sign, CommonRequestMessage<E> messages) {
        this.target_version = b.f35541n.intValue();
        this.package_type = "wufun";
        this.platform = "wufun";
        this.package_name = "com.join.android.app.mgsim.wufun";
        this.version = version;
        this.deviceid = deviceid;
        this.requesttype = requesttype;
        this.channel_num = channel_num;
        this.sign = sign;
        this.messages = messages;
        this.androidId = androidId;
    }

    public CommonRequestBean(String version, String deviceid, String androidId, String requesttype, String channel_num, String sign, CommonRequestMessage<E> messages, int target_version) {
        b.f35541n.intValue();
        this.package_type = "wufun";
        this.platform = "wufun";
        this.package_name = "com.join.android.app.mgsim.wufun";
        this.version = version;
        this.deviceid = deviceid;
        this.requesttype = requesttype;
        this.channel_num = channel_num;
        this.sign = sign;
        this.messages = messages;
        this.target_version = target_version;
        this.androidId = androidId;
    }

    public CommonRequestBean(String version, String deviceid, String androidId, String channel_num, String sign, CommonRequestMessage<E> messages) {
        this.target_version = b.f35541n.intValue();
        this.package_type = "wufun";
        this.platform = "wufun";
        this.package_name = "com.join.android.app.mgsim.wufun";
        this.version = version;
        this.deviceid = deviceid;
        this.sign = sign;
        this.messages = messages;
        this.channel_num = channel_num;
        this.androidId = androidId;
    }

    public CommonRequestBean(String version, String deviceid, String androidId, String sign, CommonRequestMessage<E> messages) {
        this.target_version = b.f35541n.intValue();
        this.package_type = "wufun";
        this.platform = "wufun";
        this.package_name = "com.join.android.app.mgsim.wufun";
        this.version = version;
        this.deviceid = deviceid;
        this.sign = sign;
        this.messages = messages;
        this.androidId = androidId;
    }
}

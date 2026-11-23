package com.join.mgps.dto;

import com.czhj.sdk.common.Constants;
import org.springframework.util.LinkedMultiValueMap;

/* JADX INFO: loaded from: classes3.dex */
public class CommentRequest {
    private String channel_num;
    private String device_id;
    private String ip_address;
    private String mac;
    private String mobile_phone_model;
    private String package_name = "com.join.android.app.mgsim.wufun";
    private String sort;
    private String token;
    private String uid;
    private String version;
    private int vuid;

    public String getChannel_num() {
        return this.channel_num;
    }

    public String getDevice_id() {
        return this.device_id;
    }

    public String getIp_address() {
        return this.ip_address;
    }

    public String getMac() {
        return this.mac;
    }

    public String getMobile_phone_model() {
        return this.mobile_phone_model;
    }

    public String getPackage_name() {
        return this.package_name;
    }

    public LinkedMultiValueMap<String, String> getParams() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add("sort", this.sort + "");
        linkedMultiValueMap.add(Constants.TOKEN, this.token + "");
        linkedMultiValueMap.add("version", this.version + "");
        linkedMultiValueMap.add("device_id", this.device_id + "");
        linkedMultiValueMap.add("mac", this.mac + "");
        linkedMultiValueMap.add("ip_address", this.ip_address + "");
        linkedMultiValueMap.add("channel_num", this.channel_num + "");
        linkedMultiValueMap.add("mobile_phone_model", this.mobile_phone_model + "");
        linkedMultiValueMap.add("uid", this.uid + "");
        linkedMultiValueMap.add("package_name", this.package_name + "");
        linkedMultiValueMap.add("vuid", this.vuid + "");
        return linkedMultiValueMap;
    }

    public String getSort() {
        return this.sort;
    }

    public String getToken() {
        return this.token;
    }

    public String getUid() {
        return this.uid;
    }

    public String getVersion() {
        return this.version;
    }

    public int getVuid() {
        return this.vuid;
    }

    public void setChannel_num(String channel_num) {
        this.channel_num = channel_num;
    }

    public void setDevice_id(String device_id) {
        this.device_id = device_id;
    }

    public void setIp_address(String ip_address) {
        this.ip_address = ip_address;
    }

    public void setMac(String mac) {
        this.mac = mac;
    }

    public void setMobile_phone_model(String mobile_phone_model) {
        this.mobile_phone_model = mobile_phone_model;
    }

    public void setPackage_name(String package_name) {
        this.package_name = package_name;
    }

    public void setSort(String sort) {
        this.sort = sort;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public void setVuid(int vuid) {
        this.vuid = vuid;
    }

    public String toString() {
        return "CommentRequest{sort='" + this.sort + "', token='" + this.token + "', version='" + this.version + "', device_id='" + this.device_id + "', mac='" + this.mac + "', ip_address='" + this.ip_address + "', channel_num='" + this.channel_num + "', mobile_phone_model='" + this.mobile_phone_model + "', uid='" + this.uid + "'}";
    }
}

package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class RequestCommentAllListArgs extends BaseDto {
    private String channel_num;
    private String device_id;
    private String game_id;
    private String ip_address;
    private String mac;
    private String mobile_phone_model;

    /* JADX INFO: renamed from: pc, reason: collision with root package name */
    private int f68093pc;
    private int pn;
    private String token;
    private int uid;
    private String version;
    private String package_name = "com.join.android.app.mgsim.wufun";
    private String sort = "desc";

    public RequestCommentAllListArgs(int pn, int pc2, String game_id, int uid, String mobile_phone_model, String token, String mac, String ip_address, String version, String device_id, String channel_num) {
        this.channel_num = channel_num;
        this.device_id = device_id;
        this.version = version;
        this.pn = pn;
        this.f68093pc = pc2;
        this.game_id = game_id;
        this.uid = uid;
        this.mobile_phone_model = mobile_phone_model;
        this.token = token;
        this.mac = mac;
        this.ip_address = ip_address;
    }

    public String getChannel_num() {
        return this.channel_num;
    }

    public String getDevice_id() {
        return this.device_id;
    }

    public String getGame_id() {
        return this.game_id;
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

    public int getPc() {
        return this.f68093pc;
    }

    public int getPn() {
        return this.pn;
    }

    public String getSort() {
        return this.sort;
    }

    public String getToken() {
        return this.token;
    }

    public int getUid() {
        return this.uid;
    }

    public String getVersion() {
        return this.version;
    }

    public void setChannel_num(String channel_num) {
        this.channel_num = channel_num;
    }

    public void setDevice_id(String device_id) {
        this.device_id = device_id;
    }

    public void setGame_id(String game_id) {
        this.game_id = game_id;
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

    public void setPc(int pc2) {
        this.f68093pc = pc2;
    }

    public void setPn(int pn) {
        this.pn = pn;
    }

    public void setSort(String sort) {
        this.sort = sort;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public void setVersion(String version) {
        this.version = version;
    }
}

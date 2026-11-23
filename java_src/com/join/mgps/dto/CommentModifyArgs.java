package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class CommentModifyArgs extends BaseDto {
    private String channel_num;
    private String comment_id;
    private String content;
    private String device_id;
    private String game_id;
    private String ip_address;
    private int m_p_m_status;
    private String mac;
    private String mobile_phone_model;
    private int pn;
    private int random_num;
    private float score;
    private String token;
    private int uid;
    private String user_token;
    private String version;

    public CommentModifyArgs(String token, String version, String device_id, String mac, String ip_address, String channel_num, String mobile_phone_model, String game_id, int uid, String comment_id, String user_token, String content, float score, int pn, int random_num, int m_p_m_status) {
        this.m_p_m_status = m_p_m_status;
        this.token = token;
        this.version = version;
        this.device_id = device_id;
        this.mac = mac;
        this.ip_address = ip_address;
        this.channel_num = channel_num;
        this.mobile_phone_model = mobile_phone_model;
        this.game_id = game_id;
        this.uid = uid;
        this.comment_id = comment_id;
        this.user_token = user_token;
        this.content = content;
        this.score = score;
        this.pn = pn;
        this.random_num = random_num;
    }

    public String getChannel_num() {
        return this.channel_num;
    }

    public String getComment_id() {
        return this.comment_id;
    }

    public String getContent() {
        return this.content;
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

    public int getM_p_m_status() {
        return this.m_p_m_status;
    }

    public String getMac() {
        return this.mac;
    }

    public String getMobile_phone_model() {
        return this.mobile_phone_model;
    }

    public int getPn() {
        return this.pn;
    }

    public int getRandom_num() {
        return this.random_num;
    }

    public float getScore() {
        return this.score;
    }

    public String getToken() {
        return this.token;
    }

    public int getUid() {
        return this.uid;
    }

    public String getUser_token() {
        return this.user_token;
    }

    public String getVersion() {
        return this.version;
    }

    public void setChannel_num(String channel_num) {
        this.channel_num = channel_num;
    }

    public void setComment_id(String comment_id) {
        this.comment_id = comment_id;
    }

    public void setContent(String content) {
        this.content = content;
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

    public void setM_p_m_status(int m_p_m_status) {
        this.m_p_m_status = m_p_m_status;
    }

    public void setMac(String mac) {
        this.mac = mac;
    }

    public void setMobile_phone_model(String mobile_phone_model) {
        this.mobile_phone_model = mobile_phone_model;
    }

    public void setPn(int pn) {
        this.pn = pn;
    }

    public void setRandom_num(int random_num) {
        this.random_num = random_num;
    }

    public void setScore(float score) {
        this.score = score;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public void setUser_token(String user_token) {
        this.user_token = user_token;
    }

    public void setVersion(String version) {
        this.version = version;
    }
}

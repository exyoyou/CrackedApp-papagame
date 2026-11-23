package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class CommentCreateArgs extends BaseDto {
    private String channel_num;
    private String content;
    private String details_comment_id;
    private String device_id;
    private String game_id;
    private String head_portrait;
    private String ip_address;
    private int m_p_m_status;
    private String mac;
    private String mobile_phone_model;
    private int pn;
    private int position;
    private int random_num;
    private String reply_comment_id;
    private String reply_comment_user_id;
    private String reply_comment_user_name;
    private float score;
    private String sort = "desc";
    private String token;
    private int uid;
    private String user_name;
    private String user_token;
    private String version;

    public CommentCreateArgs(String game_id, float score, String content, String token, String mobile_phone_model, int position, String details_comment_id, String user_name, String head_portrait, String user_token, int uid, String ip_address, String mac, int random_num, String reply_comment_user_id, String reply_comment_user_name, String reply_comment_id, String version, String device_id, String channel_num, int pn, int m_p_m_status) {
        this.m_p_m_status = m_p_m_status;
        this.channel_num = channel_num;
        this.device_id = device_id;
        this.version = version;
        this.position = position;
        this.details_comment_id = details_comment_id;
        this.game_id = game_id;
        this.score = score;
        this.content = content;
        this.token = token;
        this.mobile_phone_model = mobile_phone_model;
        this.reply_comment_user_id = reply_comment_user_id;
        this.reply_comment_user_name = reply_comment_user_name;
        this.reply_comment_id = reply_comment_id;
        this.random_num = random_num;
        this.user_name = user_name;
        this.head_portrait = head_portrait;
        this.user_token = user_token;
        this.uid = uid;
        this.ip_address = ip_address;
        this.mac = mac;
        this.pn = pn;
    }

    public String getChannel_num() {
        return this.channel_num;
    }

    public String getContent() {
        return this.content;
    }

    public String getDetails_comment_id() {
        return this.details_comment_id;
    }

    public String getDevice_id() {
        return this.device_id;
    }

    public String getGame_id() {
        return this.game_id;
    }

    public String getHead_portrait() {
        return this.head_portrait;
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

    public int getPosition() {
        return this.position;
    }

    public int getRandom_num() {
        return this.random_num;
    }

    public String getReply_comment_id() {
        return this.reply_comment_id;
    }

    public String getReply_comment_user_id() {
        return this.reply_comment_user_id;
    }

    public String getReply_comment_user_name() {
        return this.reply_comment_user_name;
    }

    public float getScore() {
        return this.score;
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

    public String getUser_name() {
        return this.user_name;
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

    public void setContent(String content) {
        this.content = content;
    }

    public void setDetails_comment_id(String details_comment_id) {
        this.details_comment_id = details_comment_id;
    }

    public void setDevice_id(String device_id) {
        this.device_id = device_id;
    }

    public void setGame_id(String game_id) {
        this.game_id = game_id;
    }

    public void setHead_portrait(String head_portrait) {
        this.head_portrait = head_portrait;
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

    public void setPosition(int position) {
        this.position = position;
    }

    public void setRandom_num(int random_num) {
        this.random_num = random_num;
    }

    public void setReply_comment_id(String reply_comment_id) {
        this.reply_comment_id = reply_comment_id;
    }

    public void setReply_comment_user_id(String reply_comment_user_id) {
        this.reply_comment_user_id = reply_comment_user_id;
    }

    public void setReply_comment_user_name(String reply_comment_user_name) {
        this.reply_comment_user_name = reply_comment_user_name;
    }

    public void setScore(float score) {
        this.score = score;
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

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public void setUser_token(String user_token) {
        this.user_token = user_token;
    }

    public void setVersion(String version) {
        this.version = version;
    }
}

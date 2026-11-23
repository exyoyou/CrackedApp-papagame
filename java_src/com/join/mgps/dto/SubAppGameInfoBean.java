package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class SubAppGameInfoBean {
    private String appSize;
    private String crc_sign_id;
    private String down_count;
    private String down_count_manual;
    private String down_url_local;
    private String down_url_remote;
    private String game_name;
    private String ico_local;
    private String ico_remote;
    private String info;
    private String packageName;
    private String score_count;
    private String score_count_manual;
    private String sign_id;
    private List<TipBean> tag_info;

    public SubAppGameInfoBean() {
    }

    public String getAppSize() {
        return this.appSize;
    }

    public String getCrc_sign_id() {
        return this.crc_sign_id;
    }

    public String getDown_count() {
        return this.down_count;
    }

    public String getDown_count_manual() {
        return this.down_count_manual;
    }

    public String getDown_url_local() {
        return this.down_url_local;
    }

    public String getDown_url_remote() {
        return this.down_url_remote;
    }

    public String getGame_name() {
        return this.game_name;
    }

    public String getIco_local() {
        return this.ico_local;
    }

    public String getIco_remote() {
        return this.ico_remote;
    }

    public String getInfo() {
        return this.info;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public String getScore_count() {
        return this.score_count;
    }

    public String getScore_count_manual() {
        return this.score_count_manual;
    }

    public String getSign_id() {
        return this.sign_id;
    }

    public List<TipBean> getTag_info() {
        return this.tag_info;
    }

    public void setAppSize(String appSize) {
        this.appSize = appSize;
    }

    public void setCrc_sign_id(String crc_sign_id) {
        this.crc_sign_id = crc_sign_id;
    }

    public void setDown_count(String down_count) {
        this.down_count = down_count;
    }

    public void setDown_count_manual(String down_count_manual) {
        this.down_count_manual = down_count_manual;
    }

    public void setDown_url_local(String down_url_local) {
        this.down_url_local = down_url_local;
    }

    public void setDown_url_remote(String down_url_remote) {
        this.down_url_remote = down_url_remote;
    }

    public void setGame_name(String game_name) {
        this.game_name = game_name;
    }

    public void setIco_local(String ico_local) {
        this.ico_local = ico_local;
    }

    public void setIco_remote(String ico_remote) {
        this.ico_remote = ico_remote;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public void setPackageName(String packageName) {
        this.packageName = packageName;
    }

    public void setScore_count(String score_count) {
        this.score_count = score_count;
    }

    public void setScore_count_manual(String score_count_manual) {
        this.score_count_manual = score_count_manual;
    }

    public void setSign_id(String sign_id) {
        this.sign_id = sign_id;
    }

    public void setTag_info(List<TipBean> tag_info) {
        this.tag_info = tag_info;
    }

    public SubAppGameInfoBean(String crc_sign_id, String sign_id, String game_name, String ico_local, String ico_remote, String packageName, String appSize, List<TipBean> tag_info, String down_count, String down_count_manual, String down_url_local, String down_url_remote, String info, String score_count_manual, String score_count) {
        this.crc_sign_id = crc_sign_id;
        this.sign_id = sign_id;
        this.game_name = game_name;
        this.ico_local = ico_local;
        this.ico_remote = ico_remote;
        this.packageName = packageName;
        this.appSize = appSize;
        this.tag_info = tag_info;
        this.down_count = down_count;
        this.down_count_manual = down_count_manual;
        this.down_url_local = down_url_local;
        this.down_url_remote = down_url_remote;
        this.info = info;
        this.score_count_manual = score_count_manual;
        this.score_count = score_count;
    }
}

package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;
import com.join.mgps.dto.BannerBean;

/* JADX INFO: loaded from: classes3.dex */
public class BannerAndTablesTable {

    @DatabaseField
    private String crc_link_type_val;

    @DatabaseField
    private String game_info_tpl_type;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    @DatabaseField(generatedId = true)
    private int f67235id;

    @DatabaseField
    private int jump_type;

    @DatabaseField
    private int link_type;

    @DatabaseField
    private String link_type_val;

    @DatabaseField
    private String pic_remote;

    @DatabaseField
    private String title;

    @DatabaseField
    private String tpl_type;

    public BannerAndTablesTable() {
    }

    public BannerBean getBannerBean() {
        return new BannerBean(this.title, this.pic_remote, this.link_type, this.jump_type, this.link_type_val, this.tpl_type, this.crc_link_type_val, this.game_info_tpl_type);
    }

    public String getCrc_link_type_val() {
        return this.crc_link_type_val;
    }

    public int getId() {
        return this.f67235id;
    }

    public int getJump_type() {
        return this.jump_type;
    }

    public int getLink_type() {
        return this.link_type;
    }

    public String getLink_type_val() {
        return this.link_type_val;
    }

    public String getPic_remote() {
        return this.pic_remote;
    }

    public String getTitle() {
        return this.title;
    }

    public String getTpl_type() {
        return this.tpl_type;
    }

    public void setCrc_link_type_val(String crc_link_type_val) {
        this.crc_link_type_val = crc_link_type_val;
    }

    public void setId(int id2) {
        this.f67235id = id2;
    }

    public void setJump_type(int jump_type) {
        this.jump_type = jump_type;
    }

    public void setLink_type(int link_type) {
        this.link_type = link_type;
    }

    public void setLink_type_val(String link_type_val) {
        this.link_type_val = link_type_val;
    }

    public void setPic_remote(String pic_remote) {
        this.pic_remote = pic_remote;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setTpl_type(String tpl_type) {
        this.tpl_type = tpl_type;
    }

    public BannerAndTablesTable(int id2, String title, String pic_remote, int link_type, int jump_type, String link_type_val, String tpl_type, String crc_link_type_val, String game_info_tpl_type) {
        this.f67235id = id2;
        this.title = title;
        this.pic_remote = pic_remote;
        this.link_type = link_type;
        this.jump_type = jump_type;
        this.link_type_val = link_type_val;
        this.tpl_type = tpl_type;
        this.crc_link_type_val = crc_link_type_val;
        this.game_info_tpl_type = game_info_tpl_type;
    }

    public BannerAndTablesTable(BannerBean bannerBean) {
        this.title = bannerBean.getTitle();
        this.pic_remote = bannerBean.getPic_remote();
        this.link_type = bannerBean.getLink_type();
        this.jump_type = bannerBean.getJump_type();
        this.link_type_val = bannerBean.getLink_type_val();
        this.tpl_type = bannerBean.getTpl_type();
        this.crc_link_type_val = bannerBean.getCrc_link_type_val();
        this.game_info_tpl_type = bannerBean.getGame_info_tpl_type();
    }
}

package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;
import com.join.mgps.dto.AppMoreBean;

/* JADX INFO: loaded from: classes3.dex */
public class AppMoreBeanTable {

    @DatabaseField
    private String crc_link_type_val;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    @DatabaseField(generatedId = true)
    private int f67233id;

    @DatabaseField
    private int is_more;

    @DatabaseField
    private int jump_type;

    @DatabaseField
    private int link_type;

    @DatabaseField
    private String link_type_val;

    @DatabaseField(columnName = "recom", foreign = true, foreignAutoRefresh = true)
    private RecomDatabeanTable recomDatabeanTable;

    @DatabaseField
    private String tpl_type;

    public AppMoreBeanTable() {
    }

    public AppMoreBean getAppMoreBean() {
        return new AppMoreBean(this.link_type, this.link_type_val, this.tpl_type, this.crc_link_type_val, this.jump_type, this.is_more);
    }

    public String getCrc_link_type_val() {
        return this.crc_link_type_val;
    }

    public int getId() {
        return this.f67233id;
    }

    public int getIs_more() {
        return this.is_more;
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

    public RecomDatabeanTable getRecomDatabeanTable() {
        return this.recomDatabeanTable;
    }

    public String getTpl_type() {
        return this.tpl_type;
    }

    public void setCrc_link_type_val(String crc_link_type_val) {
        this.crc_link_type_val = crc_link_type_val;
    }

    public void setId(int id2) {
        this.f67233id = id2;
    }

    public void setIs_more(int is_more) {
        this.is_more = is_more;
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

    public void setRecomDatabeanTable(RecomDatabeanTable recomDatabeanTable) {
        this.recomDatabeanTable = recomDatabeanTable;
    }

    public void setTpl_type(String tpl_type) {
        this.tpl_type = tpl_type;
    }

    public AppMoreBeanTable(AppMoreBean appMoreBean) {
        this.link_type = appMoreBean.getLink_type();
        this.link_type_val = appMoreBean.getLink_type_val();
        this.tpl_type = appMoreBean.getTpl_type();
        this.crc_link_type_val = appMoreBean.getCrc_link_type_val();
        this.jump_type = appMoreBean.getJump_type();
        this.is_more = appMoreBean.getIs_more();
    }

    public AppMoreBeanTable(int id2, int link_type, String link_type_val, String tpl_type, String crc_link_type_val, int jump_type, int is_more) {
        this.f67233id = id2;
        this.link_type = link_type;
        this.link_type_val = link_type_val;
        this.tpl_type = tpl_type;
        this.crc_link_type_val = crc_link_type_val;
        this.jump_type = jump_type;
        this.is_more = is_more;
    }
}

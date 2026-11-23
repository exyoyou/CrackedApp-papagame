package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;
import com.join.mgps.dto.ModleBean;

/* JADX INFO: loaded from: classes3.dex */
public class ModleBeanTable {

    @DatabaseField
    private String ico_remote;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    @DatabaseField(generatedId = true)
    private int f67259id;

    @DatabaseField
    private String label;

    @DatabaseField
    private int online;

    @DatabaseField
    private String pic_remote;

    @DatabaseField(columnName = "recom", foreign = true, foreignAutoRefresh = true)
    private RecomDatabeanTable recomDatabeanTable;

    @DatabaseField
    private String sub_title;

    @DatabaseField
    private String title;

    @DatabaseField
    private String title_type;

    public ModleBeanTable() {
    }

    public String getIco_remote() {
        return this.ico_remote;
    }

    public int getId() {
        return this.f67259id;
    }

    public String getLabel() {
        return this.label;
    }

    public ModleBean getModleBean() {
        return new ModleBean(this.title, this.label, this.pic_remote, this.ico_remote, this.title_type, "", this.sub_title, this.online);
    }

    public int getOnline() {
        return this.online;
    }

    public String getPic_remote() {
        return this.pic_remote;
    }

    public RecomDatabeanTable getRecomDatabeanTable() {
        return this.recomDatabeanTable;
    }

    public String getSub_title() {
        return this.sub_title;
    }

    public String getTitle() {
        return this.title;
    }

    public String getTitle_type() {
        return this.title_type;
    }

    public void setIco_remote(String ico_remote) {
        this.ico_remote = ico_remote;
    }

    public void setId(int id2) {
        this.f67259id = id2;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    public void setOnline(int online) {
        this.online = online;
    }

    public void setPic_remote(String pic_remote) {
        this.pic_remote = pic_remote;
    }

    public void setRecomDatabeanTable(RecomDatabeanTable recomDatabeanTable) {
        this.recomDatabeanTable = recomDatabeanTable;
    }

    public void setSub_title(String sub_title) {
        this.sub_title = sub_title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setTitle_type(String title_type) {
        this.title_type = title_type;
    }

    public ModleBeanTable(ModleBean modleBean) {
        this.title = modleBean.getTitle();
        this.ico_remote = modleBean.getIco_remote();
        this.title_type = modleBean.getTitle_type();
        this.label = modleBean.getLabel();
        this.pic_remote = modleBean.getPic_remote();
        this.sub_title = modleBean.getSub_title();
        this.online = modleBean.getOnline();
    }

    public ModleBeanTable(int id2, String title, String title_type, String label, String pic_remote, String ico_remote, String sub_title, int online) {
        this.f67259id = id2;
        this.title = title;
        this.title_type = title_type;
        this.label = label;
        this.pic_remote = pic_remote;
        this.ico_remote = ico_remote;
        this.sub_title = sub_title;
        this.online = online;
    }
}

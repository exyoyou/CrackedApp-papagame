package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;
import com.join.mgps.dto.TipBean;

/* JADX INFO: loaded from: classes3.dex */
public class TipBeanTable {

    @DatabaseField(columnName = "appbean", foreign = true, foreignAutoRefresh = true)
    private AppBeanTable appBeanTable;

    @DatabaseField
    private String color;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    @DatabaseField(generatedId = true)
    private int f67268id;

    @DatabaseField
    private String name;

    @DatabaseField
    private String tagId;

    public TipBeanTable() {
    }

    public AppBeanTable getAppBeanTable() {
        return this.appBeanTable;
    }

    public String getColor() {
        return this.color;
    }

    public int getId() {
        return this.f67268id;
    }

    public String getName() {
        return this.name;
    }

    public String getTagId() {
        return this.tagId;
    }

    public TipBean getTipBean() {
        return new TipBean(this.name, this.color, this.tagId);
    }

    public void setAppBeanTable(AppBeanTable appBeanTable) {
        this.appBeanTable = appBeanTable;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public void setId(int id2) {
        this.f67268id = id2;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setTagId(String tagId) {
        this.tagId = tagId;
    }

    public TipBeanTable(TipBean tipBean) {
        this.name = tipBean.getName();
        this.color = tipBean.getColor();
        this.tagId = tipBean.getId();
    }
}

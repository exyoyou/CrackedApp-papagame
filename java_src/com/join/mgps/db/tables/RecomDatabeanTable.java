package com.join.mgps.db.tables;

import com.j256.ormlite.dao.ForeignCollection;
import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.field.ForeignCollectionField;

/* JADX INFO: loaded from: classes3.dex */
public class RecomDatabeanTable {

    @DatabaseField
    private int dataFrom;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    @DatabaseField(generatedId = true)
    private int f67263id;

    @DatabaseField(columnName = "modletable", foreign = true, foreignAutoCreate = true, foreignAutoRefresh = true)
    private ModleBeanTable main;

    @ForeignCollectionField(eager = false)
    ForeignCollection<AppMoreBeanTable> more;

    @ForeignCollectionField(eager = false)
    ForeignCollection<AppBeanMainTable> sub;

    public int getDataFrom() {
        return this.dataFrom;
    }

    public int getId() {
        return this.f67263id;
    }

    public ModleBeanTable getMain() {
        return this.main;
    }

    public ForeignCollection<AppMoreBeanTable> getMore() {
        return this.more;
    }

    public ForeignCollection<AppBeanMainTable> getSub() {
        return this.sub;
    }

    public void setDataFrom(int dataFrom) {
        this.dataFrom = dataFrom;
    }

    public void setId(int id2) {
        this.f67263id = id2;
    }

    public void setMain(ModleBeanTable main) {
        this.main = main;
    }

    public void setMore(ForeignCollection<AppMoreBeanTable> more) {
        this.more = more;
    }

    public void setSub(ForeignCollection<AppBeanMainTable> sub) {
        this.sub = sub;
    }
}

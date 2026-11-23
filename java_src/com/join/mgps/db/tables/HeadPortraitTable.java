package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;

/* JADX INFO: loaded from: classes3.dex */
public class HeadPortraitTable {

    @DatabaseField
    private String head_portrait_pic;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    @DatabaseField(generatedId = true)
    private int f67254id;

    public String getHead_portrait_pic() {
        return this.head_portrait_pic;
    }

    public int getId() {
        return this.f67254id;
    }

    public void setHead_portrait_pic(String head_portrait_pic) {
        this.head_portrait_pic = head_portrait_pic;
    }

    public void setId(int id2) {
        this.f67254id = id2;
    }
}

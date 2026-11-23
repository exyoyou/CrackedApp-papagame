package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;

/* JADX INFO: loaded from: classes3.dex */
public class SearchRecordTable {

    @DatabaseField
    private long create_time;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    @DatabaseField(generatedId = true)
    private int f67265id;

    @DatabaseField
    private String name;

    public long getCreate_time() {
        return this.create_time;
    }

    public int getId() {
        return this.f67265id;
    }

    public String getName() {
        return this.name;
    }

    public void setCreate_time(long create_time) {
        this.create_time = create_time;
    }

    public void setId(int id2) {
        this.f67265id = id2;
    }

    public void setName(String name) {
        this.name = name;
    }
}

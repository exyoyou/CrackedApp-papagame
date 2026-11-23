package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;

/* JADX INFO: loaded from: classes3.dex */
public class StatisticTable {

    @DatabaseField
    private String args1;

    @DatabaseField
    private String args2;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    @DatabaseField(generatedId = true)
    private int f67267id;

    @DatabaseField
    private String time;

    @DatabaseField
    private String type;

    public String getArgs1() {
        return this.args1;
    }

    public String getArgs2() {
        return this.args2;
    }

    public int getId() {
        return this.f67267id;
    }

    public String getTime() {
        return this.time;
    }

    public String getType() {
        return this.type;
    }

    public void setArgs1(String args1) {
        this.args1 = args1;
    }

    public void setArgs2(String args2) {
        this.args2 = args2;
    }

    public void setId(int id2) {
        this.f67267id = id2;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public void setType(String type) {
        this.type = type;
    }
}

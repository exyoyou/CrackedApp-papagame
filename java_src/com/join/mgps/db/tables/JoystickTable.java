package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;

/* JADX INFO: loaded from: classes3.dex */
public class JoystickTable {

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    @DatabaseField(generatedId = true)
    private int f67257id;

    @DatabaseField
    private String mac;

    @DatabaseField
    private String name;

    @DatabaseField
    private Long time;

    @DatabaseField
    private String type;

    public int getId() {
        return this.f67257id;
    }

    public String getMac() {
        return this.mac;
    }

    public String getName() {
        return this.name;
    }

    public Long getTime() {
        return this.time;
    }

    public String getType() {
        return this.type;
    }

    public void setId(int id2) {
        this.f67257id = id2;
    }

    public void setMac(String mac) {
        this.mac = mac;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setTime(Long time) {
        this.time = time;
    }

    public void setType(String type) {
        this.type = type;
    }
}

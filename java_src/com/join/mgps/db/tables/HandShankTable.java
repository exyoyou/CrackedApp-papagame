package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;

/* JADX INFO: loaded from: classes3.dex */
public class HandShankTable {

    @DatabaseField(id = true)
    private String address;
    private Boolean isConnect = Boolean.FALSE;

    @DatabaseField
    private String name;

    @DatabaseField
    private Long time;

    public boolean equals(Object o10) {
        return o10 instanceof HandShankTable ? ((HandShankTable) o10).getAddress().equals(getAddress()) : super.equals(o10);
    }

    public String getAddress() {
        return this.address;
    }

    public Boolean getIsConnect() {
        return this.isConnect;
    }

    public String getName() {
        return this.name;
    }

    public Long getTime() {
        return this.time;
    }

    public int hashCode() {
        return getAddress().hashCode();
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setIsConnect(Boolean isConnect) {
        this.isConnect = isConnect;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setTime(Long time) {
        this.time = time;
    }
}

package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;

/* JADX INFO: loaded from: classes3.dex */
public class H5GameAccountDataTable {

    @DatabaseField
    private String account_data;

    @DatabaseField
    private String appkey;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    @DatabaseField(generatedId = true)
    private int f67253id;

    public String getAccount_data() {
        return this.account_data;
    }

    public String getAppkey() {
        return this.appkey;
    }

    public int getId() {
        return this.f67253id;
    }

    public void setAccount_data(String account_data) {
        this.account_data = account_data;
    }

    public void setAppkey(String appkey) {
        this.appkey = appkey;
    }

    public void setId(int id2) {
        this.f67253id = id2;
    }
}

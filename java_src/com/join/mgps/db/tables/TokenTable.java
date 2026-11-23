package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;

/* JADX INFO: loaded from: classes3.dex */
@DatabaseTable(tableName = "token_table")
public class TokenTable {

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    @DatabaseField(generatedId = true)
    private int f67269id;

    @DatabaseField
    public String token;

    @DatabaseField
    public long uid;

    public int getId() {
        return this.f67269id;
    }

    public String getToken() {
        return this.token;
    }

    public long getUid() {
        return this.uid;
    }

    public void setId(int id2) {
        this.f67269id = id2;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public void setUid(long uid) {
        this.uid = uid;
    }
}

package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;

/* JADX INFO: loaded from: classes3.dex */
@DatabaseTable(tableName = "user_local_record")
public class UserLocalRecordTable {

    @DatabaseField
    private long createdAt;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    @DatabaseField(canBeNull = false, generatedId = true)
    private int f67270id;

    @DatabaseField
    private int intVal1;

    @DatabaseField
    private long longVal1;

    @DatabaseField
    private long longVal2;

    @DatabaseField(index = true)
    private long updatedAt;

    @DatabaseField(canBeNull = false, index = true, uniqueCombo = true)
    private String bizType = "";

    @DatabaseField(canBeNull = false, index = true, uniqueCombo = true)
    private String uid = "";

    @DatabaseField(canBeNull = false, uniqueCombo = true)
    private String scopeKey = "";

    @DatabaseField(canBeNull = false, uniqueCombo = true)
    private String extraKey = "";

    @DatabaseField
    private String payload = "";

    @DatabaseField
    private String strVal1 = "";

    public String getBizType() {
        return this.bizType;
    }

    public long getCreatedAt() {
        return this.createdAt;
    }

    public String getExtraKey() {
        return this.extraKey;
    }

    public int getId() {
        return this.f67270id;
    }

    public int getIntVal1() {
        return this.intVal1;
    }

    public long getLongVal1() {
        return this.longVal1;
    }

    public long getLongVal2() {
        return this.longVal2;
    }

    public String getPayload() {
        return this.payload;
    }

    public String getScopeKey() {
        return this.scopeKey;
    }

    public String getStrVal1() {
        return this.strVal1;
    }

    public String getUid() {
        return this.uid;
    }

    public long getUpdatedAt() {
        return this.updatedAt;
    }

    public void setBizType(String bizType) {
        this.bizType = bizType;
    }

    public void setCreatedAt(long createdAt) {
        this.createdAt = createdAt;
    }

    public void setExtraKey(String extraKey) {
        this.extraKey = extraKey;
    }

    public void setId(int id2) {
        this.f67270id = id2;
    }

    public void setIntVal1(int intVal1) {
        this.intVal1 = intVal1;
    }

    public void setLongVal1(long longVal1) {
        this.longVal1 = longVal1;
    }

    public void setLongVal2(long longVal2) {
        this.longVal2 = longVal2;
    }

    public void setPayload(String payload) {
        this.payload = payload;
    }

    public void setScopeKey(String scopeKey) {
        this.scopeKey = scopeKey;
    }

    public void setStrVal1(String strVal1) {
        this.strVal1 = strVal1;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public void setUpdatedAt(long updatedAt) {
        this.updatedAt = updatedAt;
    }
}

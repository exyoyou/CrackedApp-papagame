package com.join.android.app.common.db.tables;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;

/* JADX INFO: loaded from: classes5.dex */
@DatabaseTable(tableName = "resource_share")
public class ResourceShare {

    @DatabaseField
    private long fileSize;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    @DatabaseField(generatedId = true)
    private int f34455id;

    @DatabaseField
    private String name;

    @DatabaseField
    private long rsId;

    @DatabaseField
    private int type;

    @DatabaseField
    private String url;

    public long getFileSize() {
        return this.fileSize;
    }

    public int getId() {
        return this.f34455id;
    }

    public String getName() {
        return this.name;
    }

    public long getRsId() {
        return this.rsId;
    }

    public int getType() {
        return this.type;
    }

    public String getUrl() {
        return this.url;
    }

    public void setFileSize(long fileSize) {
        this.fileSize = fileSize;
    }

    public void setId(int id2) {
        this.f34455id = id2;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setRsId(long rsId) {
        this.rsId = rsId;
    }

    public void setType(int type) {
        this.type = type;
    }

    public void setUrl(String url) {
        this.url = url;
    }
}

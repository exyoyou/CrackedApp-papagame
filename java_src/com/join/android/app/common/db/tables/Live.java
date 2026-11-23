package com.join.android.app.common.db.tables;

import com.j256.ormlite.field.DatabaseField;

/* JADX INFO: loaded from: classes5.dex */
public class Live {

    @DatabaseField
    private String author;

    @DatabaseField
    private String createTime;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    @DatabaseField(generatedId = true)
    private int f34450id;

    @DatabaseField(index = true)
    private long liveId;

    @DatabaseField
    private String title;

    @DatabaseField
    private String url;

    public String getAuthor() {
        return this.author;
    }

    public String getCreateTime() {
        return this.createTime;
    }

    public int getId() {
        return this.f34450id;
    }

    public long getLiveId() {
        return this.liveId;
    }

    public String getTitle() {
        return this.title;
    }

    public String getUrl() {
        return this.url;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public void setId(int id2) {
        this.f34450id = id2;
    }

    public void setLiveId(long liveId) {
        this.liveId = liveId;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setUrl(String url) {
        this.url = url;
    }
}

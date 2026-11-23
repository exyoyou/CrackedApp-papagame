package com.join.android.app.common.db.tables;

import com.j256.ormlite.field.DatabaseField;

/* JADX INFO: loaded from: classes5.dex */
public class Reference {

    @DatabaseField(index = true)
    private long fileSize;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    @DatabaseField(generatedId = true)
    private int f34454id;

    @DatabaseField(columnName = "localcourse_id", foreign = true, foreignAutoCreate = true, foreignAutoRefresh = true)
    private LocalCourse localCourse;

    @DatabaseField(index = true)
    private long referenceId;

    @DatabaseField(index = true)
    private String title;

    @DatabaseField(index = true)
    private int type;

    @DatabaseField(index = true)
    private String url;

    public long getFileSize() {
        return this.fileSize;
    }

    public int getId() {
        return this.f34454id;
    }

    public LocalCourse getLocalCourse() {
        return this.localCourse;
    }

    public long getReferenceId() {
        return this.referenceId;
    }

    public String getTitle() {
        return this.title;
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
        this.f34454id = id2;
    }

    public void setLocalCourse(LocalCourse localCourse) {
        this.localCourse = localCourse;
    }

    public void setReferenceId(long referenceId) {
        this.referenceId = referenceId;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setType(int type) {
        this.type = type;
    }

    public void setUrl(String url) {
        this.url = url;
    }
}

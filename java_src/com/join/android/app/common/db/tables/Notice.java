package com.join.android.app.common.db.tables;

import com.j256.ormlite.field.DatabaseField;

/* JADX INFO: loaded from: classes5.dex */
public class Notice {

    @DatabaseField
    private String content;

    @DatabaseField
    private String createTime;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    @DatabaseField(generatedId = true)
    private int f34452id;

    @DatabaseField
    private long noticeId;

    @DatabaseField
    private String title;

    @DatabaseField
    private String validUntil;

    public String getContent() {
        return this.content;
    }

    public String getCreateTime() {
        return this.createTime;
    }

    public int getId() {
        return this.f34452id;
    }

    public long getNoticeId() {
        return this.noticeId;
    }

    public String getTitle() {
        return this.title;
    }

    public String getValidUntil() {
        return this.validUntil;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public void setId(int id2) {
        this.f34452id = id2;
    }

    public void setNoticeId(long noticeId) {
        this.noticeId = noticeId;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setValidUntil(String validUntil) {
        this.validUntil = validUntil;
    }
}

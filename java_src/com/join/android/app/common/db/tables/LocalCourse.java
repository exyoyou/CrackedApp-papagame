package com.join.android.app.common.db.tables;

import com.j256.ormlite.dao.ForeignCollection;
import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.field.ForeignCollectionField;

/* JADX INFO: loaded from: classes5.dex */
public class LocalCourse {

    @DatabaseField
    private String branch;
    private int chapterNum;

    @ForeignCollectionField(eager = true)
    ForeignCollection<Chapter> chapters;

    @DatabaseField
    private long courseHour;

    @DatabaseField
    private long courseId;

    @DatabaseField
    private String createTime;

    @DatabaseField
    private String description;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    @DatabaseField(generatedId = true)
    private int f34451id;

    @DatabaseField
    private int learningTimes;
    private int refNum;

    @ForeignCollectionField(eager = true)
    ForeignCollection<Reference> references;

    @DatabaseField
    private String title;

    @DatabaseField
    private String url;

    @DatabaseField
    private long validUntil;

    public String getBranch() {
        return this.branch;
    }

    public int getChapterNum() {
        return this.chapterNum;
    }

    public ForeignCollection<Chapter> getChapters() {
        return this.chapters;
    }

    public long getCourseHour() {
        return this.courseHour;
    }

    public long getCourseId() {
        return this.courseId;
    }

    public String getCreateTime() {
        return this.createTime;
    }

    public String getDescription() {
        return this.description;
    }

    public int getId() {
        return this.f34451id;
    }

    public int getLearningTimes() {
        return this.learningTimes;
    }

    public int getRefNum() {
        return this.refNum;
    }

    public ForeignCollection<Reference> getReferences() {
        return this.references;
    }

    public String getTitle() {
        return this.title;
    }

    public String getUrl() {
        return this.url;
    }

    public long getValidUntil() {
        return this.validUntil;
    }

    public void setBranch(String branch) {
        this.branch = branch;
    }

    public void setChapterNum(int chapterNum) {
        this.chapterNum = chapterNum;
    }

    public void setChapters(ForeignCollection<Chapter> chapters) {
        this.chapters = chapters;
    }

    public void setCourseHour(long courseHour) {
        this.courseHour = courseHour;
    }

    public void setCourseId(long courseId) {
        this.courseId = courseId;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setId(int id2) {
        this.f34451id = id2;
    }

    public void setLearningTimes(int learningTimes) {
        this.learningTimes = learningTimes;
    }

    public void setRefNum(int refNum) {
        this.refNum = refNum;
    }

    public void setReferences(ForeignCollection<Reference> references) {
        this.references = references;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public void setValidUntil(long validUntil) {
        this.validUntil = validUntil;
    }
}

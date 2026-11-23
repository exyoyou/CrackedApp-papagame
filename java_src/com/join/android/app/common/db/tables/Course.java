package com.join.android.app.common.db.tables;

import com.j256.ormlite.field.DatabaseField;

/* JADX INFO: loaded from: classes5.dex */
public class Course {

    @DatabaseField
    private long courseHour;

    @DatabaseField
    private long courseId;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    @DatabaseField(generatedId = true)
    private int f34449id;

    @DatabaseField
    private String lastLearn;

    @DatabaseField
    private int learningTimes;

    @DatabaseField
    private String title;

    @DatabaseField
    private String totalDuration;

    @DatabaseField
    private String url;

    public long getCourseHour() {
        return this.courseHour;
    }

    public long getCourseId() {
        return this.courseId;
    }

    public int getId() {
        return this.f34449id;
    }

    public String getLastLearn() {
        return this.lastLearn;
    }

    public int getLearningTimes() {
        return this.learningTimes;
    }

    public String getTitle() {
        return this.title;
    }

    public String getTotalDuration() {
        return this.totalDuration;
    }

    public String getUrl() {
        return this.url;
    }

    public void setCourseHour(long courseHour) {
        this.courseHour = courseHour;
    }

    public void setCourseId(long courseId) {
        this.courseId = courseId;
    }

    public void setId(int id2) {
        this.f34449id = id2;
    }

    public void setLastLearn(String lastLearn) {
        this.lastLearn = lastLearn;
    }

    public void setLearningTimes(int learningTimes) {
        this.learningTimes = learningTimes;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setTotalDuration(String totalDuration) {
        this.totalDuration = totalDuration;
    }

    public void setUrl(String url) {
        this.url = url;
    }
}

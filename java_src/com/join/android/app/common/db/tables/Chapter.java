package com.join.android.app.common.db.tables;

import com.j256.ormlite.field.DatabaseField;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class Chapter {

    @DatabaseField
    private String bookmark;

    @DatabaseField
    private long chapterDuration;

    @DatabaseField
    private long chapterId;
    private List<Chapter> children;

    @DatabaseField
    private String downloadUrl;

    @DatabaseField
    private long filesize;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    @DatabaseField(generatedId = true)
    private int f34448id;

    @DatabaseField
    private long learnedTime;

    @DatabaseField
    private String leftDays;

    @DatabaseField(columnName = "localcourse_id", foreign = true, foreignAutoCreate = true, foreignAutoRefresh = true)
    private LocalCourse localCourse;

    @DatabaseField(columnName = "parent_id", foreign = true, foreignAutoCreate = true, foreignAutoRefresh = true)
    private Chapter parent;

    @DatabaseField
    private String playUrl;
    private boolean playing;

    @DatabaseField
    private String title;

    @DatabaseField
    private String validUntil;

    public String getBookmark() {
        return this.bookmark;
    }

    public long getChapterDuration() {
        return this.chapterDuration;
    }

    public long getChapterId() {
        return this.chapterId;
    }

    public List<Chapter> getChildren() {
        return this.children;
    }

    public String getDownloadUrl() {
        return this.downloadUrl;
    }

    public long getFilesize() {
        return this.filesize;
    }

    public int getId() {
        return this.f34448id;
    }

    public long getLearnedTime() {
        return this.learnedTime;
    }

    public String getLeftDays() {
        return this.leftDays;
    }

    public LocalCourse getLocalCourse() {
        return this.localCourse;
    }

    public Chapter getParent() {
        return this.parent;
    }

    public String getPlayUrl() {
        return this.playUrl;
    }

    public String getTitle() {
        return this.title;
    }

    public String getValidUntil() {
        return this.validUntil;
    }

    public boolean isPlaying() {
        return this.playing;
    }

    public void setBookmark(String bookmark) {
        this.bookmark = bookmark;
    }

    public void setChapterDuration(long chapterDuration) {
        this.chapterDuration = chapterDuration;
    }

    public void setChapterId(long chapterId) {
        this.chapterId = chapterId;
    }

    public void setChildren(List<Chapter> children) {
        this.children = children;
    }

    public void setDownloadUrl(String downloadUrl) {
        this.downloadUrl = downloadUrl;
    }

    public void setFilesize(long filesize) {
        this.filesize = filesize;
    }

    public void setId(int id2) {
        this.f34448id = id2;
    }

    public void setLearnedTime(long learnedTime) {
        this.learnedTime = learnedTime;
    }

    public void setLeftDays(String leftDays) {
        this.leftDays = leftDays;
    }

    public void setLocalCourse(LocalCourse localCourse) {
        this.localCourse = localCourse;
    }

    public void setParent(Chapter parent) {
        this.parent = parent;
    }

    public void setPlayUrl(String playUrl) {
        this.playUrl = playUrl;
    }

    public void setPlaying(boolean playing) {
        this.playing = playing;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setValidUntil(String validUntil) {
        this.validUntil = validUntil;
    }
}

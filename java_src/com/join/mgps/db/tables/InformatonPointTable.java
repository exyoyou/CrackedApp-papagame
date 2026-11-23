package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;

/* JADX INFO: loaded from: classes3.dex */
public class InformatonPointTable {

    @DatabaseField
    private String action;

    @DatabaseField
    private long addTime;

    @DatabaseField
    private String contentId;

    @DatabaseField
    private String deviceId;

    @DatabaseField
    private long duration;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    @DatabaseField(generatedId = true)
    private int f67255id;

    @DatabaseField
    private String itemId;

    @DatabaseField
    private String sceneId;

    @DatabaseField
    private int state;

    @DatabaseField
    private String userId;

    public String getAction() {
        return this.action;
    }

    public long getAddTime() {
        return this.addTime;
    }

    public String getContentId() {
        return this.contentId;
    }

    public String getDeviceId() {
        return this.deviceId;
    }

    public long getDuration() {
        return this.duration;
    }

    public int getId() {
        return this.f67255id;
    }

    public String getItemId() {
        return this.itemId;
    }

    public String getSceneId() {
        return this.sceneId;
    }

    public int getState() {
        return this.state;
    }

    public String getUserId() {
        return this.userId;
    }

    public void setAction(String action) {
        this.action = action;
    }

    public void setAddTime(long addTime) {
        this.addTime = addTime;
    }

    public void setContentId(String contentId) {
        this.contentId = contentId;
    }

    public void setDeviceId(String deviceId) {
        this.deviceId = deviceId;
    }

    public void setDuration(long duration) {
        this.duration = duration;
    }

    public void setId(int id2) {
        this.f67255id = id2;
    }

    public void setItemId(String itemId) {
        this.itemId = itemId;
    }

    public void setSceneId(String sceneId) {
        this.sceneId = sceneId;
    }

    public void setState(int state) {
        this.state = state;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }
}

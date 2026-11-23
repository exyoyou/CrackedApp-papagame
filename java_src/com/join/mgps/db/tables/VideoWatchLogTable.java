package com.join.mgps.db.tables;

import com.j256.ormlite.field.DatabaseField;
import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class VideoWatchLogTable implements Serializable {

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    @DatabaseField(generatedId = true)
    private int f67272id;

    @DatabaseField
    private int sceneType;

    @DatabaseField
    private int sdkType;

    @DatabaseField
    private int userId;

    public int getId() {
        return this.f67272id;
    }

    public int getSceneType() {
        return this.sceneType;
    }

    public int getSdkType() {
        return this.sdkType;
    }

    public int getUserId() {
        return this.userId;
    }

    public void setSceneType(int sceneType) {
        this.sceneType = sceneType;
    }

    public void setSdkType(int sdkType) {
        this.sdkType = sdkType;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }
}

package com.join.kotlin.ui.findgame.data;

import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public class CategroyIntentItemData implements Serializable {
    private GameSubTypeData featureType;
    private GameSubTypeData gameType;
    private GameSubTypeData modelType;
    private GameSubTypeData playType;
    private GameSubTypeData themeType;

    public CategroyIntentItemData() {
    }

    public GameSubTypeData getFeatureType() {
        return this.featureType;
    }

    public GameSubTypeData getGameType() {
        return this.gameType;
    }

    public GameSubTypeData getModelType() {
        return this.modelType;
    }

    public GameSubTypeData getPlayType() {
        return this.playType;
    }

    public GameSubTypeData getThemeType() {
        return this.themeType;
    }

    public void setFeatureType(GameSubTypeData featureType) {
        this.featureType = featureType;
    }

    public void setGameType(GameSubTypeData gameType) {
        this.gameType = gameType;
    }

    public void setModelType(GameSubTypeData modelType) {
        this.modelType = modelType;
    }

    public void setPlayType(GameSubTypeData playType) {
        this.playType = playType;
    }

    public void setThemeType(GameSubTypeData themeType) {
        this.themeType = themeType;
    }

    public CategroyIntentItemData(GameSubTypeData gameType, GameSubTypeData modelType, GameSubTypeData playType, GameSubTypeData themeType, GameSubTypeData featureType) {
        this.gameType = gameType;
        this.modelType = modelType;
        this.playType = playType;
        this.themeType = themeType;
        this.featureType = featureType;
    }
}

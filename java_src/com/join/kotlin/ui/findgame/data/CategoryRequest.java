package com.join.kotlin.ui.findgame.data;

/* JADX INFO: loaded from: classes4.dex */
public class CategoryRequest {
    private int featureType;
    private int gameSortType;
    private int gameType;
    private int limit;
    private int modelType;
    private int page;
    private int playType;
    private int tagId;
    private int themeType;
    private int uid;

    public CategoryRequest(int featureType, int gameSortType, int gameType, int modelType, int page, int playType, int tagId, int themeType, int uid) {
        this.limit = 10;
        this.featureType = featureType;
        this.gameSortType = gameSortType;
        this.gameType = gameType;
        this.modelType = modelType;
        this.page = page;
        this.playType = playType;
        this.tagId = tagId;
        this.themeType = themeType;
        this.uid = uid;
    }

    public int getFeatureType() {
        return this.featureType;
    }

    public int getGameSortType() {
        return this.gameSortType;
    }

    public int getGameType() {
        return this.gameType;
    }

    public int getLimit() {
        return this.limit;
    }

    public int getModelType() {
        return this.modelType;
    }

    public int getPage() {
        return this.page;
    }

    public int getPlayType() {
        return this.playType;
    }

    public int getTagId() {
        return this.tagId;
    }

    public int getThemeType() {
        return this.themeType;
    }

    public int getUid() {
        return this.uid;
    }

    public void resetData() {
        this.featureType = 0;
        this.gameSortType = 1;
        this.gameType = 0;
        this.modelType = 0;
        this.page = 1;
        this.playType = 0;
        this.tagId = 0;
        this.themeType = 0;
        this.uid = 0;
        this.limit = 10;
    }

    public void setFeatureType(int var1) {
        this.featureType = var1;
    }

    public void setGameSortType(int var1) {
        this.gameSortType = var1;
    }

    public void setGameType(int var1) {
        this.gameType = var1;
    }

    public void setLimit(int limit) {
        this.limit = limit;
    }

    public void setModelType(int var1) {
        this.modelType = var1;
    }

    public void setPage(int var1) {
        this.page = var1;
    }

    public void setPlayType(int var1) {
        this.playType = var1;
    }

    public void setTagId(int var1) {
        this.tagId = var1;
    }

    public void setThemeType(int var1) {
        this.themeType = var1;
    }

    public void setUid(int var1) {
        this.uid = var1;
    }

    public CategoryRequest() {
        this.gameSortType = 1;
        this.page = 1;
        this.limit = 10;
    }
}

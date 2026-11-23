package com.join.kotlin.ui.findgame.data;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
public class TagData {

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private int f49103id;

    @NotNull
    private String title;
    private int type;

    public TagData(int id2, int type, @NotNull String title) {
        this.f49103id = id2;
        this.type = type;
        this.title = title;
    }

    public int getId() {
        return this.f49103id;
    }

    @NotNull
    public String getTitle() {
        return this.title;
    }

    public int getType() {
        return this.type;
    }

    public void setId(int id2) {
        this.f49103id = id2;
    }

    public void setTitle(@NotNull String title) {
        this.title = title;
    }

    public void setType(int type) {
        this.type = type;
    }

    public TagData(int id2, @NotNull String title) {
        this.f49103id = id2;
        this.title = title;
    }

    public TagData() {
    }
}

package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class ClassifyGameTagBean implements Serializable {
    private String describe;
    private int game_count;
    private String ico_remote;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private int f68027id;
    private String name;
    private String title;

    public String getDescribe() {
        return this.describe;
    }

    public int getGame_count() {
        return this.game_count;
    }

    public String getIco_remote() {
        return this.ico_remote;
    }

    public int getId() {
        return this.f68027id;
    }

    public String getName() {
        return this.name;
    }

    public String getTitle() {
        return this.title;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    public void setGame_count(int game_count) {
        this.game_count = game_count;
    }

    public void setIco_remote(String ico_remote) {
        this.ico_remote = ico_remote;
    }

    public void setId(int id2) {
        this.f68027id = id2;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setTitle(String title) {
        this.title = title;
    }
}

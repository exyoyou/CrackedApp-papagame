package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class ClassifyGameTypeBean implements Serializable {
    private String describe;
    private int game_count;
    private String ico_remote;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private int f68028id;
    private int show_index;
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
        return this.f68028id;
    }

    public int getShow_index() {
        return this.show_index;
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
        this.f68028id = id2;
    }

    public void setShow_index(int show_index) {
        this.show_index = show_index;
    }

    public void setTitle(String title) {
        this.title = title;
    }
}

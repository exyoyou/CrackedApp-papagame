package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class TodayWufunEmuClassify {
    public String game_count;
    public List<TodayWufunBroadcast> game_list;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    public int f68125id;
    public String name;

    public String getGame_count() {
        return this.game_count;
    }

    public List<TodayWufunBroadcast> getGame_list() {
        return this.game_list;
    }

    public int getId() {
        return this.f68125id;
    }

    public String getName() {
        return this.name;
    }

    public void setGame_count(String game_count) {
        this.game_count = game_count;
    }

    public void setGame_list(List<TodayWufunBroadcast> game_list) {
        this.game_list = game_list;
    }

    public void setId(int id2) {
        this.f68125id = id2;
    }

    public void setName(String name) {
        this.name = name;
    }
}

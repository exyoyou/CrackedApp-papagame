package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class GameSortBean implements Serializable {

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    public int f68067id;
    private String name;
    public String sort;

    public GameSortBean() {
    }

    public int getId() {
        return this.f68067id;
    }

    public String getName() {
        return this.name;
    }

    public String getSort() {
        return this.sort;
    }

    public void setId(int id2) {
        this.f68067id = id2;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setSort(String sort) {
        this.sort = sort;
    }

    public String toString() {
        return "GameSortBean{id=" + this.f68067id + ", name='" + this.name + "', sort='" + this.sort + "'}";
    }

    public GameSortBean(int id2, String name, String sort) {
        this.f68067id = id2;
        this.name = name;
        this.sort = sort;
    }
}

package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class GameTagInfoV2_2Bean implements Serializable {
    private String color;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private String f68068id;
    private String name;
    private int type;

    public String getColor() {
        return this.color;
    }

    public String getId() {
        return this.f68068id;
    }

    public String getName() {
        return this.name;
    }

    public int getType() {
        return this.type;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public void setId(String id2) {
        this.f68068id = id2;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setType(int type) {
        this.type = type;
    }

    public String toString() {
        return "GameTagInfoV2_2Bean{name='" + this.name + "', color='" + this.color + "', id='" + this.f68068id + "', type=" + this.type + '}';
    }
}

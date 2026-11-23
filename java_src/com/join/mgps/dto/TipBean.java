package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class TipBean implements Serializable {
    private String color;
    private String content;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private String f68123id;
    private String name;
    private String type;

    public TipBean() {
    }

    public String getColor() {
        return this.color;
    }

    public String getContent() {
        return this.content;
    }

    public String getId() {
        return this.f68123id;
    }

    public String getName() {
        return this.name;
    }

    public String getType() {
        return this.type;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public void setId(String id2) {
        this.f68123id = id2;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setType(String type) {
        this.type = type;
    }

    public TipBean(String name, String color, String id2) {
        this.name = name;
        this.color = color;
        this.f68123id = id2;
    }

    public TipBean(String name, String color, String id2, String type) {
        this.name = name;
        this.color = color;
        this.f68123id = id2;
        this.type = type;
    }
}

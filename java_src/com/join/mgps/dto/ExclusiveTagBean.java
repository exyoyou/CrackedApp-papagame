package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class ExclusiveTagBean {
    private String color;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private String f68045id;
    private String name;

    public ExclusiveTagBean() {
    }

    public String getColor() {
        return this.color;
    }

    public String getId() {
        return this.f68045id;
    }

    public String getName() {
        return this.name;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public void setId(String id2) {
        this.f68045id = id2;
    }

    public void setName(String name) {
        this.name = name;
    }

    public ExclusiveTagBean(String id2, String name, String color) {
        this.f68045id = id2;
        this.name = name;
        this.color = color;
    }
}

package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class GameDetialBookTag {
    private String color;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private int f68059id;
    private String title;

    public GameDetialBookTag() {
    }

    public String getColor() {
        return this.color;
    }

    public int getId() {
        return this.f68059id;
    }

    public String getTitle() {
        return this.title;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public void setId(int id2) {
        this.f68059id = id2;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public GameDetialBookTag(int id2, String title, String color) {
        this.f68059id = id2;
        this.title = title;
        this.color = color;
    }

    public GameDetialBookTag(String title, String color) {
        this.title = title;
        this.color = color;
    }
}

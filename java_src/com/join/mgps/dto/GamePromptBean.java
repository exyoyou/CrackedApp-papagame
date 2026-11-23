package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class GamePromptBean implements Serializable {

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private int f68066id;
    private String text;

    public int getId() {
        return this.f68066id;
    }

    public String getText() {
        return this.text;
    }

    public void setId(int id2) {
        this.f68066id = id2;
    }

    public void setText(String text) {
        this.text = text;
    }
}

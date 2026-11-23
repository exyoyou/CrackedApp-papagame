package com.join.kotlin.ui.findgame.data;

import java.io.Serializable;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
public class GameSubTypeData implements Serializable {

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private int f49101id;

    @NotNull
    private String pic;
    private boolean selected;

    @NotNull
    private String title;

    public GameSubTypeData(int id2, @NotNull String title, @NotNull String ico) {
        this.f49101id = id2;
        this.title = title;
        this.pic = this.pic;
    }

    public int getId() {
        return this.f49101id;
    }

    @NotNull
    public String getPic() {
        return this.pic;
    }

    @NotNull
    public String getTitle() {
        return this.title;
    }

    public boolean isSelected() {
        return this.selected;
    }

    public void setId(int var1) {
        this.f49101id = var1;
    }

    public void setPic(@NotNull String pic) {
        this.pic = pic;
    }

    public void setSelected(boolean selected) {
        this.selected = selected;
    }

    public void setTitle(@NotNull String var1) {
        this.title = var1;
    }

    public GameSubTypeData() {
        this.f49101id = 0;
    }
}

package com.join.kotlin.ui.findgame.data;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public class GameTypeData {

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private int f49102id;
    private boolean isSelected;

    @Nullable
    private List<GameSubTypeData> sub_game_type;

    @NotNull
    private String title;
    private int type;

    public GameTypeData(int id2, @NotNull String title, int type, @Nullable List<GameSubTypeData> sub_game_type, boolean isSelected) {
        Intrinsics.checkNotNullParameter(title, "title");
        this.f49102id = id2;
        this.title = title;
        this.type = type;
        this.sub_game_type = sub_game_type;
        this.isSelected = isSelected;
    }

    public int getId() {
        return this.f49102id;
    }

    @Nullable
    public List<GameSubTypeData> getSub_game_type() {
        return this.sub_game_type;
    }

    @NotNull
    public String getTitle() {
        return this.title;
    }

    public int getType() {
        return this.type;
    }

    public boolean isSelected() {
        return this.isSelected;
    }

    public void setId(int var1) {
        this.f49102id = var1;
    }

    public void setSelected(boolean var1) {
        this.isSelected = var1;
    }

    public void setSub_game_type(@Nullable List<GameSubTypeData> var1) {
        this.sub_game_type = var1;
    }

    public void setTitle(@NotNull String var1) {
        Intrinsics.checkNotNullParameter(var1, "<set-?>");
        this.title = var1;
    }

    public void setType(int var1) {
        this.type = var1;
    }

    public GameTypeData() {
    }
}

package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class GameWorldGlobalData {
    private int world_user_count;
    private List<GameWorldGlobalDataItem> worship_top;

    public int getWorld_user_count() {
        return this.world_user_count;
    }

    public List<GameWorldGlobalDataItem> getWorship_top() {
        return this.worship_top;
    }

    public void setWorld_user_count(int world_user_count) {
        this.world_user_count = world_user_count;
    }

    public void setWorship_top(List<GameWorldGlobalDataItem> worship_top) {
        this.worship_top = worship_top;
    }
}

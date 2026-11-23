package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class ArenaGameRoomListConfig {
    private GameConfig current_collection_cfg;
    private List<GameConfig> game_list;

    public GameConfig getCurrent_collection_cfg() {
        return this.current_collection_cfg;
    }

    public List<GameConfig> getGame_list() {
        return this.game_list;
    }

    public void setCurrent_collection_cfg(GameConfig current_collection_cfg) {
        this.current_collection_cfg = current_collection_cfg;
    }

    public void setGame_list(List<GameConfig> game_list) {
        this.game_list = game_list;
    }
}

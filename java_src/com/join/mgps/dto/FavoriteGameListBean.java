package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class FavoriteGameListBean {
    private List<CommonGameInfoBean> favorites_game_list;
    private int favorites_game_total;

    public List<CommonGameInfoBean> getFavorites_game_list() {
        return this.favorites_game_list;
    }

    public int getFavorites_game_total() {
        return this.favorites_game_total;
    }

    public void setFavorites_game_list(List<CommonGameInfoBean> favorites_game_list) {
        this.favorites_game_list = favorites_game_list;
    }

    public void setFavorites_game_total(int favorites_game_total) {
        this.favorites_game_total = favorites_game_total;
    }
}

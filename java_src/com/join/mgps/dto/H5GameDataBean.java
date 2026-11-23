package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class H5GameDataBean {
    private List<CommonGameInfoBean> game_list;
    private List<CommonGameInfoBean> top_game_list;

    public List<CommonGameInfoBean> getGame_list() {
        return this.game_list;
    }

    public List<CommonGameInfoBean> getTop_game_list() {
        return this.top_game_list;
    }

    public void setGame_list(List<CommonGameInfoBean> game_list) {
        this.game_list = game_list;
    }

    public void setTop_game_list(List<CommonGameInfoBean> top_game_list) {
        this.top_game_list = top_game_list;
    }
}

package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class NewArenaGameListBean {
    private List<GameInfoBean> game_list;
    private List<GameTypeBean> game_type;

    public List<GameInfoBean> getGame_list() {
        return this.game_list;
    }

    public List<GameTypeBean> getGame_type() {
        return this.game_type;
    }

    public void setGame_list(List<GameInfoBean> game_list) {
        this.game_list = game_list;
    }

    public void setGame_type(List<GameTypeBean> game_type) {
        this.game_type = game_type;
    }
}

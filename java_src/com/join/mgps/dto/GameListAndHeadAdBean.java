package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class GameListAndHeadAdBean extends PaPaBean {
    private List<AppBean> game_list;
    private List<GameHeadAd> head_ad;

    public List<AppBean> getGame_list() {
        return this.game_list;
    }

    public List<GameHeadAd> getHead_ad() {
        return this.head_ad;
    }

    public void setGame_list(List<AppBean> game_list) {
        this.game_list = game_list;
    }

    public void setHead_ad(List<GameHeadAd> head_ad) {
        this.head_ad = head_ad;
    }
}

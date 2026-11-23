package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class GameOLDataBean<E> implements Serializable {
    private List<E> game_list;
    private List<GameOLHeadAdBean> head_ad;

    public List<E> getGame_list() {
        return this.game_list;
    }

    public List<GameOLHeadAdBean> getHead_ad() {
        return this.head_ad;
    }

    public void setGame_list(List<E> game_list) {
        this.game_list = game_list;
    }

    public void setHead_ad(List<GameOLHeadAdBean> head_ad) {
        this.head_ad = head_ad;
    }
}

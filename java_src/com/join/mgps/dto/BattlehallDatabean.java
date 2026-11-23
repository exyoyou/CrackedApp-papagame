package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class BattlehallDatabean implements Serializable {
    private List<CollectionBeanSub> game_list;

    public List<CollectionBeanSub> getGame_list() {
        return this.game_list;
    }

    public void setGame_list(List<CollectionBeanSub> game_list) {
        this.game_list = game_list;
    }
}

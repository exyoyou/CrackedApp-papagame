package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class RecomeWifiDatabean implements Serializable {
    private List<CollectionBeanSub> game_list;
    private String title;

    public RecomeWifiDatabean() {
    }

    public List<CollectionBeanSub> getGame_list() {
        return this.game_list;
    }

    public String getTitle() {
        return this.title;
    }

    public void setGame_list(List<CollectionBeanSub> game_list) {
        this.game_list = game_list;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public RecomeWifiDatabean(String title, List<CollectionBeanSub> game_list) {
        this.title = title;
        this.game_list = game_list;
    }
}

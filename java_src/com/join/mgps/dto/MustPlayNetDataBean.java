package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class MustPlayNetDataBean {
    private List<CollectionBeanSub> gamelist;
    private String title;

    public MustPlayNetDataBean() {
    }

    public List<CollectionBeanSub> getGamelist() {
        return this.gamelist;
    }

    public String getTitle() {
        return this.title;
    }

    public void setGamelist(List<CollectionBeanSub> gamelist) {
        this.gamelist = gamelist;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public MustPlayNetDataBean(boolean istitle, List<CollectionBeanSub> gamelist) {
        this.title = this.title;
        this.gamelist = gamelist;
    }
}

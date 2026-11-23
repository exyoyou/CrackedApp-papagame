package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class ResponseDownloadCenterAd implements Serializable {
    private List<CollectionBeanSub> lists;
    private String title;

    public List<CollectionBeanSub> getLists() {
        return this.lists;
    }

    public String getTitle() {
        return this.title;
    }

    public void setLists(List<CollectionBeanSub> lists) {
        this.lists = lists;
    }

    public void setTitle(String title) {
        this.title = title;
    }
}

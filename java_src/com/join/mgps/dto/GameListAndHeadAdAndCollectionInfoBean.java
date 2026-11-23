package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class GameListAndHeadAdAndCollectionInfoBean extends PaPaBean {
    private List<GameHeadAd> head_ad;
    private List<GameListAndCollectionInfo> list;

    public List<GameHeadAd> getHead_ad() {
        return this.head_ad;
    }

    public List<GameListAndCollectionInfo> getList() {
        return this.list;
    }

    public void setHead_ad(List<GameHeadAd> head_ad) {
        this.head_ad = head_ad;
    }

    public void setList(List<GameListAndCollectionInfo> list) {
        this.list = list;
    }
}

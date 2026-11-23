package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class GameListAndCollectionInfo extends PaPaBean {
    private CollectionInfo collection_info;
    private List<AppBean> game_list;

    public CollectionInfo getCollection_info() {
        return this.collection_info;
    }

    public List<AppBean> getGame_list() {
        return this.game_list;
    }

    public void setCollection_info(CollectionInfo collection_info) {
        this.collection_info = collection_info;
    }

    public void setGame_list(List<AppBean> game_list) {
        this.game_list = game_list;
    }
}

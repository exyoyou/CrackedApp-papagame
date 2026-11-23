package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class WufunMarketHomeBean {
    private List<BannerBean> banner;
    private List<GameListAndCollectionInfo> collection_recommend;
    private RecomDatabean editors_recommend;
    private List<BannerBean> fast_entrance;
    private List<RecomDatabean> game_broadcast;
    private List<RecomDatabean> lately_hot;
    private List<RecomDatabean> lately_release;

    public List<BannerBean> getBanner() {
        return this.banner;
    }

    public List<GameListAndCollectionInfo> getCollection_recommend() {
        return this.collection_recommend;
    }

    public RecomDatabean getEditors_recommend() {
        return this.editors_recommend;
    }

    public List<BannerBean> getFast_entrance() {
        return this.fast_entrance;
    }

    public List<RecomDatabean> getGame_broadcast() {
        return this.game_broadcast;
    }

    public List<RecomDatabean> getLately_hot() {
        return this.lately_hot;
    }

    public List<RecomDatabean> getLately_release() {
        return this.lately_release;
    }

    public void setBanner(List<BannerBean> banner) {
        this.banner = banner;
    }

    public void setCollection_recommend(List<GameListAndCollectionInfo> collection_recommend) {
        this.collection_recommend = collection_recommend;
    }

    public void setEditors_recommend(RecomDatabean editors_recommend) {
        this.editors_recommend = editors_recommend;
    }

    public void setFast_entrance(List<BannerBean> fast_entrance) {
        this.fast_entrance = fast_entrance;
    }

    public void setGame_broadcast(List<RecomDatabean> game_broadcast) {
        this.game_broadcast = game_broadcast;
    }

    public void setLately_hot(List<RecomDatabean> lately_hot) {
        this.lately_hot = lately_hot;
    }

    public void setLately_release(List<RecomDatabean> lately_release) {
        this.lately_release = lately_release;
    }
}

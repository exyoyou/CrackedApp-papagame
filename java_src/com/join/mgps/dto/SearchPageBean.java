package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class SearchPageBean {
    private SearchResultAdinfo ad_info;
    List<FavoriteBean> game_favorites_list;
    SearchGameListBean game_list;
    List<TagInfoBean> tag_info;
    List<GameInfoBean> today_hot_search;
    boolean val;

    public SearchResultAdinfo getAd_info() {
        return this.ad_info;
    }

    public List<FavoriteBean> getGame_favorites_list() {
        return this.game_favorites_list;
    }

    public SearchGameListBean getGame_list() {
        return this.game_list;
    }

    public List<TagInfoBean> getTag_info() {
        return this.tag_info;
    }

    public List<GameInfoBean> getToday_hot_search() {
        return this.today_hot_search;
    }

    public boolean isVal() {
        return this.val;
    }

    public void setAd_info(SearchResultAdinfo ad_info) {
        this.ad_info = ad_info;
    }

    public void setGame_favorites_list(List<FavoriteBean> game_favorites_list) {
        this.game_favorites_list = game_favorites_list;
    }

    public void setGame_list(SearchGameListBean game_list) {
        this.game_list = game_list;
    }

    public void setTag_info(List<TagInfoBean> tag_info) {
        this.tag_info = tag_info;
    }

    public void setToday_hot_search(List<GameInfoBean> today_hot_search) {
        this.today_hot_search = today_hot_search;
    }

    public void setVal(boolean val) {
        this.val = val;
    }
}

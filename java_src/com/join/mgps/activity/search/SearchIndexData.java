package com.join.mgps.activity.search;

import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.GameInfoBean;
import com.join.mgps.dto.SearchGameZoneBean;
import com.join.mgps.dto.SearchResultAdinfo;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class SearchIndexData {
    private SearchResultAdinfo ad_info;
    private CommonGameInfoBean ad_info_v2;
    private List<SearchGameZoneBean> game_zone_entry;
    private List<GameInfoBean> guess_you_like_info;
    private SearchHotAdInfo hot_search_ad_info;
    private List<GameInfoBean> hot_search_ranking;
    private List<GameInfoBean> net_search_ranking;
    private String search_key;
    private List<GameInfoBean> simulator_search_ranking;
    private List<GameInfoBean> standalone_search_ranking;

    public SearchResultAdinfo getAd_info() {
        return this.ad_info;
    }

    public CommonGameInfoBean getAd_info_v2() {
        return this.ad_info_v2;
    }

    public List<SearchGameZoneBean> getGame_zone_entry() {
        return this.game_zone_entry;
    }

    public List<GameInfoBean> getGuess_you_like_info() {
        return this.guess_you_like_info;
    }

    public SearchHotAdInfo getHot_search_ad_info() {
        return this.hot_search_ad_info;
    }

    public List<GameInfoBean> getHot_search_ranking() {
        return this.hot_search_ranking;
    }

    public List<GameInfoBean> getNet_search_ranking() {
        return this.net_search_ranking;
    }

    public String getSearch_key() {
        return this.search_key;
    }

    public List<GameInfoBean> getSimulator_search_ranking() {
        return this.simulator_search_ranking;
    }

    public List<GameInfoBean> getStandalone_search_ranking() {
        return this.standalone_search_ranking;
    }

    public void setAd_info(SearchResultAdinfo ad_info) {
        this.ad_info = ad_info;
    }

    public void setAd_info_v2(CommonGameInfoBean ad_info_v2) {
        this.ad_info_v2 = ad_info_v2;
    }

    public void setGame_zone_entry(List<SearchGameZoneBean> game_zone_entry) {
        this.game_zone_entry = game_zone_entry;
    }

    public void setGuess_you_like_info(List<GameInfoBean> guess_you_like_info) {
        this.guess_you_like_info = guess_you_like_info;
    }

    public void setHot_search_ad_info(SearchHotAdInfo hot_search_ad_info) {
        this.hot_search_ad_info = hot_search_ad_info;
    }

    public void setHot_search_ranking(List<GameInfoBean> hot_search_ranking) {
        this.hot_search_ranking = hot_search_ranking;
    }

    public void setNet_search_ranking(List<GameInfoBean> net_search_ranking) {
        this.net_search_ranking = net_search_ranking;
    }

    public void setSearch_key(String search_key) {
        this.search_key = search_key;
    }

    public void setSimulator_search_ranking(List<GameInfoBean> simulator_search_ranking) {
        this.simulator_search_ranking = simulator_search_ranking;
    }

    public void setStandalone_search_ranking(List<GameInfoBean> standalone_search_ranking) {
        this.standalone_search_ranking = standalone_search_ranking;
    }
}

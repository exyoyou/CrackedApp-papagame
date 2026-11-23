package com.join.mgps.activity.search;

import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.SearchAutoDataBean;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class SearchAutoDataV1 {
    private SearchAutoAdData ad_info;
    private List<CommonGameInfoBean> game_list;
    private List<SearchAutoDataBean> search_list;

    public SearchAutoAdData getAd_info() {
        return this.ad_info;
    }

    public List<CommonGameInfoBean> getGame_list() {
        return this.game_list;
    }

    public List<SearchAutoDataBean> getSearch_list() {
        return this.search_list;
    }

    public void setAd_info(SearchAutoAdData ad_info) {
        this.ad_info = ad_info;
    }

    public void setGame_list(List<CommonGameInfoBean> game_list) {
        this.game_list = game_list;
    }

    public void setSearch_list(List<SearchAutoDataBean> search_list) {
        this.search_list = search_list;
    }
}

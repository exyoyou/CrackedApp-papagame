package com.join.mgps.activity.mygame.data;

import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.RecommendGameAdInfo;
import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class RecommendGameListBean implements Serializable {
    private RecommendGameAdInfo ad_info;
    private List<CommonGameInfoBean> fixed_list;
    private int game_count;
    private List<CommonGameInfoBean> recommend_list;

    public RecommendGameAdInfo getAd_info() {
        return this.ad_info;
    }

    public List<CommonGameInfoBean> getFixed_list() {
        return this.fixed_list;
    }

    public int getGame_count() {
        return this.game_count;
    }

    public List<CommonGameInfoBean> getRecommend_list() {
        return this.recommend_list;
    }

    public void setAd_info(RecommendGameAdInfo ad_info) {
        this.ad_info = ad_info;
    }

    public void setFixed_list(List<CommonGameInfoBean> gameList) {
        this.fixed_list = gameList;
    }

    public void setGame_count(int gameCount) {
        this.game_count = gameCount;
    }

    public void setRecommend_list(List<CommonGameInfoBean> recommendList) {
        this.recommend_list = recommendList;
    }
}

package com.join.mgps.activity.vipzone.bean;

import com.join.mgps.dto.BannerBean;
import com.join.mgps.dto.CollectionBeanSub;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class SpecialZoneResultbean {
    List<BannerBean> banner;
    SpecialZoneColloctionbean collection_game_list;
    List<CollectionBeanSub> ranking_game_list;
    ScreeningConditionBean screening_condition;

    public List<BannerBean> getBanner() {
        return this.banner;
    }

    public SpecialZoneColloctionbean getCollection_game_list() {
        return this.collection_game_list;
    }

    public List<CollectionBeanSub> getRanking_game_list() {
        return this.ranking_game_list;
    }

    public ScreeningConditionBean getScreening_condition() {
        return this.screening_condition;
    }

    public void setBanner(List<BannerBean> banner) {
        this.banner = banner;
    }

    public void setCollection_game_list(SpecialZoneColloctionbean collection_game_list) {
        this.collection_game_list = collection_game_list;
    }

    public void setRanking_game_list(List<CollectionBeanSub> ranking_game_list) {
        this.ranking_game_list = ranking_game_list;
    }

    public void setScreening_condition(ScreeningConditionBean screening_condition) {
        this.screening_condition = screening_condition;
    }
}

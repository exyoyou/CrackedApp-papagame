package com.join.kotlin.ui.findgame.data;

import com.join.mgps.dto.CommonGameInfoBean;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class FindClassifyResultData {
    List<FindChoiceBannerData> banner;
    List<CommonGameInfoBean> collection_list;
    List<GameTypeData> game_type;
    List<TagData> guess_you_like;

    public FindClassifyResultData() {
    }

    public List<FindChoiceBannerData> getBanner() {
        return this.banner;
    }

    public List<CommonGameInfoBean> getCollection_list() {
        return this.collection_list;
    }

    public List<GameTypeData> getGame_type() {
        return this.game_type;
    }

    public List<TagData> getGuess_you_like() {
        return this.guess_you_like;
    }

    public void setBanner(List<FindChoiceBannerData> banner) {
        this.banner = banner;
    }

    public void setCollection_list(List<CommonGameInfoBean> collection_list) {
        this.collection_list = collection_list;
    }

    public void setGame_type(List<GameTypeData> game_type) {
        this.game_type = game_type;
    }

    public void setGuess_you_like(List<TagData> guess_you_like) {
        this.guess_you_like = guess_you_like;
    }

    public FindClassifyResultData(List<FindChoiceBannerData> banner, List<CommonGameInfoBean> collection_list, List<TagData> guess_you_like, List<GameTypeData> game_type) {
        this.banner = banner;
        this.collection_list = collection_list;
        this.guess_you_like = guess_you_like;
        this.game_type = game_type;
    }
}

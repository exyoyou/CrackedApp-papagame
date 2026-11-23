package com.join.mgps.activity.mygame.data;

import com.join.mgps.activity.recomend.GamedownRecomendItemBean;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.DomainInfoBean;
import com.join.mgps.dto.RecommendGameAdInfo;
import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class DataGameListBean implements Serializable {
    private int gameCount;
    private List<GamedownRecomendItemBean> gameList;
    private CommonGameInfoBean jumpInfo;
    private DomainInfoBean pdInfo;
    private RecommendGameAdInfo recAd;
    private List<GamedownRecomendItemBean> recommendList;

    public int getGameCount() {
        return this.gameCount;
    }

    public List<GamedownRecomendItemBean> getGameList() {
        return this.gameList;
    }

    public CommonGameInfoBean getJumpInfo() {
        return this.jumpInfo;
    }

    public DomainInfoBean getPdInfo() {
        return this.pdInfo;
    }

    public RecommendGameAdInfo getRecAd() {
        return this.recAd;
    }

    public List<GamedownRecomendItemBean> getRecommendList() {
        return this.recommendList;
    }

    public void setGameCount(int gameCount) {
        this.gameCount = gameCount;
    }

    public void setGameList(List<GamedownRecomendItemBean> gameList) {
        this.gameList = gameList;
    }

    public void setJumpInfo(CommonGameInfoBean jumpInfo) {
        this.jumpInfo = jumpInfo;
    }

    public void setPdInfo(DomainInfoBean pdInfo) {
        this.pdInfo = pdInfo;
    }

    public void setRecAd(RecommendGameAdInfo recAd) {
        this.recAd = recAd;
    }

    public void setRecommendList(List<GamedownRecomendItemBean> recommendList) {
        this.recommendList = recommendList;
    }
}

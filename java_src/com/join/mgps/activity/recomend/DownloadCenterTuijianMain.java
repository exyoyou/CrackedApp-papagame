package com.join.mgps.activity.recomend;

import com.join.mgps.dto.CommonGameInfoBean;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class DownloadCenterTuijianMain {
    private List<GamedownRecomendItemBean> collectionList;
    private String gameid;
    private CommonGameInfoBean jumpInfo;

    public List<GamedownRecomendItemBean> getCollectionList() {
        return this.collectionList;
    }

    public String getGameid() {
        return this.gameid;
    }

    public CommonGameInfoBean getJumpInfo() {
        return this.jumpInfo;
    }

    public void setCollectionList(List<GamedownRecomendItemBean> collectionList) {
        this.collectionList = collectionList;
    }

    public void setGameid(String gameid) {
        this.gameid = gameid;
    }

    public void setJumpInfo(CommonGameInfoBean jumpInfo) {
        this.jumpInfo = jumpInfo;
    }
}

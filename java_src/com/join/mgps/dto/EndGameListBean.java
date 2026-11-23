package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class EndGameListBean {
    private List<EndGameNameListBean> gameList;
    private List<EndGameTypeBean> typeList;

    public List<EndGameNameListBean> getGameList() {
        return this.gameList;
    }

    public List<EndGameTypeBean> getTypeList() {
        return this.typeList;
    }

    public void setGameList(List<EndGameNameListBean> gameList) {
        this.gameList = gameList;
    }

    public void setTypeList(List<EndGameTypeBean> typeList) {
        this.typeList = typeList;
    }
}

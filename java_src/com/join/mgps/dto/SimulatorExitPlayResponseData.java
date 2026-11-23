package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class SimulatorExitPlayResponseData {
    private RecomDatabean adInfo;
    private List<FriendBackGameRspBean.FriendInfo> buddyList;
    private List<GamedetialModleFourBean> gameList;
    private GameMasteryLevel gameMasteryLevel;
    private DomainInfoBean pd_info;

    public RecomDatabean getAdInfo() {
        return this.adInfo;
    }

    public List<FriendBackGameRspBean.FriendInfo> getBuddyList() {
        return this.buddyList;
    }

    public List<GamedetialModleFourBean> getGameList() {
        return this.gameList;
    }

    public GameMasteryLevel getGameMasteryLevel() {
        return this.gameMasteryLevel;
    }

    public DomainInfoBean getPd_info() {
        return this.pd_info;
    }

    public void setAdInfo(RecomDatabean adInfo) {
        this.adInfo = adInfo;
    }

    public void setBuddyList(List<FriendBackGameRspBean.FriendInfo> buddyList) {
        this.buddyList = buddyList;
    }

    public void setGameList(List<GamedetialModleFourBean> gameList) {
        this.gameList = gameList;
    }

    public void setGameMasteryLevel(GameMasteryLevel gameMasteryLevel) {
        this.gameMasteryLevel = gameMasteryLevel;
    }

    public void setPd_info(DomainInfoBean pd_info) {
        this.pd_info = pd_info;
    }
}

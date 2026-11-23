package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class NetBattleUserInfoResultBean {
    private GameWorldFightRecoderUserInfoBean user_info;

    public NetBattleUserInfoResultBean() {
    }

    public GameWorldFightRecoderUserInfoBean getUser_info() {
        return this.user_info;
    }

    public void setUser_info(GameWorldFightRecoderUserInfoBean user_info) {
        this.user_info = user_info;
    }

    public NetBattleUserInfoResultBean(GameWorldFightRecoderUserInfoBean user_info, List<GameWorldHeroRankBean> hero_rank) {
        this.user_info = user_info;
    }
}

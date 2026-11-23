package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class GameworldFightRecoderResultBean {
    private List<GameWorldHeroRankBean> hero_rank;
    private GameWorldFightRecoderUserInfoBean user_info;

    public GameworldFightRecoderResultBean() {
    }

    public List<GameWorldHeroRankBean> getHero_rank() {
        return this.hero_rank;
    }

    public GameWorldFightRecoderUserInfoBean getUser_info() {
        return this.user_info;
    }

    public void setHero_rank(List<GameWorldHeroRankBean> hero_rank) {
        this.hero_rank = hero_rank;
    }

    public void setUser_info(GameWorldFightRecoderUserInfoBean user_info) {
        this.user_info = user_info;
    }

    public GameworldFightRecoderResultBean(GameWorldFightRecoderUserInfoBean user_info, List<GameWorldHeroRankBean> hero_rank) {
        this.user_info = user_info;
        this.hero_rank = hero_rank;
    }
}

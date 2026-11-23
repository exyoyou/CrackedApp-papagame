package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class GameMainDataBean {
    private GameMainachieve achieve;
    private List<BannerBean> ad_position;
    private GameMaingameinfo game_info;
    private List<BannerBean> jump_info;
    private List<BannerBean> local_battle;
    private GameMainNetBattle net_battle;
    private List<GameMainPostBean> post_id;

    public GameMainachieve getAchieve() {
        return this.achieve;
    }

    public List<BannerBean> getAd_position() {
        return this.ad_position;
    }

    public GameMaingameinfo getGame_info() {
        return this.game_info;
    }

    public List<BannerBean> getJump_info() {
        return this.jump_info;
    }

    public List<BannerBean> getLocal_battle() {
        return this.local_battle;
    }

    public GameMainNetBattle getNet_battle() {
        return this.net_battle;
    }

    public List<GameMainPostBean> getPost_id() {
        return this.post_id;
    }

    public void setAchieve(GameMainachieve achieve) {
        this.achieve = achieve;
    }

    public void setAd_position(List<BannerBean> ad_position) {
        this.ad_position = ad_position;
    }

    public void setGame_info(GameMaingameinfo game_info) {
        this.game_info = game_info;
    }

    public void setJump_info(List<BannerBean> jump_info) {
        this.jump_info = jump_info;
    }

    public void setLocal_battle(List<BannerBean> local_battle) {
        this.local_battle = local_battle;
    }

    public void setNet_battle(GameMainNetBattle net_battle) {
        this.net_battle = net_battle;
    }

    public void setPost_id(List<GameMainPostBean> post_id) {
        this.post_id = post_id;
    }
}

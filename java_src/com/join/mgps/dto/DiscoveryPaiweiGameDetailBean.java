package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class DiscoveryPaiweiGameDetailBean {
    private String big_img;
    private String game_id;
    private String game_name;
    private DiscoveryPaiweiGameRankBean month_best;
    private int num;
    private List<DiscoveryPaiweiGameRankBean> rank_list;

    public String getBig_img() {
        return this.big_img;
    }

    public String getGame_id() {
        return this.game_id;
    }

    public String getGame_name() {
        return this.game_name;
    }

    public DiscoveryPaiweiGameRankBean getMonth_best() {
        return this.month_best;
    }

    public int getNum() {
        return this.num;
    }

    public List<DiscoveryPaiweiGameRankBean> getRank_list() {
        return this.rank_list;
    }

    public void setBig_img(String big_img) {
        this.big_img = big_img;
    }

    public void setGame_id(String game_id) {
        this.game_id = game_id;
    }

    public void setGame_name(String game_name) {
        this.game_name = game_name;
    }

    public void setMonth_best(DiscoveryPaiweiGameRankBean month_best) {
        this.month_best = month_best;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public void setRank_list(List<DiscoveryPaiweiGameRankBean> rank_list) {
        this.rank_list = rank_list;
    }
}

package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class PAPAHomeBean {
    private List<BannerBean> banner;
    public FastEntry fast_entry;
    private GamebroadcastBean gamebroadcast;
    private GameinterestingBean gameinteresting;
    private GamerecommendBean gamerecommend;
    private List<RecomDatabean> guessyoulike;
    private GameinterestingBean hot_online_game;
    private GameinterestingBean hotsinglegame;
    public int new_daily_uv;
    private List<RecomDatabean> recently;
    private List<RecomDatabean> toptip;

    public PAPAHomeBean() {
    }

    public List<BannerBean> getBanner() {
        return this.banner;
    }

    public FastEntry getFast_entry() {
        return this.fast_entry;
    }

    public GamebroadcastBean getGamebroadcast() {
        return this.gamebroadcast;
    }

    public GameinterestingBean getGameinteresting() {
        return this.gameinteresting;
    }

    public GamerecommendBean getGamerecommend() {
        return this.gamerecommend;
    }

    public List<RecomDatabean> getGuessyoulike() {
        return this.guessyoulike;
    }

    public GameinterestingBean getHot_online_game() {
        return this.hot_online_game;
    }

    public GameinterestingBean getHotsinglegame() {
        return this.hotsinglegame;
    }

    public int getNew_daily_uv() {
        return this.new_daily_uv;
    }

    public List<RecomDatabean> getRecently() {
        return this.recently;
    }

    public List<RecomDatabean> getToptip() {
        return this.toptip;
    }

    public void setBanner(List<BannerBean> banner) {
        this.banner = banner;
    }

    public void setFast_entry(FastEntry fast_entry) {
        this.fast_entry = fast_entry;
    }

    public void setGamebroadcast(GamebroadcastBean gamebroadcast) {
        this.gamebroadcast = gamebroadcast;
    }

    public void setGameinteresting(GameinterestingBean gameinteresting) {
        this.gameinteresting = gameinteresting;
    }

    public void setGamerecommend(GamerecommendBean gamerecommend) {
        this.gamerecommend = gamerecommend;
    }

    public void setGuessyoulike(List<RecomDatabean> guessyoulike) {
        this.guessyoulike = guessyoulike;
    }

    public void setHot_online_game(GameinterestingBean hot_online_game) {
        this.hot_online_game = hot_online_game;
    }

    public void setHotsinglegame(GameinterestingBean hotsinglegame) {
        this.hotsinglegame = hotsinglegame;
    }

    public void setNew_daily_uv(int new_daily_uv) {
        this.new_daily_uv = new_daily_uv;
    }

    public void setRecently(List<RecomDatabean> recently) {
        this.recently = recently;
    }

    public void setToptip(List<RecomDatabean> toptip) {
        this.toptip = toptip;
    }

    public PAPAHomeBean(List<BannerBean> banner, List<RecomDatabean> recently, List<RecomDatabean> guessyoulike, List<RecomDatabean> toptip, GamerecommendBean gamerecommend, GameinterestingBean gameinteresting, GamebroadcastBean gamebroadcast) {
        this.banner = banner;
        this.recently = recently;
        this.guessyoulike = guessyoulike;
        this.toptip = toptip;
        this.gamerecommend = gamerecommend;
        this.gameinteresting = gameinteresting;
        this.gamebroadcast = gamebroadcast;
    }
}

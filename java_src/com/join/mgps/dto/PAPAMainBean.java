package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class PAPAMainBean {
    private List<BannerBean> banner;
    private SearchDataBean defaultSearchKeyword;
    private GamerecommendBean discover_channel;
    private List<GameinterestingBean> dynamic_module;
    private FastEntry fast_entry;
    private PapaMainGameBespeak game_bespeak;
    private GamebroadcastBean game_broadcast;
    private GameinterestingBean gameinteresting;
    private List<RecomDatabean> guess_you_like;
    private GameinterestingBean hot_online_game;
    private PapaMainLive live_list;
    private int new_daily_uv;
    private GameinterestingBean new_online_game;
    private List<RecomDatabean> recently;
    private WufunNowHomeJoinBean wufun_today;

    public List<BannerBean> getBanner() {
        return this.banner;
    }

    public SearchDataBean getDefaultSearchKeyword() {
        return this.defaultSearchKeyword;
    }

    public GamerecommendBean getDiscover_channel() {
        return this.discover_channel;
    }

    public List<GameinterestingBean> getDynamic_module() {
        return this.dynamic_module;
    }

    public FastEntry getFast_entry() {
        return this.fast_entry;
    }

    public PapaMainGameBespeak getGame_bespeak() {
        return this.game_bespeak;
    }

    public GamebroadcastBean getGame_broadcast() {
        return this.game_broadcast;
    }

    public GameinterestingBean getGameinteresting() {
        return this.gameinteresting;
    }

    public List<RecomDatabean> getGuess_you_like() {
        return this.guess_you_like;
    }

    public GameinterestingBean getHot_online_game() {
        return this.hot_online_game;
    }

    public PapaMainLive getLive_list() {
        return this.live_list;
    }

    public int getNew_daily_uv() {
        return this.new_daily_uv;
    }

    public GameinterestingBean getNew_online_game() {
        return this.new_online_game;
    }

    public List<RecomDatabean> getRecently() {
        return this.recently;
    }

    public WufunNowHomeJoinBean getWufun_today() {
        return this.wufun_today;
    }

    public void setBanner(List<BannerBean> banner) {
        this.banner = banner;
    }

    public void setDefaultSearchKeyword(SearchDataBean defaultSearchKeyword) {
        this.defaultSearchKeyword = defaultSearchKeyword;
    }

    public void setDiscover_channel(GamerecommendBean discover_channel) {
        this.discover_channel = discover_channel;
    }

    public void setDynamic_module(List<GameinterestingBean> dynamic_module) {
        this.dynamic_module = dynamic_module;
    }

    public void setFast_entry(FastEntry fast_entry) {
        this.fast_entry = fast_entry;
    }

    public void setGame_bespeak(PapaMainGameBespeak game_bespeak) {
        this.game_bespeak = game_bespeak;
    }

    public void setGame_broadcast(GamebroadcastBean game_broadcast) {
        this.game_broadcast = game_broadcast;
    }

    public void setGameinteresting(GameinterestingBean gameinteresting) {
        this.gameinteresting = gameinteresting;
    }

    public void setGuess_you_like(List<RecomDatabean> guess_you_like) {
        this.guess_you_like = guess_you_like;
    }

    public void setHot_online_game(GameinterestingBean hot_online_game) {
        this.hot_online_game = hot_online_game;
    }

    public void setLive_list(PapaMainLive live_list) {
        this.live_list = live_list;
    }

    public void setNew_daily_uv(int new_daily_uv) {
        this.new_daily_uv = new_daily_uv;
    }

    public void setNew_online_game(GameinterestingBean new_online_game) {
        this.new_online_game = new_online_game;
    }

    public void setRecently(List<RecomDatabean> recently) {
        this.recently = recently;
    }

    public void setWufun_today(WufunNowHomeJoinBean wufun_today) {
        this.wufun_today = wufun_today;
    }
}

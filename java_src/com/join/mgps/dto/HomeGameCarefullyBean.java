package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class HomeGameCarefullyBean {
    List<DayRecommand> before_refresh;
    String bespeak_list_url;
    TodayWufunBroadcast buy_advert_recommend;
    List<BannerBean> carefully_special;
    TodayWufunBroadcast editor_recommend_game;
    List<TodayWufunBroadcast> game_bespeak_recommend;
    List<BannerBean> game_category;
    List<TodayWufunEmuClassify> game_prefecture;
    DayRecommand today_refresh;
    TodayWufunBroadcast visitor_recommend_game;

    public static class DayRecommand {
        private long addTimes;
        TodayWufunBroadcast game_discover;
        InformationListDataBean game_information;

        public long getAddTimes() {
            return this.addTimes;
        }

        public TodayWufunBroadcast getGame_discover() {
            return this.game_discover;
        }

        public InformationListDataBean getGame_information() {
            return this.game_information;
        }

        public void setAddTimes(long addTimes) {
            this.addTimes = addTimes;
        }

        public void setGame_discover(TodayWufunBroadcast game_discover) {
            this.game_discover = game_discover;
        }

        public void setGame_information(InformationListDataBean game_information) {
            this.game_information = game_information;
        }
    }

    public List<DayRecommand> getBefore_refresh() {
        return this.before_refresh;
    }

    public String getBespeak_list_url() {
        return this.bespeak_list_url;
    }

    public TodayWufunBroadcast getBuy_advert_recommend() {
        return this.buy_advert_recommend;
    }

    public List<BannerBean> getCarefully_special() {
        return this.carefully_special;
    }

    public TodayWufunBroadcast getEditor_recommend_game() {
        return this.editor_recommend_game;
    }

    public List<TodayWufunBroadcast> getGame_bespeak_recommend() {
        return this.game_bespeak_recommend;
    }

    public List<BannerBean> getGame_category() {
        return this.game_category;
    }

    public List<TodayWufunEmuClassify> getGame_prefecture() {
        return this.game_prefecture;
    }

    public DayRecommand getToday_refresh() {
        return this.today_refresh;
    }

    public TodayWufunBroadcast getVisitor_recommend_game() {
        return this.visitor_recommend_game;
    }

    public void setBefore_refresh(List<DayRecommand> before_refresh) {
        this.before_refresh = before_refresh;
    }

    public void setBespeak_list_url(String bespeak_list_url) {
        this.bespeak_list_url = bespeak_list_url;
    }

    public void setBuy_advert_recommend(TodayWufunBroadcast buy_advert_recommend) {
        this.buy_advert_recommend = buy_advert_recommend;
    }

    public void setCarefully_special(List<BannerBean> carefully_special) {
        this.carefully_special = carefully_special;
    }

    public void setEditor_recommend_game(TodayWufunBroadcast editor_recommend_game) {
        this.editor_recommend_game = editor_recommend_game;
    }

    public void setGame_bespeak_recommend(List<TodayWufunBroadcast> game_bespeak_recommend) {
        this.game_bespeak_recommend = game_bespeak_recommend;
    }

    public void setGame_category(List<BannerBean> game_category) {
        this.game_category = game_category;
    }

    public void setGame_prefecture(List<TodayWufunEmuClassify> game_prefecture) {
        this.game_prefecture = game_prefecture;
    }

    public void setToday_refresh(DayRecommand today_refresh) {
        this.today_refresh = today_refresh;
    }

    public void setVisitor_recommend_game(TodayWufunBroadcast visitor_recommend_game) {
        this.visitor_recommend_game = visitor_recommend_game;
    }
}

package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class PapaHomeBeanV9 {
    private List<CommonGameInfoBean> banner;
    private String cloud_gaming_section_id;
    private List<HomeDynamicListBean> dynamic_module;
    private List<CommonGameInfoBean> eo_playing;
    private List<CommonGameInfoBean> fast_entry;
    private String game_section_id;
    private List<CommonGameInfoBean> guess_you_like;
    private List<GameFromPopoWinBeanV2.DataBean> hot_game_fav;
    private HomeDynamicListBean new_online_game;
    private boolean new_user;
    private HomeRankingListBean ranking_list;
    private SScrollingTxtDTOV2 s_scrolling_txt_v2;
    private HomeDynamicListBean simulator_channel;
    private HomeTopChannelBean top_channel;

    public List<CommonGameInfoBean> getBanner() {
        return this.banner;
    }

    public String getCloud_gaming_section_id() {
        return this.cloud_gaming_section_id;
    }

    public List<HomeDynamicListBean> getDynamic_module() {
        return this.dynamic_module;
    }

    public List<CommonGameInfoBean> getEo_playing() {
        return this.eo_playing;
    }

    public List<CommonGameInfoBean> getFast_entry() {
        return this.fast_entry;
    }

    public String getGame_section_id() {
        return this.game_section_id;
    }

    public List<CommonGameInfoBean> getGuess_you_like() {
        return this.guess_you_like;
    }

    public List<GameFromPopoWinBeanV2.DataBean> getHot_game_fav() {
        return this.hot_game_fav;
    }

    public HomeDynamicListBean getNew_online_game() {
        return this.new_online_game;
    }

    public HomeRankingListBean getRanking_list() {
        return this.ranking_list;
    }

    public SScrollingTxtDTOV2 getS_scrolling_txt_v2() {
        return this.s_scrolling_txt_v2;
    }

    public HomeDynamicListBean getSimulator_channel() {
        return this.simulator_channel;
    }

    public HomeTopChannelBean getTop_channel() {
        return this.top_channel;
    }

    public boolean isEmpty() {
        return this.banner == null && this.fast_entry == null && this.top_channel == null && this.eo_playing == null && this.guess_you_like == null && this.new_online_game == null && this.ranking_list == null && this.simulator_channel == null && this.dynamic_module == null && this.hot_game_fav == null;
    }

    public boolean isNew_user() {
        return this.new_user;
    }

    public void setBanner(List<CommonGameInfoBean> banner) {
        this.banner = banner;
    }

    public void setCloud_gaming_section_id(String cloud_gaming_section_id) {
        this.cloud_gaming_section_id = cloud_gaming_section_id;
    }

    public void setDynamic_module(List<HomeDynamicListBean> dynamic_module) {
        this.dynamic_module = dynamic_module;
    }

    public void setEo_playing(List<CommonGameInfoBean> eo_playing) {
        this.eo_playing = eo_playing;
    }

    public void setFast_entry(List<CommonGameInfoBean> fast_entry) {
        this.fast_entry = fast_entry;
    }

    public void setGame_section_id(String game_section_id) {
        this.game_section_id = game_section_id;
    }

    public void setGuess_you_like(List<CommonGameInfoBean> guess_you_like) {
        this.guess_you_like = guess_you_like;
    }

    public void setHot_game_fav(List<GameFromPopoWinBeanV2.DataBean> hot_game_fav) {
        this.hot_game_fav = hot_game_fav;
    }

    public void setNew_online_game(HomeDynamicListBean new_online_game) {
        this.new_online_game = new_online_game;
    }

    public void setNew_user(boolean new_user) {
        this.new_user = new_user;
    }

    public void setRanking_list(HomeRankingListBean ranking_list) {
        this.ranking_list = ranking_list;
    }

    public void setS_scrolling_txt_v2(SScrollingTxtDTOV2 s_scrolling_txt_v2) {
        this.s_scrolling_txt_v2 = s_scrolling_txt_v2;
    }

    public void setSimulator_channel(HomeDynamicListBean simulator_channel) {
        this.simulator_channel = simulator_channel;
    }

    public void setTop_channel(HomeTopChannelBean top_channel) {
        this.top_channel = top_channel;
    }
}

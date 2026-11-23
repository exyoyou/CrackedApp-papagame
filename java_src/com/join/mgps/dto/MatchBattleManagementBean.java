package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class MatchBattleManagementBean {
    private String game_id;
    private String game_name;
    private BannerBean jump_info;
    private String match_title;

    public String getGame_id() {
        return this.game_id;
    }

    public String getGame_name() {
        return this.game_name;
    }

    public BannerBean getJump_info() {
        return this.jump_info;
    }

    public String getMatch_title() {
        return this.match_title;
    }

    public void setGame_id(String game_id) {
        this.game_id = game_id;
    }

    public void setGame_name(String game_name) {
        this.game_name = game_name;
    }

    public void setJump_info(BannerBean jump_info) {
        this.jump_info = jump_info;
    }

    public void setMatch_title(String match_title) {
        this.match_title = match_title;
    }
}

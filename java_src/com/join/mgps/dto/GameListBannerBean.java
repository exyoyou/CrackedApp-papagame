package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class GameListBannerBean {
    private int arcade_battle;
    private List<BannerBean> banner_list;
    private int fc_battle;
    private List<GameInfoBean> game_list;
    private GameMatchBean game_match;
    private int lately_battle;

    public class GameMatchBean {
        private int join_number;
        private String match_title;
        private String nick_name;

        public GameMatchBean() {
        }

        public int getJoin_number() {
            return this.join_number;
        }

        public String getMatch_title() {
            return this.match_title;
        }

        public String getNick_name() {
            return this.nick_name;
        }

        public void setJoin_number(int join_number) {
            this.join_number = join_number;
        }

        public void setMatch_title(String match_title) {
            this.match_title = match_title;
        }

        public void setNick_name(String nick_name) {
            this.nick_name = nick_name;
        }
    }

    public int getArcade_battle() {
        return this.arcade_battle;
    }

    public List<BannerBean> getBanner_list() {
        return this.banner_list;
    }

    public int getFc_battle() {
        return this.fc_battle;
    }

    public List<GameInfoBean> getGame_list() {
        return this.game_list;
    }

    public GameMatchBean getGame_match() {
        return this.game_match;
    }

    public int getLately_battle() {
        return this.lately_battle;
    }

    public void setArcade_battle(int arcade_battle) {
        this.arcade_battle = arcade_battle;
    }

    public void setBanner_list(List<BannerBean> banner_list) {
        this.banner_list = banner_list;
    }

    public void setFc_battle(int fc_battle) {
        this.fc_battle = fc_battle;
    }

    public void setGame_list(List<GameInfoBean> game_list) {
        this.game_list = game_list;
    }

    public void setGame_match(GameMatchBean game_match) {
        this.game_match = game_match;
    }

    public void setLately_battle(int lately_battle) {
        this.lately_battle = lately_battle;
    }
}

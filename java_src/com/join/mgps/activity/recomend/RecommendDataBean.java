package com.join.mgps.activity.recomend;

import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class RecommendDataBean {
    private RecommendGroupBean doomsday_game;
    private List<RecommendBean> game_list;
    private RecommendGroupBean pocket_game;
    private RecommendGroupBean roguelike_game;
    private RecommendGroupBean steam_game;
    private RecommendGroupBean top_10_game;
    private UserProtocolBean user_protocol;

    public RecommendGroupBean getDoomsday_game() {
        return this.doomsday_game;
    }

    public List<RecommendBean> getGame_list() {
        return this.game_list;
    }

    public RecommendGroupBean getPocket_game() {
        return this.pocket_game;
    }

    public RecommendGroupBean getRoguelike_game() {
        return this.roguelike_game;
    }

    public RecommendGroupBean getSteam_game() {
        return this.steam_game;
    }

    public RecommendGroupBean getTop_10_game() {
        return this.top_10_game;
    }

    public UserProtocolBean getUser_protocol() {
        return this.user_protocol;
    }

    public void setDoomsday_game(RecommendGroupBean doomsday_game) {
        this.doomsday_game = doomsday_game;
    }

    public void setGame_list(List<RecommendBean> game_list) {
        this.game_list = game_list;
    }

    public void setPocket_game(RecommendGroupBean pocket_game) {
        this.pocket_game = pocket_game;
    }

    public void setRoguelike_game(RecommendGroupBean roguelike_game) {
        this.roguelike_game = roguelike_game;
    }

    public void setSteam_game(RecommendGroupBean steam_game) {
        this.steam_game = steam_game;
    }

    public void setTop_10_game(RecommendGroupBean top_10_game) {
        this.top_10_game = top_10_game;
    }

    public void setUser_protocol(UserProtocolBean user_protocol) {
        this.user_protocol = user_protocol;
    }
}

package com.join.mgps.dto;

import com.join.mgps.activity.vipzone.bean.IconGame;
import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class GameDiscoverTheNewBean implements Serializable {
    private List<IconGame> d_discover;
    private int game_count;
    private List<IconGame> game_list;
    private int pv_count;

    public List<IconGame> getD_discover() {
        return this.d_discover;
    }

    public int getGame_count() {
        return this.game_count;
    }

    public List<IconGame> getGame_list() {
        return this.game_list;
    }

    public int getPv_count() {
        return this.pv_count;
    }

    public void setD_discover(List<IconGame> d_discover) {
        this.d_discover = d_discover;
    }

    public void setGame_count(int game_count) {
        this.game_count = game_count;
    }

    public void setGame_list(List<IconGame> game_list) {
        this.game_list = game_list;
    }

    public void setPv_count(int pv_count) {
        this.pv_count = pv_count;
    }
}

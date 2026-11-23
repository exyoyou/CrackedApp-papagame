package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class EverydayNewGameResponse {
    List<GameBeanCollection> game_list;
    List<RecomDatabean> head_ad;
    List<RecomDatabean> the_explosion;

    public List<GameBeanCollection> getGame_list() {
        return this.game_list;
    }

    public List<RecomDatabean> getHead_ad() {
        return this.head_ad;
    }

    public List<RecomDatabean> getThe_explosion() {
        return this.the_explosion;
    }

    public void setGame_list(List<GameBeanCollection> game_list) {
        this.game_list = game_list;
    }

    public void setHead_ad(List<RecomDatabean> head_ad) {
        this.head_ad = head_ad;
    }

    public void setThe_explosion(List<RecomDatabean> the_explosion) {
        this.the_explosion = the_explosion;
    }
}

package com.join.mgps.activity.vipzone.bean;

import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class SpecialZoneColloctionbean {
    String collection_id;
    List<IconGame> game_list;
    String title;
    String tpl_type;

    public String getCollection_id() {
        return this.collection_id;
    }

    public List<IconGame> getGame_list() {
        return this.game_list;
    }

    public String getTitle() {
        return this.title;
    }

    public String getTpl_type() {
        return this.tpl_type;
    }

    public void setCollection_id(String collection_id) {
        this.collection_id = collection_id;
    }

    public void setGame_list(List<IconGame> game_list) {
        this.game_list = game_list;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setTpl_type(String tpl_type) {
        this.tpl_type = tpl_type;
    }
}

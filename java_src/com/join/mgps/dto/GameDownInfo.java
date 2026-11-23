package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class GameDownInfo {
    private List<Addr1Bean> down_url;
    private String game_id;
    private int lv_type;
    private String sub_title;
    private String title;

    public static class Addr1Bean {
        private String title;
        private String url;

        public String getTitle() {
            return this.title;
        }

        public String getUrl() {
            return this.url;
        }

        public void setTitle(String title) {
            this.title = title;
        }

        public void setUrl(String url) {
            this.url = url;
        }
    }

    public List<Addr1Bean> getDown_url() {
        return this.down_url;
    }

    public String getGame_id() {
        return this.game_id;
    }

    public int getLv_type() {
        return this.lv_type;
    }

    public String getSub_title() {
        return this.sub_title;
    }

    public String getTitle() {
        return this.title;
    }

    public void setDown_url(List<Addr1Bean> down_url) {
        this.down_url = down_url;
    }

    public void setGame_id(String game_id) {
        this.game_id = game_id;
    }

    public void setLv_type(int lv_type) {
        this.lv_type = lv_type;
    }

    public void setSub_title(String sub_title) {
        this.sub_title = sub_title;
    }

    public void setTitle(String title) {
        this.title = title;
    }
}

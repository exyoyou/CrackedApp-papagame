package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class GameDetailRankingTag {
    private GameTagBean hot_game;
    private GameTagBean tag_game;

    public static class GameTagBean {

        /* JADX INFO: renamed from: id, reason: collision with root package name */
        private String f68058id;
        private Integer position;
        private String sub_title;
        private String title;
        private String type;

        public String getId() {
            return this.f68058id;
        }

        public Integer getPosition() {
            return this.position;
        }

        public String getSub_title() {
            return this.sub_title;
        }

        public String getTitle() {
            return this.title;
        }

        public String getType() {
            return this.type;
        }

        public void setId(String id2) {
            this.f68058id = id2;
        }

        public void setPosition(Integer position) {
            this.position = position;
        }

        public void setSub_title(String sub_title) {
            this.sub_title = sub_title;
        }

        public void setTitle(String title) {
            this.title = title;
        }

        public void setType(String type) {
            this.type = type;
        }
    }

    public GameTagBean getHot_game() {
        return this.hot_game;
    }

    public GameTagBean getTag_game() {
        return this.tag_game;
    }

    public void setHot_game(GameTagBean hot_game) {
        this.hot_game = hot_game;
    }

    public void setTag_game(GameTagBean tag_game) {
        this.tag_game = tag_game;
    }
}

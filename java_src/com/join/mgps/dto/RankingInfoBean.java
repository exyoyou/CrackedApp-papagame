package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class RankingInfoBean {
    private NetGameBean net_game;
    private NetGameBean new_game;

    public static class NetGameBean {
        private Integer count;
        private Integer position;
        private String sub_title;
        private String title;

        public Integer getCount() {
            return this.count;
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

        public void setCount(Integer count) {
            this.count = count;
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
    }

    public NetGameBean getNet_game() {
        return this.net_game;
    }

    public NetGameBean getNew_game() {
        return this.new_game;
    }

    public void setNet_game(NetGameBean net_game) {
        this.net_game = net_game;
    }

    public void setNew_game(NetGameBean new_game) {
        this.new_game = new_game;
    }
}

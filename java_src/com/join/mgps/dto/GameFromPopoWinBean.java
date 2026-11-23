package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class GameFromPopoWinBean {
    private List<DataBean> data;
    private int error;

    public static class DataBean {
        private String add_time;
        private String book_count;
        private String current_game_state;
        private String game_count;
        private List<GameListBean> game_list;

        /* JADX INFO: renamed from: id, reason: collision with root package name */
        private String f68061id;
        private boolean isSelected;
        private String nick_name;
        private String portrait;
        private String title;
        private int uid;

        public static class GameListBean {
            private String game_ico;
            private String game_name;

            public String getGame_ico() {
                return this.game_ico;
            }

            public String getGame_name() {
                return this.game_name;
            }

            public void setGame_ico(String game_ico) {
                this.game_ico = game_ico;
            }

            public void setGame_name(String game_name) {
                this.game_name = game_name;
            }
        }

        public String getAdd_time() {
            return this.add_time;
        }

        public String getBook_count() {
            return this.book_count;
        }

        public String getCurrent_game_state() {
            return this.current_game_state;
        }

        public String getGame_count() {
            return this.game_count;
        }

        public List<GameListBean> getGame_list() {
            return this.game_list;
        }

        public String getId() {
            return this.f68061id;
        }

        public String getNick_name() {
            return this.nick_name;
        }

        public String getPortrait() {
            return this.portrait;
        }

        public String getTitle() {
            return this.title;
        }

        public int getUid() {
            return this.uid;
        }

        public boolean isSelected() {
            return this.isSelected;
        }

        public void setAdd_time(String add_time) {
            this.add_time = add_time;
        }

        public void setBook_count(String book_count) {
            this.book_count = book_count;
        }

        public void setCurrent_game_state(String current_game_state) {
            this.current_game_state = current_game_state;
        }

        public void setGame_count(String game_count) {
            this.game_count = game_count;
        }

        public void setGame_list(List<GameListBean> game_list) {
            this.game_list = game_list;
        }

        public void setId(String id2) {
            this.f68061id = id2;
        }

        public void setNick_name(String nick_name) {
            this.nick_name = nick_name;
        }

        public void setPortrait(String portrait) {
            this.portrait = portrait;
        }

        public void setSelected(boolean selected) {
            this.isSelected = selected;
        }

        public void setTitle(String title) {
            this.title = title;
        }

        public void setUid(int uid) {
            this.uid = uid;
        }
    }

    public List<DataBean> getData() {
        return this.data;
    }

    public int getError() {
        return this.error;
    }

    public void setData(List<DataBean> data) {
        this.data = data;
    }

    public void setError(int error) {
        this.error = error;
    }
}

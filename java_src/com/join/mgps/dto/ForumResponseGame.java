package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class ForumResponseGame {
    private DataBean data;
    private int error;

    public static class DataBean {
        private Datadetails details;
        private List<GameListItemBean> game_list;

        public Datadetails getDetails() {
            return this.details;
        }

        public List<GameListItemBean> getGame_list() {
            return this.game_list;
        }

        public void setDetails(Datadetails details) {
            this.details = details;
        }

        public void setGame_list(List<GameListItemBean> game_list) {
            this.game_list = game_list;
        }
    }

    public static class Datadetails {
        private String add_time;
        private String book_count;
        private String book_state;
        private String game_count;

        /* JADX INFO: renamed from: id, reason: collision with root package name */
        private String f68053id;
        private String is_self;
        private String nick_name;
        private String portrait;
        private String title;
        private int tv_btn = 1;
        private int uid;

        public String getAdd_time() {
            return this.add_time;
        }

        public String getBook_count() {
            return this.book_count;
        }

        public String getBook_state() {
            return this.book_state;
        }

        public String getGame_count() {
            return this.game_count;
        }

        public String getId() {
            return this.f68053id;
        }

        public String getIs_self() {
            return this.is_self;
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

        public int getTv_btn() {
            return this.tv_btn;
        }

        public int getUid() {
            return this.uid;
        }

        public void setAdd_time(String add_time) {
            this.add_time = add_time;
        }

        public void setBook_count(String book_count) {
            this.book_count = book_count;
        }

        public void setBook_state(String book_state) {
            this.book_state = book_state;
        }

        public void setGame_count(String game_count) {
            this.game_count = game_count;
        }

        public void setId(String id2) {
            this.f68053id = id2;
        }

        public void setIs_self(String is_self) {
            this.is_self = is_self;
        }

        public void setNick_name(String nick_name) {
            this.nick_name = nick_name;
        }

        public void setPortrait(String portrait) {
            this.portrait = portrait;
        }

        public void setTitle(String title) {
            this.title = title;
        }

        public void setTv_btn(int tv_btn) {
            this.tv_btn = tv_btn;
        }

        public void setUid(int uid) {
            this.uid = uid;
        }
    }

    public DataBean getData() {
        return this.data;
    }

    public int getError() {
        return this.error;
    }

    public void setData(DataBean data) {
        this.data = data;
    }

    public void setError(int error) {
        this.error = error;
    }
}

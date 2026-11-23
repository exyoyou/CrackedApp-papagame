package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class GameFromPopoWinBeanV2 {
    private ResultDataBean data;
    private int error;

    public static class DataBean {
        private String add_time;
        private String big_pic;
        private String book_count;
        private String current_game_state;
        private ExtBean extBean;
        private String game_count;
        private List<GameListBean> game_list;
        private boolean hasExposure;

        /* JADX INFO: renamed from: id, reason: collision with root package name */
        private String f68062id;
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

        public String getBig_pic() {
            return this.big_pic;
        }

        public String getBook_count() {
            return this.book_count;
        }

        public String getCurrent_game_state() {
            return this.current_game_state;
        }

        public ExtBean getExtBean() {
            return this.extBean;
        }

        public String getGame_count() {
            return this.game_count;
        }

        public List<GameListBean> getGame_list() {
            return this.game_list;
        }

        public String getId() {
            return this.f68062id;
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

        public boolean isHasExposure() {
            return this.hasExposure;
        }

        public void setAdd_time(String add_time) {
            this.add_time = add_time;
        }

        public void setBig_pic(String big_pic) {
            this.big_pic = big_pic;
        }

        public void setBook_count(String book_count) {
            this.book_count = book_count;
        }

        public void setCurrent_game_state(String current_game_state) {
            this.current_game_state = current_game_state;
        }

        public void setExtBean(ExtBean extBean) {
            this.extBean = extBean;
        }

        public void setGame_count(String game_count) {
            this.game_count = game_count;
        }

        public void setGame_list(List<GameListBean> game_list) {
            this.game_list = game_list;
        }

        public void setHasExposure(boolean hasExposure) {
            this.hasExposure = hasExposure;
        }

        public void setId(String id2) {
            this.f68062id = id2;
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

        public void setUid(int uid) {
            this.uid = uid;
        }
    }

    public static class FamousBean {
        private String count;

        /* JADX INFO: renamed from: id, reason: collision with root package name */
        private String f68063id;
        private String name;
        private String pic;
        private String title;
        private int uid;

        public String getCount() {
            return this.count;
        }

        public String getId() {
            return this.f68063id;
        }

        public String getName() {
            return this.name;
        }

        public String getPic() {
            return this.pic;
        }

        public String getTitle() {
            return this.title;
        }

        public int getUid() {
            return this.uid;
        }

        public void setCount(String count) {
            this.count = count;
        }

        public void setId(String id2) {
            this.f68063id = id2;
        }

        public void setName(String name) {
            this.name = name;
        }

        public void setPic(String pic) {
            this.pic = pic;
        }

        public void setTitle(String title) {
            this.title = title;
        }

        public void setUid(int uid) {
            this.uid = uid;
        }
    }

    public static class ResultDataBean {
        private List<FamousBean> famous_list;
        private List<DataBean> fav_list;

        public List<FamousBean> getFamous_list() {
            return this.famous_list;
        }

        public List<DataBean> getFav_list() {
            return this.fav_list;
        }

        public void setFamous_list(List<FamousBean> famous_list) {
            this.famous_list = famous_list;
        }

        public void setFav_list(List<DataBean> fav_list) {
            this.fav_list = fav_list;
        }
    }

    public ResultDataBean getData() {
        return this.data;
    }

    public int getError() {
        return this.error;
    }

    public void setData(ResultDataBean data) {
        this.data = data;
    }

    public void setError(int error) {
        this.error = error;
    }
}

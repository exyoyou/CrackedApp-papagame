package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class SearchIntegratedFavoriteBean {
    private List<FavoriteBean> list;
    private List<FavoriteBean> recommend_list;

    public static class FavoriteBean {
        private String auth_name;
        private int game_count;

        /* JADX INFO: renamed from: id, reason: collision with root package name */
        private int f68107id;
        private String pic;
        private boolean showDivider = true;
        private String title;
        private String uid;

        public String getAuth_name() {
            return this.auth_name;
        }

        public int getGame_count() {
            return this.game_count;
        }

        public int getId() {
            return this.f68107id;
        }

        public String getPic() {
            return this.pic;
        }

        public String getTitle() {
            return this.title;
        }

        public String getUid() {
            return this.uid;
        }

        public boolean isShowDivider() {
            return this.showDivider;
        }

        public void setAuth_name(String auth_name) {
            this.auth_name = auth_name;
        }

        public void setGame_count(int game_count) {
            this.game_count = game_count;
        }

        public void setId(int id2) {
            this.f68107id = id2;
        }

        public void setPic(String pic) {
            this.pic = pic;
        }

        public void setShowDivider(boolean showDivider) {
            this.showDivider = showDivider;
        }

        public void setTitle(String title) {
            this.title = title;
        }

        public void setUid(String uid) {
            this.uid = uid;
        }
    }

    public List<FavoriteBean> getList() {
        return this.list;
    }

    public List<FavoriteBean> getRecommend_list() {
        return this.recommend_list;
    }

    public void setList(List<FavoriteBean> list) {
        this.list = list;
    }

    public void setRecommend_list(List<FavoriteBean> recommend_list) {
        this.recommend_list = recommend_list;
    }
}

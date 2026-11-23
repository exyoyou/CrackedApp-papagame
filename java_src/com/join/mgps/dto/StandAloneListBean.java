package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class StandAloneListBean {
    private List<AppBean> game_list;
    private List<ListBean> list;
    private String title;
    private String type;

    public static class ListBean {

        /* JADX INFO: renamed from: id, reason: collision with root package name */
        private String f68122id;
        private String pic;
        private String title;

        public String getId() {
            return this.f68122id;
        }

        public String getPic() {
            return this.pic;
        }

        public String getTitle() {
            return this.title;
        }

        public void setId(String id2) {
            this.f68122id = id2;
        }

        public void setPic(String pic) {
            this.pic = pic;
        }

        public void setTitle(String title) {
            this.title = title;
        }
    }

    public List<AppBean> getGame_list() {
        return this.game_list;
    }

    public List<ListBean> getList() {
        return this.list;
    }

    public String getTitle() {
        return this.title;
    }

    public String getType() {
        return this.type;
    }

    public void setGame_list(List<AppBean> game_list) {
        this.game_list = game_list;
    }

    public void setList(List<ListBean> list) {
        this.list = list;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setType(String type) {
        this.type = type;
    }
}

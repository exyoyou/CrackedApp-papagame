package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class SearchAutoMessageBean {
    private SearchAutoData data;
    private String modeltype;

    public class SearchAutoData {
        private List<CollectionBeanSub> game_list;
        private List<SearchAutoDataBean> search_list;

        public SearchAutoData() {
        }

        public List<CollectionBeanSub> getGame_list() {
            return this.game_list;
        }

        public List<SearchAutoDataBean> getSearch_list() {
            return this.search_list;
        }

        public void setGame_list(List<CollectionBeanSub> game_list) {
            this.game_list = game_list;
        }

        public void setSearch_list(List<SearchAutoDataBean> search_list) {
            this.search_list = search_list;
        }
    }

    public SearchAutoData getData() {
        return this.data;
    }

    public String getModeltype() {
        return this.modeltype;
    }

    public void setData(SearchAutoData data) {
        this.data = data;
    }

    public void setModeltype(String modeltype) {
        this.modeltype = modeltype;
    }
}

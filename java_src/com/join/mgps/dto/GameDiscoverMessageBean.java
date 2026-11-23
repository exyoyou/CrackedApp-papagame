package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class GameDiscoverMessageBean {
    private List<GameDiscoverBean> data;
    private String modeltype;

    public GameDiscoverMessageBean() {
    }

    public List<GameDiscoverBean> getData() {
        return this.data;
    }

    public String getModeltype() {
        return this.modeltype;
    }

    public void setData(List<GameDiscoverBean> data) {
        this.data = data;
    }

    public void setModeltype(String modeltype) {
        this.modeltype = modeltype;
    }

    public GameDiscoverMessageBean(String modeltype, List<GameDiscoverBean> data) {
        this.modeltype = modeltype;
        this.data = data;
    }
}

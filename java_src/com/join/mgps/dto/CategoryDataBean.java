package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class CategoryDataBean {
    private List<CategorySimpleBean> game_type;

    public CategoryDataBean() {
    }

    public List<CategorySimpleBean> getGame_type() {
        return this.game_type;
    }

    public void setGame_type(List<CategorySimpleBean> game_type) {
        this.game_type = game_type;
    }

    public CategoryDataBean(List<CategorySimpleBean> game_type) {
        this.game_type = game_type;
    }
}

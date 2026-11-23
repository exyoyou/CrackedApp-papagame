package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class CategoryCommonDataBean {
    private String game_count;
    private List<Object> info;
    private String tpl_type;

    public CategoryCommonDataBean(String tpl_type, String game_count, List<Object> info) {
        this.tpl_type = tpl_type;
        this.game_count = game_count;
        this.info = info;
    }

    public List<Object> getInfo() {
        return this.info;
    }

    public String getTpl_type() {
        return this.tpl_type;
    }

    public void setInfo(List<Object> info) {
        this.info = info;
    }

    public void setTpl_type(String tpl_type) {
        this.tpl_type = tpl_type;
    }

    public CategoryCommonDataBean() {
    }
}

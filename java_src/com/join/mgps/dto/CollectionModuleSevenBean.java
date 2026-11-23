package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class CollectionModuleSevenBean {
    private List<CollectionModuleSevenSubBean> template_items;
    private int template_type;
    private String title;

    public List<CollectionModuleSevenSubBean> getTemplate_items() {
        return this.template_items;
    }

    public int getTemplate_type() {
        return this.template_type;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTemplate_items(List<CollectionModuleSevenSubBean> template_items) {
        this.template_items = template_items;
    }

    public void setTemplate_type(int template_type) {
        this.template_type = template_type;
    }

    public void setTitle(String title) {
        this.title = title;
    }
}

package com.join.mgps.dto;

import j6.b;

/* JADX INFO: loaded from: classes3.dex */
public class CollectionSevenListBean implements b {
    private String collection_id;
    private boolean hasExposure = false;
    private Object item;
    private String subTitle;
    private String title;
    private String tpl_type;
    private int type;

    public CollectionSevenListBean() {
    }

    public String getCollection_id() {
        return this.collection_id;
    }

    public Object getItem() {
        return this.item;
    }

    @Override // j6.b
    public int getItemType() {
        return this.type;
    }

    public String getSubTitle() {
        return this.subTitle;
    }

    public String getTitle() {
        return this.title;
    }

    public String getTpl_type() {
        return this.tpl_type;
    }

    public int getType() {
        return this.type;
    }

    public boolean isHasExposure() {
        return this.hasExposure;
    }

    public void setCollection_id(String collection_id) {
        this.collection_id = collection_id;
    }

    public void setHasExposure(boolean hasExposure) {
        this.hasExposure = hasExposure;
    }

    public void setItem(Object item) {
        this.item = item;
    }

    public void setSubTitle(String subTitle) {
        this.subTitle = subTitle;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setTpl_type(String tpl_type) {
        this.tpl_type = tpl_type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public CollectionSevenListBean(int type, Object item, String collection_id) {
        this.type = type;
        this.item = item;
        this.collection_id = collection_id;
    }

    public CollectionSevenListBean(int type, Object item) {
        this.type = type;
        this.item = item;
    }
}

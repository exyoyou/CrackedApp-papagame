package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class LabelBean implements Serializable {
    private int posts;
    private String tag_icon;
    private int tag_id;
    private String tag_name;

    public LabelBean() {
    }

    public int getPosts() {
        return this.posts;
    }

    public String getTag_icon() {
        return this.tag_icon;
    }

    public int getTag_id() {
        return this.tag_id;
    }

    public String getTag_name() {
        return this.tag_name;
    }

    public void setPosts(int posts) {
        this.posts = posts;
    }

    public void setTag_icon(String tag_icon) {
        this.tag_icon = tag_icon;
    }

    public void setTag_id(int tag_id) {
        this.tag_id = tag_id;
    }

    public void setTag_name(String tag_name) {
        this.tag_name = tag_name;
    }

    public LabelBean(int tag_id) {
        this.tag_id = tag_id;
    }
}

package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class RecommendInfomationBean implements Serializable {
    private int commit;
    private String ico_remote;
    private String[] pic_list;
    private int post_id;
    private int praise;
    private long times;
    private String title;
    private String type;
    private String type_color;
    private int view;

    public int getCommit() {
        return this.commit;
    }

    public String getIco_remote() {
        return this.ico_remote;
    }

    public String[] getPic_list() {
        return this.pic_list;
    }

    public int getPost_id() {
        return this.post_id;
    }

    public int getPraise() {
        return this.praise;
    }

    public long getTimes() {
        return this.times * 1000;
    }

    public String getTitle() {
        return this.title;
    }

    public String getType() {
        return this.type;
    }

    public String getType_color() {
        return this.type_color;
    }

    public int getView() {
        return this.view;
    }

    public void setCommit(int commit) {
        this.commit = commit;
    }

    public void setIco_remote(String ico_remote) {
        this.ico_remote = ico_remote;
    }

    public void setPic_list(String[] pic_list) {
        this.pic_list = pic_list;
    }

    public void setPost_id(int post_id) {
        this.post_id = post_id;
    }

    public void setPraise(int praise) {
        this.praise = praise;
    }

    public void setTimes(long times) {
        this.times = times;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setType(String type) {
        this.type = type;
    }

    public void setType_color(String type_color) {
        this.type_color = type_color;
    }

    public void setView(int view) {
        this.view = view;
    }
}

package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class CollectionDataBean implements Serializable {
    private int comment_count;
    private int comment_switch;
    private String game_count;
    private List<CollectionDataBeanInfo> info;
    private String tpl_type;

    public CollectionDataBean() {
    }

    public int getComment_count() {
        return this.comment_count;
    }

    public int getComment_switch() {
        return this.comment_switch;
    }

    public String getGame_count() {
        return this.game_count;
    }

    public List<CollectionDataBeanInfo> getInfo() {
        return this.info;
    }

    public String getTpl_type() {
        return this.tpl_type;
    }

    public void setComment_count(int comment_count) {
        this.comment_count = comment_count;
    }

    public void setComment_switch(int comment_switch) {
        this.comment_switch = comment_switch;
    }

    public void setGame_count(String game_count) {
        this.game_count = game_count;
    }

    public void setInfo(List<CollectionDataBeanInfo> info) {
        this.info = info;
    }

    public void setTpl_type(String tpl_type) {
        this.tpl_type = tpl_type;
    }

    public CollectionDataBean(String tpl_type, String game_count, List<CollectionDataBeanInfo> info) {
        this.tpl_type = tpl_type;
        this.game_count = game_count;
        this.info = info;
    }
}

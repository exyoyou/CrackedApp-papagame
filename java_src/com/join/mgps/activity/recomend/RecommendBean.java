package com.join.mgps.activity.recomend;

import com.join.mgps.dto.AppBean;
import com.join.mgps.dto.ExtBean;

/* JADX INFO: loaded from: classes9.dex */
public class RecommendBean {
    private ExtBean extBean;
    private AppBean game_info;
    private int index;
    private int is_select;
    private String source_url;
    private String tag;
    private int viewType;

    public RecommendBean() {
    }

    public ExtBean getExtBean() {
        return this.extBean;
    }

    public AppBean getGame_info() {
        return this.game_info;
    }

    public int getIndex() {
        return this.index;
    }

    public int getIs_select() {
        return this.is_select;
    }

    public String getSource_url() {
        return this.source_url;
    }

    public String getTag() {
        return this.tag;
    }

    public int getViewType() {
        return this.viewType;
    }

    public RecommendBean setExtBean(ExtBean extBean) {
        this.extBean = extBean;
        return this;
    }

    public void setGame_info(AppBean game_info) {
        this.game_info = game_info;
    }

    public void setIndex(int index) {
        this.index = index;
    }

    public void setIs_select(int is_select) {
        this.is_select = is_select;
    }

    public void setSource_url(String source_url) {
        this.source_url = source_url;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }

    public void setViewType(int viewType) {
        this.viewType = viewType;
    }

    public RecommendBean(int viewType, String tag) {
        this.viewType = viewType;
        this.tag = tag;
    }

    public RecommendBean(int viewType, AppBean game_info) {
        this.viewType = viewType;
        this.game_info = game_info;
    }
}

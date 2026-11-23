package com.join.kotlin.ui.gameexpress.model.bean;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.join.mgps.dto.CommonGameInfoBean;

/* JADX INFO: loaded from: classes4.dex */
public class GameExpressTheNewItem {
    private CommonGameInfoBean list;

    @JsonProperty("the_new")
    private boolean the_new;

    @JsonProperty("the_update")
    private boolean the_update;
    private long time;

    public CommonGameInfoBean getList() {
        return this.list;
    }

    public long getTime() {
        return this.time;
    }

    public boolean isThe_new() {
        return this.the_new;
    }

    public boolean isThe_update() {
        return this.the_update;
    }

    public void setList(CommonGameInfoBean list) {
        this.list = list;
    }

    public void setThe_new(boolean the_new) {
        this.the_new = the_new;
    }

    public void setThe_update(boolean the_update) {
        this.the_update = the_update;
    }

    public void setTime(long time) {
        this.time = time;
    }
}

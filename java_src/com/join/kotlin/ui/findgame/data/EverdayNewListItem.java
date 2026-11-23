package com.join.kotlin.ui.findgame.data;

import com.join.mgps.dto.CollectionBeanSub;

/* JADX INFO: loaded from: classes4.dex */
public class EverdayNewListItem {
    CollectionBeanSub list;
    private boolean the_new;
    private boolean the_update;
    long time;

    public CollectionBeanSub getList() {
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

    public void setList(CollectionBeanSub list) {
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

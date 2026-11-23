package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class GamebroadcastBean implements Serializable {
    private List<RecomDatabean> bottom;
    private List<RecomDatabean> middle;
    private List<RecomDatabean> more;
    private List<RecomDatabean> sp_top;
    private List<RecomDatabean> top;

    public GamebroadcastBean() {
    }

    public List<RecomDatabean> getBottom() {
        return this.bottom;
    }

    public List<RecomDatabean> getMiddle() {
        return this.middle;
    }

    public List<RecomDatabean> getMore() {
        return this.more;
    }

    public List<RecomDatabean> getSp_top() {
        return this.sp_top;
    }

    public List<RecomDatabean> getTop() {
        return this.top;
    }

    public void setBottom(List<RecomDatabean> bottom) {
        this.bottom = bottom;
    }

    public void setMiddle(List<RecomDatabean> middle) {
        this.middle = middle;
    }

    public void setMore(List<RecomDatabean> more) {
        this.more = more;
    }

    public void setSp_top(List<RecomDatabean> sp_top) {
        this.sp_top = sp_top;
    }

    public void setTop(List<RecomDatabean> top) {
        this.top = top;
    }

    public GamebroadcastBean(List<RecomDatabean> top, List<RecomDatabean> bottom, List<RecomDatabean> more) {
        this.top = top;
        this.middle = bottom;
        this.more = more;
    }
}

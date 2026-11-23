package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class RecomDatabean implements Serializable {
    private int dataFrom;
    private ModleBean main;
    private List<AppMoreBean> more;
    private List<AppBeanMain> sub;

    public RecomDatabean(RecomDatabean recomDatabean) {
        this.dataFrom = recomDatabean.getDataFrom();
        this.main = recomDatabean.getMain();
        this.sub = recomDatabean.getSub();
        this.more = recomDatabean.getMore();
    }

    public int getDataFrom() {
        return this.dataFrom;
    }

    public ModleBean getMain() {
        return this.main;
    }

    public List<AppMoreBean> getMore() {
        return this.more;
    }

    public List<AppBeanMain> getSub() {
        return this.sub;
    }

    public void setDataFrom(int dataFrom) {
        this.dataFrom = dataFrom;
    }

    public void setMain(ModleBean main) {
        this.main = main;
    }

    public void setMore(List<AppMoreBean> more) {
        this.more = more;
    }

    public void setSub(List<AppBeanMain> sub) {
        this.sub = sub;
    }

    public RecomDatabean() {
    }

    public RecomDatabean(int dataFrom, ModleBean main, List<AppBeanMain> sub, List<AppMoreBean> more) {
        this.dataFrom = dataFrom;
        this.main = main;
        this.sub = sub;
        this.more = more;
    }
}

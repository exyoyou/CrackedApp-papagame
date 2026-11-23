package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class HomeDailyNewBean {
    private int count;
    private ExtBean extBean;
    private List<HomeDailyNewListBean> list;
    private int pv;

    public int getCount() {
        return this.count;
    }

    public ExtBean getExtBean() {
        return this.extBean;
    }

    public List<HomeDailyNewListBean> getList() {
        return this.list;
    }

    public int getPv() {
        return this.pv;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public void setExtBean(ExtBean extBean) {
        this.extBean = extBean;
    }

    public void setList(List<HomeDailyNewListBean> list) {
        this.list = list;
    }

    public void setPv(int pv) {
        this.pv = pv;
    }
}

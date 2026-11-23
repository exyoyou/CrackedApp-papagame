package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class HomeDynamicListBean {
    private List<CommonGameInfoBean> bottom;
    private int dynamic_module_tpl_type;
    private List<CommonGameInfoBean> middle;
    private List<CommonGameInfoBean> top;

    public List<CommonGameInfoBean> getBottom() {
        return this.bottom;
    }

    public int getDynamic_module_tpl_type() {
        return this.dynamic_module_tpl_type;
    }

    public List<CommonGameInfoBean> getMiddle() {
        return this.middle;
    }

    public List<CommonGameInfoBean> getTop() {
        return this.top;
    }

    public void setBottom(List<CommonGameInfoBean> bottom) {
        this.bottom = bottom;
    }

    public void setDynamic_module_tpl_type(int dynamic_module_tpl_type) {
        this.dynamic_module_tpl_type = dynamic_module_tpl_type;
    }

    public void setMiddle(List<CommonGameInfoBean> middle) {
        this.middle = middle;
    }

    public void setTop(List<CommonGameInfoBean> top) {
        this.top = top;
    }
}

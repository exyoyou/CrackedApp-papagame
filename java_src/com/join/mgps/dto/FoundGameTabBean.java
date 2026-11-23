package com.join.mgps.dto;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class FoundGameTabBean implements Serializable {
    private TipsInfoBean tips_info;
    private List<TabItemBean> title_info;

    public TipsInfoBean getTips_info() {
        return this.tips_info;
    }

    public List<TabItemBean> getTitle_info() {
        return this.title_info;
    }

    public void setTips_info(TipsInfoBean tips_info) {
        this.tips_info = tips_info;
    }

    public void setTitle_info(List<TabItemBean> title_info) {
        this.title_info = title_info;
    }
}

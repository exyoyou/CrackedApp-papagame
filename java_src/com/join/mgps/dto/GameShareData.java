package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class GameShareData {
    GameShareStatisticsInfo statistics_info;
    List<TipBean> tag_info;

    public GameShareStatisticsInfo getStatistics_info() {
        return this.statistics_info;
    }

    public List<TipBean> getTag_info() {
        return this.tag_info;
    }

    public void setStatistics_info(GameShareStatisticsInfo statistics_info) {
        this.statistics_info = statistics_info;
    }

    public void setTag_info(List<TipBean> tag_info) {
        this.tag_info = tag_info;
    }
}

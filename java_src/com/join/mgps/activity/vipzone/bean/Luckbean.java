package com.join.mgps.activity.vipzone.bean;

import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class Luckbean {
    int count;
    PrizeBean lastPrize;
    List<LuckPrizeBean> prize_list;
    List<String> rule;

    public int getCount() {
        return this.count;
    }

    public PrizeBean getLastPrize() {
        return this.lastPrize;
    }

    public List<LuckPrizeBean> getPrize_list() {
        return this.prize_list;
    }

    public List<String> getRule() {
        return this.rule;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public void setLastPrize(PrizeBean lastPrize) {
        this.lastPrize = lastPrize;
    }

    public void setPrize_list(List<LuckPrizeBean> prize_list) {
        this.prize_list = prize_list;
    }

    public void setRule(List<String> rule) {
        this.rule = rule;
    }
}

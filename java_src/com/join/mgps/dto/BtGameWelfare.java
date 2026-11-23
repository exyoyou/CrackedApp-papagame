package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class BtGameWelfare {
    List<BTActivityBean> game_activity_summary;
    BtGameBenefitSummary game_benefit_summary;

    public List<BTActivityBean> getGame_activity_summary() {
        return this.game_activity_summary;
    }

    public BtGameBenefitSummary getGame_benefit_summary() {
        return this.game_benefit_summary;
    }

    public void setGame_activity_summary(List<BTActivityBean> game_activity_summary) {
        this.game_activity_summary = game_activity_summary;
    }

    public void setGame_benefit_summary(BtGameBenefitSummary game_benefit_summary) {
        this.game_benefit_summary = game_benefit_summary;
    }
}

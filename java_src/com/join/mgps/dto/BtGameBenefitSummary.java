package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class BtGameBenefitSummary {
    BtGameBenefitBean game_coupon_summary;
    BtGameBenefitBean game_gift_summary;
    String jump_url;

    public BtGameBenefitBean getGame_coupon_summary() {
        return this.game_coupon_summary;
    }

    public BtGameBenefitBean getGame_gift_summary() {
        return this.game_gift_summary;
    }

    public String getJump_url() {
        return this.jump_url;
    }

    public void setGame_coupon_summary(BtGameBenefitBean game_coupon_summary) {
        this.game_coupon_summary = game_coupon_summary;
    }

    public void setGame_gift_summary(BtGameBenefitBean game_gift_summary) {
        this.game_gift_summary = game_gift_summary;
    }

    public void setJump_url(String jump_url) {
        this.jump_url = jump_url;
    }
}

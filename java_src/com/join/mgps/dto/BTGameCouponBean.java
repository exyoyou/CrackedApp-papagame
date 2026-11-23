package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class BTGameCouponBean implements Serializable {
    private String coupon_id;
    private String coupon_name;
    private String coupon_type;
    private String discount;
    private String effect_end_time;
    private String effect_start_time;
    private String effect_time_hint;
    private String game_id;
    private boolean receivable;
    private String usable_games;
    private String usable_gamesShow;
    private String use_condition;
    private String use_condition_no_price;
    private String amount = "0";
    private boolean showDetial = false;

    public String getAmount() {
        return this.amount;
    }

    public String getCoupon_id() {
        return this.coupon_id;
    }

    public String getCoupon_name() {
        return this.coupon_name;
    }

    public String getCoupon_type() {
        return this.coupon_type;
    }

    public String getDiscount() {
        return this.discount;
    }

    public String getEffect_end_time() {
        return this.effect_end_time;
    }

    public String getEffect_start_time() {
        return this.effect_start_time;
    }

    public String getEffect_time_hint() {
        return this.effect_time_hint;
    }

    public String getGame_id() {
        return this.game_id;
    }

    public String getUsable_games() {
        return this.usable_games;
    }

    public String getUsable_gamesShow() {
        return this.usable_gamesShow;
    }

    public String getUse_condition() {
        return this.use_condition;
    }

    public String getUse_condition_no_price() {
        return this.use_condition_no_price;
    }

    public boolean isReceivable() {
        return this.receivable;
    }

    public boolean isShowDetial() {
        return this.showDetial;
    }

    public void setAmount(String amount) {
        this.amount = amount;
    }

    public void setCoupon_id(String coupon_id) {
        this.coupon_id = coupon_id;
    }

    public void setCoupon_name(String coupon_name) {
        this.coupon_name = coupon_name;
    }

    public void setCoupon_type(String coupon_type) {
        this.coupon_type = coupon_type;
    }

    public void setDiscount(String discount) {
        this.discount = discount;
    }

    public void setEffect_end_time(String effect_end_time) {
        this.effect_end_time = effect_end_time;
    }

    public void setEffect_start_time(String effect_start_time) {
        this.effect_start_time = effect_start_time;
    }

    public void setEffect_time_hint(String effect_time_hint) {
        this.effect_time_hint = effect_time_hint;
    }

    public void setGame_id(String game_id) {
        this.game_id = game_id;
    }

    public void setReceivable(boolean receivable) {
        this.receivable = receivable;
    }

    public void setShowDetial(boolean showDetial) {
        this.showDetial = showDetial;
    }

    public void setUsable_games(String usable_games) {
        this.usable_games = usable_games;
    }

    public void setUsable_gamesShow(String usable_gamesShow) {
        this.usable_gamesShow = usable_gamesShow;
    }

    public void setUse_condition(String use_condition) {
        this.use_condition = use_condition;
    }

    public void setUse_condition_no_price(String use_condition_no_price) {
        this.use_condition_no_price = use_condition_no_price;
    }
}

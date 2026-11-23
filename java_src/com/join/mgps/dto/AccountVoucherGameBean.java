package com.join.mgps.dto;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class AccountVoucherGameBean extends CollectionBeanSub {
    private int coupon_id;
    private double coupon_money;
    private int coupon_surplus;
    private String coupon_title;
    private int coupon_type;
    private String game_crc;
    private String game_icon;
    private List<TipBean> game_tags;
    private String game_tpl;

    public int getCoupon_id() {
        return this.coupon_id;
    }

    public double getCoupon_money() {
        return this.coupon_money;
    }

    public int getCoupon_surplus() {
        return this.coupon_surplus;
    }

    public String getCoupon_title() {
        return this.coupon_title;
    }

    public int getCoupon_type() {
        return this.coupon_type;
    }

    public String getGame_crc() {
        return this.game_crc;
    }

    public String getGame_icon() {
        return this.game_icon;
    }

    public List<TipBean> getGame_tags() {
        return this.game_tags;
    }

    public String getGame_tpl() {
        return this.game_tpl;
    }

    public void setCoupon_id(int coupon_id) {
        this.coupon_id = coupon_id;
    }

    public void setCoupon_money(double coupon_money) {
        this.coupon_money = coupon_money;
    }

    public void setCoupon_surplus(int coupon_surplus) {
        this.coupon_surplus = coupon_surplus;
    }

    public void setCoupon_title(String coupon_title) {
        this.coupon_title = coupon_title;
    }

    public void setCoupon_type(int coupon_type) {
        this.coupon_type = coupon_type;
    }

    public void setGame_crc(String game_crc) {
        this.game_crc = game_crc;
    }

    public void setGame_icon(String game_icon) {
        this.game_icon = game_icon;
    }

    public void setGame_tags(List<TipBean> game_tags) {
        this.game_tags = game_tags;
    }

    public void setGame_tpl(String game_tpl) {
        this.game_tpl = game_tpl;
    }

    @Override // com.join.mgps.dto.CollectionBeanSub
    public String toString() {
        return "AccountVoucherGameBean{coupon_title='" + this.coupon_title + "', coupon_id=" + this.coupon_id + ", game_tags=" + this.game_tags + ", game_icon='" + this.game_icon + "', game_tpl='" + this.game_tpl + "', game_crc='" + this.game_crc + "', coupon_type=" + this.coupon_type + ", coupon_money=" + this.coupon_money + ", coupon_surplus=" + this.coupon_surplus + '}';
    }
}

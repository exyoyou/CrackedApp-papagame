package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class RecomCentrebean {
    private RecomDatabean cash_coupon;
    private RecomDatabean copper;
    private RecomDatabean currency_red_packets;
    private RecomDatabean game_packs;
    private RecomDatabean members_center_first;
    private RecomDatabean members_center_second;
    private RecomDatabean personal_information;
    private RecomDatabean vip;

    public RecomCentrebean() {
    }

    public RecomDatabean getCash_coupon() {
        return this.cash_coupon;
    }

    public RecomDatabean getCopper() {
        return this.copper;
    }

    public RecomDatabean getCurrency_red_packets() {
        return this.currency_red_packets;
    }

    public RecomDatabean getGame_packs() {
        return this.game_packs;
    }

    public RecomDatabean getMembers_center_first() {
        return this.members_center_first;
    }

    public RecomDatabean getMembers_center_second() {
        return this.members_center_second;
    }

    public RecomDatabean getPersonal_information() {
        return this.personal_information;
    }

    public RecomDatabean getVip() {
        return this.vip;
    }

    public void setCash_coupon(RecomDatabean cash_coupon) {
        this.cash_coupon = cash_coupon;
    }

    public void setCopper(RecomDatabean copper) {
        this.copper = copper;
    }

    public void setCurrency_red_packets(RecomDatabean currency_red_packets) {
        this.currency_red_packets = currency_red_packets;
    }

    public void setGame_packs(RecomDatabean game_packs) {
        this.game_packs = game_packs;
    }

    public void setMembers_center_first(RecomDatabean members_center_first) {
        this.members_center_first = members_center_first;
    }

    public void setMembers_center_second(RecomDatabean members_center_second) {
        this.members_center_second = members_center_second;
    }

    public void setPersonal_information(RecomDatabean personal_information) {
        this.personal_information = personal_information;
    }

    public void setVip(RecomDatabean vip) {
        this.vip = vip;
    }

    public RecomCentrebean(RecomDatabean cash_coupon, RecomDatabean vip, RecomDatabean personal_information, RecomDatabean members_center_second, RecomDatabean members_center_first, RecomDatabean game_packs, RecomDatabean currency_red_packets, RecomDatabean copper) {
        this.cash_coupon = cash_coupon;
        this.vip = vip;
        this.personal_information = personal_information;
        this.members_center_second = members_center_second;
        this.members_center_first = members_center_first;
        this.game_packs = game_packs;
        this.currency_red_packets = currency_red_packets;
        this.copper = copper;
    }
}

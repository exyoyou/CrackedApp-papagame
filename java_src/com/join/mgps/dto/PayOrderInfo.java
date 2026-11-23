package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class PayOrderInfo {
    private String game_app_key;
    private String game_name;
    private String pay_game_amount;
    private int pay_show_type = 0;
    private int pay_type = 0;

    public String getGame_app_key() {
        return this.game_app_key;
    }

    public String getGame_name() {
        return this.game_name;
    }

    public String getPay_game_amount() {
        return this.pay_game_amount;
    }

    public int getPay_show_type() {
        return this.pay_show_type;
    }

    public int getPay_type() {
        return this.pay_type;
    }

    public void setGame_app_key(String game_app_key) {
        this.game_app_key = game_app_key;
    }

    public void setGame_name(String game_name) {
        this.game_name = game_name;
    }

    public void setPay_game_amount(String pay_game_amount) {
        this.pay_game_amount = pay_game_amount;
    }

    public void setPay_show_type(int pay_show_type) {
        this.pay_show_type = pay_show_type;
    }

    public void setPay_type(int pay_type) {
        this.pay_type = pay_type;
    }
}

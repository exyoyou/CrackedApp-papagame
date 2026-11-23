package com.join.mgps.dto;

import com.join.mgps.Util.t2;
import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class PayTagInfo implements Serializable {
    private int amount_check;
    private String game_app_key;
    private int pay_game_amount;

    public int getAmount_check() {
        return this.amount_check;
    }

    public String getGame_app_key() {
        return this.game_app_key;
    }

    public String getPayGameAmount() {
        return t2.n(this.pay_game_amount);
    }

    public int getPay_game_amount() {
        return this.pay_game_amount;
    }

    public void setAmount_check(int amount_check) {
        this.amount_check = amount_check;
    }

    public void setGame_app_key(String game_app_key) {
        this.game_app_key = game_app_key;
    }

    public void setPay_game_amount(int pay_game_amount) {
        this.pay_game_amount = pay_game_amount;
    }
}

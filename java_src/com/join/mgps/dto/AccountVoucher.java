package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class AccountVoucher implements Serializable {
    private String game_icon;
    private long game_id;
    private String game_name;
    private String game_tpl;
    private int sp_tpl_two_position;
    private AccountVoucherStatus status;

    public AccountVoucher(String game_icon, long game_id, String game_name, AccountVoucherStatus status) {
        this.game_icon = game_icon;
        this.game_id = game_id;
        this.game_name = game_name;
        this.status = status;
    }

    public String getGame_icon() {
        return this.game_icon;
    }

    public long getGame_id() {
        return this.game_id;
    }

    public String getGame_name() {
        return this.game_name;
    }

    public String getGame_tpl() {
        return this.game_tpl;
    }

    public int getSp_tpl_two_position() {
        return this.sp_tpl_two_position;
    }

    public AccountVoucherStatus getStatus() {
        return this.status;
    }

    public void setGame_icon(String game_icon) {
        this.game_icon = game_icon;
    }

    public void setGame_id(long game_id) {
        this.game_id = game_id;
    }

    public void setGame_name(String game_name) {
        this.game_name = game_name;
    }

    public void setGame_tpl(String game_tpl) {
        this.game_tpl = game_tpl;
    }

    public void setSp_tpl_two_position(int sp_tpl_two_position) {
        this.sp_tpl_two_position = sp_tpl_two_position;
    }

    public void setStatus(AccountVoucherStatus status) {
        this.status = status;
    }

    public String toString() {
        return "AccountVoucher{game_icon='" + this.game_icon + "', game_id=" + this.game_id + ", game_name='" + this.game_name + "', status=" + this.status + '}';
    }

    public AccountVoucher() {
    }
}

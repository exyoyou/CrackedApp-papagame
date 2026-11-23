package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class GameVoucherBean implements Serializable {
    private String game_coupon_end_time;
    private String game_coupon_id;
    private boolean game_coupon_is_receive;
    private double game_coupon_money;
    private String game_coupon_receive_source;
    private String game_coupon_start_time;
    private int game_coupon_status;
    private int game_coupon_surplus_number;
    private String game_coupon_title;
    private String game_coupon_unclaimed_source;

    public GameVoucherBean() {
    }

    public String getGame_coupon_end_time() {
        return this.game_coupon_end_time;
    }

    public String getGame_coupon_id() {
        return this.game_coupon_id;
    }

    public double getGame_coupon_money() {
        return this.game_coupon_money;
    }

    public String getGame_coupon_receive_source() {
        return this.game_coupon_receive_source;
    }

    public String getGame_coupon_start_time() {
        return this.game_coupon_start_time;
    }

    public int getGame_coupon_status() {
        return this.game_coupon_status;
    }

    public int getGame_coupon_surplus_number() {
        return this.game_coupon_surplus_number;
    }

    public String getGame_coupon_title() {
        return this.game_coupon_title;
    }

    public String getGame_coupon_unclaimed_source() {
        return this.game_coupon_unclaimed_source;
    }

    public boolean isGame_coupon_is_receive() {
        return this.game_coupon_is_receive;
    }

    public void setGame_coupon_end_time(String game_coupon_end_time) {
        this.game_coupon_end_time = game_coupon_end_time;
    }

    public void setGame_coupon_id(String game_coupon_id) {
        this.game_coupon_id = game_coupon_id;
    }

    public void setGame_coupon_is_receive(boolean game_coupon_is_receive) {
        this.game_coupon_is_receive = game_coupon_is_receive;
    }

    public void setGame_coupon_money(double game_coupon_money) {
        this.game_coupon_money = game_coupon_money;
    }

    public void setGame_coupon_receive_source(String game_coupon_receive_source) {
        this.game_coupon_receive_source = game_coupon_receive_source;
    }

    public void setGame_coupon_start_time(String game_coupon_start_time) {
        this.game_coupon_start_time = game_coupon_start_time;
    }

    public void setGame_coupon_status(int game_coupon_status) {
        this.game_coupon_status = game_coupon_status;
    }

    public void setGame_coupon_surplus_number(int game_coupon_surplus_number) {
        this.game_coupon_surplus_number = game_coupon_surplus_number;
    }

    public void setGame_coupon_title(String game_coupon_title) {
        this.game_coupon_title = game_coupon_title;
    }

    public void setGame_coupon_unclaimed_source(String game_coupon_unclaimed_source) {
        this.game_coupon_unclaimed_source = game_coupon_unclaimed_source;
    }

    public String toString() {
        return "GameVoucherBean{game_coupon_id='" + this.game_coupon_id + "', game_coupon_title='" + this.game_coupon_title + "', game_coupon_start_time='" + this.game_coupon_start_time + "', game_coupon_end_time='" + this.game_coupon_end_time + "', game_coupon_unclaimed_source='" + this.game_coupon_unclaimed_source + "', game_coupon_receive_source='" + this.game_coupon_receive_source + "', game_coupon_is_receive=" + this.game_coupon_is_receive + ", game_coupon_money=" + this.game_coupon_money + ", game_coupon_surplus_number=" + this.game_coupon_surplus_number + ", game_coupon_status=" + this.game_coupon_status + '}';
    }

    public GameVoucherBean(String game_coupon_id, String game_coupon_title, String game_coupon_start_time, String game_coupon_end_time, String game_coupon_unclaimed_source, String game_coupon_receive_source, boolean game_coupon_is_receive, double game_coupon_money, int game_coupon_surplus_number, int game_coupon_status) {
        this.game_coupon_id = game_coupon_id;
        this.game_coupon_title = game_coupon_title;
        this.game_coupon_start_time = game_coupon_start_time;
        this.game_coupon_end_time = game_coupon_end_time;
        this.game_coupon_unclaimed_source = game_coupon_unclaimed_source;
        this.game_coupon_receive_source = game_coupon_receive_source;
        this.game_coupon_is_receive = game_coupon_is_receive;
        this.game_coupon_money = game_coupon_money;
        this.game_coupon_surplus_number = game_coupon_surplus_number;
        this.game_coupon_status = game_coupon_status;
    }
}

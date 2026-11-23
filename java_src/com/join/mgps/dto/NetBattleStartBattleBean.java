package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class NetBattleStartBattleBean {
    private String client_ip;
    private String error_msg;
    private String remaining_seconds;
    private NetBattleGetMatchAvailableServerBean server;
    private String winning_reward_money;

    public NetBattleStartBattleBean() {
        this.remaining_seconds = "";
        this.error_msg = "";
        this.client_ip = "";
        this.winning_reward_money = "";
    }

    public String getClient_ip() {
        return this.client_ip;
    }

    public String getError_msg() {
        return this.error_msg;
    }

    public String getRemaining_seconds() {
        return this.remaining_seconds;
    }

    public NetBattleGetMatchAvailableServerBean getServer() {
        return this.server;
    }

    public String getWinning_reward_money() {
        return this.winning_reward_money;
    }

    public void setClient_ip(String client_ip) {
        this.client_ip = client_ip;
    }

    public void setError_msg(String error_msg) {
        this.error_msg = error_msg;
    }

    public void setRemaining_seconds(String remaining_seconds) {
        this.remaining_seconds = remaining_seconds;
    }

    public void setServer(NetBattleGetMatchAvailableServerBean server) {
        this.server = server;
    }

    public void setWinning_reward_money(String winning_reward_money) {
        this.winning_reward_money = winning_reward_money;
    }

    public NetBattleStartBattleBean(String remaining_seconds, String error_msg, NetBattleGetMatchAvailableServerBean server) {
        this.client_ip = "";
        this.winning_reward_money = "";
        this.remaining_seconds = remaining_seconds;
        this.error_msg = error_msg;
        this.server = server;
    }

    public NetBattleStartBattleBean(String remaining_seconds, String error_msg) {
        this.client_ip = "";
        this.winning_reward_money = "";
        this.remaining_seconds = remaining_seconds;
        this.error_msg = error_msg;
    }
}

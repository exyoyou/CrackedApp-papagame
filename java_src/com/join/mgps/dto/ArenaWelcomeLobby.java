package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class ArenaWelcomeLobby implements Serializable {
    private String close_show_url;
    private ArenaConfig config;
    private String error;
    private ArenaFilterConfig filter_config;
    private NetGetDataBattleUdpPortBean server;
    private ArenaUser user;

    public String getClose_show_url() {
        return this.close_show_url;
    }

    public ArenaConfig getConfig() {
        return this.config;
    }

    public String getError() {
        return this.error;
    }

    public ArenaFilterConfig getFilter_config() {
        return this.filter_config;
    }

    public NetGetDataBattleUdpPortBean getServer() {
        return this.server;
    }

    public ArenaUser getUser() {
        return this.user;
    }

    public void setClose_show_url(String close_show_url) {
        this.close_show_url = close_show_url;
    }

    public void setConfig(ArenaConfig config) {
        this.config = config;
    }

    public void setError(String error) {
        this.error = error;
    }

    public void setFilter_config(ArenaFilterConfig filter_config) {
        this.filter_config = filter_config;
    }

    public void setServer(NetGetDataBattleUdpPortBean server) {
        this.server = server;
    }

    public void setUser(ArenaUser user) {
        this.user = user;
    }

    public String toString() {
        return "ArenaWelcomeLobby{error='" + this.error + "', server=" + this.server + ", filter_config=" + this.filter_config + '}';
    }
}

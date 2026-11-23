package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class NetBattleInviteBean {
    private String client_ip;
    private String error;
    private NetBattleGetMatchAvailableServerBean server;
    private String status;
    private GameWorldFightRecoderUserInfoBean user_info;

    public NetBattleInviteBean(String status, String error, String client_ip, NetBattleGetMatchAvailableServerBean server, GameWorldFightRecoderUserInfoBean user_info) {
        this.status = status;
        this.error = error;
        this.client_ip = client_ip;
        this.server = server;
        this.user_info = user_info;
    }

    public String getClient_ip() {
        return this.client_ip;
    }

    public String getError() {
        return this.error;
    }

    public NetBattleGetMatchAvailableServerBean getServer() {
        return this.server;
    }

    public String getStatus() {
        return this.status;
    }

    public GameWorldFightRecoderUserInfoBean getUser_info() {
        return this.user_info;
    }

    public void setClient_ip(String client_ip) {
        this.client_ip = client_ip;
    }

    public void setError(String error) {
        this.error = error;
    }

    public void setServer(NetBattleGetMatchAvailableServerBean server) {
        this.server = server;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public void setUser_info(GameWorldFightRecoderUserInfoBean user_info) {
        this.user_info = user_info;
    }

    public String toString() {
        return "NetBattleInviteBean{status='" + this.status + "', error='" + this.error + "', server=" + this.server + ", user_info=" + this.user_info + '}';
    }

    public NetBattleInviteBean() {
        this.client_ip = "";
    }
}

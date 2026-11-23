package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class NetBattleOnlineCount {
    private String invite;
    private String match;

    public NetBattleOnlineCount(String invite, String match) {
        this.invite = invite;
        this.match = match;
    }

    public String getInvite() {
        return this.invite;
    }

    public String getMatch() {
        return this.match;
    }

    public void setInvite(String invite) {
        this.invite = invite;
    }

    public void setMatch(String match) {
        this.match = match;
    }

    public NetBattleOnlineCount() {
    }
}

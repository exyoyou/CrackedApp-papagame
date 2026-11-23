package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class NetGetBattleUdpPortBean implements Serializable {
    private String error;
    private NetGetDataBattleUdpPortBean invite;
    private NetGetDataBattleUdpPortBean match;
    private NetGetDataBattleUdpPortBean psp;
    private NetGetDataBattleUdpPortBean test;

    public String getError() {
        return this.error;
    }

    public NetGetDataBattleUdpPortBean getInvite() {
        return this.invite;
    }

    public NetGetDataBattleUdpPortBean getMatch() {
        return this.match;
    }

    public NetGetDataBattleUdpPortBean getPsp() {
        return this.psp;
    }

    public NetGetDataBattleUdpPortBean getTest() {
        return this.test;
    }

    public void setError(String error) {
        this.error = error;
    }

    public void setInvite(NetGetDataBattleUdpPortBean invite) {
        this.invite = invite;
    }

    public void setMatch(NetGetDataBattleUdpPortBean match) {
        this.match = match;
    }

    public void setPsp(NetGetDataBattleUdpPortBean psp) {
        this.psp = psp;
    }

    public void setTest(NetGetDataBattleUdpPortBean test) {
        this.test = test;
    }

    public String toString() {
        return "NetGetBattleUdpPortBean{error='" + this.error + "', test=" + this.test + ", match=" + this.match + ", invite=" + this.invite + '}';
    }
}

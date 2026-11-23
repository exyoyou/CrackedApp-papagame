package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class ArenaServerGroup implements Serializable {
    private int key;
    private NetBattleUdpPortBean ping;
    private boolean selected;
    private NetGetDataBattleUdpPortBean server;
    private String title;

    public int getKey() {
        return this.key;
    }

    public NetBattleUdpPortBean getPing() {
        return this.ping;
    }

    public boolean getSelected() {
        return this.selected;
    }

    public NetGetDataBattleUdpPortBean getServer() {
        return this.server;
    }

    public String getTitle() {
        return this.title;
    }

    public boolean isSelected() {
        return this.selected;
    }

    public void setKey(int key) {
        this.key = key;
    }

    public void setPing(NetBattleUdpPortBean ping) {
        this.ping = ping;
    }

    public void setSelected(boolean selected) {
        this.selected = selected;
    }

    public void setServer(NetGetDataBattleUdpPortBean server) {
        this.server = server;
    }

    public void setTitle(String title) {
        this.title = title;
    }
}

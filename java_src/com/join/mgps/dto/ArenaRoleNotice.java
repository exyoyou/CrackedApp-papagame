package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class ArenaRoleNotice {
    private ArenaNotice client;
    private ArenaNotice master;
    private ArenaNotice spectator;

    public ArenaNotice getClient() {
        return this.client;
    }

    public ArenaNotice getMaster() {
        return this.master;
    }

    public ArenaNotice getSpectator() {
        return this.spectator;
    }

    public void setClient(ArenaNotice client) {
        this.client = client;
    }

    public void setMaster(ArenaNotice master) {
        this.master = master;
    }

    public void setSpectator(ArenaNotice spectator) {
        this.spectator = spectator;
    }

    public String toString() {
        return "ArenaRoleNotice{client=" + this.client + ", master=" + this.master + ", spectator=" + this.spectator + '}';
    }
}

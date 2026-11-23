package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class ArenaConfig {
    private int ping_count;
    private ArenaRoleNotice role_notice;

    public int getPing_count() {
        return this.ping_count;
    }

    public ArenaRoleNotice getRole_notice() {
        return this.role_notice;
    }

    public void setPing_count(int ping_count) {
        this.ping_count = ping_count;
    }

    public void setRole_notice(ArenaRoleNotice role_notice) {
        this.role_notice = role_notice;
    }

    public String toString() {
        return "ArenaConfig{ping_count=" + this.ping_count + ", role_notice=" + this.role_notice + '}';
    }
}

package com.tencent.stat.a;

/* JADX INFO: loaded from: classes2.dex */
public enum f {
    PAGE_VIEW(1),
    SESSION_ENV(2),
    ERROR(3),
    CUSTOM(1000),
    ADDITION(1001),
    MONITOR_STAT(1002),
    MTA_GAME_USER(1003),
    NETWORK_MONITOR(1004);


    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f83852i;

    f(int i10) {
        this.f83852i = i10;
    }

    public int a() {
        return this.f83852i;
    }
}

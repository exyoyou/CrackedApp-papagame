package com.alipay.sdk.util;

/* JADX INFO: loaded from: classes7.dex */
public enum d {
    WIFI(0, t7.a.f97141e),
    NETWORK_TYPE_1(1, "unicom2G"),
    NETWORK_TYPE_2(2, "mobile2G"),
    NETWORK_TYPE_4(4, "telecom2G"),
    NETWORK_TYPE_5(5, "telecom3G"),
    NETWORK_TYPE_6(6, "telecom3G"),
    NETWORK_TYPE_12(12, "telecom3G"),
    NETWORK_TYPE_8(8, "unicom3G"),
    NETWORK_TYPE_3(3, "unicom3G"),
    NETWORK_TYPE_13(13, "LTE"),
    NETWORK_TYPE_11(11, "IDEN"),
    NETWORK_TYPE_9(9, "HSUPA"),
    NETWORK_TYPE_10(10, "HSPA"),
    NETWORK_TYPE_15(15, "HSPAP"),
    NONE(-1, "none");


    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f7230p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private String f7231q;

    d(int i10, String str) {
        this.f7230p = i10;
        this.f7231q = str;
    }

    private int b() {
        return this.f7230p;
    }

    public final String a() {
        return this.f7231q;
    }

    public static d a(int i10) {
        for (d dVar : values()) {
            if (dVar.f7230p == i10) {
                return dVar;
            }
        }
        return NONE;
    }
}

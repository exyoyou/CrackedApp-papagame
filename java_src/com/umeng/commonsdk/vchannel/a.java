package com.umeng.commonsdk.vchannel;

import com.kuaishou.weapon.p0.t;

/* JADX INFO: loaded from: classes9.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f85595a = "https://pslog.umeng.com";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static String f85596b = "https://pslog.umeng.com/";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static String f85597c = "explog";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f85598d = "analytics";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f85599e = "ekv";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f85600f = "id";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f85601g = "ts";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f85602h = "ds";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f85603i = "pn";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static String f85604j = "";

    static {
        String str = "SUB" + System.currentTimeMillis();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(String.format("%0" + (32 - str.length()) + t.f74895t, 0));
        f85604j = sb2.toString();
    }
}

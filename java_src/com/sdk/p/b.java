package com.sdk.p;

import android.content.Context;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f78570a;

    public static boolean a(Context context) {
        if (f78570a) {
            return true;
        }
        Long lA = com.sdk.j.a.a(context, "access_limit_time");
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (lA == null) {
            com.sdk.j.a.a(context, "access_limit_time", Long.valueOf(jCurrentTimeMillis));
            return true;
        }
        if (jCurrentTimeMillis - lA.longValue() > 600000) {
            com.sdk.j.a.a(context, "access_limit_time", Long.valueOf(jCurrentTimeMillis));
            com.sdk.j.a.a(context, "access_limit_count", (Long) 0L);
            return true;
        }
        Long lA2 = com.sdk.j.a.a(context, "access_limit_count");
        if (lA2 != null) {
            return lA2.longValue() <= 50;
        }
        com.sdk.j.a.a(context, "access_limit_count", (Long) 0L);
        return true;
    }

    public static void b(Context context) {
        Long lA = com.sdk.j.a.a(context, "access_limit_count");
        com.sdk.j.a.a(context, "access_limit_count", Long.valueOf(lA == null ? 0L : lA.longValue() + 1));
    }
}

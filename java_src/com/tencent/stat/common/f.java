package com.tencent.stat.common;

import android.content.Context;

/* JADX INFO: loaded from: classes2.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static long f83897a = -1;

    static long a(Context context, String str) {
        return p.a(context, str, f83897a);
    }

    public static synchronized void b(Context context) {
        if (a(context, "1.6.2_end__protection") == f83897a) {
            a(context, "1.6.2_end__protection", System.currentTimeMillis());
        }
    }

    static void a(Context context, String str, long j10) {
        p.b(context, str, j10);
    }

    public static synchronized boolean a(Context context) {
        long jA = a(context, "1.6.2_begin_protection");
        long jA2 = a(context, "1.6.2_end__protection");
        if (jA > 0 && jA2 == f83897a) {
            return false;
        }
        if (jA == f83897a) {
            a(context, "1.6.2_begin_protection", System.currentTimeMillis());
        }
        return true;
    }
}

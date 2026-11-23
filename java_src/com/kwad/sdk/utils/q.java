package com.kwad.sdk.utils;

import com.join.mgps.Util.o0;

/* JADX INFO: loaded from: classes2.dex */
public final class q {
    public static long boL;
    public static long sLaunchTime;

    public static long UD() {
        return boL - sLaunchTime;
    }

    public static String a(StackTraceElement stackTraceElement) {
        return stackTraceElement.getClassName() + o0.f49827a + stackTraceElement.getMethodName();
    }

    public static void setInitStartTime(long j10) {
        boL = j10;
    }

    public static void setLaunchTime(long j10) {
        sLaunchTime = j10;
    }
}

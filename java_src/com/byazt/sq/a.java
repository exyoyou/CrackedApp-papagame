package com.byazt.sq;

import com.bytedance.sdk.openadsdk.TTAdLoadType;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 900, 34})
public class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Boolean f19851c;

    private static boolean c() {
        if (f19851c == null) {
            try {
                Class.forName("com.bytedance.sdk.openadsdk.TTAdLoadType");
                f19851c = Boolean.TRUE;
            } catch (Throwable unused) {
                f19851c = Boolean.FALSE;
            }
        }
        return f19851c.booleanValue();
    }

    public static int c(Object obj) {
        if (obj == null) {
            return -1;
        }
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        if (c()) {
            try {
                if (TTAdLoadType.LOAD == obj) {
                    return 3;
                }
                if (TTAdLoadType.PRELOAD == obj) {
                    return 1;
                }
                TTAdLoadType tTAdLoadType = TTAdLoadType.UNKNOWN;
            } catch (Throwable unused) {
            }
        }
        return -1;
    }
}

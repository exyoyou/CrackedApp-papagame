package com.byazt.sq;

import com.byazt.nr.m;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 900, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Boolean f19852c;

    private static boolean c() {
        if (f19852c == null) {
            try {
                Class.forName("com.bytedance.sdk.openadsdk.mediation.MediationConstant$AdIsReadyStatus");
                f19852c = Boolean.TRUE;
            } catch (Throwable unused) {
                f19852c = Boolean.FALSE;
            }
        }
        return f19852c.booleanValue();
    }

    public static Integer c(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof Integer) {
            return (Integer) obj;
        }
        try {
            if (c()) {
                if (obj == MediationConstant.AdIsReadyStatus.ADN_NO_READY_API) {
                    return 1;
                }
                if (obj == MediationConstant.AdIsReadyStatus.AD_IS_READY) {
                    return 2;
                }
                if (obj == MediationConstant.AdIsReadyStatus.AD_IS_EXPIRED) {
                    return 3;
                }
                if (obj == MediationConstant.AdIsReadyStatus.AD_IS_NOT_READY) {
                    return 4;
                }
            }
        } catch (Throwable th) {
            m.c(th);
        }
        return null;
    }
}

package com.byazt.sq;

import com.bytedance.sdk.openadsdk.mediation.MediationConstant;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 900, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Boolean f19854c;

    private static boolean c() {
        if (f19854c == null) {
            try {
                Class.forName("com.bytedance.sdk.openadsdk.mediation.MediationConstant$BiddingLossReason");
                f19854c = Boolean.TRUE;
            } catch (Throwable unused) {
                f19854c = Boolean.FALSE;
            }
        }
        return f19854c.booleanValue();
    }

    public static Object c(int i10) {
        if (!c()) {
            return Integer.valueOf(i10);
        }
        try {
            if (i10 == 1) {
                return MediationConstant.BiddingLossReason.LOW_PRICE;
            }
            if (i10 == 2) {
                return MediationConstant.BiddingLossReason.TIME_OUT;
            }
            if (i10 == 3) {
                return MediationConstant.BiddingLossReason.NO_AD;
            }
            if (i10 == 4) {
                return MediationConstant.BiddingLossReason.AD_DATA_ERROR;
            }
            if (i10 != 10001) {
                return null;
            }
            return MediationConstant.BiddingLossReason.OTHER;
        } catch (Throwable unused) {
            return null;
        }
    }
}

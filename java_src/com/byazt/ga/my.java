package com.byazt.ga;

import com.haima.hmcp.Constants;

/* JADX INFO: loaded from: classes6.dex */
public enum my {
    AUTOMATIC,
    HARDWARE,
    SOFTWARE;

    /* JADX INFO: renamed from: com.byazt.ga.my$1, reason: invalid class name */
    @com.byazt.zqa.c(c = {0, 1, 256, Constants.UPDATE_INSTANCE_TIME})
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ int[] f14399c;

        static {
            int[] iArr = new int[my.values().length];
            f14399c = iArr;
            try {
                iArr[my.HARDWARE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14399c[my.SOFTWARE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f14399c[my.AUTOMATIC.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public boolean c(int i10, boolean z10, int i11) {
        int i12 = AnonymousClass1.f14399c[ordinal()];
        if (i12 == 1) {
            return false;
        }
        if (i12 != 2) {
            return (z10 && i10 < 28) || i11 > 4 || i10 <= 25;
        }
        return true;
    }
}

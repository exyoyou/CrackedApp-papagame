package com.join.mgps.Util;

import android.os.Handler;
import android.os.Looper;

/* JADX INFO: loaded from: classes4.dex */
public class k1 extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile k1 f49793a;

    private k1() {
        super(Looper.getMainLooper());
    }

    public static k1 a() {
        if (f49793a == null) {
            synchronized (k1.class) {
                if (f49793a == null) {
                    f49793a = new k1();
                }
            }
        }
        return f49793a;
    }
}

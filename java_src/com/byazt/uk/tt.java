package com.byazt.uk;

import android.os.Build;
import com.byakv.f.FlippedV2Impl;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 87, 13})
public class tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final AtomicBoolean f20611c = new AtomicBoolean(false);

    public static void c() {
        AtomicBoolean atomicBoolean = f20611c;
        if (atomicBoolean.get()) {
            return;
        }
        synchronized (tt.class) {
            if (atomicBoolean.compareAndSet(false, true)) {
                tt().invokeHiddenApiRestrictions();
            }
        }
    }

    private static com.byazt.fus.ve tt() {
        if (ve()) {
            return new FlippedV2Impl();
        }
        return uj() ? new com.byazt.fus.tt() : new com.byazt.fus.c();
    }

    private static boolean uj() {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 28) {
            return i10 == 27 && Build.VERSION.PREVIEW_SDK_INT > 0;
        }
        return true;
    }

    private static boolean ve() {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 30) {
            return i10 == 29 && Build.VERSION.PREVIEW_SDK_INT > 0;
        }
        return true;
    }
}

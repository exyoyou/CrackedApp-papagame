package com.facebook.common.time;

import android.os.SystemClock;
import com.facebook.common.internal.DoNotStrip;
import com.facebook.infer.annotation.Nullsafe;
import l3.c;
import l3.d;

/* JADX INFO: loaded from: classes9.dex */
@DoNotStrip
@Nullsafe(Nullsafe.Mode.LOCAL)
public class AwakeTimeSinceBootClock implements c, d {

    @DoNotStrip
    private static final AwakeTimeSinceBootClock INSTANCE = new AwakeTimeSinceBootClock();

    private AwakeTimeSinceBootClock() {
    }

    @DoNotStrip
    public static AwakeTimeSinceBootClock get() {
        return INSTANCE;
    }

    @Override // l3.c
    @DoNotStrip
    public long now() {
        return SystemClock.uptimeMillis();
    }

    @Override // l3.d
    @DoNotStrip
    public long nowNanos() {
        return System.nanoTime();
    }
}

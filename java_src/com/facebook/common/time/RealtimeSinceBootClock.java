package com.facebook.common.time;

import android.os.SystemClock;
import com.facebook.common.internal.DoNotStrip;
import com.facebook.infer.annotation.Nullsafe;
import l3.c;

/* JADX INFO: loaded from: classes9.dex */
@DoNotStrip
@Nullsafe(Nullsafe.Mode.LOCAL)
public class RealtimeSinceBootClock implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final RealtimeSinceBootClock f26936a = new RealtimeSinceBootClock();

    private RealtimeSinceBootClock() {
    }

    @DoNotStrip
    public static RealtimeSinceBootClock get() {
        return f26936a;
    }

    @Override // l3.c
    public long now() {
        return SystemClock.elapsedRealtime();
    }
}

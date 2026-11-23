package com.join.mgps.Util;

import android.content.Context;
import android.os.Build;
import android.os.VibrationEffect;
import android.os.Vibrator;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
public final class l3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    public static final l3 f49800a = new l3();

    private l3() {
    }

    public static /* synthetic */ void b(l3 l3Var, Context context, long j10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            j10 = 50;
        }
        l3Var.a(context, j10);
    }

    public final void a(@NotNull Context context, long j10) {
        Vibrator defaultVibrator;
        Intrinsics.checkNotNullParameter(context, "context");
        if (Build.VERSION.SDK_INT >= 31) {
            Object systemService = context.getSystemService("vibrator_manager");
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.os.VibratorManager");
            defaultVibrator = j3.a(systemService).getDefaultVibrator();
        } else {
            Object systemService2 = context.getSystemService("vibrator");
            Intrinsics.checkNotNull(systemService2, "null cannot be cast to non-null type android.os.Vibrator");
            defaultVibrator = (Vibrator) systemService2;
        }
        Intrinsics.checkNotNull(defaultVibrator);
        if (defaultVibrator.hasVibrator()) {
            defaultVibrator.vibrate(VibrationEffect.createOneShot(j10, -1));
        }
    }
}

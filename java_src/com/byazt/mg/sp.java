package com.byazt.mg;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import androidx.constraintlayout.core.motion.utils.TypedValues;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 170, 91})
public class sp {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final c f16907c = new tt();

    @com.byazt.zqa.c(c = {0, 1, 170, 180})
    private static class c {
        private c() {
        }

        public long c(ActivityManager.MemoryInfo memoryInfo) {
            return 0L;
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 170, TypedValues.Custom.TYPE_BOOLEAN})
    @TargetApi(16)
    private static class tt extends c {
        private tt() {
            super();
        }

        @Override // com.byazt.mg.sp.c
        public long c(ActivityManager.MemoryInfo memoryInfo) {
            return memoryInfo.totalMem;
        }
    }

    public static long c(ActivityManager.MemoryInfo memoryInfo) {
        return f16907c.c(memoryInfo);
    }
}

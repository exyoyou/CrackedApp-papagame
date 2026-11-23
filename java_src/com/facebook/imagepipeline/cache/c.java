package com.facebook.imagepipeline.cache;

import com.facebook.common.memory.MemoryTrimType;
import com.facebook.infer.annotation.Nullsafe;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class c implements t.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f27662a = "BitmapMemoryCacheTrimStrategy";

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f27663a;

        static {
            int[] iArr = new int[MemoryTrimType.values().length];
            f27663a = iArr;
            try {
                iArr[MemoryTrimType.OnCloseToDalvikHeapLimit.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f27663a[MemoryTrimType.OnAppBackgrounded.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f27663a[MemoryTrimType.OnSystemMemoryCriticallyLowWhileAppInForeground.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f27663a[MemoryTrimType.OnSystemLowMemoryWhileAppInForeground.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f27663a[MemoryTrimType.OnSystemLowMemoryWhileAppInBackground.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    @Override // com.facebook.imagepipeline.cache.t.a
    public double a(MemoryTrimType trimType) {
        int i10 = a.f27663a[trimType.ordinal()];
        if (i10 == 1) {
            return MemoryTrimType.OnCloseToDalvikHeapLimit.getSuggestedTrimRatio();
        }
        if (i10 == 2 || i10 == 3 || i10 == 4 || i10 == 5) {
            return 1.0d;
        }
        i3.a.y0(f27662a, "unknown trim type: %s", trimType);
        return 0.0d;
    }
}

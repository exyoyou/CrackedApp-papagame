package com.google.android.material.internal;

import androidx.annotation.FloatRange;

/* JADX INFO: loaded from: classes5.dex */
final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final float f30933a = 0.5f;

    private j() {
    }

    static void a(@FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f10, float[] fArr) {
        if (f10 <= 0.5f) {
            fArr[0] = 1.0f - (f10 * 2.0f);
            fArr[1] = 0.0f;
        } else {
            fArr[0] = 0.0f;
            fArr[1] = (f10 * 2.0f) - 1.0f;
        }
    }
}

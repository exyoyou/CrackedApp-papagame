package com.google.android.material.color;

import android.os.Build;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class i {
    @Nullable
    public static j a() {
        int i10 = Build.VERSION.SDK_INT;
        if (30 <= i10 && i10 <= 33) {
            return t.c();
        }
        if (i10 >= 34) {
            return t.c();
        }
        return null;
    }
}

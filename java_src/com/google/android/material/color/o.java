package com.google.android.material.color;

import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.StyleRes;
import com.google.android.material.R;

/* JADX INFO: loaded from: classes5.dex */
public final class o {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int[] f30140c = {R.attr.colorError, R.attr.colorOnError, R.attr.colorErrorContainer, R.attr.colorOnErrorContainer};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int[] f30141a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @StyleRes
    private final int f30142b;

    private o(@AttrRes @NonNull int[] iArr, @StyleRes int i10) {
        if (i10 != 0 && iArr.length == 0) {
            throw new IllegalArgumentException("Theme overlay should be used with the accompanying int[] attributes.");
        }
        this.f30141a = iArr;
        this.f30142b = i10;
    }

    @NonNull
    public static o a(@AttrRes @NonNull int[] iArr) {
        return new o(iArr, 0);
    }

    @NonNull
    public static o b(@AttrRes @NonNull int[] iArr, @StyleRes int i10) {
        return new o(iArr, i10);
    }

    @NonNull
    public static o c() {
        return b(f30140c, R.style.ThemeOverlay_Material3_HarmonizedColors);
    }

    @NonNull
    public int[] d() {
        return this.f30141a;
    }

    @StyleRes
    public int e() {
        return this.f30142b;
    }
}

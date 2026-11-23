package com.google.android.material.transition.platform;

import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes5.dex */
@RequiresApi(21)
class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final int f32706a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final int f32707b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final boolean f32708c;

    private c(int i10, int i11, boolean z10) {
        this.f32706a = i10;
        this.f32707b = i11;
        this.f32708c = z10;
    }

    static c a(int i10, int i11) {
        return new c(i10, i11, true);
    }

    static c b(int i10, int i11) {
        return new c(i10, i11, false);
    }
}

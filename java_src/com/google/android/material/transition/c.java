package com.google.android.material.transition;

/* JADX INFO: loaded from: classes5.dex */
class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final int f32566a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final int f32567b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final boolean f32568c;

    private c(int i10, int i11, boolean z10) {
        this.f32566a = i10;
        this.f32567b = i11;
        this.f32568c = z10;
    }

    static c a(int i10, int i11) {
        return new c(i10, i11, true);
    }

    static c b(int i10, int i11) {
        return new c(i10, i11, false);
    }
}

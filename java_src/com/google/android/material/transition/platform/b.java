package com.google.android.material.transition.platform;

import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes5.dex */
@RequiresApi(21)
class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final com.google.android.material.transition.platform.a f32702a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final com.google.android.material.transition.platform.a f32703b = new C0611b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final com.google.android.material.transition.platform.a f32704c = new c();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final com.google.android.material.transition.platform.a f32705d = new d();

    class a implements com.google.android.material.transition.platform.a {
        a() {
        }

        @Override // com.google.android.material.transition.platform.a
        public com.google.android.material.transition.platform.c a(float f10, float f11, float f12, float f13) {
            return com.google.android.material.transition.platform.c.a(255, t.p(0, 255, f11, f12, f10));
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.transition.platform.b$b, reason: collision with other inner class name */
    class C0611b implements com.google.android.material.transition.platform.a {
        C0611b() {
        }

        @Override // com.google.android.material.transition.platform.a
        public com.google.android.material.transition.platform.c a(float f10, float f11, float f12, float f13) {
            return com.google.android.material.transition.platform.c.b(t.p(255, 0, f11, f12, f10), 255);
        }
    }

    class c implements com.google.android.material.transition.platform.a {
        c() {
        }

        @Override // com.google.android.material.transition.platform.a
        public com.google.android.material.transition.platform.c a(float f10, float f11, float f12, float f13) {
            return com.google.android.material.transition.platform.c.b(t.p(255, 0, f11, f12, f10), t.p(0, 255, f11, f12, f10));
        }
    }

    class d implements com.google.android.material.transition.platform.a {
        d() {
        }

        @Override // com.google.android.material.transition.platform.a
        public com.google.android.material.transition.platform.c a(float f10, float f11, float f12, float f13) {
            float f14 = ((f12 - f11) * f13) + f11;
            return com.google.android.material.transition.platform.c.b(t.p(255, 0, f11, f14, f10), t.p(0, 255, f14, f12, f10));
        }
    }

    private b() {
    }

    static com.google.android.material.transition.platform.a a(int i10, boolean z10) {
        if (i10 == 0) {
            return z10 ? f32702a : f32703b;
        }
        if (i10 == 1) {
            return z10 ? f32703b : f32702a;
        }
        if (i10 == 2) {
            return f32704c;
        }
        if (i10 == 3) {
            return f32705d;
        }
        throw new IllegalArgumentException("Invalid fade mode: " + i10);
    }
}

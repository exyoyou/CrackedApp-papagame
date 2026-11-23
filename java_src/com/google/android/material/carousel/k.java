package com.google.android.material.carousel;

import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final float f29862a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<c> f29863b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f29864c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f29865d;

    static final class b {

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private static final int f29866j = -1;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private static final float f29867k = Float.MIN_VALUE;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final float f29868a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final float f29869b;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private c f29871d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private c f29872e;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final List<c> f29870c = new ArrayList();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f29873f = -1;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f29874g = -1;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private float f29875h = 0.0f;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f29876i = -1;

        b(float f10, float f11) {
            this.f29868a = f10;
            this.f29869b = f11;
        }

        private static float j(float f10, float f11, int i10, int i11) {
            return (f10 - (i10 * f11)) + (i11 * f11);
        }

        @NonNull
        @CanIgnoreReturnValue
        b a(float f10, @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f11, float f12) {
            return d(f10, f11, f12, false, true);
        }

        @NonNull
        @CanIgnoreReturnValue
        b b(float f10, @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f11, float f12) {
            return c(f10, f11, f12, false);
        }

        @NonNull
        @CanIgnoreReturnValue
        b c(float f10, @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f11, float f12, boolean z10) {
            return d(f10, f11, f12, z10, false);
        }

        @NonNull
        @CanIgnoreReturnValue
        b d(float f10, @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f11, float f12, boolean z10, boolean z11) {
            float f13;
            float fAbs;
            float f14 = f12 / 2.0f;
            float f15 = f10 - f14;
            float f16 = f14 + f10;
            float f17 = this.f29869b;
            if (f16 <= f17) {
                if (f15 < 0.0f) {
                    fAbs = Math.abs(f15 - Math.min(f15 + f12, 0.0f));
                } else {
                    f13 = 0.0f;
                }
                return e(f10, f11, f12, z10, z11, f13);
            }
            fAbs = Math.abs(f16 - Math.max(f16 - f12, f17));
            f13 = fAbs;
            return e(f10, f11, f12, z10, z11, f13);
        }

        @NonNull
        @CanIgnoreReturnValue
        b e(float f10, @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f11, float f12, boolean z10, boolean z11, float f13) {
            return f(f10, f11, f12, z10, z11, f13, 0.0f, 0.0f);
        }

        @NonNull
        @CanIgnoreReturnValue
        b f(float f10, @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f11, float f12, boolean z10, boolean z11, float f13, float f14, float f15) {
            if (f12 <= 0.0f) {
                return this;
            }
            if (z11) {
                if (z10) {
                    throw new IllegalArgumentException("Anchor keylines cannot be focal.");
                }
                int i10 = this.f29876i;
                if (i10 != -1 && i10 != 0) {
                    throw new IllegalArgumentException("Anchor keylines must be either the first or last keyline.");
                }
                this.f29876i = this.f29870c.size();
            }
            c cVar = new c(Float.MIN_VALUE, f10, f11, f12, z11, f13, f14, f15);
            if (z10) {
                if (this.f29871d == null) {
                    this.f29871d = cVar;
                    this.f29873f = this.f29870c.size();
                }
                if (this.f29874g != -1 && this.f29870c.size() - this.f29874g > 1) {
                    throw new IllegalArgumentException("Keylines marked as focal must be placed next to each other. There cannot be non-focal keylines between focal keylines.");
                }
                if (f12 != this.f29871d.f29880d) {
                    throw new IllegalArgumentException("Keylines that are marked as focal must all have the same masked item size.");
                }
                this.f29872e = cVar;
                this.f29874g = this.f29870c.size();
            } else {
                if (this.f29871d == null && cVar.f29880d < this.f29875h) {
                    throw new IllegalArgumentException("Keylines before the first focal keyline must be ordered by incrementing masked item size.");
                }
                if (this.f29872e != null && cVar.f29880d > this.f29875h) {
                    throw new IllegalArgumentException("Keylines after the last focal keyline must be ordered by decreasing masked item size.");
                }
            }
            this.f29875h = cVar.f29880d;
            this.f29870c.add(cVar);
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        b g(float f10, @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f11, float f12, int i10) {
            return h(f10, f11, f12, i10, false);
        }

        @NonNull
        @CanIgnoreReturnValue
        b h(float f10, @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f11, float f12, int i10, boolean z10) {
            if (i10 > 0 && f12 > 0.0f) {
                for (int i11 = 0; i11 < i10; i11++) {
                    c((i11 * f12) + f10, f11, f12, z10);
                }
            }
            return this;
        }

        @NonNull
        k i() {
            if (this.f29871d == null) {
                throw new IllegalStateException("There must be a keyline marked as focal.");
            }
            ArrayList arrayList = new ArrayList();
            for (int i10 = 0; i10 < this.f29870c.size(); i10++) {
                c cVar = this.f29870c.get(i10);
                arrayList.add(new c(j(this.f29871d.f29878b, this.f29868a, this.f29873f, i10), cVar.f29878b, cVar.f29879c, cVar.f29880d, cVar.f29881e, cVar.f29882f, cVar.f29883g, cVar.f29884h));
            }
            return new k(this.f29868a, arrayList, this.f29873f, this.f29874g);
        }
    }

    static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final float f29877a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final float f29878b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final float f29879c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final float f29880d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final boolean f29881e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final float f29882f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final float f29883g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final float f29884h;

        c(float f10, float f11, float f12, float f13) {
            this(f10, f11, f12, f13, false, 0.0f, 0.0f, 0.0f);
        }

        static c a(c cVar, c cVar2, @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f10) {
            return new c(com.google.android.material.animation.b.a(cVar.f29877a, cVar2.f29877a, f10), com.google.android.material.animation.b.a(cVar.f29878b, cVar2.f29878b, f10), com.google.android.material.animation.b.a(cVar.f29879c, cVar2.f29879c, f10), com.google.android.material.animation.b.a(cVar.f29880d, cVar2.f29880d, f10));
        }

        c(float f10, float f11, float f12, float f13, boolean z10, float f14, float f15, float f16) {
            this.f29877a = f10;
            this.f29878b = f11;
            this.f29879c = f12;
            this.f29880d = f13;
            this.f29881e = z10;
            this.f29882f = f14;
            this.f29883g = f15;
            this.f29884h = f16;
        }
    }

    static k m(k kVar, k kVar2, float f10) {
        if (kVar.f() != kVar2.f()) {
            throw new IllegalArgumentException("Keylines being linearly interpolated must have the same item size.");
        }
        List<c> listG = kVar.g();
        List<c> listG2 = kVar2.g();
        if (listG.size() != listG2.size()) {
            throw new IllegalArgumentException("Keylines being linearly interpolated must have the same number of keylines.");
        }
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < kVar.g().size(); i10++) {
            arrayList.add(c.a(listG.get(i10), listG2.get(i10), f10));
        }
        return new k(kVar.f(), arrayList, com.google.android.material.animation.b.c(kVar.b(), kVar2.b(), f10), com.google.android.material.animation.b.c(kVar.i(), kVar2.i(), f10));
    }

    static k n(k kVar, float f10) {
        b bVar = new b(kVar.f(), f10);
        float f11 = (f10 - kVar.j().f29878b) - (kVar.j().f29880d / 2.0f);
        int size = kVar.g().size() - 1;
        while (size >= 0) {
            c cVar = kVar.g().get(size);
            bVar.d(f11 + (cVar.f29880d / 2.0f), cVar.f29879c, cVar.f29880d, size >= kVar.b() && size <= kVar.i(), cVar.f29881e);
            f11 += cVar.f29880d;
            size--;
        }
        return bVar.i();
    }

    c a() {
        return this.f29863b.get(this.f29864c);
    }

    int b() {
        return this.f29864c;
    }

    c c() {
        return this.f29863b.get(0);
    }

    @Nullable
    c d() {
        for (int i10 = 0; i10 < this.f29863b.size(); i10++) {
            c cVar = this.f29863b.get(i10);
            if (!cVar.f29881e) {
                return cVar;
            }
        }
        return null;
    }

    List<c> e() {
        return this.f29863b.subList(this.f29864c, this.f29865d + 1);
    }

    float f() {
        return this.f29862a;
    }

    List<c> g() {
        return this.f29863b;
    }

    c h() {
        return this.f29863b.get(this.f29865d);
    }

    int i() {
        return this.f29865d;
    }

    c j() {
        List<c> list = this.f29863b;
        return list.get(list.size() - 1);
    }

    @Nullable
    c k() {
        for (int size = this.f29863b.size() - 1; size >= 0; size--) {
            c cVar = this.f29863b.get(size);
            if (!cVar.f29881e) {
                return cVar;
            }
        }
        return null;
    }

    int l() {
        Iterator<c> it2 = this.f29863b.iterator();
        int i10 = 0;
        while (it2.hasNext()) {
            if (it2.next().f29881e) {
                i10++;
            }
        }
        return this.f29863b.size() - i10;
    }

    private k(float f10, List<c> list, int i10, int i11) {
        this.f29862a = f10;
        this.f29863b = Collections.unmodifiableList(list);
        this.f29864c = i10;
        this.f29865d = i11;
    }
}

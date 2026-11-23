package com.facebook.fresco.animation.backend;

import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import androidx.annotation.IntRange;
import com.facebook.fresco.animation.backend.a;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class b<T extends a> implements a {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int f27381g = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private T f27382c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @IntRange(from = -1, to = 255)
    private int f27383d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private ColorFilter f27384e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private Rect f27385f;

    public b(@Nullable T animationBackend) {
        this.f27382c = animationBackend;
    }

    @SuppressLint({"Range"})
    private void k(a backend) {
        Rect rect = this.f27385f;
        if (rect != null) {
            backend.f(rect);
        }
        int i10 = this.f27383d;
        if (i10 >= 0 && i10 <= 255) {
            backend.i(i10);
        }
        ColorFilter colorFilter = this.f27384e;
        if (colorFilter != null) {
            backend.g(colorFilter);
        }
    }

    @Override // com.facebook.fresco.animation.backend.a
    public int a() {
        T t10 = this.f27382c;
        if (t10 == null) {
            return 0;
        }
        return t10.a();
    }

    @Override // com.facebook.fresco.animation.backend.d
    public int b() {
        T t10 = this.f27382c;
        if (t10 == null) {
            return 0;
        }
        return t10.b();
    }

    @Override // com.facebook.fresco.animation.backend.d
    public int c() {
        T t10 = this.f27382c;
        if (t10 == null) {
            return 0;
        }
        return t10.c();
    }

    @Override // com.facebook.fresco.animation.backend.a
    public void clear() {
        T t10 = this.f27382c;
        if (t10 != null) {
            t10.clear();
        }
    }

    @Override // com.facebook.fresco.animation.backend.a
    public int d() {
        T t10 = this.f27382c;
        if (t10 == null) {
            return -1;
        }
        return t10.d();
    }

    @Override // com.facebook.fresco.animation.backend.a
    public int e() {
        T t10 = this.f27382c;
        if (t10 == null) {
            return -1;
        }
        return t10.e();
    }

    @Override // com.facebook.fresco.animation.backend.a
    public void f(Rect bounds) {
        T t10 = this.f27382c;
        if (t10 != null) {
            t10.f(bounds);
        }
        this.f27385f = bounds;
    }

    @Override // com.facebook.fresco.animation.backend.a
    public void g(@Nullable ColorFilter colorFilter) {
        T t10 = this.f27382c;
        if (t10 != null) {
            t10.g(colorFilter);
        }
        this.f27384e = colorFilter;
    }

    @Override // com.facebook.fresco.animation.backend.d
    public int h(int frameNumber) {
        T t10 = this.f27382c;
        if (t10 == null) {
            return 0;
        }
        return t10.h(frameNumber);
    }

    @Override // com.facebook.fresco.animation.backend.a
    public void i(@IntRange(from = 0, to = 255) int alpha) {
        T t10 = this.f27382c;
        if (t10 != null) {
            t10.i(alpha);
        }
        this.f27383d = alpha;
    }

    @Override // com.facebook.fresco.animation.backend.a
    public boolean j(Drawable parent, Canvas canvas, int frameNumber) {
        T t10 = this.f27382c;
        return t10 != null && t10.j(parent, canvas, frameNumber);
    }

    @Nullable
    public T l() {
        return this.f27382c;
    }

    public void m(@Nullable T animationBackend) {
        this.f27382c = animationBackend;
        if (animationBackend != null) {
            k(animationBackend);
        }
    }
}

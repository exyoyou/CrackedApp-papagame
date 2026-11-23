package com.google.android.material.shape;

import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.os.Build;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public abstract class s {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    n f31715c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    boolean f31713a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    boolean f31714b = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    RectF f31716d = new RectF();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final Path f31717e = new Path();

    @NonNull
    public static s a(@NonNull View view) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 33) {
            return new v(view);
        }
        return i10 >= 22 ? new u(view) : new t();
    }

    private boolean d() {
        RectF rectF = this.f31716d;
        return rectF.left <= rectF.right && rectF.top <= rectF.bottom;
    }

    private void k() {
        if (!d() || this.f31715c == null) {
            return;
        }
        o.k().d(this.f31715c, 1.0f, this.f31716d, this.f31717e);
    }

    abstract void b(@NonNull View view);

    public boolean c() {
        return this.f31713a;
    }

    public void e(@NonNull Canvas canvas, @NonNull v4.a.InterfaceC1251a interfaceC1251a) {
        if (!j() || this.f31717e.isEmpty()) {
            interfaceC1251a.a(canvas);
            return;
        }
        canvas.save();
        canvas.clipPath(this.f31717e);
        interfaceC1251a.a(canvas);
        canvas.restore();
    }

    public void f(@NonNull View view, @NonNull RectF rectF) {
        this.f31716d = rectF;
        k();
        b(view);
    }

    public void g(@NonNull View view, @NonNull n nVar) {
        this.f31715c = nVar;
        k();
        b(view);
    }

    public void h(@NonNull View view, boolean z10) {
        if (z10 != this.f31713a) {
            this.f31713a = z10;
            b(view);
        }
    }

    public void i(@NonNull View view, boolean z10) {
        this.f31714b = z10;
        b(view);
    }

    abstract boolean j();
}

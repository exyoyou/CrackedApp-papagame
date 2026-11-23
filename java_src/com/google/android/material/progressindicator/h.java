package com.google.android.material.progressindicator;

import android.animation.Animator;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
abstract class h<T extends Animator> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected i f31295a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final List<g.a> f31296b = new ArrayList();

    protected h(int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            this.f31296b.add(new g.a());
        }
    }

    abstract void a();

    protected float b(int i10, int i11, int i12) {
        return (i10 - i11) / i12;
    }

    public abstract void c();

    public abstract void d(@NonNull Animatable2Compat.AnimationCallback animationCallback);

    protected void e(@NonNull i iVar) {
        this.f31295a = iVar;
    }

    abstract void f();

    @VisibleForTesting
    abstract void g();

    @VisibleForTesting
    abstract void h(float f10);

    abstract void i();

    public abstract void j();
}

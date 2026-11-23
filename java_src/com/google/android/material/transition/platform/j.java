package com.google.android.material.transition.platform;

import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Region;
import android.os.Build;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes5.dex */
@RequiresApi(21)
class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Path f32734a = new Path();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Path f32735b = new Path();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Path f32736c = new Path();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.google.android.material.shape.o f32737d = com.google.android.material.shape.o.k();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.google.android.material.shape.n f32738e;

    j() {
    }

    void a(Canvas canvas) {
        if (Build.VERSION.SDK_INT >= 23) {
            canvas.clipPath(this.f32734a);
        } else {
            canvas.clipPath(this.f32735b);
            canvas.clipPath(this.f32736c, Region.Op.UNION);
        }
    }

    void b(float f10, com.google.android.material.shape.n nVar, com.google.android.material.shape.n nVar2, RectF rectF, RectF rectF2, RectF rectF3, MaterialContainerTransform.c cVar) {
        com.google.android.material.shape.n nVarQ = t.q(nVar, nVar2, rectF, rectF3, cVar.d(), cVar.c(), f10);
        this.f32738e = nVarQ;
        this.f32737d.d(nVarQ, 1.0f, rectF2, this.f32735b);
        this.f32737d.d(this.f32738e, 1.0f, rectF3, this.f32736c);
        if (Build.VERSION.SDK_INT >= 23) {
            this.f32734a.op(this.f32735b, this.f32736c, Path.Op.UNION);
        }
    }

    com.google.android.material.shape.n c() {
        return this.f32738e;
    }

    Path d() {
        return this.f32734a;
    }
}

package com.google.android.material.transition;

import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Region;
import android.os.Build;

/* JADX INFO: loaded from: classes5.dex */
class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Path f32594a = new Path();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Path f32595b = new Path();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Path f32596c = new Path();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.google.android.material.shape.o f32597d = com.google.android.material.shape.o.k();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.google.android.material.shape.n f32598e;

    j() {
    }

    void a(Canvas canvas) {
        if (Build.VERSION.SDK_INT >= 23) {
            canvas.clipPath(this.f32594a);
        } else {
            canvas.clipPath(this.f32595b);
            canvas.clipPath(this.f32596c, Region.Op.UNION);
        }
    }

    void b(float f10, com.google.android.material.shape.n nVar, com.google.android.material.shape.n nVar2, RectF rectF, RectF rectF2, RectF rectF3, MaterialContainerTransform.c cVar) {
        com.google.android.material.shape.n nVarQ = s.q(nVar, nVar2, rectF, rectF3, cVar.d(), cVar.c(), f10);
        this.f32598e = nVarQ;
        this.f32597d.d(nVarQ, 1.0f, rectF2, this.f32595b);
        this.f32597d.d(this.f32598e, 1.0f, rectF3, this.f32596c);
        if (Build.VERSION.SDK_INT >= 23) {
            this.f32594a.op(this.f32595b, this.f32596c, Path.Op.UNION);
        }
    }

    com.google.android.material.shape.n c() {
        return this.f32598e;
    }

    Path d() {
        return this.f32594a;
    }
}

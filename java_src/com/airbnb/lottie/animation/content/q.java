package com.airbnb.lottie.animation.content;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.b1;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes7.dex */
public class q implements e, n, j, com.airbnb.lottie.animation.keyframe.a.b, k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Matrix f5474a = new Matrix();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Path f5475b = new Path();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final LottieDrawable f5476c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.airbnb.lottie.model.layer.b f5477d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f5478e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f5479f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<Float, Float> f5480g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<Float, Float> f5481h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.p f5482i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private d f5483j;

    public q(LottieDrawable lottieDrawable, com.airbnb.lottie.model.layer.b bVar, com.airbnb.lottie.model.content.h hVar) {
        this.f5476c = lottieDrawable;
        this.f5477d = bVar;
        this.f5478e = hVar.c();
        this.f5479f = hVar.f();
        com.airbnb.lottie.animation.keyframe.a<Float, Float> aVarA = hVar.b().a();
        this.f5480g = aVarA;
        bVar.i(aVarA);
        aVarA.a(this);
        com.airbnb.lottie.animation.keyframe.a<Float, Float> aVarA2 = hVar.d().a();
        this.f5481h = aVarA2;
        bVar.i(aVarA2);
        aVarA2.a(this);
        com.airbnb.lottie.animation.keyframe.p pVarB = hVar.e().b();
        this.f5482i = pVarB;
        pVarB.a(bVar);
        pVarB.b(this);
    }

    @Override // com.airbnb.lottie.animation.content.e
    public void a(RectF rectF, Matrix matrix, boolean z10) {
        this.f5483j.a(rectF, matrix, z10);
    }

    @Override // com.airbnb.lottie.animation.content.j
    public void b(ListIterator<c> listIterator) {
        if (this.f5483j != null) {
            return;
        }
        while (listIterator.hasPrevious() && listIterator.previous() != this) {
        }
        ArrayList arrayList = new ArrayList();
        while (listIterator.hasPrevious()) {
            arrayList.add(listIterator.previous());
            listIterator.remove();
        }
        Collections.reverse(arrayList);
        this.f5483j = new d(this.f5476c, this.f5477d, "Repeater", this.f5479f, arrayList, null);
    }

    @Override // com.airbnb.lottie.animation.content.e
    public void c(Canvas canvas, Matrix matrix, int i10) {
        float fFloatValue = this.f5480g.h().floatValue();
        float fFloatValue2 = this.f5481h.h().floatValue();
        float fFloatValue3 = this.f5482i.i().h().floatValue() / 100.0f;
        float fFloatValue4 = this.f5482i.e().h().floatValue() / 100.0f;
        for (int i11 = ((int) fFloatValue) - 1; i11 >= 0; i11--) {
            this.f5474a.set(matrix);
            float f10 = i11;
            this.f5474a.preConcat(this.f5482i.g(f10 + fFloatValue2));
            this.f5483j.c(canvas, this.f5474a, (int) (i10 * com.airbnb.lottie.utils.k.k(fFloatValue3, fFloatValue4, f10 / fFloatValue)));
        }
    }

    @Override // com.airbnb.lottie.animation.keyframe.a.b
    public void d() {
        this.f5476c.invalidateSelf();
    }

    @Override // com.airbnb.lottie.animation.content.c
    public void e(List<c> list, List<c> list2) {
        this.f5483j.e(list, list2);
    }

    @Override // com.airbnb.lottie.model.e
    public <T> void g(T t10, @Nullable com.airbnb.lottie.value.j<T> jVar) {
        if (this.f5482i.c(t10, jVar)) {
            return;
        }
        if (t10 == b1.f5597u) {
            this.f5480g.n(jVar);
        } else if (t10 == b1.f5598v) {
            this.f5481h.n(jVar);
        }
    }

    @Override // com.airbnb.lottie.animation.content.c
    public String getName() {
        return this.f5478e;
    }

    @Override // com.airbnb.lottie.animation.content.n
    public Path getPath() {
        Path path = this.f5483j.getPath();
        this.f5475b.reset();
        float fFloatValue = this.f5480g.h().floatValue();
        float fFloatValue2 = this.f5481h.h().floatValue();
        for (int i10 = ((int) fFloatValue) - 1; i10 >= 0; i10--) {
            this.f5474a.set(this.f5482i.g(i10 + fFloatValue2));
            this.f5475b.addPath(path, this.f5474a);
        }
        return this.f5475b;
    }

    @Override // com.airbnb.lottie.model.e
    public void h(com.airbnb.lottie.model.d dVar, int i10, List<com.airbnb.lottie.model.d> list, com.airbnb.lottie.model.d dVar2) {
        com.airbnb.lottie.utils.k.m(dVar, i10, list, dVar2, this);
        for (int i11 = 0; i11 < this.f5483j.j().size(); i11++) {
            c cVar = this.f5483j.j().get(i11);
            if (cVar instanceof k) {
                com.airbnb.lottie.utils.k.m(dVar, i10, list, dVar2, (k) cVar);
            }
        }
    }
}

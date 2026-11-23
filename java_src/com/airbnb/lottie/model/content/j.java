package com.airbnb.lottie.model.content;

import android.graphics.PointF;
import androidx.annotation.FloatRange;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<com.airbnb.lottie.model.a> f5834a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private PointF f5835b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f5836c;

    public j(PointF pointF, boolean z10, List<com.airbnb.lottie.model.a> list) {
        this.f5835b = pointF;
        this.f5836c = z10;
        this.f5834a = new ArrayList(list);
    }

    public List<com.airbnb.lottie.model.a> a() {
        return this.f5834a;
    }

    public PointF b() {
        return this.f5835b;
    }

    public void c(j jVar, j jVar2, @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f10) {
        if (this.f5835b == null) {
            this.f5835b = new PointF();
        }
        this.f5836c = jVar.d() || jVar2.d();
        if (jVar.a().size() != jVar2.a().size()) {
            com.airbnb.lottie.utils.f.e("Curves must have the same number of control points. Shape 1: " + jVar.a().size() + "\tShape 2: " + jVar2.a().size());
        }
        int iMin = Math.min(jVar.a().size(), jVar2.a().size());
        if (this.f5834a.size() < iMin) {
            for (int size = this.f5834a.size(); size < iMin; size++) {
                this.f5834a.add(new com.airbnb.lottie.model.a());
            }
        } else if (this.f5834a.size() > iMin) {
            for (int size2 = this.f5834a.size() - 1; size2 >= iMin; size2--) {
                List<com.airbnb.lottie.model.a> list = this.f5834a;
                list.remove(list.size() - 1);
            }
        }
        PointF pointFB = jVar.b();
        PointF pointFB2 = jVar2.b();
        f(com.airbnb.lottie.utils.k.k(pointFB.x, pointFB2.x, f10), com.airbnb.lottie.utils.k.k(pointFB.y, pointFB2.y, f10));
        for (int size3 = this.f5834a.size() - 1; size3 >= 0; size3--) {
            com.airbnb.lottie.model.a aVar = jVar.a().get(size3);
            com.airbnb.lottie.model.a aVar2 = jVar2.a().get(size3);
            PointF pointFA = aVar.a();
            PointF pointFB3 = aVar.b();
            PointF pointFC = aVar.c();
            PointF pointFA2 = aVar2.a();
            PointF pointFB4 = aVar2.b();
            PointF pointFC2 = aVar2.c();
            this.f5834a.get(size3).d(com.airbnb.lottie.utils.k.k(pointFA.x, pointFA2.x, f10), com.airbnb.lottie.utils.k.k(pointFA.y, pointFA2.y, f10));
            this.f5834a.get(size3).e(com.airbnb.lottie.utils.k.k(pointFB3.x, pointFB4.x, f10), com.airbnb.lottie.utils.k.k(pointFB3.y, pointFB4.y, f10));
            this.f5834a.get(size3).g(com.airbnb.lottie.utils.k.k(pointFC.x, pointFC2.x, f10), com.airbnb.lottie.utils.k.k(pointFC.y, pointFC2.y, f10));
        }
    }

    public boolean d() {
        return this.f5836c;
    }

    public void e(boolean z10) {
        this.f5836c = z10;
    }

    public void f(float f10, float f11) {
        if (this.f5835b == null) {
            this.f5835b = new PointF();
        }
        this.f5835b.set(f10, f11);
    }

    public String toString() {
        return "ShapeData{numCurves=" + this.f5834a.size() + "closed=" + this.f5836c + '}';
    }

    public j() {
        this.f5834a = new ArrayList();
    }
}

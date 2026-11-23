package com.airbnb.lottie.value;

import android.graphics.PointF;
import androidx.annotation.NonNull;

/* JADX INFO: loaded from: classes7.dex */
public class i extends j<PointF> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final PointF f6159d;

    public i() {
        this.f6159d = new PointF();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PointF e(b<PointF> bVar) {
        T t10 = this.f6162c;
        if (t10 != 0) {
            return (PointF) t10;
        }
        throw new IllegalArgumentException("You must provide a static value in the constructor , call setValue, or override getValue.");
    }

    @Override // com.airbnb.lottie.value.j
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final PointF a(b<PointF> bVar) {
        this.f6159d.set(com.airbnb.lottie.utils.k.k(bVar.g().x, bVar.b().x, bVar.c()), com.airbnb.lottie.utils.k.k(bVar.g().y, bVar.b().y, bVar.c()));
        PointF pointFE = e(bVar);
        this.f6159d.offset(pointFE.x, pointFE.y);
        return this.f6159d;
    }

    public i(@NonNull PointF pointF) {
        super(pointF);
        this.f6159d = new PointF();
    }
}

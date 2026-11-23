package com.airbnb.lottie.animation.keyframe;

import android.graphics.Path;
import android.graphics.PointF;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public class i extends com.airbnb.lottie.value.a<PointF> {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @Nullable
    private Path f5537s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final com.airbnb.lottie.value.a<PointF> f5538t;

    public i(com.airbnb.lottie.j jVar, com.airbnb.lottie.value.a<PointF> aVar) {
        super(jVar, aVar.f6133b, aVar.f6134c, aVar.f6135d, aVar.f6136e, aVar.f6137f, aVar.f6138g, aVar.f6139h);
        this.f5538t = aVar;
        j();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void j() {
        T t10;
        T t11;
        T t12 = this.f6134c;
        boolean z10 = (t12 == 0 || (t11 = this.f6133b) == 0 || !((PointF) t11).equals(((PointF) t12).x, ((PointF) t12).y)) ? false : true;
        T t13 = this.f6133b;
        if (t13 == 0 || (t10 = this.f6134c) == 0 || z10) {
            return;
        }
        com.airbnb.lottie.value.a<PointF> aVar = this.f5538t;
        this.f5537s = com.airbnb.lottie.utils.l.d((PointF) t13, (PointF) t10, aVar.f6146o, aVar.f6147p);
    }

    @Nullable
    Path k() {
        return this.f5537s;
    }
}

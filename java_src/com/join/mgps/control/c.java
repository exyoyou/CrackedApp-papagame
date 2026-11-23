package com.join.mgps.control;

import android.content.Context;
import android.view.animation.Interpolator;
import android.widget.Scroller;

/* JADX INFO: loaded from: classes3.dex */
public class c extends Scroller {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f64260a;

    public c(Context paramContext) {
        super(paramContext);
    }

    public void a(int paramInt) {
        this.f64260a = paramInt;
    }

    @Override // android.widget.Scroller
    public void startScroll(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
        super.startScroll(paramInt1, paramInt2, paramInt3, paramInt4, this.f64260a);
    }

    public c(Context paramContext, Interpolator paramInterpolator) {
        super(paramContext, paramInterpolator);
    }

    @Override // android.widget.Scroller
    public void startScroll(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5) {
        super.startScroll(paramInt1, paramInt2, paramInt3, paramInt4, this.f64260a);
    }

    public c(Context paramContext, Interpolator paramInterpolator, boolean paramBoolean) {
        super(paramContext, paramInterpolator, paramBoolean);
    }
}

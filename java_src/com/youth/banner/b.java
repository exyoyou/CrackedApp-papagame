package com.youth.banner;

import android.content.Context;
import android.view.animation.Interpolator;
import android.widget.Scroller;

/* JADX INFO: loaded from: classes8.dex */
public class b extends Scroller {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f90270a;

    public b(Context context) {
        super(context);
        this.f90270a = 800;
    }

    public void a(int i10) {
        this.f90270a = i10;
    }

    @Override // android.widget.Scroller
    public void startScroll(int i10, int i11, int i12, int i13, int i14) {
        super.startScroll(i10, i11, i12, i13, this.f90270a);
    }

    @Override // android.widget.Scroller
    public void startScroll(int i10, int i11, int i12, int i13) {
        super.startScroll(i10, i11, i12, i13, this.f90270a);
    }

    public b(Context context, Interpolator interpolator) {
        super(context, interpolator);
        this.f90270a = 800;
    }

    public b(Context context, Interpolator interpolator, boolean z10) {
        super(context, interpolator, z10);
        this.f90270a = 800;
    }
}

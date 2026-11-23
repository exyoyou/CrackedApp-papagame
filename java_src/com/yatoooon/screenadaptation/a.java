package com.yatoooon.screenadaptation;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes8.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected float f90206a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected float f90207b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected float f90208c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected float f90209d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected int f90210e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected int f90211f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected float f90212g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected String f90213h;

    public a(Context context, int i10, int i11, float f10, String str) {
        this.f90210e = i10;
        this.f90211f = i11;
        this.f90212g = f10;
        this.f90213h = str;
        j(context);
    }

    private void j(Context context) {
        float[] fArrA = b.a(context);
        if (fArrA.length == 4) {
            this.f90208c = fArrA[0];
            this.f90209d = fArrA[1];
            this.f90206a = fArrA[2];
            this.f90207b = fArrA[3];
        }
    }

    public abstract int a(int i10);

    public abstract void b(View view);

    public abstract void c(View view);

    public abstract void d(View view);

    public abstract void e(View view);

    public void f(View view) {
        g(view, new wa.c());
    }

    public final void g(View view, wa.b bVar) {
        if (!(view instanceof ViewGroup)) {
            bVar.a(view, this);
            return;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        bVar.a(viewGroup, this);
        for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
            if (viewGroup.getChildAt(i10) instanceof ViewGroup) {
                g(viewGroup.getChildAt(i10), bVar);
            } else {
                bVar.a(viewGroup.getChildAt(i10), this);
            }
        }
    }

    public abstract void h(View view);

    public void i(Context context) {
        j(context);
    }
}

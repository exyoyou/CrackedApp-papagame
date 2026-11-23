package com.byazt.jl;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import com.byazt.on.a;
import com.byazt.on.sp;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 157, 71})
public abstract class x<R extends com.byazt.on.a, W extends com.byazt.on.sp> {

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public int f15896da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f15897i;
    public int sl;
    public final R sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f15898t;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f15900x;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final Rect f15899u = new Rect();
    public final Rect yp = new Rect();

    public x(R r10) {
        this.sp = r10;
    }

    public abstract Bitmap c(Canvas canvas, Paint paint, int i10, Bitmap bitmap, W w10);
}

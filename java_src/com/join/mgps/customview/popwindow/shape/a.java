package com.join.mgps.customview.popwindow.shape;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import com.join.mgps.customview.popwindow.view.PopWindowView;

/* JADX INFO: loaded from: classes3.dex */
public abstract class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected o6.a f66766a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected int f66767b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected int f66768c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected int f66769d;

    public a(o6.a target) {
        this(target, PopWindowView.f66772u, PopWindowView.f66773v, PopWindowView.f66774w);
    }

    public abstract void a(Canvas canvas, Paint eraser, int padding, int radius);

    public abstract int b();

    public abstract Point c();

    public abstract boolean d(double x10, double t10);

    public abstract void e();

    public a(o6.a target, int padding, int radius, int dropHeight) {
        this.f66766a = target;
        this.f66767b = padding;
        this.f66768c = radius;
        this.f66769d = dropHeight;
    }
}

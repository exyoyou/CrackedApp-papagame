package com.nineoldandroids.view.animation;

import android.graphics.Camera;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.os.Build;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes2.dex */
public final class a extends Animation {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final boolean f76321r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final WeakHashMap<View, a> f76322s;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final WeakReference<View> f76323b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f76325d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f76327f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f76328g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f76329h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private float f76330i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f76331j;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float f76334m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f76335n;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Camera f76324c = new Camera();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f76326e = 1.0f;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float f76332k = 1.0f;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private float f76333l = 1.0f;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final RectF f76336o = new RectF();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final RectF f76337p = new RectF();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Matrix f76338q = new Matrix();

    static {
        f76321r = Integer.valueOf(Build.VERSION.SDK).intValue() < 11;
        f76322s = new WeakHashMap<>();
    }

    private a(View view) {
        setDuration(0L);
        setFillAfter(true);
        view.setAnimation(this);
        this.f76323b = new WeakReference<>(view);
    }

    private void H(Matrix matrix, View view) {
        float width = view.getWidth();
        float height = view.getHeight();
        boolean z10 = this.f76325d;
        float f10 = z10 ? this.f76327f : width / 2.0f;
        float f11 = z10 ? this.f76328g : height / 2.0f;
        float f12 = this.f76329h;
        float f13 = this.f76330i;
        float f14 = this.f76331j;
        if (f12 != 0.0f || f13 != 0.0f || f14 != 0.0f) {
            Camera camera = this.f76324c;
            camera.save();
            camera.rotateX(f12);
            camera.rotateY(f13);
            camera.rotateZ(-f14);
            camera.getMatrix(matrix);
            camera.restore();
            matrix.preTranslate(-f10, -f11);
            matrix.postTranslate(f10, f11);
        }
        float f15 = this.f76332k;
        float f16 = this.f76333l;
        if (f15 != 1.0f || f16 != 1.0f) {
            matrix.postScale(f15, f16);
            matrix.postTranslate((-(f10 / width)) * ((f15 * width) - width), (-(f11 / height)) * ((f16 * height) - height));
        }
        matrix.postTranslate(this.f76334m, this.f76335n);
    }

    public static a I(View view) {
        WeakHashMap<View, a> weakHashMap = f76322s;
        a aVar = weakHashMap.get(view);
        if (aVar != null && aVar == view.getAnimation()) {
            return aVar;
        }
        a aVar2 = new a(view);
        weakHashMap.put(view, aVar2);
        return aVar2;
    }

    private void a(RectF rectF, View view) {
        rectF.set(0.0f, 0.0f, view.getWidth(), view.getHeight());
        Matrix matrix = this.f76338q;
        matrix.reset();
        H(matrix, view);
        this.f76338q.mapRect(rectF);
        rectF.offset(view.getLeft(), view.getTop());
        float f10 = rectF.right;
        float f11 = rectF.left;
        if (f10 < f11) {
            rectF.right = f11;
            rectF.left = f10;
        }
        float f12 = rectF.bottom;
        float f13 = rectF.top;
        if (f12 < f13) {
            rectF.top = f12;
            rectF.bottom = f13;
        }
    }

    private void r() {
        View view = this.f76323b.get();
        if (view == null || view.getParent() == null) {
            return;
        }
        RectF rectF = this.f76337p;
        a(rectF, view);
        rectF.union(this.f76336o);
        ((View) view.getParent()).invalidate((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
    }

    private void s() {
        View view = this.f76323b.get();
        if (view != null) {
            a(this.f76336o, view);
        }
    }

    public void A(float f10) {
        if (this.f76333l != f10) {
            s();
            this.f76333l = f10;
            r();
        }
    }

    public void B(int i10) {
        View view = this.f76323b.get();
        if (view != null) {
            view.scrollTo(i10, view.getScrollY());
        }
    }

    public void C(int i10) {
        View view = this.f76323b.get();
        if (view != null) {
            view.scrollTo(view.getScrollX(), i10);
        }
    }

    public void D(float f10) {
        if (this.f76334m != f10) {
            s();
            this.f76334m = f10;
            r();
        }
    }

    public void E(float f10) {
        if (this.f76335n != f10) {
            s();
            this.f76335n = f10;
            r();
        }
    }

    public void F(float f10) {
        View view = this.f76323b.get();
        if (view != null) {
            D(f10 - view.getLeft());
        }
    }

    public void G(float f10) {
        View view = this.f76323b.get();
        if (view != null) {
            E(f10 - view.getTop());
        }
    }

    @Override // android.view.animation.Animation
    protected void applyTransformation(float f10, Transformation transformation) {
        View view = this.f76323b.get();
        if (view != null) {
            transformation.setAlpha(this.f76326e);
            H(transformation.getMatrix(), view);
        }
    }

    public float b() {
        return this.f76326e;
    }

    public float d() {
        return this.f76327f;
    }

    public float e() {
        return this.f76328g;
    }

    public float f() {
        return this.f76331j;
    }

    public float g() {
        return this.f76329h;
    }

    public float h() {
        return this.f76330i;
    }

    public float i() {
        return this.f76332k;
    }

    public float j() {
        return this.f76333l;
    }

    public int k() {
        View view = this.f76323b.get();
        if (view == null) {
            return 0;
        }
        return view.getScrollX();
    }

    public int l() {
        View view = this.f76323b.get();
        if (view == null) {
            return 0;
        }
        return view.getScrollY();
    }

    public float m() {
        return this.f76334m;
    }

    public float o() {
        return this.f76335n;
    }

    public float p() {
        View view = this.f76323b.get();
        if (view == null) {
            return 0.0f;
        }
        return view.getLeft() + this.f76334m;
    }

    public float q() {
        View view = this.f76323b.get();
        if (view == null) {
            return 0.0f;
        }
        return view.getTop() + this.f76335n;
    }

    public void t(float f10) {
        if (this.f76326e != f10) {
            this.f76326e = f10;
            View view = this.f76323b.get();
            if (view != null) {
                view.invalidate();
            }
        }
    }

    public void u(float f10) {
        if (this.f76325d && this.f76327f == f10) {
            return;
        }
        s();
        this.f76325d = true;
        this.f76327f = f10;
        r();
    }

    public void v(float f10) {
        if (this.f76325d && this.f76328g == f10) {
            return;
        }
        s();
        this.f76325d = true;
        this.f76328g = f10;
        r();
    }

    public void w(float f10) {
        if (this.f76331j != f10) {
            s();
            this.f76331j = f10;
            r();
        }
    }

    public void x(float f10) {
        if (this.f76329h != f10) {
            s();
            this.f76329h = f10;
            r();
        }
    }

    public void y(float f10) {
        if (this.f76330i != f10) {
            s();
            this.f76330i = f10;
            r();
        }
    }

    public void z(float f10) {
        if (this.f76332k != f10) {
            s();
            this.f76332k = f10;
            r();
        }
    }
}

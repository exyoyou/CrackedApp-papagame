package com.google.android.material.shape;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.UiThread;

/* JADX INFO: loaded from: classes5.dex */
public class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final p[] f31651a = new p[4];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Matrix[] f31652b = new Matrix[4];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Matrix[] f31653c = new Matrix[4];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final PointF f31654d = new PointF();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Path f31655e = new Path();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Path f31656f = new Path();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final p f31657g = new p();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final float[] f31658h = new float[2];

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final float[] f31659i = new float[2];

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Path f31660j = new Path();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Path f31661k = new Path();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f31662l = true;

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final o f31663a = new o();

        private a() {
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public interface b {
        void a(p pVar, Matrix matrix, int i10);

        void b(p pVar, Matrix matrix, int i10);
    }

    static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @NonNull
        public final n f31664a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @NonNull
        public final Path f31665b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @NonNull
        public final RectF f31666c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @Nullable
        public final b f31667d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final float f31668e;

        c(@NonNull n nVar, float f10, RectF rectF, @Nullable b bVar, Path path) {
            this.f31667d = bVar;
            this.f31664a = nVar;
            this.f31668e = f10;
            this.f31666c = rectF;
            this.f31665b = path;
        }
    }

    public o() {
        for (int i10 = 0; i10 < 4; i10++) {
            this.f31651a[i10] = new p();
            this.f31652b[i10] = new Matrix();
            this.f31653c[i10] = new Matrix();
        }
    }

    private float a(int i10) {
        return ((i10 + 1) % 4) * 90;
    }

    private void b(@NonNull c cVar, int i10) {
        this.f31658h[0] = this.f31651a[i10].l();
        this.f31658h[1] = this.f31651a[i10].m();
        this.f31652b[i10].mapPoints(this.f31658h);
        if (i10 == 0) {
            Path path = cVar.f31665b;
            float[] fArr = this.f31658h;
            path.moveTo(fArr[0], fArr[1]);
        } else {
            Path path2 = cVar.f31665b;
            float[] fArr2 = this.f31658h;
            path2.lineTo(fArr2[0], fArr2[1]);
        }
        this.f31651a[i10].d(this.f31652b[i10], cVar.f31665b);
        b bVar = cVar.f31667d;
        if (bVar != null) {
            bVar.a(this.f31651a[i10], this.f31652b[i10], i10);
        }
    }

    private void c(@NonNull c cVar, int i10) {
        int i11 = (i10 + 1) % 4;
        this.f31658h[0] = this.f31651a[i10].j();
        this.f31658h[1] = this.f31651a[i10].k();
        this.f31652b[i10].mapPoints(this.f31658h);
        this.f31659i[0] = this.f31651a[i11].l();
        this.f31659i[1] = this.f31651a[i11].m();
        this.f31652b[i11].mapPoints(this.f31659i);
        float[] fArr = this.f31658h;
        float f10 = fArr[0];
        float[] fArr2 = this.f31659i;
        float fMax = Math.max(((float) Math.hypot(f10 - fArr2[0], fArr[1] - fArr2[1])) - 0.001f, 0.0f);
        float fI = i(cVar.f31666c, i10);
        this.f31657g.q(0.0f, 0.0f);
        g gVarJ = j(i10, cVar.f31664a);
        gVarJ.b(fMax, fI, cVar.f31668e, this.f31657g);
        this.f31660j.reset();
        this.f31657g.d(this.f31653c[i10], this.f31660j);
        if (this.f31662l && (gVarJ.a() || l(this.f31660j, i10) || l(this.f31660j, i11))) {
            Path path = this.f31660j;
            path.op(path, this.f31656f, Path.Op.DIFFERENCE);
            this.f31658h[0] = this.f31657g.l();
            this.f31658h[1] = this.f31657g.m();
            this.f31653c[i10].mapPoints(this.f31658h);
            Path path2 = this.f31655e;
            float[] fArr3 = this.f31658h;
            path2.moveTo(fArr3[0], fArr3[1]);
            this.f31657g.d(this.f31653c[i10], this.f31655e);
        } else {
            this.f31657g.d(this.f31653c[i10], cVar.f31665b);
        }
        b bVar = cVar.f31667d;
        if (bVar != null) {
            bVar.b(this.f31657g, this.f31653c[i10], i10);
        }
    }

    private void f(int i10, @NonNull RectF rectF, @NonNull PointF pointF) {
        if (i10 == 1) {
            pointF.set(rectF.right, rectF.bottom);
            return;
        }
        if (i10 == 2) {
            pointF.set(rectF.left, rectF.bottom);
        } else if (i10 != 3) {
            pointF.set(rectF.right, rectF.top);
        } else {
            pointF.set(rectF.left, rectF.top);
        }
    }

    private d g(int i10, @NonNull n nVar) {
        if (i10 == 1) {
            return nVar.l();
        }
        if (i10 != 2) {
            return i10 != 3 ? nVar.t() : nVar.r();
        }
        return nVar.j();
    }

    private e h(int i10, @NonNull n nVar) {
        if (i10 == 1) {
            return nVar.k();
        }
        if (i10 != 2) {
            return i10 != 3 ? nVar.s() : nVar.q();
        }
        return nVar.i();
    }

    private float i(@NonNull RectF rectF, int i10) {
        float[] fArr = this.f31658h;
        p pVar = this.f31651a[i10];
        fArr[0] = pVar.f31673c;
        fArr[1] = pVar.f31674d;
        this.f31652b[i10].mapPoints(fArr);
        return (i10 == 1 || i10 == 3) ? Math.abs(rectF.centerX() - this.f31658h[0]) : Math.abs(rectF.centerY() - this.f31658h[1]);
    }

    private g j(int i10, @NonNull n nVar) {
        if (i10 == 1) {
            return nVar.h();
        }
        if (i10 != 2) {
            return i10 != 3 ? nVar.o() : nVar.p();
        }
        return nVar.n();
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @UiThread
    public static o k() {
        return a.f31663a;
    }

    @RequiresApi(19)
    private boolean l(Path path, int i10) {
        this.f31661k.reset();
        this.f31651a[i10].d(this.f31652b[i10], this.f31661k);
        RectF rectF = new RectF();
        path.computeBounds(rectF, true);
        this.f31661k.computeBounds(rectF, true);
        path.op(this.f31661k, Path.Op.INTERSECT);
        path.computeBounds(rectF, true);
        if (rectF.isEmpty()) {
            return rectF.width() > 1.0f && rectF.height() > 1.0f;
        }
        return true;
    }

    private void m(@NonNull c cVar, int i10) {
        h(i10, cVar.f31664a).c(this.f31651a[i10], 90.0f, cVar.f31668e, cVar.f31666c, g(i10, cVar.f31664a));
        float fA = a(i10);
        this.f31652b[i10].reset();
        f(i10, cVar.f31666c, this.f31654d);
        Matrix matrix = this.f31652b[i10];
        PointF pointF = this.f31654d;
        matrix.setTranslate(pointF.x, pointF.y);
        this.f31652b[i10].preRotate(fA);
    }

    private void o(int i10) {
        this.f31658h[0] = this.f31651a[i10].j();
        this.f31658h[1] = this.f31651a[i10].k();
        this.f31652b[i10].mapPoints(this.f31658h);
        float fA = a(i10);
        this.f31653c[i10].reset();
        Matrix matrix = this.f31653c[i10];
        float[] fArr = this.f31658h;
        matrix.setTranslate(fArr[0], fArr[1]);
        this.f31653c[i10].preRotate(fA);
    }

    public void d(n nVar, float f10, RectF rectF, @NonNull Path path) {
        e(nVar, f10, rectF, null, path);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void e(n nVar, float f10, RectF rectF, b bVar, @NonNull Path path) {
        path.rewind();
        this.f31655e.rewind();
        this.f31656f.rewind();
        this.f31656f.addRect(rectF, Path.Direction.CW);
        c cVar = new c(nVar, f10, rectF, bVar, path);
        for (int i10 = 0; i10 < 4; i10++) {
            m(cVar, i10);
            o(i10);
        }
        for (int i11 = 0; i11 < 4; i11++) {
            b(cVar, i11);
            c(cVar, i11);
        }
        path.close();
        this.f31655e.close();
        if (this.f31655e.isEmpty()) {
            return;
        }
        path.op(this.f31655e, Path.Op.UNION);
    }

    void n(boolean z10) {
        this.f31662l = z10;
    }
}

package com.google.android.material.shape;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class p {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final float f31669j = 270.0f;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected static final float f31670k = 180.0f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Deprecated
    public float f31671a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Deprecated
    public float f31672b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Deprecated
    public float f31673c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Deprecated
    public float f31674d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Deprecated
    public float f31675e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Deprecated
    public float f31676f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final List<h> f31677g = new ArrayList();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final List<j> f31678h = new ArrayList();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f31679i;

    class a extends j {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ List f31680c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ Matrix f31681d;

        a(List list, Matrix matrix) {
            this.f31680c = list;
            this.f31681d = matrix;
        }

        @Override // com.google.android.material.shape.p.j
        public void a(Matrix matrix, com.google.android.material.shadow.b bVar, int i10, Canvas canvas) {
            Iterator it2 = this.f31680c.iterator();
            while (it2.hasNext()) {
                ((j) it2.next()).a(this.f31681d, bVar, i10, canvas);
            }
        }
    }

    static class b extends j {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final e f31683c;

        public b(e eVar) {
            this.f31683c = eVar;
        }

        @Override // com.google.android.material.shape.p.j
        public void a(Matrix matrix, @NonNull com.google.android.material.shadow.b bVar, int i10, @NonNull Canvas canvas) {
            bVar.a(canvas, matrix, new RectF(this.f31683c.k(), this.f31683c.o(), this.f31683c.l(), this.f31683c.j()), i10, this.f31683c.m(), this.f31683c.n());
        }
    }

    static class c extends j {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final g f31684c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final g f31685d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final float f31686e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final float f31687f;

        public c(g gVar, g gVar2, float f10, float f11) {
            this.f31684c = gVar;
            this.f31685d = gVar2;
            this.f31686e = f10;
            this.f31687f = f11;
        }

        @Override // com.google.android.material.shape.p.j
        public void a(Matrix matrix, com.google.android.material.shadow.b bVar, int i10, Canvas canvas) {
            com.google.android.material.shadow.b bVar2;
            float fE = e();
            if (fE > 0.0f) {
                return;
            }
            double dHypot = Math.hypot(this.f31684c.f31704b - this.f31686e, this.f31684c.f31705c - this.f31687f);
            double dHypot2 = Math.hypot(this.f31685d.f31704b - this.f31684c.f31704b, this.f31685d.f31705c - this.f31684c.f31705c);
            float fMin = (float) Math.min(i10, Math.min(dHypot, dHypot2));
            double d10 = fMin;
            double dTan = Math.tan(Math.toRadians((-fE) / 2.0f)) * d10;
            if (dHypot > dTan) {
                RectF rectF = new RectF(0.0f, 0.0f, (float) (dHypot - dTan), 0.0f);
                this.f31712a.set(matrix);
                this.f31712a.preTranslate(this.f31686e, this.f31687f);
                this.f31712a.preRotate(d());
                bVar2 = bVar;
                bVar2.b(canvas, this.f31712a, rectF, i10);
            } else {
                bVar2 = bVar;
            }
            float f10 = 2.0f * fMin;
            RectF rectF2 = new RectF(0.0f, 0.0f, f10, f10);
            this.f31712a.set(matrix);
            this.f31712a.preTranslate(this.f31684c.f31704b, this.f31684c.f31705c);
            this.f31712a.preRotate(d());
            this.f31712a.preTranslate((float) ((-dTan) - d10), (-2.0f) * fMin);
            bVar.c(canvas, this.f31712a, rectF2, (int) fMin, 450.0f, fE, new float[]{(float) (d10 + dTan), f10});
            if (dHypot2 > dTan) {
                RectF rectF3 = new RectF(0.0f, 0.0f, (float) (dHypot2 - dTan), 0.0f);
                this.f31712a.set(matrix);
                this.f31712a.preTranslate(this.f31684c.f31704b, this.f31684c.f31705c);
                this.f31712a.preRotate(c());
                this.f31712a.preTranslate((float) dTan, 0.0f);
                bVar2.b(canvas, this.f31712a, rectF3, i10);
            }
        }

        float c() {
            return (float) Math.toDegrees(Math.atan((this.f31685d.f31705c - this.f31684c.f31705c) / (this.f31685d.f31704b - this.f31684c.f31704b)));
        }

        float d() {
            return (float) Math.toDegrees(Math.atan((this.f31684c.f31705c - this.f31687f) / (this.f31684c.f31704b - this.f31686e)));
        }

        float e() {
            float fC = ((c() - d()) + 360.0f) % 360.0f;
            return fC <= p.f31670k ? fC : fC - 360.0f;
        }
    }

    static class d extends j {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final g f31688c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final float f31689d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final float f31690e;

        public d(g gVar, float f10, float f11) {
            this.f31688c = gVar;
            this.f31689d = f10;
            this.f31690e = f11;
        }

        @Override // com.google.android.material.shape.p.j
        public void a(Matrix matrix, @NonNull com.google.android.material.shadow.b bVar, int i10, @NonNull Canvas canvas) {
            RectF rectF = new RectF(0.0f, 0.0f, (float) Math.hypot(this.f31688c.f31705c - this.f31690e, this.f31688c.f31704b - this.f31689d), 0.0f);
            this.f31712a.set(matrix);
            this.f31712a.preTranslate(this.f31689d, this.f31690e);
            this.f31712a.preRotate(c());
            bVar.b(canvas, this.f31712a, rectF, i10);
        }

        float c() {
            return (float) Math.toDegrees(Math.atan((this.f31688c.f31705c - this.f31690e) / (this.f31688c.f31704b - this.f31689d)));
        }
    }

    public static class e extends h {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private static final RectF f31691h = new RectF();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @Deprecated
        public float f31692b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @Deprecated
        public float f31693c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @Deprecated
        public float f31694d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        @Deprecated
        public float f31695e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        @Deprecated
        public float f31696f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        @Deprecated
        public float f31697g;

        public e(float f10, float f11, float f12, float f13) {
            q(f10);
            u(f11);
            r(f12);
            p(f13);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float j() {
            return this.f31695e;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float k() {
            return this.f31692b;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float l() {
            return this.f31694d;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float m() {
            return this.f31696f;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float n() {
            return this.f31697g;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float o() {
            return this.f31693c;
        }

        private void p(float f10) {
            this.f31695e = f10;
        }

        private void q(float f10) {
            this.f31692b = f10;
        }

        private void r(float f10) {
            this.f31694d = f10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void s(float f10) {
            this.f31696f = f10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void t(float f10) {
            this.f31697g = f10;
        }

        private void u(float f10) {
            this.f31693c = f10;
        }

        @Override // com.google.android.material.shape.p.h
        public void a(@NonNull Matrix matrix, @NonNull Path path) {
            Matrix matrix2 = this.f31706a;
            matrix.invert(matrix2);
            path.transform(matrix2);
            RectF rectF = f31691h;
            rectF.set(k(), o(), l(), j());
            path.arcTo(rectF, m(), n(), false);
            path.transform(matrix);
        }
    }

    public static class f extends h {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private float f31698b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private float f31699c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private float f31700d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private float f31701e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private float f31702f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private float f31703g;

        public f(float f10, float f11, float f12, float f13, float f14, float f15) {
            h(f10);
            j(f11);
            i(f12);
            k(f13);
            l(f14);
            m(f15);
        }

        private float b() {
            return this.f31698b;
        }

        private float c() {
            return this.f31700d;
        }

        private float d() {
            return this.f31699c;
        }

        private float e() {
            return this.f31699c;
        }

        private float f() {
            return this.f31702f;
        }

        private float g() {
            return this.f31703g;
        }

        private void h(float f10) {
            this.f31698b = f10;
        }

        private void i(float f10) {
            this.f31700d = f10;
        }

        private void j(float f10) {
            this.f31699c = f10;
        }

        private void k(float f10) {
            this.f31701e = f10;
        }

        private void l(float f10) {
            this.f31702f = f10;
        }

        private void m(float f10) {
            this.f31703g = f10;
        }

        @Override // com.google.android.material.shape.p.h
        public void a(@NonNull Matrix matrix, @NonNull Path path) {
            Matrix matrix2 = this.f31706a;
            matrix.invert(matrix2);
            path.transform(matrix2);
            path.cubicTo(this.f31698b, this.f31699c, this.f31700d, this.f31701e, this.f31702f, this.f31703g);
            path.transform(matrix);
        }
    }

    public static class g extends h {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private float f31704b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private float f31705c;

        @Override // com.google.android.material.shape.p.h
        public void a(@NonNull Matrix matrix, @NonNull Path path) {
            Matrix matrix2 = this.f31706a;
            matrix.invert(matrix2);
            path.transform(matrix2);
            path.lineTo(this.f31704b, this.f31705c);
            path.transform(matrix);
        }
    }

    public static abstract class h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        protected final Matrix f31706a = new Matrix();

        public abstract void a(Matrix matrix, Path path);
    }

    public static class i extends h {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @Deprecated
        public float f31707b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @Deprecated
        public float f31708c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @Deprecated
        public float f31709d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        @Deprecated
        public float f31710e;

        private float f() {
            return this.f31707b;
        }

        private float g() {
            return this.f31708c;
        }

        private float h() {
            return this.f31709d;
        }

        private float i() {
            return this.f31710e;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void j(float f10) {
            this.f31707b = f10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void k(float f10) {
            this.f31708c = f10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void l(float f10) {
            this.f31709d = f10;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void m(float f10) {
            this.f31710e = f10;
        }

        @Override // com.google.android.material.shape.p.h
        public void a(@NonNull Matrix matrix, @NonNull Path path) {
            Matrix matrix2 = this.f31706a;
            matrix.invert(matrix2);
            path.transform(matrix2);
            path.quadTo(f(), g(), h(), i());
            path.transform(matrix);
        }
    }

    static abstract class j {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final Matrix f31711b = new Matrix();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Matrix f31712a = new Matrix();

        j() {
        }

        public abstract void a(Matrix matrix, com.google.android.material.shadow.b bVar, int i10, Canvas canvas);

        public final void b(com.google.android.material.shadow.b bVar, int i10, Canvas canvas) {
            a(f31711b, bVar, i10, canvas);
        }
    }

    public p() {
        q(0.0f, 0.0f);
    }

    private void b(float f10) {
        if (h() == f10) {
            return;
        }
        float fH = ((f10 - h()) + 360.0f) % 360.0f;
        if (fH > f31670k) {
            return;
        }
        e eVar = new e(j(), k(), j(), k());
        eVar.s(h());
        eVar.t(fH);
        this.f31678h.add(new b(eVar));
        s(f10);
    }

    private void c(j jVar, float f10, float f11) {
        b(f10);
        this.f31678h.add(jVar);
        s(f11);
    }

    private float h() {
        return this.f31675e;
    }

    private float i() {
        return this.f31676f;
    }

    private void s(float f10) {
        this.f31675e = f10;
    }

    private void t(float f10) {
        this.f31676f = f10;
    }

    private void u(float f10) {
        this.f31673c = f10;
    }

    private void v(float f10) {
        this.f31674d = f10;
    }

    private void w(float f10) {
        this.f31671a = f10;
    }

    private void x(float f10) {
        this.f31672b = f10;
    }

    public void a(float f10, float f11, float f12, float f13, float f14, float f15) {
        e eVar = new e(f10, f11, f12, f13);
        eVar.s(f14);
        eVar.t(f15);
        this.f31677g.add(eVar);
        b bVar = new b(eVar);
        float f16 = f14 + f15;
        boolean z10 = f15 < 0.0f;
        if (z10) {
            f14 = (f14 + f31670k) % 360.0f;
        }
        c(bVar, f14, z10 ? (f31670k + f16) % 360.0f : f16);
        double d10 = f16;
        u(((f10 + f12) * 0.5f) + (((f12 - f10) / 2.0f) * ((float) Math.cos(Math.toRadians(d10)))));
        v(((f11 + f13) * 0.5f) + (((f13 - f11) / 2.0f) * ((float) Math.sin(Math.toRadians(d10)))));
    }

    public void d(Matrix matrix, Path path) {
        int size = this.f31677g.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f31677g.get(i10).a(matrix, path);
        }
    }

    boolean e() {
        return this.f31679i;
    }

    @NonNull
    j f(Matrix matrix) {
        b(i());
        return new a(new ArrayList(this.f31678h), new Matrix(matrix));
    }

    @RequiresApi(21)
    public void g(float f10, float f11, float f12, float f13, float f14, float f15) {
        this.f31677g.add(new f(f10, f11, f12, f13, f14, f15));
        this.f31679i = true;
        u(f14);
        v(f15);
    }

    float j() {
        return this.f31673c;
    }

    float k() {
        return this.f31674d;
    }

    float l() {
        return this.f31671a;
    }

    float m() {
        return this.f31672b;
    }

    public void n(float f10, float f11) {
        g gVar = new g();
        gVar.f31704b = f10;
        gVar.f31705c = f11;
        this.f31677g.add(gVar);
        d dVar = new d(gVar, j(), k());
        c(dVar, dVar.c() + f31669j, dVar.c() + f31669j);
        u(f10);
        v(f11);
    }

    public void o(float f10, float f11, float f12, float f13) {
        if ((Math.abs(f10 - j()) < 0.001f && Math.abs(f11 - k()) < 0.001f) || (Math.abs(f10 - f12) < 0.001f && Math.abs(f11 - f13) < 0.001f)) {
            n(f12, f13);
            return;
        }
        g gVar = new g();
        gVar.f31704b = f10;
        gVar.f31705c = f11;
        this.f31677g.add(gVar);
        g gVar2 = new g();
        gVar2.f31704b = f12;
        gVar2.f31705c = f13;
        this.f31677g.add(gVar2);
        c cVar = new c(gVar, gVar2, j(), k());
        if (cVar.e() > 0.0f) {
            n(f10, f11);
            n(f12, f13);
        } else {
            c(cVar, cVar.d() + f31669j, cVar.c() + f31669j);
            u(f12);
            v(f13);
        }
    }

    @RequiresApi(21)
    public void p(float f10, float f11, float f12, float f13) {
        i iVar = new i();
        iVar.j(f10);
        iVar.k(f11);
        iVar.l(f12);
        iVar.m(f13);
        this.f31677g.add(iVar);
        this.f31679i = true;
        u(f12);
        v(f13);
    }

    public void q(float f10, float f11) {
        r(f10, f11, f31669j, 0.0f);
    }

    public void r(float f10, float f11, float f12, float f13) {
        w(f10);
        x(f11);
        u(f10);
        v(f11);
        s(f12);
        t((f12 + f13) % 360.0f);
        this.f31677g.clear();
        this.f31678h.clear();
        this.f31679i = false;
    }

    public p(float f10, float f11) {
        q(f10, f11);
    }
}

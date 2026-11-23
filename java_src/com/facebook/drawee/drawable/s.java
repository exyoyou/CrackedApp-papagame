package com.facebook.drawee.drawable;

import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class s {

    public static abstract class a implements c {
        @Override // com.facebook.drawee.drawable.s.c
        public Matrix a(Matrix outTransform, Rect parentRect, int childWidth, int childHeight, float focusX, float focusY) {
            b(outTransform, parentRect, childWidth, childHeight, focusX, focusY, parentRect.width() / childWidth, parentRect.height() / childHeight);
            return outTransform;
        }

        public abstract void b(Matrix outTransform, Rect parentRect, int childWidth, int childHeight, float focusX, float focusY, float scaleX, float scaleY);
    }

    public interface c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final c f27284a = l.f27303l;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final c f27285b = k.f27302l;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final c f27286c = m.f27304l;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final c f27287d = j.f27301l;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final c f27288e = h.f27299l;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final c f27289f = i.f27300l;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public static final c f27290g = d.f27295l;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final c f27291h = f.f27297l;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final c f27292i = e.f27296l;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public static final c f27293j = n.f27305l;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public static final c f27294k = g.f27298l;

        Matrix a(Matrix outTransform, Rect parentBounds, int childWidth, int childHeight, float focusX, float focusY);
    }

    private static class d extends a {

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public static final c f27295l = new d();

        private d() {
        }

        @Override // com.facebook.drawee.drawable.s.a
        public void b(Matrix outTransform, Rect parentRect, int childWidth, int childHeight, float focusX, float focusY, float scaleX, float scaleY) {
            outTransform.setTranslate((int) (parentRect.left + ((parentRect.width() - childWidth) * 0.5f) + 0.5f), (int) (parentRect.top + ((parentRect.height() - childHeight) * 0.5f) + 0.5f));
        }

        public String toString() {
            return "center";
        }
    }

    private static class e extends a {

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public static final c f27296l = new e();

        private e() {
        }

        @Override // com.facebook.drawee.drawable.s.a
        public void b(Matrix outTransform, Rect parentRect, int childWidth, int childHeight, float focusX, float focusY, float scaleX, float scaleY) {
            float fHeight;
            float fWidth;
            if (scaleY > scaleX) {
                fWidth = parentRect.left + ((parentRect.width() - (childWidth * scaleY)) * 0.5f);
                fHeight = parentRect.top;
                scaleX = scaleY;
            } else {
                float f10 = parentRect.left;
                fHeight = ((parentRect.height() - (childHeight * scaleX)) * 0.5f) + parentRect.top;
                fWidth = f10;
            }
            outTransform.setScale(scaleX, scaleX);
            outTransform.postTranslate((int) (fWidth + 0.5f), (int) (fHeight + 0.5f));
        }

        public String toString() {
            return "center_crop";
        }
    }

    private static class f extends a {

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public static final c f27297l = new f();

        private f() {
        }

        @Override // com.facebook.drawee.drawable.s.a
        public void b(Matrix outTransform, Rect parentRect, int childWidth, int childHeight, float focusX, float focusY, float scaleX, float scaleY) {
            float fMin = Math.min(Math.min(scaleX, scaleY), 1.0f);
            float fWidth = parentRect.left + ((parentRect.width() - (childWidth * fMin)) * 0.5f);
            float fHeight = parentRect.top + ((parentRect.height() - (childHeight * fMin)) * 0.5f);
            outTransform.setScale(fMin, fMin);
            outTransform.postTranslate((int) (fWidth + 0.5f), (int) (fHeight + 0.5f));
        }

        public String toString() {
            return "center_inside";
        }
    }

    private static class g extends a {

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public static final c f27298l = new g();

        private g() {
        }

        @Override // com.facebook.drawee.drawable.s.a
        public void b(Matrix outTransform, Rect parentRect, int childWidth, int childHeight, float focusX, float focusY, float scaleX, float scaleY) {
            float fMin = Math.min(scaleX, scaleY);
            float f10 = parentRect.left;
            float fHeight = parentRect.top + (parentRect.height() - (childHeight * fMin));
            outTransform.setScale(fMin, fMin);
            outTransform.postTranslate((int) (f10 + 0.5f), (int) (fHeight + 0.5f));
        }

        public String toString() {
            return "fit_bottom_start";
        }
    }

    private static class h extends a {

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public static final c f27299l = new h();

        private h() {
        }

        @Override // com.facebook.drawee.drawable.s.a
        public void b(Matrix outTransform, Rect parentRect, int childWidth, int childHeight, float focusX, float focusY, float scaleX, float scaleY) {
            float fMin = Math.min(scaleX, scaleY);
            float fWidth = parentRect.left + ((parentRect.width() - (childWidth * fMin)) * 0.5f);
            float fHeight = parentRect.top + ((parentRect.height() - (childHeight * fMin)) * 0.5f);
            outTransform.setScale(fMin, fMin);
            outTransform.postTranslate((int) (fWidth + 0.5f), (int) (fHeight + 0.5f));
        }

        public String toString() {
            return "fit_center";
        }
    }

    private static class i extends a {

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public static final c f27300l = new i();

        private i() {
        }

        @Override // com.facebook.drawee.drawable.s.a
        public void b(Matrix outTransform, Rect parentRect, int childWidth, int childHeight, float focusX, float focusY, float scaleX, float scaleY) {
            float fMin = Math.min(scaleX, scaleY);
            float fWidth = parentRect.left + (parentRect.width() - (childWidth * fMin));
            float fHeight = parentRect.top + (parentRect.height() - (childHeight * fMin));
            outTransform.setScale(fMin, fMin);
            outTransform.postTranslate((int) (fWidth + 0.5f), (int) (fHeight + 0.5f));
        }

        public String toString() {
            return "fit_end";
        }
    }

    private static class j extends a {

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public static final c f27301l = new j();

        private j() {
        }

        @Override // com.facebook.drawee.drawable.s.a
        public void b(Matrix outTransform, Rect parentRect, int childWidth, int childHeight, float focusX, float focusY, float scaleX, float scaleY) {
            float fMin = Math.min(scaleX, scaleY);
            float f10 = parentRect.left;
            float f11 = parentRect.top;
            outTransform.setScale(fMin, fMin);
            outTransform.postTranslate((int) (f10 + 0.5f), (int) (f11 + 0.5f));
        }

        public String toString() {
            return "fit_start";
        }
    }

    private static class k extends a {

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public static final c f27302l = new k();

        private k() {
        }

        @Override // com.facebook.drawee.drawable.s.a
        public void b(Matrix outTransform, Rect parentRect, int childWidth, int childHeight, float focusX, float focusY, float scaleX, float scaleY) {
            float f10 = parentRect.left;
            float fHeight = parentRect.top + ((parentRect.height() - (childHeight * scaleX)) * 0.5f);
            outTransform.setScale(scaleX, scaleX);
            outTransform.postTranslate((int) (f10 + 0.5f), (int) (fHeight + 0.5f));
        }

        public String toString() {
            return "fit_x";
        }
    }

    private static class l extends a {

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public static final c f27303l = new l();

        private l() {
        }

        @Override // com.facebook.drawee.drawable.s.a
        public void b(Matrix outTransform, Rect parentRect, int childWidth, int childHeight, float focusX, float focusY, float scaleX, float scaleY) {
            float f10 = parentRect.left;
            float f11 = parentRect.top;
            outTransform.setScale(scaleX, scaleY);
            outTransform.postTranslate((int) (f10 + 0.5f), (int) (f11 + 0.5f));
        }

        public String toString() {
            return "fit_xy";
        }
    }

    private static class m extends a {

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public static final c f27304l = new m();

        private m() {
        }

        @Override // com.facebook.drawee.drawable.s.a
        public void b(Matrix outTransform, Rect parentRect, int childWidth, int childHeight, float focusX, float focusY, float scaleX, float scaleY) {
            float fWidth = parentRect.left + ((parentRect.width() - (childWidth * scaleY)) * 0.5f);
            float f10 = parentRect.top;
            outTransform.setScale(scaleY, scaleY);
            outTransform.postTranslate((int) (fWidth + 0.5f), (int) (f10 + 0.5f));
        }

        public String toString() {
            return "fit_y";
        }
    }

    private static class n extends a {

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public static final c f27305l = new n();

        private n() {
        }

        @Override // com.facebook.drawee.drawable.s.a
        public void b(Matrix outTransform, Rect parentRect, int childWidth, int childHeight, float focusX, float focusY, float scaleX, float scaleY) {
            float fMax;
            float fMax2;
            if (scaleY > scaleX) {
                float f10 = childWidth * scaleY;
                fMax = parentRect.left + Math.max(Math.min((parentRect.width() * 0.5f) - (focusX * f10), 0.0f), parentRect.width() - f10);
                fMax2 = parentRect.top;
                scaleX = scaleY;
            } else {
                fMax = parentRect.left;
                float f11 = childHeight * scaleX;
                fMax2 = Math.max(Math.min((parentRect.height() * 0.5f) - (focusY * f11), 0.0f), parentRect.height() - f11) + parentRect.top;
            }
            outTransform.setScale(scaleX, scaleX);
            outTransform.postTranslate((int) (fMax + 0.5f), (int) (fMax2 + 0.5f));
        }

        public String toString() {
            return "focus_crop";
        }
    }

    public interface o {
        Object getState();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public static r a(@Nullable Drawable drawable) {
        if (drawable == 0) {
            return null;
        }
        if (drawable instanceof r) {
            return (r) drawable;
        }
        if (drawable instanceof com.facebook.drawee.drawable.d) {
            return a(((com.facebook.drawee.drawable.d) drawable).m());
        }
        if (drawable instanceof com.facebook.drawee.drawable.a) {
            com.facebook.drawee.drawable.a aVar = (com.facebook.drawee.drawable.a) drawable;
            int iD = aVar.d();
            for (int i10 = 0; i10 < iD; i10++) {
                r rVarA = a(aVar.b(i10));
                if (rVarA != null) {
                    return rVarA;
                }
            }
        }
        return null;
    }

    public static class b implements c, o {

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private final c f27274l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private final c f27275m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        @Nullable
        private final Rect f27276n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        @Nullable
        private final Rect f27277o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        @Nullable
        private final PointF f27278p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        @Nullable
        private final PointF f27279q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private final float[] f27280r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private final float[] f27281s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private final float[] f27282t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        private float f27283u;

        public b(c scaleTypeFrom, c scaleTypeTo, @Nullable Rect boundsFrom, @Nullable Rect boundsTo, @Nullable PointF focusPointFrom, @Nullable PointF focusPointTo) {
            this.f27280r = new float[9];
            this.f27281s = new float[9];
            this.f27282t = new float[9];
            this.f27274l = scaleTypeFrom;
            this.f27275m = scaleTypeTo;
            this.f27276n = boundsFrom;
            this.f27277o = boundsTo;
            this.f27278p = focusPointFrom;
            this.f27279q = focusPointTo;
        }

        @Override // com.facebook.drawee.drawable.s.c
        public Matrix a(Matrix transform, Rect parentBounds, int childWidth, int childHeight, float focusX, float focusY) {
            Rect rect = this.f27276n;
            Rect rect2 = rect != null ? rect : parentBounds;
            Rect rect3 = this.f27277o;
            Rect rect4 = rect3 != null ? rect3 : parentBounds;
            c cVar = this.f27274l;
            PointF pointF = this.f27278p;
            cVar.a(transform, rect2, childWidth, childHeight, pointF == null ? focusX : pointF.x, pointF == null ? focusY : pointF.y);
            transform.getValues(this.f27280r);
            c cVar2 = this.f27275m;
            PointF pointF2 = this.f27279q;
            cVar2.a(transform, rect4, childWidth, childHeight, pointF2 == null ? focusX : pointF2.x, pointF2 == null ? focusY : pointF2.y);
            transform.getValues(this.f27281s);
            for (int i10 = 0; i10 < 9; i10++) {
                float[] fArr = this.f27282t;
                float f10 = this.f27280r[i10];
                float f11 = this.f27283u;
                fArr[i10] = (f10 * (1.0f - f11)) + (this.f27281s[i10] * f11);
            }
            transform.setValues(this.f27282t);
            return transform;
        }

        @Nullable
        public Rect b() {
            return this.f27276n;
        }

        @Nullable
        public Rect c() {
            return this.f27277o;
        }

        @Nullable
        public PointF d() {
            return this.f27278p;
        }

        @Nullable
        public PointF e() {
            return this.f27279q;
        }

        public c f() {
            return this.f27274l;
        }

        public c g() {
            return this.f27275m;
        }

        @Override // com.facebook.drawee.drawable.s.o
        public Object getState() {
            return Float.valueOf(this.f27283u);
        }

        public float h() {
            return this.f27283u;
        }

        public void i(float value) {
            this.f27283u = value;
        }

        public String toString() {
            return String.format("InterpolatingScaleType(%s (%s) -> %s (%s))", String.valueOf(this.f27274l), String.valueOf(this.f27278p), String.valueOf(this.f27275m), String.valueOf(this.f27279q));
        }

        public b(c scaleTypeFrom, c scaleTypeTo, @Nullable Rect boundsFrom, @Nullable Rect boundsTo) {
            this(scaleTypeFrom, scaleTypeTo, boundsFrom, boundsTo, null, null);
        }

        public b(c scaleTypeFrom, c scaleTypeTo) {
            this(scaleTypeFrom, scaleTypeTo, null, null);
        }
    }
}

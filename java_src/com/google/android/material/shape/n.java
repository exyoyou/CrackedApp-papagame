package com.google.android.material.shape;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import androidx.annotation.AttrRes;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import com.google.android.material.R;
import com.google.errorprone.annotations.CanIgnoreReturnValue;

/* JADX INFO: loaded from: classes5.dex */
public class n {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final d f31626m = new l(0.5f);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    e f31627a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    e f31628b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    e f31629c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    e f31630d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    d f31631e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    d f31632f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    d f31633g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    d f31634h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    g f31635i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    g f31636j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    g f31637k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    g f31638l;

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public interface c {
        @NonNull
        d a(@NonNull d dVar);
    }

    @NonNull
    public static b a() {
        return new b();
    }

    @NonNull
    public static b b(Context context, @StyleRes int i10, @StyleRes int i11) {
        return c(context, i10, i11, 0);
    }

    @NonNull
    private static b c(Context context, @StyleRes int i10, @StyleRes int i11, int i12) {
        return d(context, i10, i11, new com.google.android.material.shape.a(i12));
    }

    @NonNull
    private static b d(Context context, @StyleRes int i10, @StyleRes int i11, @NonNull d dVar) {
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, i10);
        if (i11 != 0) {
            contextThemeWrapper = new ContextThemeWrapper(contextThemeWrapper, i11);
        }
        TypedArray typedArrayObtainStyledAttributes = contextThemeWrapper.obtainStyledAttributes(R.styleable.ShapeAppearance);
        try {
            int i12 = typedArrayObtainStyledAttributes.getInt(R.styleable.ShapeAppearance_cornerFamily, 0);
            int i13 = typedArrayObtainStyledAttributes.getInt(R.styleable.ShapeAppearance_cornerFamilyTopLeft, i12);
            int i14 = typedArrayObtainStyledAttributes.getInt(R.styleable.ShapeAppearance_cornerFamilyTopRight, i12);
            int i15 = typedArrayObtainStyledAttributes.getInt(R.styleable.ShapeAppearance_cornerFamilyBottomRight, i12);
            int i16 = typedArrayObtainStyledAttributes.getInt(R.styleable.ShapeAppearance_cornerFamilyBottomLeft, i12);
            d dVarM = m(typedArrayObtainStyledAttributes, R.styleable.ShapeAppearance_cornerSize, dVar);
            d dVarM2 = m(typedArrayObtainStyledAttributes, R.styleable.ShapeAppearance_cornerSizeTopLeft, dVarM);
            d dVarM3 = m(typedArrayObtainStyledAttributes, R.styleable.ShapeAppearance_cornerSizeTopRight, dVarM);
            d dVarM4 = m(typedArrayObtainStyledAttributes, R.styleable.ShapeAppearance_cornerSizeBottomRight, dVarM);
            return new b().I(i13, dVarM2).N(i14, dVarM3).A(i15, dVarM4).v(i16, m(typedArrayObtainStyledAttributes, R.styleable.ShapeAppearance_cornerSizeBottomLeft, dVarM));
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @NonNull
    public static b e(@NonNull Context context, AttributeSet attributeSet, @AttrRes int i10, @StyleRes int i11) {
        return f(context, attributeSet, i10, i11, 0);
    }

    @NonNull
    public static b f(@NonNull Context context, AttributeSet attributeSet, @AttrRes int i10, @StyleRes int i11, int i12) {
        return g(context, attributeSet, i10, i11, new com.google.android.material.shape.a(i12));
    }

    @NonNull
    public static b g(@NonNull Context context, AttributeSet attributeSet, @AttrRes int i10, @StyleRes int i11, @NonNull d dVar) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MaterialShape, i10, i11);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.MaterialShape_shapeAppearance, 0);
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(R.styleable.MaterialShape_shapeAppearanceOverlay, 0);
        typedArrayObtainStyledAttributes.recycle();
        return d(context, resourceId, resourceId2, dVar);
    }

    @NonNull
    private static d m(TypedArray typedArray, int i10, @NonNull d dVar) {
        TypedValue typedValuePeekValue = typedArray.peekValue(i10);
        if (typedValuePeekValue == null) {
            return dVar;
        }
        int i11 = typedValuePeekValue.type;
        if (i11 == 5) {
            return new com.google.android.material.shape.a(TypedValue.complexToDimensionPixelSize(typedValuePeekValue.data, typedArray.getResources().getDisplayMetrics()));
        }
        return i11 == 6 ? new l(typedValuePeekValue.getFraction(1.0f, 1.0f)) : dVar;
    }

    @NonNull
    public g h() {
        return this.f31637k;
    }

    @NonNull
    public e i() {
        return this.f31630d;
    }

    @NonNull
    public d j() {
        return this.f31634h;
    }

    @NonNull
    public e k() {
        return this.f31629c;
    }

    @NonNull
    public d l() {
        return this.f31633g;
    }

    @NonNull
    public g n() {
        return this.f31638l;
    }

    @NonNull
    public g o() {
        return this.f31636j;
    }

    @NonNull
    public g p() {
        return this.f31635i;
    }

    @NonNull
    public e q() {
        return this.f31627a;
    }

    @NonNull
    public d r() {
        return this.f31631e;
    }

    @NonNull
    public e s() {
        return this.f31628b;
    }

    @NonNull
    public d t() {
        return this.f31632f;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public boolean u(@NonNull RectF rectF) {
        boolean z10 = this.f31638l.getClass().equals(g.class) && this.f31636j.getClass().equals(g.class) && this.f31635i.getClass().equals(g.class) && this.f31637k.getClass().equals(g.class);
        float fA = this.f31631e.a(rectF);
        return z10 && ((this.f31632f.a(rectF) > fA ? 1 : (this.f31632f.a(rectF) == fA ? 0 : -1)) == 0 && (this.f31634h.a(rectF) > fA ? 1 : (this.f31634h.a(rectF) == fA ? 0 : -1)) == 0 && (this.f31633g.a(rectF) > fA ? 1 : (this.f31633g.a(rectF) == fA ? 0 : -1)) == 0) && ((this.f31628b instanceof m) && (this.f31627a instanceof m) && (this.f31629c instanceof m) && (this.f31630d instanceof m));
    }

    @NonNull
    public b v() {
        return new b(this);
    }

    @NonNull
    public n w(float f10) {
        return v().o(f10).m();
    }

    @NonNull
    public n x(@NonNull d dVar) {
        return v().p(dVar).m();
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public n y(@NonNull c cVar) {
        return v().L(cVar.a(r())).Q(cVar.a(t())).y(cVar.a(j())).D(cVar.a(l())).m();
    }

    private n(@NonNull b bVar) {
        this.f31627a = bVar.f31639a;
        this.f31628b = bVar.f31640b;
        this.f31629c = bVar.f31641c;
        this.f31630d = bVar.f31642d;
        this.f31631e = bVar.f31643e;
        this.f31632f = bVar.f31644f;
        this.f31633g = bVar.f31645g;
        this.f31634h = bVar.f31646h;
        this.f31635i = bVar.f31647i;
        this.f31636j = bVar.f31648j;
        this.f31637k = bVar.f31649k;
        this.f31638l = bVar.f31650l;
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @NonNull
        private e f31639a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @NonNull
        private e f31640b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @NonNull
        private e f31641c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @NonNull
        private e f31642d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        @NonNull
        private d f31643e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        @NonNull
        private d f31644f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        @NonNull
        private d f31645g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        @NonNull
        private d f31646h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        @NonNull
        private g f31647i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        @NonNull
        private g f31648j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        @NonNull
        private g f31649k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        @NonNull
        private g f31650l;

        public b() {
            this.f31639a = j.b();
            this.f31640b = j.b();
            this.f31641c = j.b();
            this.f31642d = j.b();
            this.f31643e = new com.google.android.material.shape.a(0.0f);
            this.f31644f = new com.google.android.material.shape.a(0.0f);
            this.f31645g = new com.google.android.material.shape.a(0.0f);
            this.f31646h = new com.google.android.material.shape.a(0.0f);
            this.f31647i = j.c();
            this.f31648j = j.c();
            this.f31649k = j.c();
            this.f31650l = j.c();
        }

        private static float n(e eVar) {
            if (eVar instanceof m) {
                return ((m) eVar).f31625a;
            }
            if (eVar instanceof f) {
                return ((f) eVar).f31613a;
            }
            return -1.0f;
        }

        @NonNull
        @CanIgnoreReturnValue
        public b A(int i10, @NonNull d dVar) {
            return B(j.a(i10)).D(dVar);
        }

        @NonNull
        @CanIgnoreReturnValue
        public b B(@NonNull e eVar) {
            this.f31641c = eVar;
            float fN = n(eVar);
            if (fN != -1.0f) {
                C(fN);
            }
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public b C(@Dimension float f10) {
            this.f31645g = new com.google.android.material.shape.a(f10);
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public b D(@NonNull d dVar) {
            this.f31645g = dVar;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public b E(@NonNull g gVar) {
            this.f31650l = gVar;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public b F(@NonNull g gVar) {
            this.f31648j = gVar;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public b G(@NonNull g gVar) {
            this.f31647i = gVar;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public b H(int i10, @Dimension float f10) {
            return J(j.a(i10)).K(f10);
        }

        @NonNull
        @CanIgnoreReturnValue
        public b I(int i10, @NonNull d dVar) {
            return J(j.a(i10)).L(dVar);
        }

        @NonNull
        @CanIgnoreReturnValue
        public b J(@NonNull e eVar) {
            this.f31639a = eVar;
            float fN = n(eVar);
            if (fN != -1.0f) {
                K(fN);
            }
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public b K(@Dimension float f10) {
            this.f31643e = new com.google.android.material.shape.a(f10);
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public b L(@NonNull d dVar) {
            this.f31643e = dVar;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public b M(int i10, @Dimension float f10) {
            return O(j.a(i10)).P(f10);
        }

        @NonNull
        @CanIgnoreReturnValue
        public b N(int i10, @NonNull d dVar) {
            return O(j.a(i10)).Q(dVar);
        }

        @NonNull
        @CanIgnoreReturnValue
        public b O(@NonNull e eVar) {
            this.f31640b = eVar;
            float fN = n(eVar);
            if (fN != -1.0f) {
                P(fN);
            }
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public b P(@Dimension float f10) {
            this.f31644f = new com.google.android.material.shape.a(f10);
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public b Q(@NonNull d dVar) {
            this.f31644f = dVar;
            return this;
        }

        @NonNull
        public n m() {
            return new n(this);
        }

        @NonNull
        @CanIgnoreReturnValue
        public b o(@Dimension float f10) {
            return K(f10).P(f10).C(f10).x(f10);
        }

        @NonNull
        @CanIgnoreReturnValue
        public b p(@NonNull d dVar) {
            return L(dVar).Q(dVar).D(dVar).y(dVar);
        }

        @NonNull
        @CanIgnoreReturnValue
        public b q(int i10, @Dimension float f10) {
            return r(j.a(i10)).o(f10);
        }

        @NonNull
        @CanIgnoreReturnValue
        public b r(@NonNull e eVar) {
            return J(eVar).O(eVar).B(eVar).w(eVar);
        }

        @NonNull
        @CanIgnoreReturnValue
        public b s(@NonNull g gVar) {
            return E(gVar).G(gVar).F(gVar).t(gVar);
        }

        @NonNull
        @CanIgnoreReturnValue
        public b t(@NonNull g gVar) {
            this.f31649k = gVar;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public b u(int i10, @Dimension float f10) {
            return w(j.a(i10)).x(f10);
        }

        @NonNull
        @CanIgnoreReturnValue
        public b v(int i10, @NonNull d dVar) {
            return w(j.a(i10)).y(dVar);
        }

        @NonNull
        @CanIgnoreReturnValue
        public b w(@NonNull e eVar) {
            this.f31642d = eVar;
            float fN = n(eVar);
            if (fN != -1.0f) {
                x(fN);
            }
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public b x(@Dimension float f10) {
            this.f31646h = new com.google.android.material.shape.a(f10);
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public b y(@NonNull d dVar) {
            this.f31646h = dVar;
            return this;
        }

        @NonNull
        @CanIgnoreReturnValue
        public b z(int i10, @Dimension float f10) {
            return B(j.a(i10)).C(f10);
        }

        public b(@NonNull n nVar) {
            this.f31639a = j.b();
            this.f31640b = j.b();
            this.f31641c = j.b();
            this.f31642d = j.b();
            this.f31643e = new com.google.android.material.shape.a(0.0f);
            this.f31644f = new com.google.android.material.shape.a(0.0f);
            this.f31645g = new com.google.android.material.shape.a(0.0f);
            this.f31646h = new com.google.android.material.shape.a(0.0f);
            this.f31647i = j.c();
            this.f31648j = j.c();
            this.f31649k = j.c();
            this.f31650l = j.c();
            this.f31639a = nVar.f31627a;
            this.f31640b = nVar.f31628b;
            this.f31641c = nVar.f31629c;
            this.f31642d = nVar.f31630d;
            this.f31643e = nVar.f31631e;
            this.f31644f = nVar.f31632f;
            this.f31645g = nVar.f31633g;
            this.f31646h = nVar.f31634h;
            this.f31647i = nVar.f31635i;
            this.f31648j = nVar.f31636j;
            this.f31649k = nVar.f31637k;
            this.f31650l = nVar.f31638l;
        }
    }

    public n() {
        this.f31627a = j.b();
        this.f31628b = j.b();
        this.f31629c = j.b();
        this.f31630d = j.b();
        this.f31631e = new com.google.android.material.shape.a(0.0f);
        this.f31632f = new com.google.android.material.shape.a(0.0f);
        this.f31633g = new com.google.android.material.shape.a(0.0f);
        this.f31634h = new com.google.android.material.shape.a(0.0f);
        this.f31635i = j.c();
        this.f31636j = j.c();
        this.f31637k = j.c();
        this.f31638l = j.c();
    }
}

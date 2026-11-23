package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.FloatEvaluator;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.content.res.ColorStateList;
import android.graphics.Matrix;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.util.Property;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.util.Preconditions;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.internal.w;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.n;
import com.google.android.material.shape.r;
import com.zyyoona7.wheel.WheelView;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
class d {
    static final long E = 100;
    static final long F = 100;
    static final int G = 0;
    static final int H = 1;
    static final int I = 2;
    static final float J = 1.5f;
    private static final float K = 0.0f;
    private static final float L = 0.4f;
    private static final float M = 0.4f;
    private static final float N = 1.0f;
    private static final float O = 1.0f;
    private static final float P = 1.0f;
    private static final float Q = 0.0f;
    private static final float R = 0.0f;

    @Nullable
    private ViewTreeObserver.OnPreDrawListener C;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    n f30704a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    MaterialShapeDrawable f30705b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    Drawable f30706c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    com.google.android.material.floatingactionbutton.c f30707d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    Drawable f30708e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    boolean f30709f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    float f30711h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    float f30712i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    float f30713j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    int f30714k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    private final w f30715l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @Nullable
    private Animator f30716m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @Nullable
    private com.google.android.material.animation.i f30717n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @Nullable
    private com.google.android.material.animation.i f30718o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private float f30719p;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f30721r;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private ArrayList<Animator.AnimatorListener> f30723t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private ArrayList<Animator.AnimatorListener> f30724u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private ArrayList<j> f30725v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    final FloatingActionButton f30726w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    final com.google.android.material.shadow.c f30727x;
    static final TimeInterpolator D = com.google.android.material.animation.b.f29369c;
    private static final int S = R.attr.motionDurationLong2;
    private static final int T = R.attr.motionEasingEmphasizedInterpolator;
    private static final int U = R.attr.motionDurationMedium1;
    private static final int V = R.attr.motionEasingEmphasizedAccelerateInterpolator;
    static final int[] W = {android.R.attr.state_pressed, android.R.attr.state_enabled};
    static final int[] X = {android.R.attr.state_hovered, android.R.attr.state_focused, android.R.attr.state_enabled};
    static final int[] Y = {android.R.attr.state_focused, android.R.attr.state_enabled};
    static final int[] Z = {android.R.attr.state_hovered, android.R.attr.state_enabled};

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    static final int[] f30702a0 = {android.R.attr.state_enabled};

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    static final int[] f30703b0 = new int[0];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    boolean f30710g = true;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private float f30720q = 1.0f;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f30722s = 0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final Rect f30728y = new Rect();

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final RectF f30729z = new RectF();
    private final RectF A = new RectF();
    private final Matrix B = new Matrix();

    class a extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f30730b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ boolean f30731c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ k f30732d;

        a(boolean z10, k kVar) {
            this.f30731c = z10;
            this.f30732d = kVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f30730b = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            d.this.f30722s = 0;
            d.this.f30716m = null;
            if (this.f30730b) {
                return;
            }
            FloatingActionButton floatingActionButton = d.this.f30726w;
            boolean z10 = this.f30731c;
            floatingActionButton.c(z10 ? 8 : 4, z10);
            k kVar = this.f30732d;
            if (kVar != null) {
                kVar.onHidden();
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            d.this.f30726w.c(0, this.f30731c);
            d.this.f30722s = 1;
            d.this.f30716m = animator;
            this.f30730b = false;
        }
    }

    class b extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f30734b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ k f30735c;

        b(boolean z10, k kVar) {
            this.f30734b = z10;
            this.f30735c = kVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            d.this.f30722s = 0;
            d.this.f30716m = null;
            k kVar = this.f30735c;
            if (kVar != null) {
                kVar.onShown();
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            d.this.f30726w.c(0, this.f30734b);
            d.this.f30722s = 2;
            d.this.f30716m = animator;
        }
    }

    class c extends com.google.android.material.animation.h {
        c() {
        }

        @Override // com.google.android.material.animation.h, android.animation.TypeEvaluator
        /* JADX INFO: renamed from: a */
        public Matrix evaluate(float f10, @NonNull Matrix matrix, @NonNull Matrix matrix2) {
            d.this.f30720q = f10;
            return super.evaluate(f10, matrix, matrix2);
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.floatingactionbutton.d$d, reason: collision with other inner class name */
    class C0601d implements ValueAnimator.AnimatorUpdateListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ float f30738b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ float f30739c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ float f30740d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ float f30741e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ float f30742f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ float f30743g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final /* synthetic */ float f30744h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        final /* synthetic */ Matrix f30745i;

        C0601d(float f10, float f11, float f12, float f13, float f14, float f15, float f16, Matrix matrix) {
            this.f30738b = f10;
            this.f30739c = f11;
            this.f30740d = f12;
            this.f30741e = f13;
            this.f30742f = f14;
            this.f30743g = f15;
            this.f30744h = f16;
            this.f30745i = matrix;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            d.this.f30726w.setAlpha(com.google.android.material.animation.b.b(this.f30738b, this.f30739c, 0.0f, 0.2f, fFloatValue));
            d.this.f30726w.setScaleX(com.google.android.material.animation.b.a(this.f30740d, this.f30741e, fFloatValue));
            d.this.f30726w.setScaleY(com.google.android.material.animation.b.a(this.f30742f, this.f30741e, fFloatValue));
            d.this.f30720q = com.google.android.material.animation.b.a(this.f30743g, this.f30744h, fFloatValue);
            d.this.h(com.google.android.material.animation.b.a(this.f30743g, this.f30744h, fFloatValue), this.f30745i);
            d.this.f30726w.setImageMatrix(this.f30745i);
        }
    }

    class e implements TypeEvaluator<Float> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        FloatEvaluator f30747a = new FloatEvaluator();

        e() {
        }

        @Override // android.animation.TypeEvaluator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float evaluate(float f10, Float f11, Float f12) {
            float fFloatValue = this.f30747a.evaluate(f10, (Number) f11, (Number) f12).floatValue();
            if (fFloatValue < 0.1f) {
                fFloatValue = 0.0f;
            }
            return Float.valueOf(fFloatValue);
        }
    }

    class f implements ViewTreeObserver.OnPreDrawListener {
        f() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            d.this.I();
            return true;
        }
    }

    private class g extends m {
        g() {
            super(d.this, null);
        }

        @Override // com.google.android.material.floatingactionbutton.d.m
        protected float a() {
            return 0.0f;
        }
    }

    private class h extends m {
        h() {
            super(d.this, null);
        }

        @Override // com.google.android.material.floatingactionbutton.d.m
        protected float a() {
            d dVar = d.this;
            return dVar.f30711h + dVar.f30712i;
        }
    }

    private class i extends m {
        i() {
            super(d.this, null);
        }

        @Override // com.google.android.material.floatingactionbutton.d.m
        protected float a() {
            d dVar = d.this;
            return dVar.f30711h + dVar.f30713j;
        }
    }

    interface j {
        void a();

        void b();
    }

    interface k {
        void onHidden();

        void onShown();
    }

    private class l extends m {
        l() {
            super(d.this, null);
        }

        @Override // com.google.android.material.floatingactionbutton.d.m
        protected float a() {
            return d.this.f30711h;
        }
    }

    private abstract class m extends AnimatorListenerAdapter implements ValueAnimator.AnimatorUpdateListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f30754b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private float f30755c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private float f30756d;

        private m() {
        }

        protected abstract float a();

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            d.this.k0((int) this.f30756d);
            this.f30754b = false;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(@NonNull ValueAnimator valueAnimator) {
            if (!this.f30754b) {
                MaterialShapeDrawable materialShapeDrawable = d.this.f30705b;
                this.f30755c = materialShapeDrawable == null ? 0.0f : materialShapeDrawable.y();
                this.f30756d = a();
                this.f30754b = true;
            }
            d dVar = d.this;
            float f10 = this.f30755c;
            dVar.k0((int) (f10 + ((this.f30756d - f10) * valueAnimator.getAnimatedFraction())));
        }

        /* synthetic */ m(d dVar, a aVar) {
            this();
        }
    }

    d(FloatingActionButton floatingActionButton, com.google.android.material.shadow.c cVar) {
        this.f30726w = floatingActionButton;
        this.f30727x = cVar;
        w wVar = new w();
        this.f30715l = wVar;
        wVar.a(W, k(new i()));
        wVar.a(X, k(new h()));
        wVar.a(Y, k(new h()));
        wVar.a(Z, k(new h()));
        wVar.a(f30702a0, k(new l()));
        wVar.a(f30703b0, k(new g()));
        this.f30719p = floatingActionButton.getRotation();
    }

    private boolean e0() {
        return ViewCompat.isLaidOut(this.f30726w) && !this.f30726w.isInEditMode();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(float f10, @NonNull Matrix matrix) {
        matrix.reset();
        Drawable drawable = this.f30726w.getDrawable();
        if (drawable == null || this.f30721r == 0) {
            return;
        }
        RectF rectF = this.f30729z;
        RectF rectF2 = this.A;
        rectF.set(0.0f, 0.0f, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        int i10 = this.f30721r;
        rectF2.set(0.0f, 0.0f, i10, i10);
        matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.CENTER);
        int i11 = this.f30721r;
        matrix.postScale(f10, f10, i11 / 2.0f, i11 / 2.0f);
    }

    @NonNull
    private AnimatorSet i(@NonNull com.google.android.material.animation.i iVar, float f10, float f11, float f12) {
        ArrayList arrayList = new ArrayList();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f30726w, (Property<FloatingActionButton, Float>) View.ALPHA, f10);
        iVar.h("opacity").a(objectAnimatorOfFloat);
        arrayList.add(objectAnimatorOfFloat);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f30726w, (Property<FloatingActionButton, Float>) View.SCALE_X, f11);
        iVar.h("scale").a(objectAnimatorOfFloat2);
        l0(objectAnimatorOfFloat2);
        arrayList.add(objectAnimatorOfFloat2);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.f30726w, (Property<FloatingActionButton, Float>) View.SCALE_Y, f11);
        iVar.h("scale").a(objectAnimatorOfFloat3);
        l0(objectAnimatorOfFloat3);
        arrayList.add(objectAnimatorOfFloat3);
        h(f12, this.B);
        ObjectAnimator objectAnimatorOfObject = ObjectAnimator.ofObject(this.f30726w, new com.google.android.material.animation.g(), new c(), new Matrix(this.B));
        iVar.h("iconScale").a(objectAnimatorOfObject);
        arrayList.add(objectAnimatorOfObject);
        AnimatorSet animatorSet = new AnimatorSet();
        com.google.android.material.animation.c.a(animatorSet, arrayList);
        return animatorSet;
    }

    private AnimatorSet j(float f10, float f11, float f12, int i10, int i11) {
        AnimatorSet animatorSet = new AnimatorSet();
        ArrayList arrayList = new ArrayList();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new C0601d(this.f30726w.getAlpha(), f10, this.f30726w.getScaleX(), f11, this.f30726w.getScaleY(), this.f30720q, f12, new Matrix(this.B)));
        arrayList.add(valueAnimatorOfFloat);
        com.google.android.material.animation.c.a(animatorSet, arrayList);
        animatorSet.setDuration(com.google.android.material.motion.j.f(this.f30726w.getContext(), i10, this.f30726w.getContext().getResources().getInteger(R.integer.material_motion_duration_long_1)));
        animatorSet.setInterpolator(com.google.android.material.motion.j.g(this.f30726w.getContext(), i11, com.google.android.material.animation.b.f29368b));
        return animatorSet;
    }

    @NonNull
    private ValueAnimator k(@NonNull m mVar) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setInterpolator(D);
        valueAnimator.setDuration(100L);
        valueAnimator.addListener(mVar);
        valueAnimator.addUpdateListener(mVar);
        valueAnimator.setFloatValues(0.0f, 1.0f);
        return valueAnimator;
    }

    private void l0(ObjectAnimator objectAnimator) {
        if (Build.VERSION.SDK_INT != 26) {
            return;
        }
        objectAnimator.setEvaluator(new e());
    }

    @NonNull
    private ViewTreeObserver.OnPreDrawListener r() {
        if (this.C == null) {
            this.C = new f();
        }
        return this.C;
    }

    boolean A() {
        if (this.f30726w.getVisibility() != 0) {
            return this.f30722s == 2;
        }
        return this.f30722s != 1;
    }

    void B() {
        this.f30715l.c();
    }

    void C() {
        MaterialShapeDrawable materialShapeDrawable = this.f30705b;
        if (materialShapeDrawable != null) {
            com.google.android.material.shape.j.f(this.f30726w, materialShapeDrawable);
        }
        if (O()) {
            this.f30726w.getViewTreeObserver().addOnPreDrawListener(r());
        }
    }

    void D() {
    }

    void E() {
        ViewTreeObserver viewTreeObserver = this.f30726w.getViewTreeObserver();
        ViewTreeObserver.OnPreDrawListener onPreDrawListener = this.C;
        if (onPreDrawListener != null) {
            viewTreeObserver.removeOnPreDrawListener(onPreDrawListener);
            this.C = null;
        }
    }

    void F(int[] iArr) {
        this.f30715l.d(iArr);
    }

    void G(float f10, float f11, float f12) {
        B();
        j0();
        k0(f10);
    }

    void H(@NonNull Rect rect) {
        Preconditions.checkNotNull(this.f30708e, "Didn't initialize content background");
        if (!d0()) {
            this.f30727x.setBackgroundDrawable(this.f30708e);
        } else {
            this.f30727x.setBackgroundDrawable(new InsetDrawable(this.f30708e, rect.left, rect.top, rect.right, rect.bottom));
        }
    }

    void I() {
        float rotation = this.f30726w.getRotation();
        if (this.f30719p != rotation) {
            this.f30719p = rotation;
            h0();
        }
    }

    void J() {
        ArrayList<j> arrayList = this.f30725v;
        if (arrayList != null) {
            Iterator<j> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                it2.next().a();
            }
        }
    }

    void K() {
        ArrayList<j> arrayList = this.f30725v;
        if (arrayList != null) {
            Iterator<j> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                it2.next().b();
            }
        }
    }

    public void L(@NonNull Animator.AnimatorListener animatorListener) {
        ArrayList<Animator.AnimatorListener> arrayList = this.f30724u;
        if (arrayList == null) {
            return;
        }
        arrayList.remove(animatorListener);
    }

    void M(@NonNull Animator.AnimatorListener animatorListener) {
        ArrayList<Animator.AnimatorListener> arrayList = this.f30723t;
        if (arrayList == null) {
            return;
        }
        arrayList.remove(animatorListener);
    }

    void N(@NonNull j jVar) {
        ArrayList<j> arrayList = this.f30725v;
        if (arrayList == null) {
            return;
        }
        arrayList.remove(jVar);
    }

    boolean O() {
        return true;
    }

    void P(@Nullable ColorStateList colorStateList) {
        MaterialShapeDrawable materialShapeDrawable = this.f30705b;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.setTintList(colorStateList);
        }
        com.google.android.material.floatingactionbutton.c cVar = this.f30707d;
        if (cVar != null) {
            cVar.d(colorStateList);
        }
    }

    void Q(@Nullable PorterDuff.Mode mode) {
        MaterialShapeDrawable materialShapeDrawable = this.f30705b;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.setTintMode(mode);
        }
    }

    final void R(float f10) {
        if (this.f30711h != f10) {
            this.f30711h = f10;
            G(f10, this.f30712i, this.f30713j);
        }
    }

    void S(boolean z10) {
        this.f30709f = z10;
    }

    final void T(@Nullable com.google.android.material.animation.i iVar) {
        this.f30718o = iVar;
    }

    final void U(float f10) {
        if (this.f30712i != f10) {
            this.f30712i = f10;
            G(this.f30711h, f10, this.f30713j);
        }
    }

    final void V(float f10) {
        this.f30720q = f10;
        Matrix matrix = this.B;
        h(f10, matrix);
        this.f30726w.setImageMatrix(matrix);
    }

    final void W(int i10) {
        if (this.f30721r != i10) {
            this.f30721r = i10;
            i0();
        }
    }

    void X(int i10) {
        this.f30714k = i10;
    }

    final void Y(float f10) {
        if (this.f30713j != f10) {
            this.f30713j = f10;
            G(this.f30711h, this.f30712i, f10);
        }
    }

    void Z(@Nullable ColorStateList colorStateList) {
        Drawable drawable = this.f30706c;
        if (drawable != null) {
            DrawableCompat.setTintList(drawable, com.google.android.material.ripple.b.e(colorStateList));
        }
    }

    void a0(boolean z10) {
        this.f30710g = z10;
        j0();
    }

    final void b0(@NonNull n nVar) {
        this.f30704a = nVar;
        MaterialShapeDrawable materialShapeDrawable = this.f30705b;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.setShapeAppearanceModel(nVar);
        }
        Object obj = this.f30706c;
        if (obj instanceof r) {
            ((r) obj).setShapeAppearanceModel(nVar);
        }
        com.google.android.material.floatingactionbutton.c cVar = this.f30707d;
        if (cVar != null) {
            cVar.g(nVar);
        }
    }

    final void c0(@Nullable com.google.android.material.animation.i iVar) {
        this.f30717n = iVar;
    }

    boolean d0() {
        return true;
    }

    public void e(@NonNull Animator.AnimatorListener animatorListener) {
        if (this.f30724u == null) {
            this.f30724u = new ArrayList<>();
        }
        this.f30724u.add(animatorListener);
    }

    void f(@NonNull Animator.AnimatorListener animatorListener) {
        if (this.f30723t == null) {
            this.f30723t = new ArrayList<>();
        }
        this.f30723t.add(animatorListener);
    }

    final boolean f0() {
        return !this.f30709f || this.f30726w.getSizeDimension() >= this.f30714k;
    }

    void g(@NonNull j jVar) {
        if (this.f30725v == null) {
            this.f30725v = new ArrayList<>();
        }
        this.f30725v.add(jVar);
    }

    void g0(@Nullable k kVar, boolean z10) {
        if (A()) {
            return;
        }
        Animator animator = this.f30716m;
        if (animator != null) {
            animator.cancel();
        }
        boolean z11 = this.f30717n == null;
        if (!e0()) {
            this.f30726w.c(0, z10);
            this.f30726w.setAlpha(1.0f);
            this.f30726w.setScaleY(1.0f);
            this.f30726w.setScaleX(1.0f);
            V(1.0f);
            if (kVar != null) {
                kVar.onShown();
                return;
            }
            return;
        }
        if (this.f30726w.getVisibility() != 0) {
            this.f30726w.setAlpha(0.0f);
            this.f30726w.setScaleY(z11 ? 0.4f : 0.0f);
            this.f30726w.setScaleX(z11 ? 0.4f : 0.0f);
            V(z11 ? 0.4f : 0.0f);
        }
        com.google.android.material.animation.i iVar = this.f30717n;
        AnimatorSet animatorSetI = iVar != null ? i(iVar, 1.0f, 1.0f, 1.0f) : j(1.0f, 1.0f, 1.0f, S, T);
        animatorSetI.addListener(new b(z10, kVar));
        ArrayList<Animator.AnimatorListener> arrayList = this.f30723t;
        if (arrayList != null) {
            Iterator<Animator.AnimatorListener> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                animatorSetI.addListener(it2.next());
            }
        }
        animatorSetI.start();
    }

    void h0() {
        MaterialShapeDrawable materialShapeDrawable = this.f30705b;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.x0((int) this.f30719p);
        }
    }

    final void i0() {
        V(this.f30720q);
    }

    final void j0() {
        Rect rect = this.f30728y;
        s(rect);
        H(rect);
        this.f30727x.setShadowPadding(rect.left, rect.top, rect.right, rect.bottom);
    }

    void k0(float f10) {
        MaterialShapeDrawable materialShapeDrawable = this.f30705b;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.o0(f10);
        }
    }

    MaterialShapeDrawable l() {
        return new MaterialShapeDrawable((n) Preconditions.checkNotNull(this.f30704a));
    }

    @Nullable
    final Drawable m() {
        return this.f30708e;
    }

    float n() {
        return this.f30711h;
    }

    boolean o() {
        return this.f30709f;
    }

    @Nullable
    final com.google.android.material.animation.i p() {
        return this.f30718o;
    }

    float q() {
        return this.f30712i;
    }

    void s(@NonNull Rect rect) {
        int iW = w();
        float fN = this.f30710g ? n() + this.f30713j : 0.0f;
        int iMax = Math.max(iW, (int) Math.ceil(fN));
        int iMax2 = Math.max(iW, (int) Math.ceil(fN * J));
        rect.set(iMax, iMax2, iMax, iMax2);
    }

    float t() {
        return this.f30713j;
    }

    @Nullable
    final n u() {
        return this.f30704a;
    }

    @Nullable
    final com.google.android.material.animation.i v() {
        return this.f30717n;
    }

    int w() {
        if (this.f30709f) {
            return Math.max((this.f30714k - this.f30726w.getSizeDimension()) / 2, 0);
        }
        return 0;
    }

    void x(@Nullable k kVar, boolean z10) {
        if (z()) {
            return;
        }
        Animator animator = this.f30716m;
        if (animator != null) {
            animator.cancel();
        }
        if (!e0()) {
            this.f30726w.c(z10 ? 8 : 4, z10);
            if (kVar != null) {
                kVar.onHidden();
                return;
            }
            return;
        }
        com.google.android.material.animation.i iVar = this.f30718o;
        AnimatorSet animatorSetI = iVar != null ? i(iVar, 0.0f, 0.0f, 0.0f) : j(0.0f, 0.4f, 0.4f, U, V);
        animatorSetI.addListener(new a(z10, kVar));
        ArrayList<Animator.AnimatorListener> arrayList = this.f30724u;
        if (arrayList != null) {
            Iterator<Animator.AnimatorListener> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                animatorSetI.addListener(it2.next());
            }
        }
        animatorSetI.start();
    }

    void y(ColorStateList colorStateList, @Nullable PorterDuff.Mode mode, ColorStateList colorStateList2, int i10) {
        MaterialShapeDrawable materialShapeDrawableL = l();
        this.f30705b = materialShapeDrawableL;
        materialShapeDrawableL.setTintList(colorStateList);
        if (mode != null) {
            this.f30705b.setTintMode(mode);
        }
        this.f30705b.w0(WheelView.W2);
        this.f30705b.a0(this.f30726w.getContext());
        com.google.android.material.ripple.a aVar = new com.google.android.material.ripple.a(this.f30705b.getShapeAppearanceModel());
        aVar.setTintList(com.google.android.material.ripple.b.e(colorStateList2));
        this.f30706c = aVar;
        this.f30708e = new LayerDrawable(new Drawable[]{(Drawable) Preconditions.checkNotNull(this.f30705b), aVar});
    }

    boolean z() {
        if (this.f30726w.getVisibility() == 0) {
            return this.f30722s == 1;
        }
        return this.f30722s != 2;
    }
}

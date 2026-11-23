package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Pair;
import android.util.Property;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import com.google.android.material.animation.f;
import com.google.android.material.animation.i;
import com.google.android.material.animation.j;
import com.google.android.material.animation.k;
import com.google.android.material.circularreveal.CircularRevealHelper;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
@Deprecated
public abstract class FabTransformationBehavior extends ExpandableTransformationBehavior {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Rect f32453g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final RectF f32454h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final RectF f32455i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int[] f32456j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private float f32457k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private float f32458l;

    class a extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f32459b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ View f32460c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ View f32461d;

        a(boolean z10, View view, View view2) {
            this.f32459b = z10;
            this.f32460c = view;
            this.f32461d = view2;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f32459b) {
                return;
            }
            this.f32460c.setVisibility(4);
            this.f32461d.setAlpha(1.0f);
            this.f32461d.setVisibility(0);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (this.f32459b) {
                this.f32460c.setVisibility(0);
                this.f32461d.setAlpha(0.0f);
                this.f32461d.setVisibility(4);
            }
        }
    }

    class b implements ValueAnimator.AnimatorUpdateListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f32463b;

        b(View view) {
            this.f32463b = view;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f32463b.invalidate();
        }
    }

    class c extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.google.android.material.circularreveal.b f32465b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Drawable f32466c;

        c(com.google.android.material.circularreveal.b bVar, Drawable drawable) {
            this.f32465b = bVar;
            this.f32466c = drawable;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f32465b.setCircularRevealOverlayDrawable(null);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.f32465b.setCircularRevealOverlayDrawable(this.f32466c);
        }
    }

    class d extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.google.android.material.circularreveal.b f32468b;

        d(com.google.android.material.circularreveal.b bVar) {
            this.f32468b = bVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            com.google.android.material.circularreveal.b.e revealInfo = this.f32468b.getRevealInfo();
            revealInfo.f30029c = Float.MAX_VALUE;
            this.f32468b.setRevealInfo(revealInfo);
        }
    }

    protected static class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @Nullable
        public i f32470a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public k f32471b;

        protected e() {
        }
    }

    public FabTransformationBehavior() {
        this.f32453g = new Rect();
        this.f32454h = new RectF();
        this.f32455i = new RectF();
        this.f32456j = new int[2];
    }

    private void A(@NonNull View view, @NonNull View view2, boolean z10, @NonNull e eVar, @NonNull List<Animator> list) {
        float fU = u(view, view2, eVar.f32471b);
        float fV = v(view, view2, eVar.f32471b);
        Pair<j, j> pairR = r(fU, fV, z10, eVar);
        j jVar = (j) pairR.first;
        j jVar2 = (j) pairR.second;
        Property property = View.TRANSLATION_X;
        float[] fArr = new float[1];
        if (!z10) {
            fU = this.f32457k;
        }
        fArr[0] = fU;
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) property, fArr);
        Property property2 = View.TRANSLATION_Y;
        float[] fArr2 = new float[1];
        if (!z10) {
            fV = this.f32458l;
        }
        fArr2[0] = fV;
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view, (Property<View, Float>) property2, fArr2);
        jVar.a(objectAnimatorOfFloat);
        jVar2.a(objectAnimatorOfFloat2);
        list.add(objectAnimatorOfFloat);
        list.add(objectAnimatorOfFloat2);
    }

    @TargetApi(21)
    private void B(View view, @NonNull View view2, boolean z10, boolean z11, @NonNull e eVar, @NonNull List<Animator> list, List<Animator.AnimatorListener> list2) {
        ObjectAnimator objectAnimatorOfFloat;
        float elevation = ViewCompat.getElevation(view2) - ViewCompat.getElevation(view);
        if (z10) {
            if (!z11) {
                view2.setTranslationZ(-elevation);
            }
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Z, 0.0f);
        } else {
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Z, -elevation);
        }
        eVar.f32470a.h("elevation").a(objectAnimatorOfFloat);
        list.add(objectAnimatorOfFloat);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void C(@NonNull View view, View view2, boolean z10, boolean z11, @NonNull e eVar, float f10, float f11, @NonNull List<Animator> list, @NonNull List<Animator.AnimatorListener> list2) {
        Animator animatorA;
        if (view2 instanceof com.google.android.material.circularreveal.b) {
            com.google.android.material.circularreveal.b bVar = (com.google.android.material.circularreveal.b) view2;
            float fS = s(view, view2, eVar.f32471b);
            float fT = t(view, view2, eVar.f32471b);
            ((FloatingActionButton) view).k(this.f32453g);
            float fWidth = this.f32453g.width() / 2.0f;
            j jVarH = eVar.f32470a.h("expansion");
            if (z10) {
                if (!z11) {
                    bVar.setRevealInfo(new com.google.android.material.circularreveal.b.e(fS, fT, fWidth));
                }
                if (z11) {
                    fWidth = bVar.getRevealInfo().f30029c;
                }
                animatorA = com.google.android.material.circularreveal.a.a(bVar, fS, fT, z4.a.b(fS, fT, 0.0f, 0.0f, f10, f11));
                animatorA.addListener(new d(bVar));
                F(view2, jVarH.c(), (int) fS, (int) fT, fWidth, list);
            } else {
                float f12 = bVar.getRevealInfo().f30029c;
                Animator animatorA2 = com.google.android.material.circularreveal.a.a(bVar, fS, fT, fWidth);
                int i10 = (int) fS;
                int i11 = (int) fT;
                F(view2, jVarH.c(), i10, i11, f12, list);
                E(view2, jVarH.c(), jVarH.d(), eVar.f32470a.i(), i10, i11, fWidth, list);
                animatorA = animatorA2;
            }
            jVarH.a(animatorA);
            list.add(animatorA);
            list2.add(com.google.android.material.circularreveal.a.c(bVar));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void D(View view, View view2, boolean z10, boolean z11, @NonNull e eVar, @NonNull List<Animator> list, @NonNull List<Animator.AnimatorListener> list2) {
        ObjectAnimator objectAnimatorOfInt;
        if ((view2 instanceof com.google.android.material.circularreveal.b) && (view instanceof ImageView)) {
            com.google.android.material.circularreveal.b bVar = (com.google.android.material.circularreveal.b) view2;
            Drawable drawable = ((ImageView) view).getDrawable();
            if (drawable == null) {
                return;
            }
            drawable.mutate();
            if (z10) {
                if (!z11) {
                    drawable.setAlpha(255);
                }
                objectAnimatorOfInt = ObjectAnimator.ofInt(drawable, f.f29374b, 0);
            } else {
                objectAnimatorOfInt = ObjectAnimator.ofInt(drawable, f.f29374b, 255);
            }
            objectAnimatorOfInt.addUpdateListener(new b(view2));
            eVar.f32470a.h("iconFade").a(objectAnimatorOfInt);
            list.add(objectAnimatorOfInt);
            list2.add(new c(bVar, drawable));
        }
    }

    private void E(View view, long j10, long j11, long j12, int i10, int i11, float f10, @NonNull List<Animator> list) {
        long j13 = j10 + j11;
        if (j13 < j12) {
            Animator animatorCreateCircularReveal = ViewAnimationUtils.createCircularReveal(view, i10, i11, f10, f10);
            animatorCreateCircularReveal.setStartDelay(j13);
            animatorCreateCircularReveal.setDuration(j12 - j13);
            list.add(animatorCreateCircularReveal);
        }
    }

    private void F(View view, long j10, int i10, int i11, float f10, @NonNull List<Animator> list) {
        if (j10 > 0) {
            Animator animatorCreateCircularReveal = ViewAnimationUtils.createCircularReveal(view, i10, i11, f10, f10);
            animatorCreateCircularReveal.setStartDelay(0L);
            animatorCreateCircularReveal.setDuration(j10);
            list.add(animatorCreateCircularReveal);
        }
    }

    private void G(@NonNull View view, @NonNull View view2, boolean z10, boolean z11, @NonNull e eVar, @NonNull List<Animator> list, List<Animator.AnimatorListener> list2, @NonNull RectF rectF) {
        ObjectAnimator objectAnimatorOfFloat;
        ObjectAnimator objectAnimatorOfFloat2;
        float fU = u(view, view2, eVar.f32471b);
        float fV = v(view, view2, eVar.f32471b);
        Pair<j, j> pairR = r(fU, fV, z10, eVar);
        j jVar = (j) pairR.first;
        j jVar2 = (j) pairR.second;
        if (z10) {
            if (!z11) {
                view2.setTranslationX(-fU);
                view2.setTranslationY(-fV);
            }
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_X, 0.0f);
            objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Y, 0.0f);
            p(view2, eVar, jVar, jVar2, -fU, -fV, 0.0f, 0.0f, rectF);
        } else {
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_X, -fU);
            objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view2, (Property<View, Float>) View.TRANSLATION_Y, -fV);
        }
        jVar.a(objectAnimatorOfFloat);
        jVar2.a(objectAnimatorOfFloat2);
        list.add(objectAnimatorOfFloat);
        list.add(objectAnimatorOfFloat2);
    }

    private int H(@NonNull View view) {
        ColorStateList backgroundTintList = ViewCompat.getBackgroundTintList(view);
        if (backgroundTintList != null) {
            return backgroundTintList.getColorForState(view.getDrawableState(), backgroundTintList.getDefaultColor());
        }
        return 0;
    }

    @Nullable
    private ViewGroup J(View view) {
        if (view instanceof ViewGroup) {
            return (ViewGroup) view;
        }
        return null;
    }

    @Nullable
    private ViewGroup o(@NonNull View view) {
        View viewFindViewById = view.findViewById(R.id.mtrl_child_content_container);
        if (viewFindViewById != null) {
            return J(viewFindViewById);
        }
        return ((view instanceof TransformationChildLayout) || (view instanceof TransformationChildCard)) ? J(((ViewGroup) view).getChildAt(0)) : J(view);
    }

    private void p(@NonNull View view, @NonNull e eVar, @NonNull j jVar, @NonNull j jVar2, float f10, float f11, float f12, float f13, @NonNull RectF rectF) {
        float fW = w(eVar, jVar, f10, f12);
        float fW2 = w(eVar, jVar2, f11, f13);
        Rect rect = this.f32453g;
        view.getWindowVisibleDisplayFrame(rect);
        RectF rectF2 = this.f32454h;
        rectF2.set(rect);
        RectF rectF3 = this.f32455i;
        x(view, rectF3);
        rectF3.offset(fW, fW2);
        rectF3.intersect(rectF2);
        rectF.set(rectF3);
    }

    private void q(@NonNull View view, @NonNull RectF rectF) {
        x(view, rectF);
        rectF.offset(this.f32457k, this.f32458l);
    }

    @NonNull
    private Pair<j, j> r(float f10, float f11, boolean z10, @NonNull e eVar) {
        j jVarH;
        j jVarH2;
        if (f10 == 0.0f || f11 == 0.0f) {
            jVarH = eVar.f32470a.h("translationXLinear");
            jVarH2 = eVar.f32470a.h("translationYLinear");
        } else if ((!z10 || f11 >= 0.0f) && (z10 || f11 <= 0.0f)) {
            jVarH = eVar.f32470a.h("translationXCurveDownwards");
            jVarH2 = eVar.f32470a.h("translationYCurveDownwards");
        } else {
            jVarH = eVar.f32470a.h("translationXCurveUpwards");
            jVarH2 = eVar.f32470a.h("translationYCurveUpwards");
        }
        return new Pair<>(jVarH, jVarH2);
    }

    private float s(@NonNull View view, @NonNull View view2, @NonNull k kVar) {
        RectF rectF = this.f32454h;
        RectF rectF2 = this.f32455i;
        q(view, rectF);
        x(view2, rectF2);
        rectF2.offset(-u(view, view2, kVar), 0.0f);
        return rectF.centerX() - rectF2.left;
    }

    private float t(@NonNull View view, @NonNull View view2, @NonNull k kVar) {
        RectF rectF = this.f32454h;
        RectF rectF2 = this.f32455i;
        q(view, rectF);
        x(view2, rectF2);
        rectF2.offset(0.0f, -v(view, view2, kVar));
        return rectF.centerY() - rectF2.top;
    }

    private float u(@NonNull View view, @NonNull View view2, @NonNull k kVar) {
        float fCenterX;
        float fCenterX2;
        float f10;
        RectF rectF = this.f32454h;
        RectF rectF2 = this.f32455i;
        q(view, rectF);
        x(view2, rectF2);
        int i10 = kVar.f29388a & 7;
        if (i10 == 1) {
            fCenterX = rectF2.centerX();
            fCenterX2 = rectF.centerX();
        } else {
            if (i10 != 3) {
                if (i10 != 5) {
                    f10 = 0.0f;
                } else {
                    fCenterX = rectF2.right;
                    fCenterX2 = rectF.right;
                }
                return f10 + kVar.f29389b;
            }
            fCenterX = rectF2.left;
            fCenterX2 = rectF.left;
        }
        f10 = fCenterX - fCenterX2;
        return f10 + kVar.f29389b;
    }

    private float v(@NonNull View view, @NonNull View view2, @NonNull k kVar) {
        float fCenterY;
        float fCenterY2;
        float f10;
        RectF rectF = this.f32454h;
        RectF rectF2 = this.f32455i;
        q(view, rectF);
        x(view2, rectF2);
        int i10 = kVar.f29388a & 112;
        if (i10 == 16) {
            fCenterY = rectF2.centerY();
            fCenterY2 = rectF.centerY();
        } else {
            if (i10 != 48) {
                if (i10 != 80) {
                    f10 = 0.0f;
                } else {
                    fCenterY = rectF2.bottom;
                    fCenterY2 = rectF.bottom;
                }
                return f10 + kVar.f29390c;
            }
            fCenterY = rectF2.top;
            fCenterY2 = rectF.top;
        }
        f10 = fCenterY - fCenterY2;
        return f10 + kVar.f29390c;
    }

    private float w(@NonNull e eVar, @NonNull j jVar, float f10, float f11) {
        long jC = jVar.c();
        long jD = jVar.d();
        j jVarH = eVar.f32470a.h("expansion");
        return com.google.android.material.animation.b.a(f10, f11, jVar.e().getInterpolation((((jVarH.c() + jVarH.d()) + 17) - jC) / jD));
    }

    private void x(@NonNull View view, RectF rectF) {
        rectF.set(0.0f, 0.0f, view.getWidth(), view.getHeight());
        int[] iArr = this.f32456j;
        view.getLocationInWindow(iArr);
        rectF.offsetTo(iArr[0], iArr[1]);
        rectF.offset((int) (-view.getTranslationX()), (int) (-view.getTranslationY()));
    }

    private void y(View view, View view2, boolean z10, boolean z11, @NonNull e eVar, @NonNull List<Animator> list, List<Animator.AnimatorListener> list2) {
        ViewGroup viewGroupO;
        ObjectAnimator objectAnimatorOfFloat;
        if (view2 instanceof ViewGroup) {
            if (((view2 instanceof com.google.android.material.circularreveal.b) && CircularRevealHelper.f30008o == 0) || (viewGroupO = o(view2)) == null) {
                return;
            }
            if (z10) {
                if (!z11) {
                    com.google.android.material.animation.e.f29373a.set(viewGroupO, Float.valueOf(0.0f));
                }
                objectAnimatorOfFloat = ObjectAnimator.ofFloat(viewGroupO, com.google.android.material.animation.e.f29373a, 1.0f);
            } else {
                objectAnimatorOfFloat = ObjectAnimator.ofFloat(viewGroupO, com.google.android.material.animation.e.f29373a, 0.0f);
            }
            eVar.f32470a.h("contentFade").a(objectAnimatorOfFloat);
            list.add(objectAnimatorOfFloat);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void z(@NonNull View view, View view2, boolean z10, boolean z11, @NonNull e eVar, @NonNull List<Animator> list, List<Animator.AnimatorListener> list2) {
        ObjectAnimator objectAnimatorOfInt;
        if (view2 instanceof com.google.android.material.circularreveal.b) {
            com.google.android.material.circularreveal.b bVar = (com.google.android.material.circularreveal.b) view2;
            int iH = H(view);
            int i10 = 16777215 & iH;
            if (z10) {
                if (!z11) {
                    bVar.setCircularRevealScrimColor(iH);
                }
                objectAnimatorOfInt = ObjectAnimator.ofInt(bVar, com.google.android.material.circularreveal.b.d.f30025a, i10);
            } else {
                objectAnimatorOfInt = ObjectAnimator.ofInt(bVar, com.google.android.material.circularreveal.b.d.f30025a, iH);
            }
            objectAnimatorOfInt.setEvaluator(com.google.android.material.animation.d.b());
            eVar.f32470a.h(TypedValues.Custom.S_COLOR).a(objectAnimatorOfInt);
            list.add(objectAnimatorOfInt);
        }
    }

    protected abstract e I(Context context, boolean z10);

    @Override // com.google.android.material.transformation.ExpandableBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    @CallSuper
    public boolean layoutDependsOn(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull View view2) {
        if (view.getVisibility() == 8) {
            throw new IllegalStateException("This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead.");
        }
        if (!(view2 instanceof FloatingActionButton)) {
            return false;
        }
        int expandedComponentIdHint = ((FloatingActionButton) view2).getExpandedComponentIdHint();
        return expandedComponentIdHint == 0 || expandedComponentIdHint == view.getId();
    }

    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior
    @NonNull
    protected AnimatorSet n(@NonNull View view, @NonNull View view2, boolean z10, boolean z11) {
        e eVarI = I(view2.getContext(), z10);
        if (z10) {
            this.f32457k = view.getTranslationX();
            this.f32458l = view.getTranslationY();
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        B(view, view2, z10, z11, eVarI, arrayList, arrayList2);
        RectF rectF = this.f32454h;
        G(view, view2, z10, z11, eVarI, arrayList, arrayList2, rectF);
        float fWidth = rectF.width();
        float fHeight = rectF.height();
        A(view, view2, z10, eVarI, arrayList);
        D(view, view2, z10, z11, eVarI, arrayList, arrayList2);
        C(view, view2, z10, z11, eVarI, fWidth, fHeight, arrayList, arrayList2);
        z(view, view2, z10, z11, eVarI, arrayList, arrayList2);
        y(view, view2, z10, z11, eVarI, arrayList, arrayList2);
        AnimatorSet animatorSet = new AnimatorSet();
        com.google.android.material.animation.c.a(animatorSet, arrayList);
        animatorSet.addListener(new a(z10, view2, view));
        int size = arrayList2.size();
        for (int i10 = 0; i10 < size; i10++) {
            animatorSet.addListener(arrayList2.get(i10));
        }
        return animatorSet;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    @CallSuper
    public void onAttachedToLayoutParams(@NonNull CoordinatorLayout.LayoutParams layoutParams) {
        if (layoutParams.dodgeInsetEdges == 0) {
            layoutParams.dodgeInsetEdges = 80;
        }
    }

    public FabTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f32453g = new Rect();
        this.f32454h = new RectF();
        this.f32455i = new RectF();
        this.f32456j = new int[2];
    }
}

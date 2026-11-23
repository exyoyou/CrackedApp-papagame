package com.facebook.drawee.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.graphics.PointF;
import android.graphics.Rect;
import android.transition.ChangeBounds;
import android.transition.Transition;
import android.transition.TransitionSet;
import android.transition.TransitionValues;
import android.view.ViewGroup;
import com.facebook.drawee.drawable.s;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@TargetApi(19)
@Nullsafe(Nullsafe.Mode.LOCAL)
public class c extends Transition {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f27369f = "draweeTransition:bounds";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final s.c f27370b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final s.c f27371c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    private final PointF f27372d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private final PointF f27373e;

    class a implements ValueAnimator.AnimatorUpdateListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ s.b f27374b;

        a(final s.b val$scaleType) {
            this.f27374b = val$scaleType;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator animation) {
            this.f27374b.i(((Float) animation.getAnimatedValue()).floatValue());
        }
    }

    class b extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GenericDraweeView f27376b;

        b(final GenericDraweeView val$draweeView) {
            this.f27376b = val$draweeView;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animation) {
            this.f27376b.getHierarchy().y(c.this.f27371c);
            if (c.this.f27373e != null) {
                this.f27376b.getHierarchy().x(c.this.f27373e);
            }
        }
    }

    public c(s.c fromScale, s.c toScale, @Nullable PointF fromFocusPoint, @Nullable PointF toFocusPoint) {
        this.f27370b = fromScale;
        this.f27371c = toScale;
        this.f27372d = fromFocusPoint;
        this.f27373e = toFocusPoint;
    }

    private void c(TransitionValues transitionValues) {
        if (transitionValues.view instanceof GenericDraweeView) {
            transitionValues.values.put(f27369f, new Rect(0, 0, transitionValues.view.getWidth(), transitionValues.view.getHeight()));
        }
    }

    public static TransitionSet d(s.c fromScale, s.c toScale) {
        return e(fromScale, toScale, null, null);
    }

    public static TransitionSet e(s.c fromScale, s.c toScale, @Nullable PointF fromFocusPoint, @Nullable PointF toFocusPoint) {
        TransitionSet transitionSet = new TransitionSet();
        transitionSet.addTransition(new ChangeBounds());
        transitionSet.addTransition(new c(fromScale, toScale, fromFocusPoint, toFocusPoint));
        return transitionSet;
    }

    @Override // android.transition.Transition
    public void captureEndValues(TransitionValues transitionValues) {
        c(transitionValues);
    }

    @Override // android.transition.Transition
    public void captureStartValues(TransitionValues transitionValues) {
        c(transitionValues);
    }

    @Override // android.transition.Transition
    @Nullable
    public Animator createAnimator(ViewGroup sceneRoot, TransitionValues startValues, TransitionValues endValues) {
        if (startValues != null && endValues != null) {
            Rect rect = (Rect) startValues.values.get(f27369f);
            Rect rect2 = (Rect) endValues.values.get(f27369f);
            if (rect != null && rect2 != null) {
                s.c cVar = this.f27370b;
                s.c cVar2 = this.f27371c;
                if (cVar == cVar2 && this.f27372d == this.f27373e) {
                    return null;
                }
                GenericDraweeView genericDraweeView = (GenericDraweeView) startValues.view;
                s.b bVar = new s.b(cVar, cVar2, rect, rect2, this.f27372d, this.f27373e);
                genericDraweeView.getHierarchy().y(bVar);
                ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                valueAnimatorOfFloat.addUpdateListener(new a(bVar));
                valueAnimatorOfFloat.addListener(new b(genericDraweeView));
                return valueAnimatorOfFloat;
            }
        }
        return null;
    }

    public c(s.c fromScale, s.c toScale) {
        this(fromScale, toScale, null, null);
    }
}

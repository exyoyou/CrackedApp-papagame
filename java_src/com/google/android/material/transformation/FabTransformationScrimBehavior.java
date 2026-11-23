package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.util.Property;
import android.view.MotionEvent;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.animation.c;
import com.google.android.material.animation.j;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
@Deprecated
public class FabTransformationScrimBehavior extends ExpandableTransformationBehavior {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final long f32472i = 75;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final long f32473j = 150;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final long f32474k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final long f32475l = 150;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final j f32476g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final j f32477h;

    class a extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f32478b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ View f32479c;

        a(boolean z10, View view) {
            this.f32478b = z10;
            this.f32479c = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f32478b) {
                return;
            }
            this.f32479c.setVisibility(4);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (this.f32478b) {
                this.f32479c.setVisibility(0);
            }
        }
    }

    public FabTransformationScrimBehavior() {
        this.f32476g = new j(75L, 150L);
        this.f32477h = new j(0L, 150L);
    }

    private void o(@NonNull View view, boolean z10, boolean z11, @NonNull List<Animator> list, List<Animator.AnimatorListener> list2) {
        ObjectAnimator objectAnimatorOfFloat;
        j jVar = z10 ? this.f32476g : this.f32477h;
        if (z10) {
            if (!z11) {
                view.setAlpha(0.0f);
            }
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.ALPHA, 1.0f);
        } else {
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.ALPHA, 0.0f);
        }
        jVar.a(objectAnimatorOfFloat);
        list.add(objectAnimatorOfFloat);
    }

    @Override // com.google.android.material.transformation.ExpandableBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, View view, View view2) {
        return view2 instanceof FloatingActionButton;
    }

    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior
    @NonNull
    protected AnimatorSet n(@NonNull View view, @NonNull View view2, boolean z10, boolean z11) {
        ArrayList arrayList = new ArrayList();
        o(view2, z10, z11, arrayList, new ArrayList());
        AnimatorSet animatorSet = new AnimatorSet();
        c.a(animatorSet, arrayList);
        animatorSet.addListener(new a(z10, view2));
        return animatorSet;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onTouchEvent(@NonNull CoordinatorLayout coordinatorLayout, @NonNull View view, @NonNull MotionEvent motionEvent) {
        return super.onTouchEvent(coordinatorLayout, view, motionEvent);
    }

    public FabTransformationScrimBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f32476g = new j(75L, 150L);
        this.f32477h = new j(0L, 150L);
    }
}

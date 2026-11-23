package com.google.android.material.navigation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Color;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.ColorUtils;
import androidx.drawerlayout.widget.DrawerLayout;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f31171a = -1728053248;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f31172b = Color.alpha(-1728053248);

    class a extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DrawerLayout f31173b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ View f31174c;

        a(DrawerLayout drawerLayout, View view) {
            this.f31173b = drawerLayout;
            this.f31174c = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f31173b.closeDrawer(this.f31174c, false);
            this.f31173b.setScrimColor(-1728053248);
        }
    }

    private b() {
    }

    @NonNull
    public static Animator.AnimatorListener b(@NonNull DrawerLayout drawerLayout, @NonNull View view) {
        return new a(drawerLayout, view);
    }

    @NonNull
    public static ValueAnimator.AnimatorUpdateListener c(@NonNull final DrawerLayout drawerLayout) {
        return new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.navigation.a
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                b.d(drawerLayout, valueAnimator);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void d(DrawerLayout drawerLayout, ValueAnimator valueAnimator) {
        drawerLayout.setScrimColor(ColorUtils.setAlphaComponent(-1728053248, com.google.android.material.animation.b.c(f31172b, 0, valueAnimator.getAnimatedFraction())));
    }
}

package com.google.android.material.internal;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.util.StateSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public final class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ArrayList<b> f31008a = new ArrayList<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private b f31009b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    ValueAnimator f31010c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Animator.AnimatorListener f31011d = new a();

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            w wVar = w.this;
            if (wVar.f31010c == animator) {
                wVar.f31010c = null;
            }
        }
    }

    static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final int[] f31013a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final ValueAnimator f31014b;

        b(int[] iArr, ValueAnimator valueAnimator) {
            this.f31013a = iArr;
            this.f31014b = valueAnimator;
        }
    }

    private void b() {
        ValueAnimator valueAnimator = this.f31010c;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.f31010c = null;
        }
    }

    private void e(@NonNull b bVar) {
        ValueAnimator valueAnimator = bVar.f31014b;
        this.f31010c = valueAnimator;
        valueAnimator.start();
    }

    public void a(int[] iArr, ValueAnimator valueAnimator) {
        b bVar = new b(iArr, valueAnimator);
        valueAnimator.addListener(this.f31011d);
        this.f31008a.add(bVar);
    }

    public void c() {
        ValueAnimator valueAnimator = this.f31010c;
        if (valueAnimator != null) {
            valueAnimator.end();
            this.f31010c = null;
        }
    }

    public void d(int[] iArr) {
        b bVar;
        int size = this.f31008a.size();
        int i10 = 0;
        while (true) {
            if (i10 >= size) {
                bVar = null;
                break;
            }
            bVar = this.f31008a.get(i10);
            if (StateSet.stateSetMatches(bVar.f31013a, iArr)) {
                break;
            } else {
                i10++;
            }
        }
        b bVar2 = this.f31009b;
        if (bVar == bVar2) {
            return;
        }
        if (bVar2 != null) {
            b();
        }
        this.f31009b = bVar;
        if (bVar != null) {
            e(bVar);
        }
    }
}

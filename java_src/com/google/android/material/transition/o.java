package com.google.android.material.transition;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.transition.TransitionValues;
import androidx.transition.Visibility;
import com.google.android.material.transition.t;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
abstract class o<P extends t> extends Visibility {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final P f32610b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private t f32611c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<t> f32612d = new ArrayList();

    protected o(P p10, @Nullable t tVar) {
        this.f32610b = p10;
        this.f32611c = tVar;
    }

    private static void b(List<Animator> list, @Nullable t tVar, ViewGroup viewGroup, View view, boolean z10) {
        if (tVar == null) {
            return;
        }
        Animator animatorB = z10 ? tVar.b(viewGroup, view) : tVar.a(viewGroup, view);
        if (animatorB != null) {
            list.add(animatorB);
        }
    }

    private Animator e(@NonNull ViewGroup viewGroup, @NonNull View view, boolean z10) {
        AnimatorSet animatorSet = new AnimatorSet();
        ArrayList arrayList = new ArrayList();
        b(arrayList, this.f32610b, viewGroup, view, z10);
        b(arrayList, this.f32611c, viewGroup, view, z10);
        Iterator<t> it2 = this.f32612d.iterator();
        while (it2.hasNext()) {
            b(arrayList, it2.next(), viewGroup, view, z10);
        }
        k(viewGroup.getContext(), z10);
        com.google.android.material.animation.c.a(animatorSet, arrayList);
        return animatorSet;
    }

    private void k(@NonNull Context context, boolean z10) {
        s.s(this, context, g(z10));
        s.t(this, context, h(z10), f(z10));
    }

    public void a(@NonNull t tVar) {
        this.f32612d.add(tVar);
    }

    public void d() {
        this.f32612d.clear();
    }

    @NonNull
    TimeInterpolator f(boolean z10) {
        return com.google.android.material.animation.b.f29368b;
    }

    @AttrRes
    int g(boolean z10) {
        return 0;
    }

    @AttrRes
    int h(boolean z10) {
        return 0;
    }

    @NonNull
    public P i() {
        return this.f32610b;
    }

    @Override // androidx.transition.Transition
    public boolean isSeekingSupported() {
        return true;
    }

    @Nullable
    public t j() {
        return this.f32611c;
    }

    public boolean l(@NonNull t tVar) {
        return this.f32612d.remove(tVar);
    }

    public void m(@Nullable t tVar) {
        this.f32611c = tVar;
    }

    @Override // androidx.transition.Visibility
    public Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return e(viewGroup, view, true);
    }

    @Override // androidx.transition.Visibility
    public Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return e(viewGroup, view, false);
    }
}

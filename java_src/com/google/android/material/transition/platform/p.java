package com.google.android.material.transition.platform;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.transition.TransitionValues;
import android.transition.Visibility;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.material.transition.platform.u;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
@RequiresApi(21)
abstract class p<P extends u> extends Visibility {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final P f32762b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private u f32763c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<u> f32764d = new ArrayList();

    protected p(P p10, @Nullable u uVar) {
        this.f32762b = p10;
        this.f32763c = uVar;
    }

    private static void b(List<Animator> list, @Nullable u uVar, ViewGroup viewGroup, View view, boolean z10) {
        if (uVar == null) {
            return;
        }
        Animator animatorB = z10 ? uVar.b(viewGroup, view) : uVar.a(viewGroup, view);
        if (animatorB != null) {
            list.add(animatorB);
        }
    }

    private Animator e(@NonNull ViewGroup viewGroup, @NonNull View view, boolean z10) {
        AnimatorSet animatorSet = new AnimatorSet();
        ArrayList arrayList = new ArrayList();
        b(arrayList, this.f32762b, viewGroup, view, z10);
        b(arrayList, this.f32763c, viewGroup, view, z10);
        Iterator<u> it2 = this.f32764d.iterator();
        while (it2.hasNext()) {
            b(arrayList, it2.next(), viewGroup, view, z10);
        }
        k(viewGroup.getContext(), z10);
        com.google.android.material.animation.c.a(animatorSet, arrayList);
        return animatorSet;
    }

    private void k(@NonNull Context context, boolean z10) {
        t.s(this, context, g(z10));
        t.t(this, context, h(z10), f(z10));
    }

    public void a(@NonNull u uVar) {
        this.f32764d.add(uVar);
    }

    public void d() {
        this.f32764d.clear();
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
        return this.f32762b;
    }

    @Nullable
    public u j() {
        return this.f32763c;
    }

    public boolean l(@NonNull u uVar) {
        return this.f32764d.remove(uVar);
    }

    public void m(@Nullable u uVar) {
        this.f32763c = uVar;
    }

    @Override // android.transition.Visibility
    public Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return e(viewGroup, view, true);
    }

    @Override // android.transition.Visibility
    public Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return e(viewGroup, view, false);
    }
}

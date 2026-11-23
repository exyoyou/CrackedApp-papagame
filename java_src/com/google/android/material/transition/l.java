package com.google.android.material.transition;

import android.animation.Animator;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.transition.TransitionValues;

/* JADX INFO: loaded from: classes5.dex */
public final class l extends o<p> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final float f32599f = 0.85f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f32600e;

    public l(boolean z10) {
        super(n(z10), o());
        this.f32600e = z10;
    }

    private static p n(boolean z10) {
        p pVar = new p(z10);
        pVar.m(f32599f);
        pVar.l(f32599f);
        return pVar;
    }

    private static t o() {
        return new d();
    }

    @Override // com.google.android.material.transition.o
    public /* bridge */ /* synthetic */ void a(@NonNull t tVar) {
        super.a(tVar);
    }

    @Override // com.google.android.material.transition.o
    public /* bridge */ /* synthetic */ void d() {
        super.d();
    }

    @Override // com.google.android.material.transition.o
    @NonNull
    public /* bridge */ /* synthetic */ t i() {
        return super.i();
    }

    @Override // com.google.android.material.transition.o, androidx.transition.Transition
    public /* bridge */ /* synthetic */ boolean isSeekingSupported() {
        return super.isSeekingSupported();
    }

    @Override // com.google.android.material.transition.o
    @Nullable
    public /* bridge */ /* synthetic */ t j() {
        return super.j();
    }

    @Override // com.google.android.material.transition.o
    public /* bridge */ /* synthetic */ boolean l(@NonNull t tVar) {
        return super.l(tVar);
    }

    @Override // com.google.android.material.transition.o
    public /* bridge */ /* synthetic */ void m(@Nullable t tVar) {
        super.m(tVar);
    }

    @Override // com.google.android.material.transition.o, androidx.transition.Visibility
    public /* bridge */ /* synthetic */ Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return super.onAppear(viewGroup, view, transitionValues, transitionValues2);
    }

    @Override // com.google.android.material.transition.o, androidx.transition.Visibility
    public /* bridge */ /* synthetic */ Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return super.onDisappear(viewGroup, view, transitionValues, transitionValues2);
    }

    public boolean p() {
        return this.f32600e;
    }
}

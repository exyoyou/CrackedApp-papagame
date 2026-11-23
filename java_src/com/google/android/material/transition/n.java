package com.google.android.material.transition;

import android.animation.Animator;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.transition.TransitionValues;
import com.google.android.material.R;

/* JADX INFO: loaded from: classes5.dex */
public final class n extends o<e> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final float f32607e = 0.92f;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @AttrRes
    private static final int f32608f = R.attr.motionDurationLong1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @AttrRes
    private static final int f32609g = R.attr.motionEasingEmphasizedInterpolator;

    public n() {
        super(o(), p());
    }

    private static e o() {
        return new e();
    }

    private static t p() {
        p pVar = new p();
        pVar.o(false);
        pVar.l(f32607e);
        return pVar;
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
    @AttrRes
    int g(boolean z10) {
        return f32608f;
    }

    @Override // com.google.android.material.transition.o
    @AttrRes
    int h(boolean z10) {
        return f32609g;
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
}

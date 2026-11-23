package com.google.android.material.transition;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.transition.TransitionValues;
import com.google.android.material.R;

/* JADX INFO: loaded from: classes5.dex */
public final class m extends o<d> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final float f32601e = 0.8f;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final float f32602f = 0.3f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @AttrRes
    private static final int f32603g = R.attr.motionDurationMedium4;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @AttrRes
    private static final int f32604h = R.attr.motionDurationShort3;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @AttrRes
    private static final int f32605i = R.attr.motionEasingEmphasizedDecelerateInterpolator;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @AttrRes
    private static final int f32606j = R.attr.motionEasingEmphasizedAccelerateInterpolator;

    public m() {
        super(o(), p());
    }

    private static d o() {
        d dVar = new d();
        dVar.e(f32602f);
        return dVar;
    }

    private static t p() {
        p pVar = new p();
        pVar.o(false);
        pVar.l(f32601e);
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
    @NonNull
    TimeInterpolator f(boolean z10) {
        return com.google.android.material.animation.b.f29367a;
    }

    @Override // com.google.android.material.transition.o
    @AttrRes
    int g(boolean z10) {
        return z10 ? f32603g : f32604h;
    }

    @Override // com.google.android.material.transition.o
    @AttrRes
    int h(boolean z10) {
        return z10 ? f32605i : f32606j;
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

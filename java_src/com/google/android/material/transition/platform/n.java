package com.google.android.material.transition.platform;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.transition.TransitionValues;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.material.R;

/* JADX INFO: loaded from: classes5.dex */
@RequiresApi(21)
public final class n extends p<d> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final float f32753e = 0.8f;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final float f32754f = 0.3f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @AttrRes
    private static final int f32755g = R.attr.motionDurationMedium4;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @AttrRes
    private static final int f32756h = R.attr.motionDurationShort3;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @AttrRes
    private static final int f32757i = R.attr.motionEasingEmphasizedDecelerateInterpolator;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @AttrRes
    private static final int f32758j = R.attr.motionEasingEmphasizedAccelerateInterpolator;

    public n() {
        super(o(), p());
    }

    private static d o() {
        d dVar = new d();
        dVar.e(f32754f);
        return dVar;
    }

    private static u p() {
        q qVar = new q();
        qVar.o(false);
        qVar.l(f32753e);
        return qVar;
    }

    @Override // com.google.android.material.transition.platform.p
    public /* bridge */ /* synthetic */ void a(@NonNull u uVar) {
        super.a(uVar);
    }

    @Override // com.google.android.material.transition.platform.p
    public /* bridge */ /* synthetic */ void d() {
        super.d();
    }

    @Override // com.google.android.material.transition.platform.p
    @NonNull
    TimeInterpolator f(boolean z10) {
        return com.google.android.material.animation.b.f29367a;
    }

    @Override // com.google.android.material.transition.platform.p
    @AttrRes
    int g(boolean z10) {
        return z10 ? f32755g : f32756h;
    }

    @Override // com.google.android.material.transition.platform.p
    @AttrRes
    int h(boolean z10) {
        return z10 ? f32757i : f32758j;
    }

    @Override // com.google.android.material.transition.platform.p
    @NonNull
    public /* bridge */ /* synthetic */ u i() {
        return super.i();
    }

    @Override // com.google.android.material.transition.platform.p
    @Nullable
    public /* bridge */ /* synthetic */ u j() {
        return super.j();
    }

    @Override // com.google.android.material.transition.platform.p
    public /* bridge */ /* synthetic */ boolean l(@NonNull u uVar) {
        return super.l(uVar);
    }

    @Override // com.google.android.material.transition.platform.p
    public /* bridge */ /* synthetic */ void m(@Nullable u uVar) {
        super.m(uVar);
    }

    @Override // com.google.android.material.transition.platform.p, android.transition.Visibility
    public /* bridge */ /* synthetic */ Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return super.onAppear(viewGroup, view, transitionValues, transitionValues2);
    }

    @Override // com.google.android.material.transition.platform.p, android.transition.Visibility
    public /* bridge */ /* synthetic */ Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        return super.onDisappear(viewGroup, view, transitionValues, transitionValues2);
    }
}

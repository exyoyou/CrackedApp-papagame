package com.google.android.material.transition.platform;

import android.animation.Animator;
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
public final class o extends p<e> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final float f32759e = 0.92f;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @AttrRes
    private static final int f32760f = R.attr.motionDurationLong1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @AttrRes
    private static final int f32761g = R.attr.motionEasingEmphasizedInterpolator;

    public o() {
        super(o(), p());
    }

    private static e o() {
        return new e();
    }

    private static u p() {
        q qVar = new q();
        qVar.o(false);
        qVar.l(f32759e);
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
    @AttrRes
    int g(boolean z10) {
        return f32760f;
    }

    @Override // com.google.android.material.transition.platform.p
    @AttrRes
    int h(boolean z10) {
        return f32761g;
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

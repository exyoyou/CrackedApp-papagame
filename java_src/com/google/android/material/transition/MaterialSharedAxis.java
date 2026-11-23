package com.google.android.material.transition;

import android.animation.Animator;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.view.GravityCompat;
import androidx.transition.TransitionValues;
import com.google.android.material.R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes5.dex */
public final class MaterialSharedAxis extends o<t> {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int f32548g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f32549h = 1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f32550i = 2;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @AttrRes
    private static final int f32551j = R.attr.motionDurationLong1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @AttrRes
    private static final int f32552k = R.attr.motionEasingEmphasizedInterpolator;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f32553e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f32554f;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface Axis {
    }

    public MaterialSharedAxis(int i10, boolean z10) {
        super(n(i10, z10), o());
        this.f32553e = i10;
        this.f32554f = z10;
    }

    private static t n(int i10, boolean z10) {
        if (i10 == 0) {
            return new SlideDistanceProvider(z10 ? GravityCompat.END : GravityCompat.START);
        }
        if (i10 == 1) {
            return new SlideDistanceProvider(z10 ? 80 : 48);
        }
        if (i10 == 2) {
            return new p(z10);
        }
        throw new IllegalArgumentException("Invalid axis: " + i10);
    }

    private static t o() {
        return new e();
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
        return f32551j;
    }

    @Override // com.google.android.material.transition.o
    @AttrRes
    int h(boolean z10) {
        return f32552k;
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

    public int p() {
        return this.f32553e;
    }

    public boolean q() {
        return this.f32554f;
    }
}

package com.google.android.material.transition.platform;

import android.animation.Animator;
import android.transition.TransitionValues;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.AttrRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.view.GravityCompat;
import com.google.android.material.R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes5.dex */
@RequiresApi(21)
public final class MaterialSharedAxis extends p<u> {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int f32688g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f32689h = 1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f32690i = 2;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @AttrRes
    private static final int f32691j = R.attr.motionDurationLong1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @AttrRes
    private static final int f32692k = R.attr.motionEasingEmphasizedInterpolator;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f32693e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f32694f;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface Axis {
    }

    public MaterialSharedAxis(int i10, boolean z10) {
        super(n(i10, z10), o());
        this.f32693e = i10;
        this.f32694f = z10;
    }

    private static u n(int i10, boolean z10) {
        if (i10 == 0) {
            return new SlideDistanceProvider(z10 ? GravityCompat.END : GravityCompat.START);
        }
        if (i10 == 1) {
            return new SlideDistanceProvider(z10 ? 80 : 48);
        }
        if (i10 == 2) {
            return new q(z10);
        }
        throw new IllegalArgumentException("Invalid axis: " + i10);
    }

    private static u o() {
        return new e();
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
        return f32691j;
    }

    @Override // com.google.android.material.transition.platform.p
    @AttrRes
    int h(boolean z10) {
        return f32692k;
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

    public int p() {
        return this.f32693e;
    }

    public boolean q() {
        return this.f32694f;
    }
}

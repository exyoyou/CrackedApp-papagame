package com.google.android.material.sidesheet;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

/* JADX INFO: loaded from: classes5.dex */
final class b extends d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final SideSheetBehavior<? extends View> f31763a;

    b(@NonNull SideSheetBehavior<? extends View> sideSheetBehavior) {
        this.f31763a = sideSheetBehavior;
    }

    @Override // com.google.android.material.sidesheet.d
    int a(@NonNull ViewGroup.MarginLayoutParams marginLayoutParams) {
        return marginLayoutParams.rightMargin;
    }

    @Override // com.google.android.material.sidesheet.d
    float b(int i10) {
        float fE = e();
        return (fE - i10) / (fE - d());
    }

    @Override // com.google.android.material.sidesheet.d
    int c(@NonNull ViewGroup.MarginLayoutParams marginLayoutParams) {
        return marginLayoutParams.rightMargin;
    }

    @Override // com.google.android.material.sidesheet.d
    int d() {
        return Math.max(0, (e() - this.f31763a.G()) - this.f31763a.N());
    }

    @Override // com.google.android.material.sidesheet.d
    int e() {
        return this.f31763a.R();
    }

    @Override // com.google.android.material.sidesheet.d
    int f() {
        return this.f31763a.R();
    }

    @Override // com.google.android.material.sidesheet.d
    int g() {
        return d();
    }

    @Override // com.google.android.material.sidesheet.d
    <V extends View> int h(@NonNull V v10) {
        return v10.getLeft() - this.f31763a.N();
    }

    @Override // com.google.android.material.sidesheet.d
    public int i(@NonNull CoordinatorLayout coordinatorLayout) {
        return coordinatorLayout.getRight();
    }

    @Override // com.google.android.material.sidesheet.d
    int j() {
        return 0;
    }

    @Override // com.google.android.material.sidesheet.d
    boolean k(float f10) {
        return f10 < 0.0f;
    }

    @Override // com.google.android.material.sidesheet.d
    boolean l(@NonNull View view) {
        return view.getLeft() > (e() + d()) / 2;
    }

    @Override // com.google.android.material.sidesheet.d
    boolean m(float f10, float f11) {
        return g.a(f10, f11) && Math.abs(f10) > ((float) this.f31763a.S());
    }

    @Override // com.google.android.material.sidesheet.d
    boolean n(@NonNull View view, float f10) {
        return Math.abs(((float) view.getRight()) + (f10 * this.f31763a.L())) > this.f31763a.M();
    }

    @Override // com.google.android.material.sidesheet.d
    void o(@NonNull ViewGroup.MarginLayoutParams marginLayoutParams, int i10) {
        marginLayoutParams.rightMargin = i10;
    }

    @Override // com.google.android.material.sidesheet.d
    void p(@NonNull ViewGroup.MarginLayoutParams marginLayoutParams, int i10, int i11) {
        int iR = this.f31763a.R();
        if (i10 <= iR) {
            marginLayoutParams.rightMargin = iR - i10;
        }
    }
}

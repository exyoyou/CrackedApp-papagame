package com.google.android.material.sidesheet;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

/* JADX INFO: loaded from: classes5.dex */
final class a extends d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final SideSheetBehavior<? extends View> f31762a;

    a(@NonNull SideSheetBehavior<? extends View> sideSheetBehavior) {
        this.f31762a = sideSheetBehavior;
    }

    @Override // com.google.android.material.sidesheet.d
    int a(@NonNull ViewGroup.MarginLayoutParams marginLayoutParams) {
        return marginLayoutParams.leftMargin;
    }

    @Override // com.google.android.material.sidesheet.d
    float b(int i10) {
        float fE = e();
        return (i10 - fE) / (d() - fE);
    }

    @Override // com.google.android.material.sidesheet.d
    int c(@NonNull ViewGroup.MarginLayoutParams marginLayoutParams) {
        return marginLayoutParams.leftMargin;
    }

    @Override // com.google.android.material.sidesheet.d
    int d() {
        return Math.max(0, this.f31762a.Q() + this.f31762a.N());
    }

    @Override // com.google.android.material.sidesheet.d
    int e() {
        return (-this.f31762a.G()) - this.f31762a.N();
    }

    @Override // com.google.android.material.sidesheet.d
    int f() {
        return this.f31762a.N();
    }

    @Override // com.google.android.material.sidesheet.d
    int g() {
        return -this.f31762a.G();
    }

    @Override // com.google.android.material.sidesheet.d
    <V extends View> int h(@NonNull V v10) {
        return v10.getRight() + this.f31762a.N();
    }

    @Override // com.google.android.material.sidesheet.d
    public int i(@NonNull CoordinatorLayout coordinatorLayout) {
        return coordinatorLayout.getLeft();
    }

    @Override // com.google.android.material.sidesheet.d
    int j() {
        return 1;
    }

    @Override // com.google.android.material.sidesheet.d
    boolean k(float f10) {
        return f10 > 0.0f;
    }

    @Override // com.google.android.material.sidesheet.d
    boolean l(@NonNull View view) {
        return view.getRight() < (d() - e()) / 2;
    }

    @Override // com.google.android.material.sidesheet.d
    boolean m(float f10, float f11) {
        return g.a(f10, f11) && Math.abs(f10) > ((float) this.f31762a.S());
    }

    @Override // com.google.android.material.sidesheet.d
    boolean n(@NonNull View view, float f10) {
        return Math.abs(((float) view.getLeft()) + (f10 * this.f31762a.L())) > this.f31762a.M();
    }

    @Override // com.google.android.material.sidesheet.d
    void o(@NonNull ViewGroup.MarginLayoutParams marginLayoutParams, int i10) {
        marginLayoutParams.leftMargin = i10;
    }

    @Override // com.google.android.material.sidesheet.d
    void p(@NonNull ViewGroup.MarginLayoutParams marginLayoutParams, int i10, int i11) {
        if (i10 <= this.f31762a.R()) {
            marginLayoutParams.leftMargin = i11;
        }
    }
}

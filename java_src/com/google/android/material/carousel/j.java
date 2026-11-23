package com.google.android.material.carousel;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.core.math.MathUtils;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes5.dex */
public class j extends g {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int[] f29859d = {1};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int[] f29860e = {0, 1};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f29861c = 0;

    @Override // com.google.android.material.carousel.g
    @NonNull
    k g(@NonNull b bVar, @NonNull View view) {
        int i10;
        int containerHeight = bVar.getContainerHeight();
        if (bVar.d()) {
            containerHeight = bVar.getContainerWidth();
        }
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        float f10 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        float measuredWidth = view.getMeasuredWidth() * 2;
        if (bVar.d()) {
            f10 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
            measuredWidth = view.getMeasuredHeight() * 2;
        }
        float fD = d() + f10;
        float fMax = Math.max(c() + f10, fD);
        float f11 = containerHeight;
        float fMin = Math.min(measuredWidth + f10, f11);
        float fClamp = MathUtils.clamp((measuredWidth / 3.0f) + f10, fD + f10, fMax + f10);
        float f12 = (fMin + fClamp) / 2.0f;
        int[] iArr = f29859d;
        int[] iArr2 = f11 < 2.0f * fD ? new int[]{0} : iArr;
        int iMax = (int) Math.max(1.0d, Math.floor((f11 - (h.i(iArr) * fMax)) / fMin));
        int iCeil = (((int) Math.ceil(f11 / fMin)) - iMax) + 1;
        int[] iArr3 = new int[iCeil];
        for (int i11 = 0; i11 < iCeil; i11++) {
            iArr3[i11] = iMax + i11;
        }
        int i12 = bVar.c() == 1 ? 1 : 0;
        a aVarC = a.c(f11, fClamp, fD, fMax, i12 != 0 ? g.a(iArr2) : iArr2, f12, i12 != 0 ? g.a(f29860e) : f29860e, fMin, iArr3);
        this.f29861c = aVarC.e();
        if (aVarC.e() > bVar.getItemCount()) {
            aVarC = a.c(f11, fClamp, fD, fMax, iArr2, f12, f29860e, fMin, iArr3);
            i10 = 0;
        } else {
            i10 = i12;
        }
        return h.d(view.getContext(), f10, f11, aVarC, i10);
    }

    @Override // com.google.android.material.carousel.g
    boolean j(@NonNull b bVar, int i10) {
        if (bVar.c() == 1) {
            if (i10 < this.f29861c && bVar.getItemCount() >= this.f29861c) {
                return true;
            }
            if (i10 >= this.f29861c && bVar.getItemCount() < this.f29861c) {
                return true;
            }
        }
        return false;
    }
}

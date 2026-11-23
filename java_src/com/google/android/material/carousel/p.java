package com.google.android.material.carousel;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.core.math.MathUtils;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: classes5.dex */
public final class p extends g {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int[] f29894d = {1};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int[] f29895e = {1, 0};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f29896c = 0;

    @Override // com.google.android.material.carousel.g
    @NonNull
    k g(@NonNull b bVar, @NonNull View view) {
        float containerHeight = bVar.getContainerHeight();
        if (bVar.d()) {
            containerHeight = bVar.getContainerWidth();
        }
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        float f10 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
        float measuredHeight = view.getMeasuredHeight();
        if (bVar.d()) {
            f10 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
            measuredHeight = view.getMeasuredWidth();
        }
        float f11 = f10;
        float fD = d() + f11;
        float fMax = Math.max(c() + f11, fD);
        float fMin = Math.min(measuredHeight + f11, containerHeight);
        float fClamp = MathUtils.clamp((measuredHeight / 3.0f) + f11, fD + f11, fMax + f11);
        float f12 = (fMin + fClamp) / 2.0f;
        int[] iArrA = f29894d;
        if (containerHeight < 2.0f * fD) {
            iArrA = new int[]{0};
        }
        int[] iArrA2 = f29895e;
        if (bVar.c() == 1) {
            iArrA = g.a(iArrA);
            iArrA2 = g.a(iArrA2);
        }
        int[] iArr = iArrA;
        int[] iArr2 = iArrA2;
        int iMax = (int) Math.max(1.0d, Math.floor(((containerHeight - (h.i(iArr2) * f12)) - (h.i(iArr) * fMax)) / fMin));
        int iCeil = (int) Math.ceil(containerHeight / fMin);
        int i10 = (iCeil - iMax) + 1;
        int[] iArr3 = new int[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            iArr3[i11] = iCeil - i11;
        }
        a aVarC = a.c(containerHeight, fClamp, fD, fMax, iArr, f12, iArr2, fMin, iArr3);
        this.f29896c = aVarC.e();
        if (k(aVarC, bVar.getItemCount())) {
            aVarC = a.c(containerHeight, fClamp, fD, fMax, new int[]{aVarC.f29840c}, f12, new int[]{aVarC.f29841d}, fMin, new int[]{aVarC.f29844g});
        }
        return h.d(view.getContext(), f11, containerHeight, aVarC, bVar.c());
    }

    @Override // com.google.android.material.carousel.g
    boolean j(b bVar, int i10) {
        return (i10 < this.f29896c && bVar.getItemCount() >= this.f29896c) || (i10 >= this.f29896c && bVar.getItemCount() < this.f29896c);
    }

    boolean k(a aVar, int i10) {
        int iE = aVar.e() - i10;
        boolean z10 = iE > 0 && (aVar.f29840c > 0 || aVar.f29841d > 1);
        while (iE > 0) {
            int i11 = aVar.f29840c;
            if (i11 > 0) {
                aVar.f29840c = i11 - 1;
            } else {
                int i12 = aVar.f29841d;
                if (i12 > 1) {
                    aVar.f29841d = i12 - 1;
                }
            }
            iE--;
        }
        return z10;
    }
}

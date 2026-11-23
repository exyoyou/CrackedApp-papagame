package com.kwad.sdk.core.view;

import android.graphics.Outline;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes2.dex */
@RequiresApi(api = 21)
public final class a extends ViewOutlineProvider {
    private int baY = 0;
    private int baZ;
    private int bba;
    private int bbb;
    private float mRadius;

    public a(float f10, int i10, int i11, int i12, int i13) {
        this.mRadius = f10;
        this.baZ = i11;
        this.bba = i12;
        this.bbb = i13;
    }

    @Override // android.view.ViewOutlineProvider
    public final void getOutline(View view, Outline outline) {
        outline.setRoundRect(new Rect(this.baY, this.baZ, this.bba, this.bbb), this.mRadius);
    }
}

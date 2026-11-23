package com.kwad.sdk.utils;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes2.dex */
public final class am extends bo {
    private int bpA;
    private int bpB;
    private int bpC;
    private int bpD;

    public am(int i10, int i11) {
        super(i10, i11);
    }

    private int VI() {
        return this.bpA;
    }

    private int VJ() {
        return this.bpB;
    }

    private int VK() {
        return this.bpC;
    }

    private int VL() {
        return this.bpD;
    }

    public static am a(int i10, int i11, int i12, int i13, int i14, int i15) {
        am amVar = new am(i10, i11);
        amVar.ga(0);
        amVar.gb(0);
        amVar.fY(i13);
        amVar.fZ(0);
        return amVar;
    }

    private void fZ(int i10) {
        this.bpB = i10;
    }

    public final am c(Context context, float f10) {
        am amVar = new am(com.kwad.sdk.c.a.a.a(context, this.mWidth * f10), com.kwad.sdk.c.a.a.a(context, this.mHeight * f10));
        amVar.bpC = com.kwad.sdk.c.a.a.a(context, this.bpC * f10);
        amVar.bpB = com.kwad.sdk.c.a.a.a(context, this.bpB * f10);
        amVar.bpD = com.kwad.sdk.c.a.a.a(context, this.bpD * f10);
        amVar.bpA = com.kwad.sdk.c.a.a.a(context, this.bpA * f10);
        return amVar;
    }

    public final void fY(int i10) {
        this.bpA = i10;
    }

    public final void ga(int i10) {
        this.bpC = i10;
    }

    public final void gb(int i10) {
        this.bpD = i10;
    }

    public static void a(View view, am amVar) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (amVar.getHeight() > 0) {
            layoutParams.height = amVar.getHeight();
        }
        if (amVar.getWidth() > 0) {
            layoutParams.width = amVar.getWidth();
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            if (amVar.VK() > 0) {
                marginLayoutParams.leftMargin = amVar.VK();
            }
            if (amVar.VJ() > 0) {
                marginLayoutParams.bottomMargin = amVar.VJ();
            }
            if (amVar.VL() > 0) {
                marginLayoutParams.rightMargin = amVar.VL();
            }
            if (amVar.VI() > 0) {
                marginLayoutParams.topMargin = amVar.VI();
            }
        }
        view.setLayoutParams(layoutParams);
    }
}

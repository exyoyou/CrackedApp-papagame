package com.kwad.components.core.innerEc.live.widget;

import android.text.TextPaint;
import android.text.style.CharacterStyle;

/* JADX INFO: loaded from: classes2.dex */
public final class o extends CharacterStyle {
    private int Fx;
    private boolean aaD;
    private float mRadius = 3.0f;
    private float aaB = 0.0f;
    private float aaC = 3.0f;

    public o(float f10, float f11, float f12, int i10) {
        this.Fx = i10;
    }

    public final void aO(boolean z10) {
        this.aaD = true;
    }

    @Override // android.text.style.CharacterStyle
    public final void updateDrawState(TextPaint textPaint) {
        if (this.aaD) {
            textPaint.setShadowLayer(this.mRadius, this.aaB, this.aaC, this.Fx);
        }
    }
}

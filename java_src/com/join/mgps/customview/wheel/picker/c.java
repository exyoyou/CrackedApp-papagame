package com.join.mgps.customview.wheel.picker;

import android.app.Activity;
import android.graphics.Typeface;
import android.support.v4.media.MediaDescriptionCompat;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public abstract class c extends com.join.mgps.customview.popup.b<View> {
    protected float J;
    protected int K;
    protected int L;
    protected Typeface M;
    protected int N;
    protected int O;
    protected int P;
    protected int Q;
    protected boolean R;
    protected boolean S;
    protected boolean T;
    protected WheelView.c U;

    public c(Activity activity) {
        super(activity);
        this.J = 2.0f;
        this.K = -1;
        this.L = 16;
        this.M = Typeface.DEFAULT;
        this.N = WheelView.f67060p0;
        this.O = WheelView.W;
        this.P = WheelView.W;
        this.Q = 3;
        this.R = true;
        this.S = true;
        this.T = true;
        this.U = new WheelView.c();
    }

    public void A0(boolean shadowVisible) {
        if (this.U == null) {
            this.U = new WheelView.c();
        }
        this.U.f(shadowVisible);
    }

    public void B0(@ColorInt int textColor) {
        this.O = textColor;
    }

    public void C0(@ColorInt int textColorFocus, @ColorInt int textColorNormal) {
        this.O = textColorFocus;
        this.N = textColorNormal;
    }

    public void D0(int textPadding) {
        this.K = textPadding;
    }

    public void E0(int textSize) {
        this.L = textSize;
    }

    public void F0(boolean textSizeAutoFit) {
        this.T = textSizeAutoFit;
    }

    public void G0(boolean useWeight) {
        this.S = useWeight;
    }

    @Override // com.join.mgps.customview.popup.a
    public View c() {
        if (this.H == null) {
            this.H = G();
        }
        return this.H;
    }

    protected TextView k0() {
        TextView textView = new TextView(this.f66737b);
        textView.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        textView.setTextColor(this.P);
        textView.setTextSize(this.L);
        return textView;
    }

    protected WheelView l0() {
        WheelView wheelView = new WheelView(this.f66737b);
        wheelView.setLineSpaceMultiplier(this.J);
        wheelView.setTextPadding(this.K);
        wheelView.setTextSize(this.L);
        wheelView.setTypeface(this.M);
        wheelView.setTextColor(this.N, this.O);
        wheelView.setDividerConfig(this.U);
        wheelView.setOffset(this.Q);
        wheelView.setCycleDisable(this.R);
        wheelView.setUseWeight(this.S);
        wheelView.setTextSizeAutoFit(this.T);
        return wheelView;
    }

    public void m0(boolean cycleDisable) {
        this.R = cycleDisable;
    }

    public void n0(@ColorInt int lineColor) {
        if (this.U == null) {
            this.U = new WheelView.c();
        }
        this.U.h(true);
        this.U.b(lineColor);
    }

    public void o0(@Nullable WheelView.c config) {
        if (config != null) {
            this.U = config;
            return;
        }
        WheelView.c cVar = new WheelView.c();
        this.U = cVar;
        cVar.h(false);
        this.U.f(false);
    }

    public void p0(float ratio) {
        if (this.U == null) {
            this.U = new WheelView.c();
        }
        this.U.c(ratio);
    }

    public void q0(boolean visible) {
        if (this.U == null) {
            this.U = new WheelView.c();
        }
        this.U.h(visible);
    }

    public void r0(int labelTextColor) {
        this.P = labelTextColor;
    }

    @Deprecated
    public void s0(@ColorInt int color) {
        n0(color);
    }

    @Deprecated
    public void t0(WheelView.c config) {
        o0(config);
    }

    public final void u0(@FloatRange(from = 2.0d, to = 4.0d) float multiplier) {
        this.J = multiplier;
    }

    @Deprecated
    public void v0(boolean visible) {
        q0(visible);
    }

    public void w0(@IntRange(from = 1, to = MediaDescriptionCompat.BT_FOLDER_TYPE_PLAYLISTS) int offset) {
        this.Q = offset;
    }

    @Deprecated
    public void x0(int textPadding) {
        this.K = textPadding;
    }

    public void y0(@ColorInt int color) {
        z0(color, 100);
    }

    public void z0(@ColorInt int color, @IntRange(from = 1, to = 255) int alpha) {
        if (this.U == null) {
            this.U = new WheelView.c();
        }
        this.U.e(color);
        this.U.d(alpha);
    }
}

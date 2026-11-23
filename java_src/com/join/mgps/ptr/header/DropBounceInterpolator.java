package com.join.mgps.ptr.header;

import android.content.Context;
import android.util.AttributeSet;
import android.view.animation.Interpolator;

/* JADX INFO: loaded from: classes3.dex */
public class DropBounceInterpolator implements Interpolator {
    public DropBounceInterpolator() {
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float v10) {
        float fPow;
        float f10;
        if (v10 < 0.25f) {
            fPow = ((float) Math.pow(((double) v10) - 0.125d, 2.0d)) * (-38.4f);
            f10 = 0.6f;
        } else {
            double d10 = v10;
            if (d10 < 0.5d || d10 >= 0.75d) {
                return 0.0f;
            }
            fPow = ((float) Math.pow(d10 - 0.625d, 2.0d)) * (-19.2f);
            f10 = 0.3f;
        }
        return fPow + f10;
    }

    public DropBounceInterpolator(Context context, AttributeSet attrs) {
    }
}

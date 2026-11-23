package com.join.mgps.joystick;

import android.content.Context;
import android.util.AttributeSet;
import android.view.animation.Interpolator;

/* JADX INFO: loaded from: classes3.dex */
public class EaseBreathInterpolator implements Interpolator {
    public EaseBreathInterpolator() {
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float input) {
        double d10 = input;
        return (float) (d10 < 0.333d ? (Math.sin((((double) (input * 3.0f)) * 3.141592653589793d) - 1.5707963267948966d) * 0.5d) + 0.5d : Math.pow((Math.sin((d10 * (-9.42477796076938d) * 0.5d) + 3.141592653589793d) * 0.5d) + 0.5d, 2.0d));
    }

    public EaseBreathInterpolator(Context context, AttributeSet attrs) {
    }
}

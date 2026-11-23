package com.cmic.gen.sdk.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes9.dex */
public class LoadingImageView extends ImageView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Animation f24618a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private LinearInterpolator f24619b;

    public LoadingImageView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f24618a = null;
        this.f24619b = null;
        a();
    }

    protected void a() {
        this.f24618a = AnimationUtils.loadAnimation(getContext(), c.c(getContext(), "umcsdk_anim_loading"));
        LinearInterpolator linearInterpolator = new LinearInterpolator();
        this.f24619b = linearInterpolator;
        this.f24618a.setInterpolator(linearInterpolator);
    }

    public LoadingImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f24618a = null;
        this.f24619b = null;
        a();
    }

    public LoadingImageView(Context context) {
        super(context);
        this.f24618a = null;
        this.f24619b = null;
        a();
    }
}

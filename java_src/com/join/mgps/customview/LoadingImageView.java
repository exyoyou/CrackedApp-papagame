package com.join.mgps.customview;

import android.content.Context;
import android.graphics.drawable.AnimationDrawable;
import android.util.AttributeSet;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes3.dex */
public class LoadingImageView extends ImageView {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private AnimationDrawable f65256b;

    public LoadingImageView(Context context) {
        super(context);
        this.f65256b = (AnimationDrawable) getBackground();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        AnimationDrawable animationDrawable = this.f65256b;
        if (animationDrawable != null) {
            animationDrawable.start();
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        AnimationDrawable animationDrawable = this.f65256b;
        if (animationDrawable != null) {
            animationDrawable.stop();
        }
    }

    public LoadingImageView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f65256b = (AnimationDrawable) getBackground();
    }

    public LoadingImageView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f65256b = (AnimationDrawable) getBackground();
    }
}

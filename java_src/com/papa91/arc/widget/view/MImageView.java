package com.papa91.arc.widget.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import com.facebook.drawee.view.SimpleDraweeView;
import com.papa91.arc.widget.IAnimation;

/* JADX INFO: loaded from: classes2.dex */
public class MImageView extends SimpleDraweeView implements IAnimation {
    public MImageView(Context context) {
        this(context, null);
    }

    @Override // com.papa91.arc.widget.IAnimation
    public void hide(boolean z10, long j10) {
        if (!z10) {
            setVisibility(8);
            return;
        }
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation.setDuration(j10);
        alphaAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.papa91.arc.widget.view.MImageView.2
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                MImageView.this.setVisibility(8);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        });
        startAnimation(alphaAnimation);
    }

    @Override // com.papa91.arc.widget.IAnimation
    public void show(boolean z10, long j10) {
        if (!z10) {
            setVisibility(0);
            return;
        }
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        alphaAnimation.setDuration(j10);
        alphaAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.papa91.arc.widget.view.MImageView.1
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                MImageView.this.setVisibility(0);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        });
        startAnimation(alphaAnimation);
    }

    public MImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.papa91.arc.widget.IAnimation
    public void hide(boolean z10) {
        hide(z10, 180L);
    }

    @Override // com.papa91.arc.widget.IAnimation
    public void show(boolean z10) {
        show(z10, 180L);
    }
}

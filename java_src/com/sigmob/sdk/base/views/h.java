package com.sigmob.sdk.base.views;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.czhj.sdk.common.utils.Dips;

/* JADX INFO: loaded from: classes5.dex */
public class h extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static float f80095a = 0.0f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f80096b = 1700;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private i f80097c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private i f80098d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private i f80099e;

    public h(Context context) {
        super(context);
        a();
    }

    private void a() {
        f80095a = Dips.dipsToIntPixels(6.0f, getContext());
        i iVar = new i(getContext());
        this.f80097c = iVar;
        addView(iVar, new ViewGroup.LayoutParams(-1, -1));
        i iVar2 = new i(getContext());
        this.f80098d = iVar2;
        addView(iVar2, new ViewGroup.LayoutParams(-1, -1));
        i iVar3 = new i(getContext());
        this.f80099e = iVar3;
        iVar3.a(true);
        addView(this.f80099e, new ViewGroup.LayoutParams(-1, -1));
        a(this.f80097c, 0);
        a(this.f80098d, MediaPlayer.MEIDA_PLAYER_OPTION_IGNORE_DIRECTLY_BUFFERING);
    }

    public h(Context context, AttributeSet attrs) {
        super(context, attrs);
        a();
    }

    public void a(final i view, int delay) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "translationY", 0.0f, Dips.dipsToIntPixels(-30.0f, getContext()));
        objectAnimatorOfFloat.setDuration(1700L);
        long j10 = delay;
        objectAnimatorOfFloat.setStartDelay(j10);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view, "alpha", 1.0f, 0.1f);
        objectAnimatorOfFloat2.setDuration(1700L);
        objectAnimatorOfFloat2.setStartDelay(j10);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f80095a, Dips.dipsToIntPixels(1.0f, getContext()));
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.sigmob.sdk.base.views.h.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                view.setLineWidth(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        valueAnimatorOfFloat.setDuration(1360L);
        valueAnimatorOfFloat.setStartDelay(j10 + 340);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2, valueAnimatorOfFloat);
        animatorSet.addListener(new Animator.AnimatorListener() { // from class: com.sigmob.sdk.base.views.h.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                animator.start();
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
        animatorSet.start();
    }

    public h(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        a();
    }
}

package com.byazt.oq;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.byazt.nr.z;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_FIRST_PACKET_TIME, 2347})
public class BluePressInteractView extends FrameLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public View f18176a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public AnimatorSet f18177c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public Context f18178da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f18179i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public View f18180n;
    public ImageView sp;
    public ObjectAnimator tt;
    public View uj;
    public boolean ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f18181x;

    public BluePressInteractView(Context context, int i10, int i11) {
        super(context);
        this.ve = false;
        this.f18177c = new AnimatorSet();
        this.f18181x = i10;
        this.f18179i = i11;
        this.f18178da = context;
        ve();
        uj();
    }

    private void uj() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.uj, "scaleX", 1.0f, 2.0f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.uj, "scaleY", 1.0f, 2.0f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.f18180n, "scaleX", 1.0f, 2.5f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(this.f18180n, "scaleY", 1.0f, 2.5f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat5 = ObjectAnimator.ofFloat(this.f18176a, "scaleX", 1.0f, 1.5f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat6 = ObjectAnimator.ofFloat(this.f18176a, "scaleY", 1.0f, 1.5f, 1.0f);
        ObjectAnimator objectAnimatorOfFloat7 = ObjectAnimator.ofFloat(this.sp, "rotation", 0.0f, -20.0f, 0.0f);
        this.tt = objectAnimatorOfFloat7;
        objectAnimatorOfFloat7.setDuration(1000L);
        this.f18177c.setDuration(1500L);
        this.f18177c.setInterpolator(new AccelerateDecelerateInterpolator());
        this.f18177c.play(objectAnimatorOfFloat).with(objectAnimatorOfFloat2).with(objectAnimatorOfFloat3).with(objectAnimatorOfFloat4).with(objectAnimatorOfFloat5).with(objectAnimatorOfFloat6);
        this.f18177c.addListener(new Animator.AnimatorListener() { // from class: com.byazt.oq.BluePressInteractView.1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                BluePressInteractView.this.ve = true;
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (BluePressInteractView.this.ve) {
                    return;
                }
                BluePressInteractView.this.tt.start();
                BluePressInteractView.this.f18177c.start();
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
    }

    private void ve() {
        View view = new View(this.f18178da);
        this.uj = view;
        view.setBackground(c("#1A7BBEFF", "#337BBEFF"));
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) (((double) this.f18181x) * 0.45d), (int) (((double) this.f18179i) * 0.45d));
        layoutParams.gravity = 17;
        this.uj.setLayoutParams(layoutParams);
        addView(this.uj);
        View view2 = new View(this.f18178da);
        this.f18180n = view2;
        view2.setBackground(c("#337BBEFF", "#807BBEFF"));
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams((int) (((double) this.f18181x) * 0.25d), (int) (((double) this.f18179i) * 0.25d));
        layoutParams2.gravity = 17;
        this.f18180n.setLayoutParams(layoutParams2);
        addView(this.f18180n);
        View view3 = new View(this.f18178da);
        this.f18176a = view3;
        view3.setBackground(c("#807BBEFF", "#FF7BBEFF"));
        int i10 = this.f18181x;
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams((int) (((double) i10) * 0.25d), (int) (((double) i10) * 0.25d));
        layoutParams3.gravity = 17;
        this.f18176a.setLayoutParams(layoutParams3);
        addView(this.f18176a);
        this.sp = new ImageView(this.f18178da);
        z.c(getContext(), "tt_blue_hand", this.sp, 320);
        this.sp.setScaleType(ImageView.ScaleType.FIT_CENTER);
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams((int) (((double) this.f18181x) * 0.62d), (int) (((double) this.f18179i) * 0.53d));
        layoutParams4.gravity = 17;
        layoutParams4.topMargin = (layoutParams4.width / 2) - 5;
        layoutParams4.leftMargin = (layoutParams4.height / 2) - 5;
        this.sp.setLayoutParams(layoutParams4);
        addView(this.sp);
    }

    public void tt() {
        this.ve = true;
        ObjectAnimator objectAnimator = this.tt;
        if (objectAnimator == null || this.f18177c == null) {
            return;
        }
        objectAnimator.cancel();
        this.f18177c.cancel();
    }

    private GradientDrawable c(String str, String str2) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(Color.parseColor(str));
        gradientDrawable.setStroke(1, Color.parseColor(str2));
        return gradientDrawable;
    }

    public void c() {
        this.ve = false;
        ObjectAnimator objectAnimator = this.tt;
        if (objectAnimator == null || this.f18177c == null) {
            return;
        }
        objectAnimator.start();
        this.f18177c.start();
    }
}

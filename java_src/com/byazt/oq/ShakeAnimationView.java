package com.byazt.oq;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.byazt.aq.da;
import com.byazt.nr.zm;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_FIRST_PACKET_TIME, 1857})
public class ShakeAnimationView extends LinearLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public TextView f18294a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f18295c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public da f18296da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public LinearLayout f18297i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public zm f18298n;
    public boolean sl;
    public TextView sp;
    public TextView tt;
    public ImageView uj;
    public TextView ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public c f18299x;

    /* JADX INFO: renamed from: com.byazt.oq.ShakeAnimationView$1, reason: invalid class name */
    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_FIRST_PACKET_TIME, 1461})
    public class AnonymousClass1 implements Runnable {
        public AnonymousClass1() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ShakeAnimationView.this.uj != null) {
                final RotateAnimation rotateAnimation = new RotateAnimation(-14.0f, 14.0f, 1, 0.9f, 1, 0.9f);
                rotateAnimation.setInterpolator(new tt(null));
                rotateAnimation.setDuration(1000L);
                rotateAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.byazt.oq.ShakeAnimationView.1.1
                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationEnd(Animation animation) {
                        ShakeAnimationView.this.postDelayed(new Runnable() { // from class: com.byazt.oq.ShakeAnimationView.1.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                ShakeAnimationView.this.uj.startAnimation(rotateAnimation);
                            }
                        }, 250L);
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationRepeat(Animation animation) {
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationStart(Animation animation) {
                    }
                });
                ShakeAnimationView.this.uj.startAnimation(rotateAnimation);
            }
        }
    }

    public interface c {
        void c(boolean z10);
    }

    @com.byazt.zqa.c(c = {0, 1, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_FIRST_PACKET_TIME, 700})
    private static class tt implements Interpolator {
        private tt() {
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f10) {
            if (f10 <= 0.25f) {
                return (f10 * (-2.0f)) + 0.5f;
            }
            if (f10 <= 0.5f) {
                return (f10 * 4.0f) - 1.0f;
            }
            return f10 <= 0.75f ? (f10 * (-4.0f)) + 3.0f : (f10 * 2.0f) - 1.5f;
        }

        public /* synthetic */ tt(AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    public ShakeAnimationView(Context context, View view, da daVar, boolean z10, int i10) {
        super(context);
        this.f18296da = daVar;
        this.sl = z10;
        this.f18295c = i10;
        c(context, view);
    }

    public LinearLayout getShakeLayout() {
        return this.f18297i;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (isShown()) {
            if (this.f18298n == null) {
                this.f18298n = new zm(getContext().getApplicationContext(), 1, this.sl);
            }
            this.f18298n.c(new zm.c() { // from class: com.byazt.oq.ShakeAnimationView.2
                @Override // com.byazt.nr.zm.c
                public void c(int i10) {
                    boolean zC = ShakeAnimationView.this.f18298n != null ? ShakeAnimationView.this.f18298n.c() : false;
                    if (i10 == 1 && ShakeAnimationView.this.isShown() && ShakeAnimationView.this.f18299x != null) {
                        ShakeAnimationView.this.f18299x.c(zC);
                    }
                }
            });
            da daVar = this.f18296da;
            if (daVar != null) {
                this.f18298n.c(daVar.c());
                this.f18298n.ve(this.f18296da.sp());
                this.f18298n.ve(this.f18296da.tt());
                this.f18298n.n(this.f18296da.uj());
                this.f18298n.tt(this.f18296da.ve());
                this.f18298n.a(this.f18296da.n());
                this.f18298n.c(this.f18296da.a());
                this.f18298n.tt(this.f18296da.x());
                this.f18298n.c(this.f18295c);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        zm zmVar = this.f18298n;
        if (zmVar != null) {
            zmVar.tt(this.f18295c);
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
        zm zmVar = this.f18298n;
        if (zmVar != null) {
            if (z10) {
                zmVar.c(this.f18295c);
            } else {
                zmVar.tt(this.f18295c);
            }
        }
    }

    public void setOnShakeViewListener(c cVar) {
        this.f18299x = cVar;
    }

    public void setShakeText(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.f18294a.setText(str);
        } else {
            this.f18294a.setVisibility(8);
            this.sp.setVisibility(8);
        }
    }

    public void c(Context context, View view) {
        addView(view);
        this.f18297i = (LinearLayout) findViewById(2097610727);
        this.uj = (ImageView) findViewById(2097610725);
        this.tt = (TextView) findViewById(2097610724);
        this.ve = (TextView) findViewById(2097610726);
        this.f18294a = (TextView) findViewById(2097610723);
        this.sp = (TextView) findViewById(2097610728);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(Color.parseColor("#57000000"));
        this.f18297i.setBackground(gradientDrawable);
    }

    public void c() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, "alpha", 0.0f, 1.0f);
        objectAnimatorOfFloat.setDuration(300L);
        objectAnimatorOfFloat.start();
        postDelayed(new AnonymousClass1(), 500L);
    }
}

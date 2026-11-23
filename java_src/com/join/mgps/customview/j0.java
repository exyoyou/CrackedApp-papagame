package com.join.mgps.customview;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Handler;
import android.os.Message;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class j0 extends PopupWindow {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Context f66623a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    TextView f66624b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    LinearLayout f66625c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    ImageView f66626d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f66627e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    Handler f66628f;

    class a extends Handler {

        /* JADX INFO: renamed from: com.join.mgps.customview.j0$a$a, reason: collision with other inner class name */
        class AnimationAnimationListenerC0713a implements Animation.AnimationListener {
            AnimationAnimationListenerC0713a() {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                j0.this.dismiss();
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        }

        class b implements Animation.AnimationListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ Animation f66631b;

            b(final Animation val$shakeAnimPositiveReset) {
                this.f66631b = val$shakeAnimPositiveReset;
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                j0.this.f66626d.startAnimation(this.f66631b);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        }

        class c implements Animation.AnimationListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ Animation f66633b;

            c(final Animation val$shakeAnimNegative) {
                this.f66633b = val$shakeAnimNegative;
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                j0.this.f66626d.startAnimation(this.f66633b);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        }

        class d implements Animation.AnimationListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ Animation f66635b;

            d(final Animation val$shakeAnimNegativeReset) {
                this.f66635b = val$shakeAnimNegativeReset;
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                j0.this.f66626d.startAnimation(this.f66635b);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        }

        class e implements Animation.AnimationListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ Animation f66637b;

            e(final Animation val$shakeAnimPositive) {
                this.f66637b = val$shakeAnimPositive;
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                if (System.currentTimeMillis() - j0.this.f66627e <= 300) {
                    j0.this.f66626d.startAnimation(this.f66637b);
                } else {
                    j0.this.f66628f.sendEmptyMessageDelayed(0, 1000L);
                    j0.this.f66628f.sendEmptyMessageDelayed(1, 1500L);
                }
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        }

        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            int i10 = msg.what;
            if (i10 == 0) {
                j0 j0Var = j0.this;
                j0Var.f66625c.startAnimation(AnimationUtils.loadAnimation(j0Var.f66623a, R.anim.slide_out));
                return;
            }
            if (i10 == 1) {
                Animation animationLoadAnimation = AnimationUtils.loadAnimation(j0.this.f66623a, R.anim.scale_out);
                j0.this.f66626d.startAnimation(animationLoadAnimation);
                animationLoadAnimation.setAnimationListener(new AnimationAnimationListenerC0713a());
                return;
            }
            if (i10 != 3) {
                return;
            }
            RotateAnimation rotateAnimation = new RotateAnimation(0.0f, 40.0f, 1, 0.5f, 1, 0.5f);
            rotateAnimation.setInterpolator(new LinearInterpolator());
            rotateAnimation.setFillEnabled(true);
            rotateAnimation.setFillAfter(false);
            rotateAnimation.setDuration(10L);
            RotateAnimation rotateAnimation2 = new RotateAnimation(40.0f, 0.0f, 1, 0.5f, 1, 0.5f);
            rotateAnimation2.setFillEnabled(true);
            rotateAnimation2.setFillAfter(true);
            rotateAnimation2.setDuration(10L);
            RotateAnimation rotateAnimation3 = new RotateAnimation(0.0f, -40.0f, 1, 0.5f, 1, 0.5f);
            rotateAnimation3.setFillEnabled(true);
            rotateAnimation3.setFillAfter(true);
            rotateAnimation3.setDuration(10L);
            RotateAnimation rotateAnimation4 = new RotateAnimation(-40.0f, 0.0f, 1, 0.5f, 1, 0.5f);
            rotateAnimation4.setFillEnabled(true);
            rotateAnimation4.setFillAfter(true);
            rotateAnimation4.setDuration(10L);
            rotateAnimation.setAnimationListener(new b(rotateAnimation2));
            rotateAnimation2.setAnimationListener(new c(rotateAnimation3));
            rotateAnimation3.setAnimationListener(new d(rotateAnimation4));
            rotateAnimation4.setAnimationListener(new e(rotateAnimation));
            j0.this.f66627e = System.currentTimeMillis();
            j0.this.f66626d.startAnimation(rotateAnimation);
        }
    }

    public j0(Context context) {
        super(context);
        this.f66628f = new a();
        this.f66623a = context;
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.reward, (ViewGroup) null);
        this.f66624b = (TextView) viewInflate.findViewById(R.id.txt);
        this.f66625c = (LinearLayout) viewInflate.findViewById(R.id.rewardContainer);
        this.f66626d = (ImageView) viewInflate.findViewById(R.id.moneyPackage);
        setBackgroundDrawable(new ColorDrawable(0));
        setWidth(400);
        setHeight(300);
        setContentView(viewInflate);
    }

    public void c(View parent) {
        this.f66624b.setText(Html.fromHtml("注册成功  奖励: <font color='0xf47500' >+100铜板</font>&nbsp;&nbsp;<font color='0xf47500' >+100</font>经验"));
        setWidth(parent.getWidth());
        showAtLocation(parent, 81, 0, 0);
        this.f66628f.sendEmptyMessage(3);
    }

    @Override // android.widget.PopupWindow
    public void setOnDismissListener(PopupWindow.OnDismissListener onDismissListener) {
        super.setOnDismissListener(onDismissListener);
    }
}

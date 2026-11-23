package com.join.mgps.customview;

import android.content.Context;
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
import android.widget.TextView;
import android.widget.Toast;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes3.dex */
public class k0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static k0 f66639c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Toast f66640d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static TextView f66641e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static LinearLayout f66642f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static ImageView f66643g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static Context f66644h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static long f66645i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f66646a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Handler f66647b = new a();

    class a extends Handler {

        /* JADX INFO: renamed from: com.join.mgps.customview.k0$a$a, reason: collision with other inner class name */
        class AnimationAnimationListenerC0714a implements Animation.AnimationListener {
            AnimationAnimationListenerC0714a() {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
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
            final /* synthetic */ Animation f66650b;

            b(final Animation val$shakeAnimPositiveReset) {
                this.f66650b = val$shakeAnimPositiveReset;
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                k0.f66643g.startAnimation(this.f66650b);
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
            final /* synthetic */ Animation f66652b;

            c(final Animation val$shakeAnimNegative) {
                this.f66652b = val$shakeAnimNegative;
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                k0.f66643g.startAnimation(this.f66652b);
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
            final /* synthetic */ Animation f66654b;

            d(final Animation val$shakeAnimNegativeReset) {
                this.f66654b = val$shakeAnimNegativeReset;
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                k0.f66643g.startAnimation(this.f66654b);
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
            final /* synthetic */ Animation f66656b;

            e(final Animation val$shakeAnimPositive) {
                this.f66656b = val$shakeAnimPositive;
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                if (System.currentTimeMillis() - k0.this.f66646a <= 300) {
                    k0.f66643g.startAnimation(this.f66656b);
                    return;
                }
                k0.f66640d.show();
                k0.this.f66647b.sendEmptyMessageDelayed(0, 2000L);
                k0.this.f66647b.sendEmptyMessageDelayed(1, 2500L);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        }

        class f extends TimerTask {
            f() {
            }

            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                k0.this.f66647b.sendEmptyMessage(4);
            }
        }

        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            int i10 = msg.what;
            if (i10 == 0) {
                k0.f66642f.startAnimation(AnimationUtils.loadAnimation(k0.f66644h, R.anim.reward_slide_out));
                return;
            }
            if (i10 == 1) {
                Animation animationLoadAnimation = AnimationUtils.loadAnimation(k0.f66644h, R.anim.reward_scale_out);
                k0.f66643g.startAnimation(animationLoadAnimation);
                animationLoadAnimation.setAnimationListener(new AnimationAnimationListenerC0714a());
                return;
            }
            if (i10 != 3) {
                if (i10 == 4) {
                    k0.f66640d.show();
                    return;
                } else {
                    if (i10 != 5) {
                        return;
                    }
                    long unused = k0.f66645i = System.currentTimeMillis();
                    k0.f66640d.show();
                    new Timer().schedule(new f(), 3500L);
                    k0.this.f66647b.sendEmptyMessage(3);
                    return;
                }
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
            k0.this.f66646a = System.currentTimeMillis();
            k0.f66643g.startAnimation(rotateAnimation);
        }
    }

    private UserInfo h(Context ctx) {
        return AccountUtil_.getInstance_(ctx).getAccountData();
    }

    public static k0 i(Context context) {
        f66644h = context;
        f66644h = context.getApplicationContext();
        if (f66639c == null) {
            f66639c = new k0();
            View viewInflate = LayoutInflater.from(context).inflate(R.layout.reward, (ViewGroup) null);
            f66641e = (TextView) viewInflate.findViewById(R.id.txt);
            f66642f = (LinearLayout) viewInflate.findViewById(R.id.rewardContainer);
            f66643g = (ImageView) viewInflate.findViewById(R.id.moneyPackage);
            Toast toast = new Toast(context);
            f66640d = toast;
            toast.setGravity(81, 0, 200);
            f66640d.setDuration(1);
            f66640d.setView(viewInflate);
        }
        return f66639c;
    }

    public void j(RewardType type, int money, int exp) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("method show() called.type");
        sb2.append(type.getVal());
        Context context = f66644h;
        if (context == null || k(context)) {
            f66640d.cancel();
            if (money == 0 && exp == 0) {
                return;
            }
            StringBuilder sb3 = new StringBuilder(type.getVal() + "  奖励: ");
            if (money > 0) {
                sb3.append("<font color='0xf47500' >+" + money + "</font>铜板");
                if (exp > 0) {
                    sb3.append("&nbsp;&nbsp;");
                }
            }
            if (exp > 0) {
                sb3.append("<font color='0xf47500' >+" + exp + "</font>经验");
            }
            f66641e.setText(Html.fromHtml(sb3.toString()));
            StringBuilder sb4 = new StringBuilder();
            sb4.append("gap=");
            sb4.append(System.currentTimeMillis() - f66645i);
            if (System.currentTimeMillis() - f66645i < 15000) {
                if (com.join.android.app.common.utils.q.I(f66644h)) {
                    this.f66647b.sendEmptyMessageDelayed(5, 15000L);
                    return;
                } else {
                    this.f66647b.sendEmptyMessageDelayed(5, 15000L);
                    return;
                }
            }
            if (com.join.android.app.common.utils.q.I(f66644h)) {
                this.f66647b.sendEmptyMessageDelayed(5, 10000L);
            } else {
                this.f66647b.sendEmptyMessage(5);
            }
        }
    }

    boolean k(Context ctx) {
        if (h(ctx) == null) {
            return false;
        }
        return !AccountUtil_.getInstance_(ctx).isTourist();
    }
}

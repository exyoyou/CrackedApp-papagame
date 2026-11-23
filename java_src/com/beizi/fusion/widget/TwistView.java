package com.beizi.fusion.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Color;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.beizi.fusion.R;
import com.beizi.fusion.tool.ac;
import com.beizi.fusion.tool.ar;
import com.beizi.fusion.tool.au;
import java.util.Timer;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes6.dex */
public class TwistView extends RelativeLayout {
    public static final long DELAY_TIME_TWIST = 100;
    private int A;
    private int B;
    private a C;
    private int D;
    private boolean E;
    private int F;
    private int G;
    private int H;
    private boolean I;
    private Handler J;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private View f10885a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private View f10886b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private View f10887c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private View f10888d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private BackArrowView f10889e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private BackArrowView f10890f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private BackArrowView f10891g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ShakeView f10892h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private TextView f10893i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private TextView f10894j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f10895k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private ObjectAnimator f10896l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final int f10897m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final int f10898n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final long f10899o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final long f10900p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final long f10901q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private String f10902r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private String f10903s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private String f10904t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private long f10905u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private Timer f10906v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private TimerTask f10907w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private Timer f10908x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private TimerTask f10909y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f10910z;

    public interface a {
        void a();
    }

    public TwistView(Context context) {
        super(context);
        this.f10897m = 1000;
        this.f10898n = 2000;
        this.f10899o = 500L;
        this.f10900p = 0L;
        this.f10901q = 0L;
        this.f10902r = "#FFFFFFFF";
        this.f10903s = "#99FFFFFF";
        this.f10904t = "#33FFFFFF";
        this.f10905u = 1000L;
        this.f10910z = 0;
        this.A = 0;
        this.B = 0;
        this.D = 0;
        this.E = true;
        this.F = 3;
        this.G = 1;
        this.H = 95;
        this.I = false;
        this.J = new Handler(Looper.getMainLooper()) { // from class: com.beizi.fusion.widget.TwistView.1
            @Override // android.os.Handler
            @RequiresApi(api = 21)
            @SuppressLint({"LongLogTag"})
            public void handleMessage(@NonNull Message message) {
                super.handleMessage(message);
                try {
                    int i10 = message.what;
                    if (i10 == 2000) {
                        TwistView twistView = TwistView.this;
                        twistView.updateStatus(twistView.D);
                    } else if (i10 == 1000) {
                        TwistView.this.a();
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        };
        b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getCountAnimation() {
        return (int) (this.f10905u / 100);
    }

    public void cancelArrowTimerTask() {
        try {
            Timer timer = this.f10908x;
            if (timer != null) {
                timer.cancel();
                this.f10908x = null;
            }
            TimerTask timerTask = this.f10909y;
            if (timerTask != null) {
                timerTask.cancel();
                this.f10909y = null;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void cancelTwistTimerTask() {
        try {
            Timer timer = this.f10906v;
            if (timer != null) {
                timer.cancel();
                this.f10906v = null;
            }
            TimerTask timerTask = this.f10907w;
            if (timerTask != null) {
                timerTask.cancel();
                this.f10907w = null;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void destroyView() {
        try {
            ShakeView shakeView = this.f10892h;
            if (shakeView != null) {
                shakeView.stopShake();
            }
            cancelTwistTimerTask();
            cancelArrowTimerTask();
            removeHandlerMsg();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @RequiresApi(api = 21)
    public void hideTargetView(View view, long j10, int i10) {
        try {
            int right = view.getRight();
            int top = (view.getTop() + view.getBottom()) / 2;
            float fMax = Math.max(view.getWidth(), view.getHeight());
            float countAnimation = fMax / getCountAnimation();
            Animator animatorCreateCircularReveal = ViewAnimationUtils.createCircularReveal(view, right, top, fMax - (i10 * countAnimation), fMax - (countAnimation * (i10 + 1)));
            animatorCreateCircularReveal.setDuration(j10);
            view.clearAnimation();
            animatorCreateCircularReveal.addListener(new AnimatorListenerAdapter() { // from class: com.beizi.fusion.widget.TwistView.8
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    super.onAnimationStart(animator);
                }
            });
            animatorCreateCircularReveal.start();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void removeHandlerMsg() {
        try {
            Handler handler = this.J;
            if (handler != null) {
                handler.removeCallbacks(null);
                this.J = null;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void setDescribeText(String str) {
        try {
            TextView textView = this.f10894j;
            if (textView != null) {
                textView.setText(str);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void setDurationAnimation(long j10) {
        this.f10905u = j10;
    }

    public void setJumpClickListener(View.OnClickListener onClickListener) {
        View view = this.f10888d;
        if (view != null) {
            view.setOnClickListener(onClickListener);
        }
    }

    public void setJumpOnTouchListener(View.OnTouchListener onTouchListener) {
        View view = this.f10888d;
        if (view != null) {
            view.setOnTouchListener(onTouchListener);
        }
    }

    public void setMainTitleText(String str) {
        try {
            TextView textView = this.f10893i;
            if (textView != null) {
                textView.setText(str);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void setRotationEndCallback(a aVar) {
        this.C = aVar;
    }

    public void setTwistTotalLayoutBg(String str) {
        View view = this.f10888d;
        if (view != null) {
            try {
                ar.a(view, str, 0, "", 100);
            } catch (Exception e10) {
                ac.b("TwistView", " e : " + e10);
            }
        }
    }

    public void setTwistTotalLayoutWidthAndHeight(int i10, int i11) {
        try {
            View view = this.f10888d;
            if (view != null) {
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view.getLayoutParams();
                layoutParams.width = i10;
                layoutParams.height = i11 - au.a(getContext(), this.H);
                this.f10888d.setPadding(au.a(getContext(), 0.0f), au.a(getContext(), this.F), au.a(getContext(), 0.0f), au.a(getContext(), this.F));
                this.f10888d.setLayoutParams(layoutParams);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @RequiresApi(api = 21)
    public void showTargetView(View view, long j10, final int i10) {
        try {
            int right = view.getRight();
            int top = (view.getTop() + view.getBottom()) / 2;
            float fMax = Math.max(view.getWidth(), view.getHeight()) / getCountAnimation();
            Animator animatorCreateCircularReveal = ViewAnimationUtils.createCircularReveal(view, right, top, (i10 * fMax) + 0.0f, fMax * (i10 + 1));
            animatorCreateCircularReveal.setDuration(j10);
            view.clearAnimation();
            animatorCreateCircularReveal.addListener(new AnimatorListenerAdapter() { // from class: com.beizi.fusion.widget.TwistView.7
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    super.onAnimationStart(animator);
                    if (TwistView.this.f()) {
                        return;
                    }
                    TwistView.this.getCountAnimation();
                }
            });
            animatorCreateCircularReveal.start();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void startTwistTimerTask() {
        try {
            if (this.f10906v == null) {
                this.f10906v = new Timer();
            }
            if (this.f10907w == null) {
                this.f10907w = new TimerTask() { // from class: com.beizi.fusion.widget.TwistView.2
                    @Override // java.util.TimerTask, java.lang.Runnable
                    @RequiresApi(api = 21)
                    public void run() {
                        try {
                            if (TwistView.this.I || TwistView.this.J == null) {
                                return;
                            }
                            Message messageObtainMessage = TwistView.this.J.obtainMessage();
                            messageObtainMessage.what = 2000;
                            TwistView.this.J.sendMessage(messageObtainMessage);
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    }
                };
            }
            this.f10906v.scheduleAtFixedRate(this.f10907w, 0L, 100L);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void updateRollStatus(int i10) {
        this.D = i10;
    }

    @RequiresApi(api = 21)
    public void updateStatus(int i10) {
        if (i10 == 0) {
            return;
        }
        try {
            int countAnimation = getCountAnimation();
            if (this.B != i10) {
                if (this.E) {
                    this.A = 0;
                } else {
                    this.A = countAnimation - this.A;
                }
                this.B = i10;
            }
            if (this.A < 0) {
                this.A = 0;
            }
            if (this.A >= countAnimation) {
                if (this.E) {
                    this.A = 0;
                } else {
                    this.A = countAnimation;
                }
            }
            int i11 = this.A;
            if (i11 < 0 || i11 > countAnimation) {
                return;
            }
            a(this.f10886b, this.f10885a, 100L, i10, i11);
            this.A++;
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void b() {
        try {
            View.inflate(getContext(), R.layout.beizi_twist_view, this);
            c();
            d();
            e();
            startTwistTimerTask();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void c() {
        try {
            this.f10885a = findViewById(R.id.beizi_twist_go_imageview);
            this.f10888d = findViewById(R.id.beizi_twist_shake_total_layout);
            this.f10886b = findViewById(R.id.beizi_twist_total_layout);
            this.f10887c = findViewById(R.id.beizi_twist_right_total_layout);
            this.f10893i = (TextView) findViewById(R.id.beizi_twist_title_text);
            this.f10894j = (TextView) findViewById(R.id.beizi_twist_describe_text);
            this.f10889e = (BackArrowView) findViewById(R.id.beizi_twist_right_first_image);
            this.f10890f = (BackArrowView) findViewById(R.id.beizi_twist_right_second_image);
            this.f10891g = (BackArrowView) findViewById(R.id.beizi_twist_right_third_image);
            ShakeView shakeView = (ShakeView) findViewById(R.id.beizi_twist_top_view);
            this.f10892h = shakeView;
            shakeView.updateTwistRollAnim();
            setTwistTotalLayoutBg("#d9333333");
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void d() {
        try {
            ShakeView shakeView = this.f10892h;
            if (shakeView != null) {
                shakeView.startShake();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void e() {
        try {
            if (this.f10908x == null) {
                this.f10908x = new Timer();
            }
            if (this.f10909y == null) {
                this.f10909y = new TimerTask() { // from class: com.beizi.fusion.widget.TwistView.6
                    @Override // java.util.TimerTask, java.lang.Runnable
                    public void run() {
                        try {
                            if (TwistView.this.J != null) {
                                TwistView.this.J.sendEmptyMessage(1000);
                            }
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    }
                };
            }
            this.f10908x.schedule(this.f10909y, 0L, 500L);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean f() {
        return this.B == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        try {
            int i10 = this.f10895k;
            if (i10 == 0) {
                BackArrowView backArrowView = this.f10889e;
                if (backArrowView != null) {
                    backArrowView.setViewColor(Color.parseColor(this.f10902r));
                }
                BackArrowView backArrowView2 = this.f10890f;
                if (backArrowView2 != null) {
                    backArrowView2.setViewColor(Color.parseColor(this.f10903s));
                }
                BackArrowView backArrowView3 = this.f10891g;
                if (backArrowView3 != null) {
                    backArrowView3.setViewColor(Color.parseColor(this.f10904t));
                }
            } else if (i10 == 1) {
                BackArrowView backArrowView4 = this.f10889e;
                if (backArrowView4 != null) {
                    backArrowView4.setViewColor(Color.parseColor(this.f10904t));
                }
                BackArrowView backArrowView5 = this.f10890f;
                if (backArrowView5 != null) {
                    backArrowView5.setViewColor(Color.parseColor(this.f10902r));
                }
                BackArrowView backArrowView6 = this.f10891g;
                if (backArrowView6 != null) {
                    backArrowView6.setViewColor(Color.parseColor(this.f10903s));
                }
            } else if (i10 == 2) {
                BackArrowView backArrowView7 = this.f10889e;
                if (backArrowView7 != null) {
                    backArrowView7.setViewColor(Color.parseColor(this.f10903s));
                }
                BackArrowView backArrowView8 = this.f10890f;
                if (backArrowView8 != null) {
                    backArrowView8.setViewColor(Color.parseColor(this.f10904t));
                }
                BackArrowView backArrowView9 = this.f10891g;
                if (backArrowView9 != null) {
                    backArrowView9.setViewColor(Color.parseColor(this.f10902r));
                }
            }
            int i11 = this.f10895k;
            if (i11 == 2) {
                this.f10895k = 0;
            } else {
                this.f10895k = i11 + 1;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void b(View view, float f10, long j10, boolean z10, final int i10) {
        try {
            if (z10) {
                float width = f10 - view.getWidth();
                float countAnimation = width / getCountAnimation();
                float f11 = i10 * countAnimation;
                float f12 = f11 + 0.0f;
                float f13 = countAnimation + f11;
                if (f12 > 0.0f || f13 > 0.0f) {
                    this.E = false;
                }
                if ((f12 >= width || f13 >= width) && i10 >= getCountAnimation()) {
                    return;
                }
                ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "translationX", f12, f13);
                this.f10896l = objectAnimatorOfFloat;
                objectAnimatorOfFloat.setDuration(j10);
                this.f10896l.start();
                this.f10896l.addListener(new Animator.AnimatorListener() { // from class: com.beizi.fusion.widget.TwistView.3
                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        try {
                            if (i10 + 1 < TwistView.this.getCountAnimation() || TwistView.this.C == null) {
                                return;
                            }
                            TwistView.this.I = true;
                            TwistView.this.C.a();
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationRepeat(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                    }
                });
                return;
            }
            float width2 = f10 - view.getWidth();
            float countAnimation2 = width2 / getCountAnimation();
            float f14 = width2 - (i10 * countAnimation2);
            float f15 = width2 - ((i10 + 1) * countAnimation2);
            if (f14 >= 0.0f && f15 >= 0.0f) {
                ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view, "translationX", f14, f15);
                this.f10896l = objectAnimatorOfFloat2;
                objectAnimatorOfFloat2.setDuration(j10);
                this.f10896l.start();
                return;
            }
            this.E = true;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public TwistView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f10897m = 1000;
        this.f10898n = 2000;
        this.f10899o = 500L;
        this.f10900p = 0L;
        this.f10901q = 0L;
        this.f10902r = "#FFFFFFFF";
        this.f10903s = "#99FFFFFF";
        this.f10904t = "#33FFFFFF";
        this.f10905u = 1000L;
        this.f10910z = 0;
        this.A = 0;
        this.B = 0;
        this.D = 0;
        this.E = true;
        this.F = 3;
        this.G = 1;
        this.H = 95;
        this.I = false;
        this.J = new Handler(Looper.getMainLooper()) { // from class: com.beizi.fusion.widget.TwistView.1
            @Override // android.os.Handler
            @RequiresApi(api = 21)
            @SuppressLint({"LongLogTag"})
            public void handleMessage(@NonNull Message message) {
                super.handleMessage(message);
                try {
                    int i10 = message.what;
                    if (i10 == 2000) {
                        TwistView twistView = TwistView.this;
                        twistView.updateStatus(twistView.D);
                    } else if (i10 == 1000) {
                        TwistView.this.a();
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        };
        b();
    }

    @RequiresApi(api = 21)
    private void a(View view, View view2, long j10, int i10, int i11) {
        if (view != null) {
            try {
                if (view.getVisibility() == 0 && view.getParent() != null && view.hasWindowFocus()) {
                    if (i10 == 1) {
                        hideTargetView(view, j10, i11);
                        a(view2, view.getRight(), j10, true, i11);
                    } else if (i10 == 2 && !this.E) {
                        showTargetView(view, j10, i11);
                        a(view2, view.getRight(), j10, false, i11);
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    private void a(View view, float f10, long j10, boolean z10, int i10) {
        try {
            b(view, f10, j10, z10, i10);
            a(view, j10, z10, i10);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void a(View view, long j10, boolean z10, int i10) {
        try {
            if (z10) {
                float countAnimation = 360.0f / getCountAnimation();
                float f10 = (i10 * countAnimation) + 0.0f;
                float f11 = countAnimation * (i10 + 1);
                if (f10 <= 360.0f && f11 <= 360.0f) {
                    ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "rotation", f10, f11);
                    objectAnimatorOfFloat.setDuration(j10);
                    objectAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.beizi.fusion.widget.TwistView.4
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public void onAnimationUpdate(ValueAnimator valueAnimator) {
                            ((Float) valueAnimator.getAnimatedValue()).floatValue();
                        }
                    });
                    objectAnimatorOfFloat.start();
                }
                return;
            }
            float countAnimation2 = (-360.0f) / getCountAnimation();
            float f12 = (i10 * countAnimation2) + 0.0f;
            float f13 = countAnimation2 * (i10 + 1);
            if (f12 >= -360.0f && f13 >= -360.0f) {
                ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view, "rotation", f12, f13);
                objectAnimatorOfFloat2.setDuration(j10);
                objectAnimatorOfFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.beizi.fusion.widget.TwistView.5
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator valueAnimator) {
                        ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    }
                });
                objectAnimatorOfFloat2.start();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public TwistView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f10897m = 1000;
        this.f10898n = 2000;
        this.f10899o = 500L;
        this.f10900p = 0L;
        this.f10901q = 0L;
        this.f10902r = "#FFFFFFFF";
        this.f10903s = "#99FFFFFF";
        this.f10904t = "#33FFFFFF";
        this.f10905u = 1000L;
        this.f10910z = 0;
        this.A = 0;
        this.B = 0;
        this.D = 0;
        this.E = true;
        this.F = 3;
        this.G = 1;
        this.H = 95;
        this.I = false;
        this.J = new Handler(Looper.getMainLooper()) { // from class: com.beizi.fusion.widget.TwistView.1
            @Override // android.os.Handler
            @RequiresApi(api = 21)
            @SuppressLint({"LongLogTag"})
            public void handleMessage(@NonNull Message message) {
                super.handleMessage(message);
                try {
                    int i11 = message.what;
                    if (i11 == 2000) {
                        TwistView twistView = TwistView.this;
                        twistView.updateStatus(twistView.D);
                    } else if (i11 == 1000) {
                        TwistView.this.a();
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        };
        b();
    }
}

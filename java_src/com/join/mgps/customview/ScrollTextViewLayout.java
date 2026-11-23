package com.join.mgps.customview;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class ScrollTextViewLayout extends LinearLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String[] f65543b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f65544c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextView f65545d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f65546e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f65547f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f65548g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Drawable f65549h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Handler f65550i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    Runnable f65551j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    Runnable f65552k;

    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            int i10 = msg.arg1;
            if (i10 == 1) {
                ScrollTextViewLayout.this.l();
            } else {
                if (i10 != 2) {
                    return;
                }
                ScrollTextViewLayout.this.k();
            }
        }
    }

    class b implements Runnable {

        class a implements Animation.AnimationListener {
            a() {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                ScrollTextViewLayout.this.f65550i.postDelayed(ScrollTextViewLayout.this.f65552k, 0L);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
                if (ScrollTextViewLayout.this.f65548g == ScrollTextViewLayout.this.f65543b.length) {
                    ScrollTextViewLayout.this.f65547f = true;
                }
                ScrollTextViewLayout.this.f65548g %= ScrollTextViewLayout.this.f65543b.length;
                if (ScrollTextViewLayout.this.f65543b[ScrollTextViewLayout.this.f65548g].length() != 0) {
                    ScrollTextViewLayout.this.f65545d.setCompoundDrawables(null, null, null, null);
                    int iV = q5.f.M().V();
                    if (iV == 0) {
                        ScrollTextViewLayout.this.p();
                        iV = 1;
                    }
                    ScrollTextViewLayout.this.f65545d.setText(iV + "");
                } else {
                    if (ScrollTextViewLayout.this.f65549h == null) {
                        return;
                    }
                    ScrollTextViewLayout.this.f65549h.setBounds(0, 0, ScrollTextViewLayout.this.f65549h.getMinimumWidth(), ScrollTextViewLayout.this.f65549h.getMinimumHeight());
                    ScrollTextViewLayout.this.f65545d.setCompoundDrawables(null, null, null, ScrollTextViewLayout.this.f65549h);
                    ScrollTextViewLayout.this.f65545d.setText("");
                }
                ScrollTextViewLayout.this.f65545d.setVisibility(0);
                ScrollTextViewLayout.i(ScrollTextViewLayout.this, 1);
            }
        }

        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ScrollTextViewLayout.this.f65547f) {
                if (ScrollTextViewLayout.this.f65549h != null) {
                    ScrollTextViewLayout.this.f65549h.setBounds(0, 0, ScrollTextViewLayout.this.f65549h.getMinimumWidth(), ScrollTextViewLayout.this.f65549h.getMinimumHeight());
                }
                ScrollTextViewLayout.this.f65545d.setCompoundDrawables(null, null, null, ScrollTextViewLayout.this.f65549h);
                ScrollTextViewLayout.this.f65545d.setText("");
                return;
            }
            TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, 0, ScrollTextViewLayout.this.f65546e);
            translateAnimation.setDuration(1000L);
            translateAnimation.setAnimationListener(new a());
            ScrollTextViewLayout.this.startAnimation(translateAnimation);
        }
    }

    class c implements Runnable {

        class a implements Animation.AnimationListener {
            a() {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
                ScrollTextViewLayout.this.f65550i.postDelayed(ScrollTextViewLayout.this.f65551j, 0L);
                ScrollTextViewLayout.this.f65545d.setVisibility(4);
            }
        }

        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ScrollTextViewLayout.this.f65547f) {
                if (ScrollTextViewLayout.this.f65549h != null) {
                    ScrollTextViewLayout.this.f65549h.setBounds(0, 0, ScrollTextViewLayout.this.f65549h.getMinimumWidth(), ScrollTextViewLayout.this.f65549h.getMinimumHeight());
                }
                ScrollTextViewLayout.this.f65545d.setCompoundDrawables(null, null, null, ScrollTextViewLayout.this.f65549h);
                ScrollTextViewLayout.this.f65545d.setText("");
                return;
            }
            TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, ScrollTextViewLayout.this.f65546e * (-1), ScrollTextViewLayout.this.f65546e);
            translateAnimation.setDuration(1000L);
            translateAnimation.setAnimationListener(new a());
            ScrollTextViewLayout.this.startAnimation(translateAnimation);
        }
    }

    public ScrollTextViewLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f65544c = 500;
        this.f65547f = true;
        this.f65548g = 0;
        this.f65550i = new a();
        this.f65551j = new b();
        this.f65552k = new c();
        this.f65544c = context.obtainStyledAttributes(attrs, R.styleable.scrollText).getInteger(0, 500);
    }

    static /* synthetic */ int i(ScrollTextViewLayout scrollTextViewLayout, int i10) {
        int i11 = scrollTextViewLayout.f65548g + i10;
        scrollTextViewLayout.f65548g = i11;
        return i11;
    }

    public Drawable getDrawable() {
        return this.f65549h;
    }

    public int getDuration() {
        return this.f65544c;
    }

    public String[] getTextArray() {
        return this.f65543b;
    }

    protected void k() {
        post(this.f65552k);
    }

    protected void l() {
        post(this.f65551j);
    }

    public boolean m() {
        return this.f65547f;
    }

    public void n() {
        this.f65547f = false;
        this.f65548g = 0;
        this.f65550i.postDelayed(this.f65551j, this.f65544c);
    }

    public void o() {
        this.f65547f = false;
        this.f65550i.postDelayed(this.f65551j, this.f65544c);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.f65545d = (TextView) getChildAt(0);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int l10, int t10, int r10, int b10) {
        super.onLayout(changed, l10, t10, r10, b10);
        this.f65546e = getHeight();
    }

    public void p() {
        this.f65547f = true;
    }

    public void setDrawable(Drawable drawable) {
        this.f65549h = drawable;
        if (drawable != null) {
            drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
        }
        this.f65545d.setCompoundDrawables(null, null, null, drawable);
    }

    public void setDuration(int duration) {
        this.f65544c = duration;
    }

    public void setIsStop(boolean isStop) {
        this.f65547f = isStop;
    }

    public void setTextArray(String[] textArr) {
        this.f65543b = textArr;
    }

    public void setDrawable(Drawable drawable, int color) {
        this.f65549h = drawable;
        if (drawable != null) {
            drawable.setBounds(0, 0, drawable.getMinimumWidth(), drawable.getMinimumHeight());
        }
        this.f65545d.setCompoundDrawables(null, null, null, drawable);
        this.f65545d.setTextColor(color);
        this.f65545d.setText("");
    }
}

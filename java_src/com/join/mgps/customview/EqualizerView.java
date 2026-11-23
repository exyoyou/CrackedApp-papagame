package com.join.mgps.customview;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.LinearInterpolator;
import android.widget.LinearLayout;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class EqualizerView extends LinearLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    View f64835b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    View f64836c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    View f64837d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    View f64838e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    AnimatorSet f64839f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    AnimatorSet f64840g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    Boolean f64841h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    int f64842i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    int f64843j;

    class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (EqualizerView.this.f64835b.getHeight() > 0) {
                View view = EqualizerView.this.f64835b;
                view.setPivotY(view.getHeight());
                EqualizerView.this.f64835b.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            }
        }
    }

    class b implements ViewTreeObserver.OnGlobalLayoutListener {
        b() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (EqualizerView.this.f64836c.getHeight() > 0) {
                View view = EqualizerView.this.f64836c;
                view.setPivotY(view.getHeight());
                EqualizerView.this.f64836c.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            }
        }
    }

    class c implements ViewTreeObserver.OnGlobalLayoutListener {
        c() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (EqualizerView.this.f64837d.getHeight() > 0) {
                View view = EqualizerView.this.f64837d;
                view.setPivotY(view.getHeight());
                EqualizerView.this.f64837d.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            }
        }
    }

    class d implements ViewTreeObserver.OnGlobalLayoutListener {
        d() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (EqualizerView.this.f64838e.getHeight() > 0) {
                View view = EqualizerView.this.f64838e;
                view.setPivotY(view.getHeight());
                EqualizerView.this.f64838e.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            }
        }
    }

    public EqualizerView(Context context) {
        super(context);
        this.f64841h = Boolean.FALSE;
        b();
    }

    private void b() {
        LayoutInflater.from(getContext()).inflate(R.layout.view_equalizer, (ViewGroup) this, true);
        this.f64835b = findViewById(R.id.music_bar1);
        this.f64836c = findViewById(R.id.music_bar2);
        this.f64838e = findViewById(R.id.music_bar4);
        this.f64837d = findViewById(R.id.music_bar3);
        this.f64835b.setBackgroundColor(this.f64842i);
        this.f64836c.setBackgroundColor(this.f64842i);
        this.f64837d.setBackgroundColor(this.f64842i);
        this.f64838e.setBackgroundColor(this.f64842i);
        e();
    }

    private void d(Context context, AttributeSet attrs) {
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attrs, R.styleable.EqualizerView, 0, 0);
        try {
            this.f64842i = typedArrayObtainStyledAttributes.getInt(1, -16777216);
            this.f64843j = typedArrayObtainStyledAttributes.getInt(0, 3000);
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private void e() {
        this.f64835b.getViewTreeObserver().addOnGlobalLayoutListener(new a());
        this.f64836c.getViewTreeObserver().addOnGlobalLayoutListener(new b());
        this.f64837d.getViewTreeObserver().addOnGlobalLayoutListener(new c());
        this.f64838e.getViewTreeObserver().addOnGlobalLayoutListener(new d());
    }

    public void a() {
        this.f64841h = Boolean.TRUE;
        AnimatorSet animatorSet = this.f64839f;
        if (animatorSet != null) {
            if (animatorSet.isPaused()) {
                this.f64839f.resume();
                return;
            }
            return;
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f64835b, "scaleY", 0.2f, 0.8f, 0.1f, 0.1f, 0.3f, 0.1f, 0.2f, 0.8f, 0.7f, 0.2f, 0.4f, 0.9f, 0.7f, 0.6f, 0.1f, 0.3f, 0.1f, 0.4f, 0.1f, 0.8f, 0.7f, 0.9f, 0.5f, 0.6f, 0.3f, 0.1f);
        objectAnimatorOfFloat.setRepeatCount(-1);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f64836c, "scaleY", 0.2f, 0.5f, 1.0f, 0.5f, 0.3f, 0.1f, 0.2f, 0.3f, 0.5f, 0.1f, 0.6f, 0.5f, 0.3f, 0.7f, 0.8f, 0.9f, 0.3f, 0.1f, 0.5f, 0.3f, 0.6f, 1.0f, 0.6f, 0.7f, 0.4f, 0.1f);
        objectAnimatorOfFloat2.setRepeatCount(-1);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.f64837d, "scaleY", 0.6f, 0.5f, 1.0f, 0.6f, 0.5f, 1.0f, 0.6f, 0.5f, 1.0f, 0.5f, 0.6f, 0.7f, 0.2f, 0.3f, 0.1f, 0.5f, 0.4f, 0.6f, 0.7f, 0.1f, 0.4f, 0.3f, 0.1f, 0.4f, 0.3f, 0.7f);
        objectAnimatorOfFloat3.setRepeatCount(-1);
        ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(this.f64838e, "scaleY", 0.2f, 0.5f, 1.0f, 0.5f, 0.3f, 0.1f, 0.2f, 0.3f, 0.5f, 0.1f, 0.6f, 0.5f, 0.3f, 0.7f, 0.8f, 0.9f, 0.3f, 0.1f, 0.5f, 0.3f, 0.6f, 1.0f, 0.6f, 0.7f, 0.4f, 0.1f);
        objectAnimatorOfFloat4.setRepeatCount(-1);
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.f64839f = animatorSet2;
        animatorSet2.playTogether(objectAnimatorOfFloat2, objectAnimatorOfFloat3, objectAnimatorOfFloat, objectAnimatorOfFloat4);
        this.f64839f.setDuration(this.f64843j);
        this.f64839f.setInterpolator(new LinearInterpolator());
        this.f64839f.start();
    }

    public Boolean c() {
        return this.f64841h;
    }

    public void f() {
        this.f64841h = Boolean.FALSE;
        AnimatorSet animatorSet = this.f64839f;
        if (animatorSet != null && animatorSet.isRunning() && this.f64839f.isStarted()) {
            this.f64839f.pause();
        }
        AnimatorSet animatorSet2 = this.f64840g;
        if (animatorSet2 != null) {
            if (animatorSet2.isStarted()) {
                return;
            }
            this.f64840g.start();
            return;
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f64835b, "scaleY", 0.1f);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f64836c, "scaleY", 0.1f);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.f64837d, "scaleY", 0.1f);
        AnimatorSet animatorSet3 = new AnimatorSet();
        this.f64840g = animatorSet3;
        animatorSet3.playTogether(objectAnimatorOfFloat3, objectAnimatorOfFloat2, objectAnimatorOfFloat);
        this.f64840g.setDuration(200L);
        this.f64840g.start();
    }

    public EqualizerView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f64841h = Boolean.FALSE;
        d(context, attrs);
        b();
    }

    public EqualizerView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.f64841h = Boolean.FALSE;
        d(context, attrs);
        b();
    }
}

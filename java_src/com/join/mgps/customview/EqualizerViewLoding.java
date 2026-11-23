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
public class EqualizerViewLoding extends LinearLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    View f64848b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    View f64849c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    View f64850d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    View f64851e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    AnimatorSet f64852f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    AnimatorSet f64853g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    Boolean f64854h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    int f64855i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    int f64856j;

    class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (EqualizerViewLoding.this.f64848b.getHeight() > 0) {
                View view = EqualizerViewLoding.this.f64848b;
                view.setPivotY(view.getHeight());
                EqualizerViewLoding.this.f64848b.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            }
        }
    }

    class b implements ViewTreeObserver.OnGlobalLayoutListener {
        b() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (EqualizerViewLoding.this.f64849c.getHeight() > 0) {
                View view = EqualizerViewLoding.this.f64849c;
                view.setPivotY(view.getHeight());
                EqualizerViewLoding.this.f64849c.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            }
        }
    }

    class c implements ViewTreeObserver.OnGlobalLayoutListener {
        c() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (EqualizerViewLoding.this.f64850d.getHeight() > 0) {
                View view = EqualizerViewLoding.this.f64850d;
                view.setPivotY(view.getHeight());
                EqualizerViewLoding.this.f64850d.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            }
        }
    }

    class d implements ViewTreeObserver.OnGlobalLayoutListener {
        d() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (EqualizerViewLoding.this.f64851e.getHeight() > 0) {
                View view = EqualizerViewLoding.this.f64851e;
                view.setPivotY(view.getHeight());
                EqualizerViewLoding.this.f64851e.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            }
        }
    }

    public EqualizerViewLoding(Context context) {
        super(context);
        this.f64854h = Boolean.FALSE;
        b();
    }

    private void b() {
        LayoutInflater.from(getContext()).inflate(R.layout.view_equalizer_loading, (ViewGroup) this, true);
        this.f64848b = findViewById(R.id.music_bar1);
        this.f64849c = findViewById(R.id.music_bar2);
        this.f64851e = findViewById(R.id.music_bar4);
        this.f64850d = findViewById(R.id.music_bar3);
        this.f64848b.setBackgroundColor(this.f64855i);
        this.f64849c.setBackgroundColor(this.f64855i);
        this.f64850d.setBackgroundColor(this.f64855i);
        this.f64851e.setBackgroundColor(this.f64855i);
        e();
    }

    private void d(Context context, AttributeSet attrs) {
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attrs, R.styleable.EqualizerView, 0, 0);
        try {
            this.f64855i = typedArrayObtainStyledAttributes.getInt(1, -16777216);
            this.f64856j = typedArrayObtainStyledAttributes.getInt(0, 3000);
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private void e() {
        this.f64848b.getViewTreeObserver().addOnGlobalLayoutListener(new a());
        this.f64849c.getViewTreeObserver().addOnGlobalLayoutListener(new b());
        this.f64850d.getViewTreeObserver().addOnGlobalLayoutListener(new c());
        this.f64851e.getViewTreeObserver().addOnGlobalLayoutListener(new d());
    }

    public void a() {
        this.f64854h = Boolean.TRUE;
        AnimatorSet animatorSet = this.f64852f;
        if (animatorSet != null) {
            if (animatorSet.isPaused()) {
                this.f64852f.resume();
                return;
            }
            return;
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f64848b, "scaleY", 0.2f, 0.8f, 0.1f, 0.1f, 0.3f, 0.1f, 0.2f, 0.8f, 0.7f, 0.2f, 0.4f, 0.9f, 0.7f, 0.6f, 0.1f, 0.3f, 0.1f, 0.4f, 0.1f, 0.8f, 0.7f, 0.9f, 0.5f, 0.6f, 0.3f, 0.1f);
        objectAnimatorOfFloat.setRepeatCount(-1);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f64849c, "scaleY", 0.2f, 0.5f, 1.0f, 0.5f, 0.3f, 0.1f, 0.2f, 0.3f, 0.5f, 0.1f, 0.6f, 0.5f, 0.3f, 0.7f, 0.8f, 0.9f, 0.3f, 0.1f, 0.5f, 0.3f, 0.6f, 1.0f, 0.6f, 0.7f, 0.4f, 0.1f);
        objectAnimatorOfFloat2.setRepeatCount(-1);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.f64850d, "scaleY", 0.6f, 0.5f, 1.0f, 0.6f, 0.5f, 1.0f, 0.6f, 0.5f, 1.0f, 0.5f, 0.6f, 0.7f, 0.2f, 0.3f, 0.1f, 0.5f, 0.4f, 0.6f, 0.7f, 0.1f, 0.4f, 0.3f, 0.1f, 0.4f, 0.3f, 0.7f);
        objectAnimatorOfFloat3.setRepeatCount(-1);
        ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat(this.f64851e, "scaleY", 0.2f, 0.5f, 1.0f, 0.5f, 0.3f, 0.1f, 0.2f, 0.3f, 0.5f, 0.1f, 0.6f, 0.5f, 0.3f, 0.7f, 0.8f, 0.9f, 0.3f, 0.1f, 0.5f, 0.3f, 0.6f, 1.0f, 0.6f, 0.7f, 0.4f, 0.1f);
        objectAnimatorOfFloat4.setRepeatCount(-1);
        ObjectAnimator objectAnimatorOfFloat5 = ObjectAnimator.ofFloat(this.f64848b, "alpha", 0.2f, 0.8f, 0.1f, 0.1f, 0.3f, 0.1f, 0.2f, 0.8f, 0.7f, 0.2f, 0.4f, 0.9f, 0.7f, 0.6f, 0.1f, 0.3f, 0.1f, 0.4f, 0.1f, 0.8f, 0.7f, 0.9f, 0.5f, 0.6f, 0.3f, 0.1f);
        objectAnimatorOfFloat5.setRepeatCount(-1);
        ObjectAnimator objectAnimatorOfFloat6 = ObjectAnimator.ofFloat(this.f64848b, "alpha", 0.2f, 0.5f, 1.0f, 0.5f, 0.3f, 0.1f, 0.2f, 0.3f, 0.5f, 0.1f, 0.6f, 0.5f, 0.3f, 0.7f, 0.8f, 0.9f, 0.3f, 0.1f, 0.5f, 0.3f, 0.6f, 1.0f, 0.6f, 0.7f, 0.4f, 0.1f);
        objectAnimatorOfFloat6.setRepeatCount(-1);
        ObjectAnimator objectAnimatorOfFloat7 = ObjectAnimator.ofFloat(this.f64848b, "alpha", 0.2f, 0.5f, 1.0f, 0.5f, 0.3f, 0.1f, 0.2f, 0.3f, 0.5f, 0.1f, 0.6f, 0.5f, 0.3f, 0.7f, 0.8f, 0.9f, 0.3f, 0.1f, 0.5f, 0.3f, 0.6f, 1.0f, 0.6f, 0.7f, 0.4f, 0.1f);
        objectAnimatorOfFloat7.setRepeatCount(-1);
        ObjectAnimator objectAnimatorOfFloat8 = ObjectAnimator.ofFloat(this.f64848b, "alpha", 0.2f, 0.5f, 1.0f, 0.5f, 0.3f, 0.1f, 0.2f, 0.3f, 0.5f, 0.1f, 0.6f, 0.5f, 0.3f, 0.7f, 0.8f, 0.9f, 0.3f, 0.1f, 0.5f, 0.3f, 0.6f, 1.0f, 0.6f, 0.7f, 0.4f, 0.1f);
        objectAnimatorOfFloat8.setRepeatCount(-1);
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.f64852f = animatorSet2;
        animatorSet2.playTogether(objectAnimatorOfFloat2, objectAnimatorOfFloat3, objectAnimatorOfFloat, objectAnimatorOfFloat4, objectAnimatorOfFloat5, objectAnimatorOfFloat6, objectAnimatorOfFloat7, objectAnimatorOfFloat8);
        this.f64852f.setDuration(this.f64856j);
        this.f64852f.setInterpolator(new LinearInterpolator());
        this.f64852f.start();
    }

    public Boolean c() {
        return this.f64854h;
    }

    public void f() {
        this.f64854h = Boolean.FALSE;
        AnimatorSet animatorSet = this.f64852f;
        if (animatorSet != null && animatorSet.isRunning() && this.f64852f.isStarted()) {
            this.f64852f.pause();
        }
        AnimatorSet animatorSet2 = this.f64853g;
        if (animatorSet2 != null) {
            if (animatorSet2.isStarted()) {
                return;
            }
            this.f64853g.start();
            return;
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f64848b, "scaleY", 0.1f);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f64849c, "scaleY", 0.1f);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.f64850d, "scaleY", 0.1f);
        AnimatorSet animatorSet3 = new AnimatorSet();
        this.f64853g = animatorSet3;
        animatorSet3.playTogether(objectAnimatorOfFloat3, objectAnimatorOfFloat2, objectAnimatorOfFloat);
        this.f64853g.setDuration(200L);
        this.f64853g.start();
    }

    public EqualizerViewLoding(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f64854h = Boolean.FALSE;
        d(context, attrs);
        b();
    }

    public EqualizerViewLoding(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.f64854h = Boolean.FALSE;
        d(context, attrs);
        b();
    }
}

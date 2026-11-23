package com.sigmob.sdk.base.views;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes5.dex */
public class ap extends r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private an f79937a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ao f79938b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ObjectAnimator f79939c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f79940d;

    public ap(Context context) {
        super(context);
        c();
    }

    private void c() {
        addView(new e(getContext()), new FrameLayout.LayoutParams(-1, -1));
        this.f79937a = new an(getContext());
        this.f79938b = new ao(getContext());
        addView(this.f79937a, new ViewGroup.LayoutParams(-1, -1));
        addView(this.f79938b, new ViewGroup.LayoutParams(-1, -1));
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f79938b, (Property<ao, Float>) View.ROTATION_Y, -45.0f, 0.0f, 45.0f);
        this.f79939c = objectAnimatorOfFloat;
        objectAnimatorOfFloat.setDuration(1000L);
        this.f79939c.setRepeatCount(-1);
        this.f79939c.setRepeatMode(2);
    }

    @Override // com.sigmob.sdk.base.views.r
    public void a() {
        this.f79940d = true;
        ObjectAnimator objectAnimator = this.f79939c;
        if (objectAnimator != null) {
            objectAnimator.cancel();
            this.f79939c.start();
        }
    }

    @Override // com.sigmob.sdk.base.views.r
    public void b() {
        this.f79940d = false;
        ObjectAnimator objectAnimator = this.f79939c;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f79940d) {
            a();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        b();
    }

    public ap(Context context, AttributeSet attrs) {
        super(context, attrs);
        c();
    }

    public ap(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        c();
    }
}

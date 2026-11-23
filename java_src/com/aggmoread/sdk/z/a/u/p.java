package com.aggmoread.sdk.z.a.u;

import android.animation.Keyframe;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.AppCompatImageView;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
public class p extends AppCompatImageView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f4181a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private AtomicBoolean f4182b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f4183c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f4184d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ObjectAnimator f4185e;

    public class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (p.this.f4181a == 1) {
                p.this.e();
            } else {
                p.this.d();
            }
        }
    }

    public p(Context context, int i10, int i11) {
        this(context, null);
        this.f4183c = i10;
        this.f4184d = i11;
        b();
    }

    private void b() {
        if (this.f4182b.compareAndSet(false, true)) {
            setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            com.aggmoread.sdk.z.a.m.j.a(this, "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");
            setScaleX(0.8f);
            setScaleY(0.8f);
            post(new a());
        }
    }

    private void c() {
        ObjectAnimator objectAnimator = this.f4185e;
        if (objectAnimator != null) {
            objectAnimator.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        int width = getWidth();
        int height = getHeight();
        if (width == 0 || height == 0) {
            width = this.f4183c;
            height = this.f4184d;
        }
        setPivotX(width / 2.0f);
        setPivotY(height / 2.0f);
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(this, PropertyValuesHolder.ofKeyframe("rotation", Keyframe.ofFloat(0.0f, 0.0f), Keyframe.ofFloat(0.25f, -25.0f), Keyframe.ofFloat(0.75f, 25.0f), Keyframe.ofFloat(1.0f, 0.0f)));
        this.f4185e = objectAnimatorOfPropertyValuesHolder;
        objectAnimatorOfPropertyValuesHolder.setDuration(1000L);
        objectAnimatorOfPropertyValuesHolder.setRepeatCount(-1);
        objectAnimatorOfPropertyValuesHolder.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        int width = getWidth();
        int height = getHeight();
        if (width == 0 || height == 0) {
            width = this.f4183c;
            height = this.f4184d;
        }
        setPivotX(width / 2.0f);
        setPivotY(height / 2.0f);
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(this, PropertyValuesHolder.ofKeyframe("rotation", Keyframe.ofFloat(0.0f, 0.0f), Keyframe.ofFloat(0.1f, -30.0f), Keyframe.ofFloat(0.2f, 0.0f), Keyframe.ofFloat(0.3f, -30.0f), Keyframe.ofFloat(0.4f, 0.0f), Keyframe.ofFloat(0.5f, -30.0f), Keyframe.ofFloat(0.6f, 0.0f), Keyframe.ofFloat(1.0f, 0.0f)));
        this.f4185e = objectAnimatorOfPropertyValuesHolder;
        objectAnimatorOfPropertyValuesHolder.setDuration(2000L);
        objectAnimatorOfPropertyValuesHolder.setRepeatCount(-1);
        objectAnimatorOfPropertyValuesHolder.start();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        a();
    }

    @Override // android.view.View
    protected void onVisibilityChanged(@NonNull View view, int i10) {
        super.onVisibilityChanged(view, i10);
        com.aggmoread.sdk.z.c.a.a.e.e.a("si onVisibilityChanged " + i10);
        if (i10 != 0) {
            a();
        } else if (i10 == 0) {
            c();
        }
    }

    public p(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void a() {
        ObjectAnimator objectAnimator = this.f4185e;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    public p(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f4181a = 0;
        this.f4182b = new AtomicBoolean();
        b();
    }
}

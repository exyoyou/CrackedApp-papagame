package com.join.mgps.ad;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes5.dex */
public class SplashZoomOutLayout extends FrameLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f58292b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f58293c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f58294d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f58295e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f58296f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f58297g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f58298h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f58299i;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            View view = (View) SplashZoomOutLayout.this.getParent();
            if (view == null) {
                return;
            }
            int width = view.getWidth();
            int height = view.getHeight();
            SplashZoomOutLayout splashZoomOutLayout = SplashZoomOutLayout.this;
            splashZoomOutLayout.f58296f = (height - splashZoomOutLayout.getHeight()) - SplashZoomOutLayout.this.f58294d;
            SplashZoomOutLayout splashZoomOutLayout2 = SplashZoomOutLayout.this;
            splashZoomOutLayout2.f58295e = (width - splashZoomOutLayout2.getWidth()) - SplashZoomOutLayout.this.f58294d;
        }
    }

    public SplashZoomOutLayout(Context context, int m10) {
        super(context);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(10.0f);
        setBackgroundDrawable(gradientDrawable);
        setClipToOutline(true);
        this.f58294d = m10;
        this.f58299i = ViewConfiguration.get(context).getScaledTouchSlop();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        post(new a());
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0052 A[PHI: r4
      0x0052: PHI (r4v12 int) = (r4v9 int), (r4v10 int) binds: [B:16:0x0050, B:19:0x0059] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent event) {
        int action = event.getAction();
        if (action == 0) {
            this.f58292b = getX() - event.getRawX();
            this.f58293c = getY() - event.getRawY();
            this.f58297g = 0.0f;
            this.f58298h = 0.0f;
        } else if (action == 1) {
            float rawX = (event.getRawX() + this.f58292b) * 2.0f;
            int i10 = this.f58295e;
            animate().x(rawX > ((float) i10) ? i10 : this.f58294d).setDuration(0L).start();
            float f10 = this.f58297g;
            int i11 = this.f58299i;
            if (f10 > i11 || this.f58298h > i11) {
                return true;
            }
        } else if (action == 2) {
            float rawX2 = event.getRawX() + this.f58292b;
            float rawY = event.getRawY() + this.f58293c;
            this.f58297g += Math.abs(rawX2 - getX());
            this.f58298h += Math.abs(rawY - getY());
            int i12 = this.f58294d;
            if (rawX2 < i12) {
                rawX2 = i12;
            } else {
                int i13 = this.f58295e;
                if (rawX2 > i13) {
                    rawX2 = i13;
                }
            }
            if (rawY < i12) {
                rawY = i12;
            } else {
                i12 = this.f58296f;
                if (rawY > i12) {
                    rawY = i12;
                }
            }
            animate().x(rawX2).y(rawY).setDuration(0L).start();
        }
        return super.onInterceptTouchEvent(event);
    }
}

package com.join.mgps.customview;

import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes3.dex */
public class ReboundFrameLayout extends FrameLayout implements View.OnTouchListener, com.facebook.rebound.m {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f65490b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f65491c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.facebook.rebound.i f65492d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.facebook.rebound.o f65493e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Handler f65494f;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ReboundFrameLayout.this.performClick();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ReboundFrameLayout.this.performClick();
        }
    }

    public ReboundFrameLayout(Context context) {
        super(context);
        this.f65490b = 100;
        this.f65491c = 10;
        this.f65494f = new Handler();
        e();
    }

    private void e() {
        com.facebook.rebound.o oVarM = com.facebook.rebound.o.m();
        this.f65493e = oVarM;
        com.facebook.rebound.i iVarD = oVarM.d();
        this.f65492d = iVarD;
        iVarD.a(this);
        setOnTouchListener(this);
        this.f65492d.x(0.0d);
    }

    @Override // com.facebook.rebound.m
    public void a(com.facebook.rebound.i spring) {
        float f10 = 1.0f - (((float) spring.f()) * 0.3f);
        setScaleX(f10);
        setScaleY(f10);
    }

    @Override // com.facebook.rebound.m
    public void b(com.facebook.rebound.i spring) {
    }

    @Override // com.facebook.rebound.m
    public void c(com.facebook.rebound.i spring) {
    }

    @Override // com.facebook.rebound.m
    public void d(com.facebook.rebound.i spring) {
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View v10, MotionEvent event) {
        int action = event.getAction();
        if (action == 0) {
            this.f65492d.x(1.0d);
            return true;
        }
        if (action == 1) {
            this.f65492d.x(0.0d);
            this.f65494f.postDelayed(new a(), 200L);
            return true;
        }
        if (action != 3) {
            return false;
        }
        this.f65492d.x(0.0d);
        this.f65494f.postDelayed(new b(), 200L);
        return true;
    }

    public ReboundFrameLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f65490b = 100;
        this.f65491c = 10;
        this.f65494f = new Handler();
        e();
    }

    public ReboundFrameLayout(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f65490b = 100;
        this.f65491c = 10;
        this.f65494f = new Handler();
        e();
    }

    public ReboundFrameLayout(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
        this.f65490b = 100;
        this.f65491c = 10;
        this.f65494f = new Handler();
        e();
    }
}

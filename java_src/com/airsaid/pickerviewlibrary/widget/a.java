package com.airsaid.pickerviewlibrary.widget;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes7.dex */
public class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f6213c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected ViewGroup f6214d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ViewGroup f6215e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ViewGroup f6216f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private i.b f6217g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f6218h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Animation f6219i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Animation f6220j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f6221k;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private View f6223m;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final FrameLayout.LayoutParams f6212b = new FrameLayout.LayoutParams(-1, -2, 80);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f6222l = 80;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final View.OnTouchListener f6224n = new b();

    /* JADX INFO: renamed from: com.airsaid.pickerviewlibrary.widget.a$a, reason: collision with other inner class name */
    class AnimationAnimationListenerC0195a implements Animation.AnimationListener {

        /* JADX INFO: renamed from: com.airsaid.pickerviewlibrary.widget.a$a$a, reason: collision with other inner class name */
        class RunnableC0196a implements Runnable {
            RunnableC0196a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.c();
            }
        }

        AnimationAnimationListenerC0195a() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            a.this.f6215e.post(new RunnableC0196a());
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    class b implements View.OnTouchListener {
        b() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() != 0) {
                return false;
            }
            a.this.b();
            return false;
        }
    }

    public a(Context context) {
        this.f6213c = context;
        i();
        g();
        h();
    }

    private void k(View view) {
        this.f6215e.addView(view);
        this.f6214d.startAnimation(this.f6220j);
    }

    public void b() {
        if (this.f6218h) {
            return;
        }
        this.f6218h = true;
        this.f6219i.setAnimationListener(new AnimationAnimationListenerC0195a());
        this.f6214d.startAnimation(this.f6219i);
    }

    public void c() {
        this.f6215e.removeView(this.f6216f);
        this.f6221k = false;
        this.f6218h = false;
        i.b bVar = this.f6217g;
        if (bVar != null) {
            bVar.a(this);
        }
    }

    public View d(int i10) {
        return this.f6214d.findViewById(i10);
    }

    public Animation e() {
        return AnimationUtils.loadAnimation(this.f6213c, k.a.a(this.f6222l, true));
    }

    public Animation f() {
        return AnimationUtils.loadAnimation(this.f6213c, k.a.a(this.f6222l, false));
    }

    protected void g() {
        this.f6220j = e();
        this.f6219i = f();
    }

    protected void h() {
    }

    protected void i() {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.f6213c);
        ViewGroup viewGroup = (ViewGroup) ((Activity) this.f6213c).getWindow().getDecorView().findViewById(R.id.content);
        this.f6215e = viewGroup;
        ViewGroup viewGroup2 = (ViewGroup) layoutInflaterFrom.inflate(com.airsaid.pickerviewlibrary.R.layout.layout_basepickerview, viewGroup, false);
        this.f6216f = viewGroup2;
        viewGroup2.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        ViewGroup viewGroup3 = (ViewGroup) this.f6216f.findViewById(com.airsaid.pickerviewlibrary.R.id.content_container);
        this.f6214d = viewGroup3;
        viewGroup3.setLayoutParams(this.f6212b);
        View viewFindViewById = this.f6216f.findViewById(com.airsaid.pickerviewlibrary.R.id.outmost_container);
        this.f6223m = viewFindViewById;
        viewFindViewById.setOnTouchListener(this.f6224n);
    }

    public boolean j() {
        return this.f6216f.getParent() != null || this.f6221k;
    }

    public a l(boolean z10) {
        this.f6223m.setOnTouchListener(z10 ? this.f6224n : null);
        return this;
    }

    public a m(i.b bVar) {
        this.f6217g = bVar;
        return this;
    }

    public void n() {
        if (j()) {
            return;
        }
        this.f6221k = true;
        k(this.f6216f);
    }
}

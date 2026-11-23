package com.join.mgps.customview.guideview;

import android.app.Activity;
import android.graphics.Rect;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;

/* JADX INFO: loaded from: classes3.dex */
public class d implements View.OnKeyListener, View.OnTouchListener {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int f66426i = 30;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    static final /* synthetic */ boolean f66427j = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Configuration f66428b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private MaskView f66429c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.join.mgps.customview.guideview.b[] f66430d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private GuideBuilder.b f66432f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private GuideBuilder.a f66433g;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f66431e = true;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    float f66434h = -1.0f;

    class a implements Animation.AnimationListener {
        a() {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            if (d.this.f66432f != null) {
                d.this.f66432f.onShown();
            }
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
        final /* synthetic */ ViewGroup f66436b;

        b(final ViewGroup val$vp) {
            this.f66436b = val$vp;
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
            this.f66436b.removeView(d.this.f66429c);
            if (d.this.f66432f != null) {
                d.this.f66432f.onDismiss();
            }
            d.this.g();
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }

    d() {
    }

    private MaskView f(Activity activity, ViewGroup overlay) {
        int i10;
        int i11;
        if (overlay == null) {
            overlay = (ViewGroup) activity.getWindow().getDecorView();
        }
        MaskView maskView = new MaskView(activity);
        maskView.f(activity.getResources().getColor(this.f66428b.f66373n));
        maskView.e(this.f66428b.f66368i);
        maskView.g(this.f66428b.f66371l);
        maskView.j(this.f66428b.f66362c);
        maskView.l(this.f66428b.f66363d);
        maskView.n(this.f66428b.f66364e);
        maskView.m(this.f66428b.f66365f);
        maskView.k(this.f66428b.f66366g);
        maskView.h(this.f66428b.f66372m);
        maskView.i(this.f66428b.f66375p);
        maskView.setOnKeyListener(this);
        if (overlay != null) {
            int[] iArr = new int[2];
            overlay.getLocationInWindow(iArr);
            i10 = iArr[0];
            i11 = iArr[1];
        } else {
            i10 = 0;
            i11 = 0;
        }
        Configuration configuration = this.f66428b;
        View view = configuration.f66361b;
        if (view != null) {
            Rect rect = configuration.f66379t;
            if (rect != null) {
                maskView.o(rect);
            } else {
                maskView.o(com.join.mgps.customview.guideview.a.b(view, i10, i11));
            }
            maskView.requestLayout();
            maskView.invalidate();
        } else {
            View viewFindViewById = activity.findViewById(configuration.f66370k);
            if (viewFindViewById != null) {
                maskView.o(com.join.mgps.customview.guideview.a.b(viewFindViewById, i10, i11));
            }
        }
        if (this.f66428b.f66367h) {
            maskView.setClickable(false);
        } else {
            maskView.setOnTouchListener(this);
        }
        for (com.join.mgps.customview.guideview.b bVar : this.f66430d) {
            maskView.addView(com.join.mgps.customview.guideview.a.a(activity.getLayoutInflater(), bVar));
        }
        return maskView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        this.f66428b = null;
        this.f66430d = null;
        this.f66432f = null;
        this.f66433g = null;
        this.f66429c.removeAllViews();
        this.f66429c = null;
    }

    public void d() {
        ViewGroup viewGroup;
        MaskView maskView = this.f66429c;
        if (maskView == null || (viewGroup = (ViewGroup) maskView.getParent()) == null) {
            return;
        }
        viewGroup.removeView(this.f66429c);
        g();
    }

    public void e() {
        ViewGroup viewGroup;
        MaskView maskView = this.f66429c;
        if (maskView == null || (viewGroup = (ViewGroup) maskView.getParent()) == null) {
            return;
        }
        if (this.f66428b.f66378s != -1) {
            Animation animationLoadAnimation = AnimationUtils.loadAnimation(this.f66429c.getContext(), this.f66428b.f66378s);
            animationLoadAnimation.setAnimationListener(new b(viewGroup));
            this.f66429c.startAnimation(animationLoadAnimation);
        } else {
            viewGroup.removeView(this.f66429c);
            GuideBuilder.b bVar = this.f66432f;
            if (bVar != null) {
                bVar.onDismiss();
            }
            g();
        }
    }

    void h(GuideBuilder.b listener) {
        this.f66432f = listener;
    }

    void i(com.join.mgps.customview.guideview.b[] components) {
        this.f66430d = components;
    }

    void j(Configuration configuration) {
        this.f66428b = configuration;
    }

    public void k(GuideBuilder.a onSlideListener) {
        this.f66433g = onSlideListener;
    }

    public void l(boolean set) {
        this.f66431e = set;
    }

    public void m(Activity activity) {
        n(activity, null);
    }

    public void n(Activity activity, ViewGroup overlay) {
        this.f66429c = f(activity, overlay);
        if (overlay == null) {
            overlay = (ViewGroup) activity.getWindow().getDecorView();
        }
        if (this.f66429c.getParent() != null || this.f66428b.f66361b == null) {
            return;
        }
        overlay.addView(this.f66429c);
        int i10 = this.f66428b.f66377r;
        if (i10 != -1) {
            Animation animationLoadAnimation = AnimationUtils.loadAnimation(activity, i10);
            animationLoadAnimation.setAnimationListener(new a());
            this.f66429c.startAnimation(animationLoadAnimation);
        } else {
            GuideBuilder.b bVar = this.f66432f;
            if (bVar != null) {
                bVar.onShown();
            }
        }
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View v10, int keyCode, KeyEvent event) {
        Configuration configuration;
        if (keyCode != 4 || event.getAction() != 1 || (configuration = this.f66428b) == null || !configuration.f66374o) {
            return false;
        }
        e();
        return true;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        GuideBuilder.a aVar;
        if (motionEvent.getAction() == 0) {
            this.f66434h = motionEvent.getY();
        } else if (motionEvent.getAction() == 1) {
            if (this.f66434h - motionEvent.getY() > c.a(view.getContext(), 30.0f)) {
                GuideBuilder.a aVar2 = this.f66433g;
                if (aVar2 != null) {
                    aVar2.a(GuideBuilder.SlideState.UP);
                }
            } else if (motionEvent.getY() - this.f66434h > c.a(view.getContext(), 30.0f) && (aVar = this.f66433g) != null) {
                aVar.a(GuideBuilder.SlideState.DOWN);
            }
            Configuration configuration = this.f66428b;
            if (configuration != null && configuration.f66374o) {
                e();
            }
        }
        return true;
    }
}

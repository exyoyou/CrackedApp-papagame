package com.join.mgps.customview;

import android.animation.ValueAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class DragView extends ImageView implements View.OnTouchListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f64808b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f64809c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Context f64810d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f64811e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f64812f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f64813g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f64814h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private ViewGroup.MarginLayoutParams f64815i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f64816j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f64817k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f64818l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f64819m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f64820n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private c f64821o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f64822p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f64823q;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DragView dragView = DragView.this;
            dragView.f64815i = (ViewGroup.MarginLayoutParams) dragView.getLayoutParams();
            DragView.this.f64815i.topMargin = DragView.this.f64809c - (DragView.this.getHeight() * 2);
            DragView.this.f64815i.leftMargin = DragView.this.f64808b - DragView.this.getWidth();
            DragView dragView2 = DragView.this;
            dragView2.setLayoutParams(dragView2.f64815i);
        }
    }

    class b implements ValueAnimator.AnimatorUpdateListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f64825b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f64826c;

        b(final boolean val$isLeft, final int val$start) {
            this.f64825b = val$isLeft;
            this.f64826c = val$start;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator animation) {
            if (this.f64825b) {
                DragView.this.f64815i.leftMargin = (int) (this.f64826c * (1.0f - animation.getAnimatedFraction()));
            } else {
                DragView.this.f64815i.leftMargin = (int) (this.f64826c + (((DragView.this.f64808b - this.f64826c) - DragView.this.getWidth()) * animation.getAnimatedFraction()));
            }
            DragView dragView = DragView.this;
            dragView.setLayoutParams(dragView.f64815i);
        }
    }

    public interface c {
        void a();
    }

    public DragView(Context context) {
        this(context, null);
    }

    public void e() {
        setOnTouchListener(this);
        post(new a());
    }

    public void f(final int start, int end, final boolean isLeft) {
        ValueAnimator duration = ValueAnimator.ofFloat(start, end).setDuration(400L);
        duration.addUpdateListener(new b(isLeft, start));
        duration.start();
    }

    public int getStatusBarHeight() {
        int identifier = getResources().getIdentifier("status_bar_height", "dimen", "android");
        if (identifier > 0) {
            return getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View v10, MotionEvent event) {
        int action = event.getAction();
        if (action == 0) {
            this.f64811e = (int) event.getRawX();
            int rawY = (int) event.getRawY();
            this.f64812f = rawY;
            this.f64816j = this.f64811e;
            this.f64817k = rawY;
        } else if (action == 1) {
            if (this.f64820n) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) getLayoutParams();
                this.f64815i = marginLayoutParams;
                marginLayoutParams.topMargin = this.f64814h;
                setLayoutParams(marginLayoutParams);
            }
            this.f64818l = (int) event.getRawX();
            this.f64819m = (int) event.getRawY();
            if (Math.abs(this.f64816j - this.f64818l) < 6 && Math.abs(this.f64817k - this.f64819m) < 6) {
                return false;
            }
            int width = this.f64813g + (v10.getWidth() / 2);
            int i10 = this.f64808b;
            if (width < i10 / 2) {
                f(this.f64813g, i10 / 2, true);
            } else {
                f(this.f64813g, i10 / 2, false);
            }
        } else if (action == 2) {
            this.f64820n = true;
            int rawX = ((int) event.getRawX()) - this.f64811e;
            int rawY2 = ((int) event.getRawY()) - this.f64812f;
            this.f64813g = v10.getLeft() + rawX;
            this.f64814h = v10.getTop() + rawY2;
            int right = v10.getRight() + rawX;
            int bottom = v10.getBottom() + rawY2;
            if (this.f64813g < 0) {
                this.f64813g = 0;
                right = 0 + v10.getWidth();
            }
            int i11 = this.f64808b;
            if (right > i11) {
                this.f64813g = i11 - v10.getWidth();
                right = i11;
            }
            int i12 = this.f64814h;
            int i13 = this.f64822p;
            if (i12 < i13) {
                this.f64814h = i13;
                bottom = v10.getHeight() + i13;
            }
            int i14 = this.f64809c;
            if (bottom > i14) {
                this.f64814h = i14 - v10.getHeight();
                bottom = i14;
            }
            v10.layout(this.f64813g, this.f64814h, right, bottom);
            this.f64811e = (int) event.getRawX();
            this.f64812f = (int) event.getRawY();
        }
        return true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onTouchEvent:");
        sb2.append(event.getAction());
        if (this.f64821o == null || event.getAction() != 1) {
            return super.onTouchEvent(event);
        }
        this.f64821o.a();
        StringBuilder sb3 = new StringBuilder();
        sb3.append(">>>>>>>>>onTouchEvent:");
        sb3.append(event.getAction());
        return true;
    }

    public void setOnDragViewClickListener(c listener) {
        this.f64821o = listener;
    }

    public DragView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f64820n = false;
        this.f64810d = context;
        int dimension = (int) getResources().getDimension(R.dimen.wdp100);
        this.f64823q = getStatusBarHeight();
        this.f64822p = (int) getResources().getDimension(R.dimen.wdp172);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.f64808b = displayMetrics.widthPixels;
        this.f64809c = (displayMetrics.heightPixels - this.f64823q) - dimension;
        e();
    }
}

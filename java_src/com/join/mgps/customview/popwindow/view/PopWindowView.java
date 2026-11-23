package com.join.mgps.customview.popwindow.view;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.RelativeLayout;
import androidx.cardview.widget.CardView;

/* JADX INFO: loaded from: classes3.dex */
public class PopWindowView extends RelativeLayout {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static int f66771t = 1879048192;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static int f66772u = 10;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static int f66773v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static int f66774w;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    c f66775b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f66776c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f66777d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.join.mgps.customview.popwindow.shape.a f66778e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private o6.a f66779f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Paint f66780g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Bitmap f66781h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Canvas f66782i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f66783j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f66784k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f66785l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private View f66786m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f66787n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f66788o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f66789p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f66790q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f66791r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f66792s;

    class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            PopWindowView.this.f66778e.e();
            if (PopWindowView.this.f66778e == null || PopWindowView.this.f66778e.c().y == 0 || PopWindowView.this.f66790q) {
                return;
            }
            PopWindowView.s(PopWindowView.this, this);
        }
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private PopWindowView f66794a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Activity f66795b;

        public b(Activity activity) {
            this.f66795b = activity;
            this.f66794a = new PopWindowView(activity);
        }

        public PopWindowView a() {
            if (this.f66794a.f66792s) {
                return this.f66794a;
            }
            this.f66794a.setShape(new com.join.mgps.customview.popwindow.shape.b(this.f66794a.f66779f, this.f66794a.f66783j, this.f66794a.f66784k, this.f66794a.f66785l));
            return this.f66794a;
        }

        public b b(boolean dismissOnTouch) {
            this.f66794a.setDismissOnTouch(dismissOnTouch);
            return this;
        }

        public b c(boolean isPerformClick) {
            this.f66794a.setPerformClick(isPerformClick);
            return this;
        }

        public b d(com.join.mgps.customview.popwindow.shape.a shape) {
            this.f66794a.f66792s = true;
            this.f66794a.setShape(shape);
            return this;
        }

        public b e(int height) {
            this.f66794a.setDropDownHeight(height);
            return this;
        }

        public b f(View view) {
            this.f66794a.setDropDownView(view);
            return this;
        }

        public b g(int maskColor) {
            this.f66794a.setMaskColor(maskColor);
            return this;
        }

        public b h(c listener) {
            this.f66794a.setOnDismissListener(listener);
            return this;
        }

        public b i(View view) {
            this.f66794a.setTarget(new o6.b(view));
            return this;
        }

        public b j(int padding) {
            this.f66794a.setPadding(padding);
            return this;
        }

        public b k(int radius) {
            this.f66794a.setRadius(radius);
            return this;
        }

        public PopWindowView l() {
            a().t(this.f66795b);
            return this.f66794a;
        }
    }

    public interface c {
        void onDismiss();
    }

    public PopWindowView(Context context) {
        super(context);
        this.f66792s = false;
        q(context);
    }

    private void q(Context context) {
        setWillNotDraw(false);
        setVisibility(4);
        this.f66776c = f66771t;
        this.f66783j = f66772u;
        this.f66784k = f66773v;
        this.f66785l = f66774w;
        this.f66777d = false;
        this.f66789p = false;
        this.f66790q = false;
        this.f66791r = false;
        Paint paint = new Paint();
        this.f66780g = paint;
        paint.setColor(-1);
        this.f66780g.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        this.f66780g.setFlags(1);
        getViewTreeObserver().addOnGlobalLayoutListener(new a());
    }

    private void r() {
        if (getParent() != null) {
            ((ViewGroup) getParent()).removeView(this);
        }
    }

    @TargetApi(16)
    public static void s(View v10, ViewTreeObserver.OnGlobalLayoutListener listener) {
        v10.getViewTreeObserver().removeOnGlobalLayoutListener(listener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDismissOnTouch(boolean dismissOnTouch) {
        this.f66789p = dismissOnTouch;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMaskColor(int maskColor) {
        this.f66776c = maskColor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPadding(int padding) {
        this.f66783j = padding;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPerformClick(boolean isPerformClick) {
        this.f66791r = isPerformClick;
    }

    private void setReady(boolean isReady) {
        this.f66777d = isReady;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setShape(com.join.mgps.customview.popwindow.shape.a shape) {
        this.f66778e = shape;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTarget(o6.a target) {
        this.f66779f = target;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t(Activity activity) {
        if (this.f66786m != null) {
            Rect rectB = this.f66779f.b();
            CardView cardView = new CardView(activity);
            cardView.setCardBackgroundColor(0);
            cardView.setCardElevation(0.0f);
            cardView.setRadius(this.f66784k);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(rectB.width(), this.f66779f.getHeight() + this.f66785l);
            int i10 = rectB.left;
            layoutParams.leftMargin = i10;
            layoutParams.topMargin = rectB.top;
            layoutParams.rightMargin = i10;
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(rectB.width(), this.f66779f.getHeight() + this.f66785l);
            layoutParams2.topMargin = this.f66779f.getHeight();
            cardView.addView(this.f66786m, layoutParams2);
            addView(cardView, layoutParams);
        }
        ((ViewGroup) activity.getWindow().getDecorView()).addView(this);
        setReady(true);
        setVisibility(0);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f66777d) {
            if (this.f66781h == null || canvas == null) {
                this.f66781h = Bitmap.createBitmap(this.f66787n, this.f66788o, Bitmap.Config.ARGB_8888);
                this.f66782i = new Canvas(this.f66781h);
            }
            this.f66782i.drawColor(0, PorterDuff.Mode.CLEAR);
            this.f66782i.drawColor(this.f66776c);
            this.f66778e.a(this.f66782i, this.f66780g, this.f66783j, this.f66784k);
            canvas.drawBitmap(this.f66781h, 0.0f, 0.0f, (Paint) null);
        }
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        this.f66787n = getMeasuredWidth();
        this.f66788o = getMeasuredHeight();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        boolean zD = this.f66778e.d(event.getX(), event.getY());
        int action = event.getAction();
        if (action == 0) {
            if (zD && this.f66791r) {
                this.f66779f.getView().setPressed(true);
                this.f66779f.getView().invalidate();
            }
            return true;
        }
        if (action != 1) {
            return super.onTouchEvent(event);
        }
        if (zD || this.f66789p) {
            p();
        }
        if (zD && this.f66791r) {
            this.f66779f.getView().setPressed(false);
            this.f66779f.getView().invalidate();
        }
        return true;
    }

    public void p() {
        setVisibility(8);
        r();
        Bitmap bitmap = this.f66781h;
        if (bitmap != null) {
            bitmap.recycle();
        }
        if (this.f66782i != null) {
            this.f66782i = null;
        }
        c cVar = this.f66775b;
        if (cVar != null) {
            cVar.onDismiss();
        }
    }

    public void setDropDownHeight(int dropDownHeight) {
        this.f66785l = dropDownHeight;
    }

    public void setDropDownView(View dropDownView) {
        this.f66786m = dropDownView;
    }

    public void setOnDismissListener(c mListener) {
        this.f66775b = mListener;
    }

    public void setRadius(int radius) {
        this.f66784k = radius;
    }

    public PopWindowView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f66792s = false;
        q(context);
    }

    public PopWindowView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f66792s = false;
        q(context);
    }
}

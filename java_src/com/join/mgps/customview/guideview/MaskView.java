package com.join.mgps.customview.guideview;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;

/* JADX INFO: loaded from: classes3.dex */
class MaskView extends ViewGroup {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final RectF f66385b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final RectF f66386c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final RectF f66387d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Paint f66388e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f66389f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f66390g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f66391h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f66392i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f66393j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f66394k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f66395l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f66396m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private Paint f66397n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Bitmap f66398o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Canvas f66399p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f66400q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f66401r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f66402s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f66403t;

    public MaskView(Context context) {
        this(context, null, 0);
    }

    private void b(View child, RectF rect, int targetParentPosition) {
        if (targetParentPosition == 16) {
            float f10 = this.f66385b.left;
            rect.left = f10;
            rect.right = f10 + child.getMeasuredWidth();
        } else if (targetParentPosition == 32) {
            rect.left = (this.f66385b.width() - child.getMeasuredWidth()) / 2.0f;
            rect.right = (this.f66385b.width() + child.getMeasuredWidth()) / 2.0f;
            rect.offset(this.f66385b.left, 0.0f);
        } else {
            if (targetParentPosition != 48) {
                return;
            }
            float f11 = this.f66385b.right;
            rect.right = f11;
            rect.left = f11 - child.getMeasuredWidth();
        }
    }

    private void c() {
        d();
    }

    private void d() {
        if (this.f66400q) {
            return;
        }
        int i10 = this.f66389f;
        if (i10 != 0 && this.f66390g == 0) {
            this.f66385b.left -= i10;
        }
        if (i10 != 0 && this.f66391h == 0) {
            this.f66385b.top -= i10;
        }
        if (i10 != 0 && this.f66392i == 0) {
            this.f66385b.right += i10;
        }
        if (i10 != 0 && this.f66393j == 0) {
            this.f66385b.bottom += i10;
        }
        int i11 = this.f66390g;
        if (i11 != 0) {
            this.f66385b.left -= i11;
        }
        int i12 = this.f66391h;
        if (i12 != 0) {
            this.f66385b.top -= i12;
        }
        int i13 = this.f66392i;
        if (i13 != 0) {
            this.f66385b.right += i13;
        }
        int i14 = this.f66393j;
        if (i14 != 0) {
            this.f66385b.bottom += i14;
        }
        this.f66400q = true;
    }

    private void p(View child, RectF rect, int targetParentPosition) {
        if (targetParentPosition == 16) {
            float f10 = this.f66385b.top;
            rect.top = f10;
            rect.bottom = f10 + child.getMeasuredHeight();
        } else if (targetParentPosition == 32) {
            rect.top = (this.f66385b.width() - child.getMeasuredHeight()) / 2.0f;
            rect.bottom = (this.f66385b.width() + child.getMeasuredHeight()) / 2.0f;
            rect.offset(0.0f, this.f66385b.top);
        } else {
            if (targetParentPosition != 48) {
                return;
            }
            RectF rectF = this.f66385b;
            rect.bottom = rectF.bottom;
            rect.top = rectF.bottom - child.getMeasuredHeight();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        long drawingTime = getDrawingTime();
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            try {
                drawChild(canvas, getChildAt(i10), drawingTime);
            } catch (NullPointerException unused) {
                return;
            }
        }
    }

    public void e(int alpha) {
        this.f66388e.setAlpha(alpha);
    }

    public void f(int color) {
        this.f66388e.setColor(color);
    }

    public void g(int corner) {
        this.f66395l = corner;
    }

    public void h(int style) {
        this.f66396m = style;
    }

    public void i(boolean b10) {
        this.f66394k = b10;
    }

    public void j(int padding) {
        this.f66389f = padding;
    }

    public void k(int paddingBottom) {
        this.f66393j = paddingBottom;
    }

    public void l(int paddingLeft) {
        this.f66390g = paddingLeft;
    }

    public void m(int paddingRight) {
        this.f66392i = paddingRight;
    }

    public void n(int paddingTop) {
        this.f66391h = paddingTop;
    }

    public void o(Rect rect) {
        this.f66385b.set(rect);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        try {
            clearFocus();
            this.f66399p.setBitmap(null);
            this.f66398o = null;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int i10 = this.f66402s;
        if (i10 != 0) {
            this.f66385b.offset(0.0f, i10);
            this.f66401r += this.f66402s;
            this.f66402s = 0;
        }
        this.f66398o.eraseColor(0);
        this.f66399p.drawColor(this.f66388e.getColor());
        if (!this.f66394k) {
            int i11 = this.f66396m;
            if (i11 == 0) {
                Canvas canvas2 = this.f66399p;
                RectF rectF = this.f66385b;
                int i12 = this.f66395l;
                canvas2.drawRoundRect(rectF, i12, i12, this.f66397n);
            } else if (i11 != 1) {
                Canvas canvas3 = this.f66399p;
                RectF rectF2 = this.f66385b;
                int i13 = this.f66395l;
                canvas3.drawRoundRect(rectF2, i13, i13, this.f66397n);
            } else {
                this.f66399p.drawCircle(this.f66385b.centerX(), this.f66385b.centerY(), this.f66385b.width() / 2.0f, this.f66397n);
            }
        }
        Bitmap bitmap = this.f66398o;
        RectF rectF3 = this.f66386c;
        canvas.drawBitmap(bitmap, rectF3.left, rectF3.top, (Paint) null);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int l10, int t10, int r10, int b10) {
        LayoutParams layoutParams;
        int childCount = getChildCount();
        float f10 = getResources().getDisplayMetrics().density;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt != null && (layoutParams = (LayoutParams) childAt.getLayoutParams()) != null) {
                int i11 = layoutParams.f66412a;
                if (i11 == 1) {
                    RectF rectF = this.f66387d;
                    float f11 = this.f66385b.left;
                    rectF.right = f11;
                    rectF.left = f11 - childAt.getMeasuredWidth();
                    p(childAt, this.f66387d, layoutParams.f66413b);
                } else if (i11 == 2) {
                    RectF rectF2 = this.f66387d;
                    float f12 = this.f66385b.top;
                    rectF2.bottom = f12;
                    rectF2.top = f12 - childAt.getMeasuredHeight();
                    b(childAt, this.f66387d, layoutParams.f66413b);
                } else if (i11 == 3) {
                    RectF rectF3 = this.f66387d;
                    float f13 = this.f66385b.right;
                    rectF3.left = f13;
                    rectF3.right = f13 + childAt.getMeasuredWidth();
                    p(childAt, this.f66387d, layoutParams.f66413b);
                } else if (i11 == 4) {
                    RectF rectF4 = this.f66387d;
                    float f14 = this.f66385b.bottom;
                    rectF4.top = f14;
                    rectF4.bottom = f14 + childAt.getMeasuredHeight();
                    b(childAt, this.f66387d, layoutParams.f66413b);
                } else if (i11 == 5) {
                    this.f66387d.left = (((int) this.f66385b.width()) - childAt.getMeasuredWidth()) >> 1;
                    this.f66387d.top = (((int) this.f66385b.height()) - childAt.getMeasuredHeight()) >> 1;
                    this.f66387d.right = (((int) this.f66385b.width()) + childAt.getMeasuredWidth()) >> 1;
                    this.f66387d.bottom = (((int) this.f66385b.height()) + childAt.getMeasuredHeight()) >> 1;
                    RectF rectF5 = this.f66387d;
                    RectF rectF6 = this.f66385b;
                    rectF5.offset(rectF6.left, rectF6.top);
                }
                this.f66387d.offset((int) ((layoutParams.f66414c * f10) + 0.5f), (int) ((layoutParams.f66415d * f10) + 0.5f));
                RectF rectF7 = this.f66387d;
                childAt.layout((int) rectF7.left, (int) rectF7.top, (int) rectF7.right, (int) rectF7.bottom);
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        int size = View.MeasureSpec.getSize(widthMeasureSpec);
        int size2 = View.MeasureSpec.getSize(heightMeasureSpec);
        if (this.f66403t) {
            this.f66401r = size2;
            this.f66403t = false;
        }
        int i10 = this.f66401r;
        if (i10 <= size2 && i10 >= size2) {
            this.f66402s = 0;
        } else {
            this.f66402s = size2 - i10;
        }
        setMeasuredDimension(size, size2);
        this.f66386c.set(0.0f, 0.0f, size, size2);
        c();
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (childAt != null) {
                measureChild(childAt, widthMeasureSpec, heightMeasureSpec);
            }
        }
    }

    public MaskView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public MaskView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.f66385b = new RectF();
        RectF rectF = new RectF();
        this.f66386c = rectF;
        this.f66387d = new RectF();
        this.f66389f = 0;
        this.f66390g = 0;
        this.f66391h = 0;
        this.f66392i = 0;
        this.f66393j = 0;
        this.f66394k = false;
        this.f66395l = 0;
        this.f66396m = 0;
        this.f66402s = 0;
        this.f66403t = true;
        setWillNotDraw(false);
        WindowManager windowManager = (WindowManager) getContext().getSystemService("window");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getRealMetrics(displayMetrics);
        int i10 = displayMetrics.widthPixels;
        int i11 = displayMetrics.heightPixels;
        rectF.set(0.0f, 0.0f, i10, i11);
        this.f66398o = Bitmap.createBitmap(i10, i11, Bitmap.Config.ARGB_8888);
        this.f66399p = new Canvas(this.f66398o);
        this.f66388e = new Paint();
        Paint paint = new Paint();
        this.f66397n = paint;
        paint.setColor(-1);
        this.f66397n.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        this.f66397n.setFlags(1);
    }

    static class LayoutParams extends ViewGroup.LayoutParams {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final int f66404e = 1;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final int f66405f = 2;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public static final int f66406g = 3;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final int f66407h = 4;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final int f66408i = 5;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public static final int f66409j = 16;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public static final int f66410k = 32;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public static final int f66411l = 48;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f66412a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f66413b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f66414c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f66415d;

        public LayoutParams(Context c10, AttributeSet attrs) {
            super(c10, attrs);
            this.f66412a = 4;
            this.f66413b = 32;
            this.f66414c = 0;
            this.f66415d = 0;
        }

        public LayoutParams(int width, int height) {
            super(width, height);
            this.f66412a = 4;
            this.f66413b = 32;
            this.f66414c = 0;
            this.f66415d = 0;
        }

        public LayoutParams(ViewGroup.LayoutParams source) {
            super(source);
            this.f66412a = 4;
            this.f66413b = 32;
            this.f66414c = 0;
            this.f66415d = 0;
        }
    }
}

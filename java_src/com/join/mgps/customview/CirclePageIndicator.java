package com.join.mgps.customview;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewConfigurationCompat;
import androidx.viewpager.widget.ViewPager;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class CirclePageIndicator extends View implements g0 {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final int f64457s = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f64458b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Paint f64459c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Paint f64460d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Paint f64461e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ViewPager f64462f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ViewPager.OnPageChangeListener f64463g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f64464h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f64465i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f64466j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f64467k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f64468l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f64469m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f64470n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f64471o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private float f64472p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f64473q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f64474r;

    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f64475b;

        class a implements Parcelable.Creator<SavedState> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel in2) {
                return new SavedState(in2);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int size) {
                return new SavedState[size];
            }
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel dest, int flags) {
            super.writeToParcel(dest, flags);
            dest.writeInt(this.f64475b);
        }

        public SavedState(Parcelable superState) {
            super(superState);
        }

        private SavedState(Parcel in2) {
            super(in2);
            this.f64475b = in2.readInt();
        }
    }

    public CirclePageIndicator(Context context) {
        this(context, null);
    }

    private int c(int measureSpec) {
        int mode = View.MeasureSpec.getMode(measureSpec);
        int size = View.MeasureSpec.getSize(measureSpec);
        if (mode == 1073741824 || this.f64462f == null) {
            return size;
        }
        int count = getCount();
        float paddingLeft = getPaddingLeft() + getPaddingRight();
        float f10 = this.f64458b;
        int i10 = (int) (paddingLeft + (count * 2 * f10) + ((count - 1) * f10) + 2.0f);
        return mode == Integer.MIN_VALUE ? Math.min(i10, size) : i10;
    }

    private int d(int measureSpec) {
        int mode = View.MeasureSpec.getMode(measureSpec);
        int size = View.MeasureSpec.getSize(measureSpec);
        if (mode == 1073741824) {
            return size;
        }
        int paddingTop = (int) ((this.f64458b * 2.0f) + getPaddingTop() + getPaddingBottom() + 1.0f);
        return mode == Integer.MIN_VALUE ? Math.min(paddingTop, size) : paddingTop;
    }

    public boolean a() {
        return this.f64469m;
    }

    public boolean b() {
        return this.f64470n;
    }

    protected int getCount() {
        ViewPager viewPager = this.f64462f;
        if (viewPager == null || viewPager.getAdapter() == null) {
            return 0;
        }
        return this.f64462f.getAdapter() instanceof n ? this.f64462f.getAdapter().getCount() - 2 : this.f64462f.getAdapter().getCount();
    }

    public int getFillColor() {
        return this.f64461e.getColor();
    }

    public int getOrientation() {
        return this.f64468l;
    }

    public int getPageColor() {
        return this.f64459c.getColor();
    }

    public float getRadius() {
        return this.f64458b;
    }

    public int getStrokeColor() {
        return this.f64460d.getColor();
    }

    public float getStrokeWidth() {
        return this.f64460d.getStrokeWidth();
    }

    @Override // com.join.mgps.customview.g0
    public void notifyDataSetChanged() {
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int count;
        int height;
        int paddingTop;
        int paddingBottom;
        int paddingLeft;
        float f10;
        float f11;
        super.onDraw(canvas);
        if (this.f64462f == null || (count = getCount()) == 0) {
            return;
        }
        if (this.f64464h >= count) {
            setCurrentItem(count - 1);
            return;
        }
        if (this.f64468l == 0) {
            height = getWidth();
            paddingTop = getPaddingLeft();
            paddingBottom = getPaddingRight();
            paddingLeft = getPaddingTop();
        } else {
            height = getHeight();
            paddingTop = getPaddingTop();
            paddingBottom = getPaddingBottom();
            paddingLeft = getPaddingLeft();
        }
        float strokeWidth = this.f64458b;
        float f12 = 3.0f * strokeWidth;
        float f13 = paddingLeft + strokeWidth;
        float f14 = paddingTop + strokeWidth;
        if (this.f64469m) {
            f14 += (((height - paddingTop) - paddingBottom) / 2.0f) - (((count * f12) / 2.0f) - (strokeWidth / 2.0f));
        }
        if (this.f64460d.getStrokeWidth() > 0.0f) {
            strokeWidth -= this.f64460d.getStrokeWidth() / 2.0f;
        }
        for (int i10 = 0; i10 < count; i10++) {
            float f15 = (i10 * f12) + f14;
            if (this.f64468l == 0) {
                f11 = f13;
            } else {
                f11 = f15;
                f15 = f13;
            }
            if (this.f64459c.getAlpha() > 0) {
                canvas.drawCircle(f15, f11, strokeWidth, this.f64459c);
            }
            float f16 = this.f64458b;
            if (strokeWidth != f16) {
                canvas.drawCircle(f15, f11, f16, this.f64460d);
            }
        }
        boolean z10 = this.f64470n;
        float f17 = (z10 ? this.f64465i : this.f64464h) * f12;
        if (!z10) {
            f17 += this.f64466j * f12;
        }
        if (this.f64468l == 0) {
            float f18 = f14 + f17;
            f10 = f13;
            f13 = f18;
        } else {
            f10 = f14 + f17;
        }
        canvas.drawCircle(f13, f10, this.f64458b, this.f64461e);
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        if (this.f64468l == 0) {
            setMeasuredDimension(c(widthMeasureSpec), d(heightMeasureSpec));
        } else {
            setMeasuredDimension(d(widthMeasureSpec), c(heightMeasureSpec));
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int state) {
        this.f64467k = state;
        ViewPager.OnPageChangeListener onPageChangeListener = this.f64463g;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageScrollStateChanged(state);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
        this.f64464h = position;
        this.f64466j = positionOffset;
        invalidate();
        ViewPager.OnPageChangeListener onPageChangeListener = this.f64463g;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageScrolled(position, positionOffset, positionOffsetPixels);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageSelected(int position) {
        if (this.f64470n || this.f64467k == 0) {
            this.f64464h = position;
            this.f64465i = position;
            invalidate();
        }
        ViewPager.OnPageChangeListener onPageChangeListener = this.f64463g;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageSelected(position);
        }
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable state) {
        SavedState savedState = (SavedState) state;
        super.onRestoreInstanceState(savedState.getSuperState());
        int i10 = savedState.f64475b;
        this.f64464h = i10;
        this.f64465i = i10;
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f64475b = this.f64464h;
        return savedState;
    }

    /* JADX WARN: Code duplicated, block: B:41:0x009d  */
    /* JADX WARN: Code duplicated, block: B:43:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:55:0x00da  */
    /* JADX WARN: Code duplicated, block: B:59:0x00f0  */
    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent ev) {
        int count;
        if (this.f64462f == null || getCount() == 0) {
            return false;
        }
        if (super.onTouchEvent(ev)) {
            return true;
        }
        int action = ev.getAction() & 255;
        if (action == 0) {
            this.f64473q = MotionEventCompat.getPointerId(ev, 0);
            this.f64472p = ev.getX();
        } else if (action == 1) {
            if (!this.f64474r) {
                count = getCount();
                float width = getWidth();
                float f10 = width / 2.0f;
                float f11 = width / 6.0f;
                if (this.f64464h <= 0 && ev.getX() < f10 - f11) {
                    if (action != 3) {
                        this.f64462f.setCurrentItem(this.f64464h - 1);
                    }
                    return true;
                }
                if (this.f64464h < count - 1 && ev.getX() > f10 + f11) {
                    if (action != 3) {
                        this.f64462f.setCurrentItem(this.f64464h + 1);
                    }
                    return true;
                }
            }
            this.f64474r = false;
            this.f64473q = -1;
            if (this.f64462f.isFakeDragging()) {
                this.f64462f.endFakeDrag();
            }
        } else if (action == 2) {
            float x10 = MotionEventCompat.getX(ev, MotionEventCompat.findPointerIndex(ev, this.f64473q));
            float f12 = x10 - this.f64472p;
            if (!this.f64474r && Math.abs(f12) > this.f64471o) {
                this.f64474r = true;
            }
            if (this.f64474r) {
                this.f64472p = x10;
                if (this.f64462f.isFakeDragging() || this.f64462f.beginFakeDrag()) {
                    this.f64462f.fakeDragBy(f12);
                }
            }
        } else if (action == 3) {
            if (!this.f64474r) {
                count = getCount();
                float width2 = getWidth();
                float f13 = width2 / 2.0f;
                float f14 = width2 / 6.0f;
                if (this.f64464h <= 0) {
                }
                if (this.f64464h < count - 1) {
                    if (action != 3) {
                        this.f64462f.setCurrentItem(this.f64464h + 1);
                    }
                    return true;
                }
            }
            this.f64474r = false;
            this.f64473q = -1;
            if (this.f64462f.isFakeDragging()) {
                this.f64462f.endFakeDrag();
            }
        } else if (action == 5) {
            int actionIndex = MotionEventCompat.getActionIndex(ev);
            this.f64472p = MotionEventCompat.getX(ev, actionIndex);
            this.f64473q = MotionEventCompat.getPointerId(ev, actionIndex);
        } else if (action == 6) {
            int actionIndex2 = MotionEventCompat.getActionIndex(ev);
            if (MotionEventCompat.getPointerId(ev, actionIndex2) == this.f64473q) {
                this.f64473q = MotionEventCompat.getPointerId(ev, actionIndex2 == 0 ? 1 : 0);
            }
            this.f64472p = MotionEventCompat.getX(ev, MotionEventCompat.findPointerIndex(ev, this.f64473q));
        }
        return true;
    }

    public void setCentered(boolean centered) {
        this.f64469m = centered;
        invalidate();
    }

    @Override // com.join.mgps.customview.g0
    public void setCurrentItem(int item) {
        ViewPager viewPager = this.f64462f;
        if (viewPager == null) {
            throw new IllegalStateException("ViewPager has not been bound.");
        }
        viewPager.setCurrentItem(item);
        this.f64464h = item;
        invalidate();
    }

    public void setFillColor(int fillColor) {
        this.f64461e.setColor(fillColor);
        invalidate();
    }

    @Override // com.join.mgps.customview.g0
    public void setOnPageChangeListener(ViewPager.OnPageChangeListener listener) {
        this.f64463g = listener;
    }

    public void setOrientation(int orientation) {
        if (orientation != 0 && orientation != 1) {
            throw new IllegalArgumentException("Orientation must be either HORIZONTAL or VERTICAL.");
        }
        this.f64468l = orientation;
        requestLayout();
    }

    public void setPageColor(int pageColor) {
        this.f64459c.setColor(pageColor);
        invalidate();
    }

    public void setRadius(float radius) {
        this.f64458b = radius;
        invalidate();
    }

    public void setSnap(boolean snap) {
        this.f64470n = snap;
        invalidate();
    }

    public void setStrokeColor(int strokeColor) {
        this.f64460d.setColor(strokeColor);
        invalidate();
    }

    public void setStrokeWidth(float strokeWidth) {
        this.f64460d.setStrokeWidth(strokeWidth);
        invalidate();
    }

    @Override // com.join.mgps.customview.g0
    public void setViewPager(ViewPager view) {
        ViewPager viewPager = this.f64462f;
        if (viewPager == view) {
            return;
        }
        if (viewPager != null) {
            viewPager.setOnPageChangeListener(null);
        }
        if (view.getAdapter() == null) {
            throw new IllegalStateException("ViewPager does not have adapter instance.");
        }
        this.f64462f = view;
        view.setOnPageChangeListener(this);
        invalidate();
    }

    public CirclePageIndicator(Context context, AttributeSet attrs) {
        this(context, attrs, R.attr.vpiCirclePageIndicatorStyle);
    }

    public CirclePageIndicator(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        Paint paint = new Paint(1);
        this.f64459c = paint;
        Paint paint2 = new Paint(1);
        this.f64460d = paint2;
        Paint paint3 = new Paint(1);
        this.f64461e = paint3;
        this.f64472p = -1.0f;
        this.f64473q = -1;
        if (isInEditMode()) {
            return;
        }
        Resources resources = getResources();
        int color = resources.getColor(R.color.default_circle_indicator_page_color);
        int color2 = resources.getColor(R.color.default_circle_indicator_fill_color);
        int integer = resources.getInteger(R.integer.default_circle_indicator_orientation);
        int color3 = resources.getColor(R.color.default_circle_indicator_stroke_color);
        float dimension = resources.getDimension(R.dimen.default_circle_indicator_stroke_width);
        float dimension2 = resources.getDimension(R.dimen.default_circle_indicator_radius);
        boolean z10 = resources.getBoolean(R.bool.default_circle_indicator_centered);
        boolean z11 = resources.getBoolean(R.bool.default_circle_indicator_snap);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.CirclePageIndicator, defStyle, 0);
        this.f64469m = typedArrayObtainStyledAttributes.getBoolean(2, z10);
        this.f64468l = typedArrayObtainStyledAttributes.getInt(0, integer);
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(typedArrayObtainStyledAttributes.getColor(4, color));
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setColor(typedArrayObtainStyledAttributes.getColor(7, color3));
        paint2.setStrokeWidth(typedArrayObtainStyledAttributes.getDimension(8, dimension));
        paint3.setStyle(Paint.Style.FILL);
        paint3.setColor(typedArrayObtainStyledAttributes.getColor(3, color2));
        this.f64458b = typedArrayObtainStyledAttributes.getDimension(5, dimension2);
        this.f64470n = typedArrayObtainStyledAttributes.getBoolean(6, z11);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(1);
        if (drawable != null) {
            setBackgroundDrawable(drawable);
        }
        typedArrayObtainStyledAttributes.recycle();
        this.f64471o = ViewConfigurationCompat.getScaledPagingTouchSlop(ViewConfiguration.get(context));
    }

    @Override // com.join.mgps.customview.g0
    public void setViewPager(ViewPager view, int initialPosition) {
        setViewPager(view);
        setCurrentItem(initialPosition);
    }
}

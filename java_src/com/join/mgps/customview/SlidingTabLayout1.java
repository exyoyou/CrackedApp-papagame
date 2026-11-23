package com.join.mgps.customview;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewpager.widget.ViewPager;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes3.dex */
public class SlidingTabLayout1 extends HorizontalScrollView {
    private static final int[] J = {R.attr.textSize, R.attr.textColor};
    protected int A;
    protected int B;
    protected Typeface C;
    protected int D;
    private int E;
    protected int F;
    protected Locale G;
    List<String> H;
    private d I;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected LinearLayout.LayoutParams f65709b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected LinearLayout.LayoutParams f65710c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final e f65711d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ViewPager.OnPageChangeListener f65712e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected LinearLayout f65713f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected ViewPager f65714g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected int f65715h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected int f65716i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected float f65717j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected Paint f65718k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    protected Paint f65719l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    protected int f65720m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    protected int f65721n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected int f65722o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected boolean f65723p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    protected boolean f65724q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    protected int f65725r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected int f65726s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    protected float f65727t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    protected int f65728u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    protected int f65729v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    protected int f65730w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    protected int f65731x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    protected int f65732y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    protected int f65733z;

    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f65734b;

        class a implements Parcelable.Creator<SavedState> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public SavedState createFromParcel(Parcel in2) {
                return new SavedState(in2, null);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public SavedState[] newArray(int size) {
                return new SavedState[size];
            }
        }

        /* synthetic */ SavedState(Parcel parcel, a aVar) {
            this(parcel);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel dest, int flags) {
            super.writeToParcel(dest, flags);
            dest.writeInt(this.f65734b);
        }

        public SavedState(Parcelable superState) {
            super(superState);
        }

        private SavedState(Parcel in2) {
            super(in2);
            this.f65734b = in2.readInt();
        }
    }

    class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        @SuppressLint({"NewApi"})
        public void onGlobalLayout() {
            SlidingTabLayout1.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            SlidingTabLayout1 slidingTabLayout1 = SlidingTabLayout1.this;
            slidingTabLayout1.f65716i = slidingTabLayout1.f65714g.getCurrentItem();
            SlidingTabLayout1 slidingTabLayout2 = SlidingTabLayout1.this;
            slidingTabLayout2.h(slidingTabLayout2.f65716i, 0);
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f65736b;

        b(final int val$position) {
            this.f65736b = val$position;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            SlidingTabLayout1 slidingTabLayout1 = SlidingTabLayout1.this;
            ViewPager viewPager = slidingTabLayout1.f65714g;
            if (viewPager != null) {
                viewPager.setCurrentItem(this.f65736b);
                return;
            }
            slidingTabLayout1.f65716i = this.f65736b;
            slidingTabLayout1.I.a(SlidingTabLayout1.this.f65716i);
            SlidingTabLayout1.this.i();
        }
    }

    public interface c {
        int a(int position);
    }

    public interface d {
        void a(int postion);
    }

    protected class e implements ViewPager.OnPageChangeListener {
        protected e() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int state) {
            if (state == 0) {
                SlidingTabLayout1 slidingTabLayout1 = SlidingTabLayout1.this;
                slidingTabLayout1.h(slidingTabLayout1.f65714g.getCurrentItem(), 0);
            }
            ViewPager.OnPageChangeListener onPageChangeListener = SlidingTabLayout1.this.f65712e;
            if (onPageChangeListener != null) {
                onPageChangeListener.onPageScrollStateChanged(state);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
            SlidingTabLayout1 slidingTabLayout1 = SlidingTabLayout1.this;
            slidingTabLayout1.f65716i = position;
            slidingTabLayout1.f65717j = positionOffset;
            if (slidingTabLayout1.f65713f.getChildAt(position) != null) {
                SlidingTabLayout1 slidingTabLayout2 = SlidingTabLayout1.this;
                slidingTabLayout2.h(position, (int) (slidingTabLayout2.f65713f.getChildAt(position).getWidth() * positionOffset));
            }
            SlidingTabLayout1.this.invalidate();
            ViewPager.OnPageChangeListener onPageChangeListener = SlidingTabLayout1.this.f65712e;
            if (onPageChangeListener != null) {
                onPageChangeListener.onPageScrolled(position, positionOffset, positionOffsetPixels);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int position) {
            SlidingTabLayout1.this.i();
            ViewPager.OnPageChangeListener onPageChangeListener = SlidingTabLayout1.this.f65712e;
            if (onPageChangeListener != null) {
                onPageChangeListener.onPageSelected(position);
            }
        }
    }

    public SlidingTabLayout1(Context context) {
        this(context, null);
    }

    protected void b(final int position, int resId) {
        ImageButton imageButton = new ImageButton(getContext());
        imageButton.setImageResource(resId);
        c(position, imageButton);
    }

    protected void c(final int position, View tab) {
        tab.setFocusable(true);
        tab.setOnClickListener(new b(position));
        int i10 = this.f65730w;
        tab.setPadding(i10, 0, i10, 0);
        this.f65713f.addView(tab, position, this.f65723p ? this.f65710c : this.f65709b);
    }

    protected void d(final int position, String title) {
        TextView textView = new TextView(getContext());
        textView.setText(title);
        textView.setGravity(17);
        textView.setSingleLine();
        c(position, textView);
    }

    protected void e(Canvas canvas) {
        int i10;
        if (isInEditMode() || this.f65715h == 0) {
            return;
        }
        int height = getHeight();
        this.f65718k.setColor(this.f65720m);
        View childAt = this.f65713f.getChildAt(this.f65716i);
        float left = childAt.getLeft() * 1.0f;
        float right = childAt.getRight();
        if (this.f65717j > 0.0f && (i10 = this.f65716i) < this.f65715h - 1) {
            View childAt2 = this.f65713f.getChildAt(i10 + 1);
            float left2 = childAt2.getLeft();
            float right2 = childAt2.getRight();
            float f10 = this.f65717j;
            left = (left2 * f10) + ((1.0f - f10) * left);
            right = (right2 * f10) + ((1.0f - f10) * right);
        }
        float f11 = (int) (((1.0f - this.f65727t) * (right - left)) / 2.0f);
        float f12 = height;
        canvas.drawRect(left + f11, height - this.f65726s, right - f11, f12, this.f65718k);
        this.f65718k.setColor(this.f65721n);
        canvas.drawRect(0.0f, height - this.f65728u, this.f65713f.getWidth(), f12, this.f65718k);
        this.f65719l.setColor(this.f65722o);
        for (int i11 = 0; i11 < this.f65715h - 1; i11++) {
            View childAt3 = this.f65713f.getChildAt(i11);
            canvas.drawLine(childAt3.getRight(), this.f65729v, childAt3.getRight(), height - this.f65729v, this.f65719l);
        }
    }

    public boolean f() {
        return this.f65724q;
    }

    public void g() {
        this.f65713f.removeAllViews();
        ViewPager viewPager = this.f65714g;
        int i10 = 0;
        if (viewPager == null || viewPager.getAdapter() == null) {
            this.f65715h = this.H.size();
            while (i10 < this.f65715h) {
                d(i10, this.H.get(i10));
                i10++;
            }
            i();
            return;
        }
        this.f65715h = this.f65714g.getAdapter().getCount();
        while (i10 < this.f65715h) {
            if (this.f65714g.getAdapter() instanceof c) {
                b(i10, ((c) this.f65714g.getAdapter()).a(i10));
            } else {
                d(i10, this.f65714g.getAdapter().getPageTitle(i10).toString());
            }
            i10++;
        }
        i();
        getViewTreeObserver().addOnGlobalLayoutListener(new a());
    }

    public int getDividerColor() {
        return this.f65722o;
    }

    public int getDividerPadding() {
        return this.f65729v;
    }

    public int getIndicatorColor() {
        return this.f65720m;
    }

    public int getIndicatorHeight() {
        return this.f65726s;
    }

    public float getIndicatorRatioH() {
        return this.f65727t;
    }

    public int getScrollOffset() {
        return this.f65725r;
    }

    public boolean getShouldExpand() {
        return this.f65723p;
    }

    public int getTabBackground() {
        return this.F;
    }

    public int getTabPaddingLeftRight() {
        return this.f65730w;
    }

    public int getTextColor() {
        return this.A;
    }

    public int getTextSize() {
        return this.f65732y;
    }

    public int getUnderlineColor() {
        return this.f65721n;
    }

    public int getUnderlineHeight() {
        return this.f65728u;
    }

    protected void h(int position, int offset) {
        if (this.f65715h == 0) {
            return;
        }
        int left = this.f65713f.getChildAt(position).getLeft() + offset;
        if (position > 0 || offset > 0) {
            left -= this.f65725r;
        }
        if (left != this.E) {
            this.E = left;
            scrollTo(left, 0);
        }
    }

    protected void i() {
        for (int i10 = 0; i10 < this.f65715h; i10++) {
            View childAt = this.f65713f.getChildAt(i10);
            childAt.setBackgroundResource(this.F);
            if (childAt instanceof TextView) {
                TextView textView = (TextView) childAt;
                textView.setTextSize(0, this.f65732y);
                textView.setTypeface(this.C, this.D);
                textView.setTextColor(this.A);
                ViewPager viewPager = this.f65714g;
                if (viewPager != null && i10 == viewPager.getCurrentItem()) {
                    textView.setTextColor(this.B);
                }
                if (this.H != null && i10 == this.f65716i) {
                    textView.setTextColor(this.B);
                }
                if (this.f65724q) {
                    textView.setAllCaps(true);
                }
            }
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        e(canvas);
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public void onRestoreInstanceState(Parcelable state) {
        SavedState savedState = (SavedState) state;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f65716i = savedState.f65734b;
        requestLayout();
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f65734b = this.f65716i;
        return savedState;
    }

    public void setAllCaps(boolean textAllCaps) {
        this.f65724q = textAllCaps;
    }

    public void setDividerColor(int dividerColor) {
        this.f65722o = dividerColor;
        invalidate();
    }

    public void setDividerColorResource(int resId) {
        this.f65722o = getResources().getColor(resId);
        invalidate();
    }

    public void setDividerPadding(int dividerPaddingPx) {
        this.f65729v = dividerPaddingPx;
        invalidate();
    }

    public void setIndicatorColor(int indicatorColor) {
        this.f65720m = indicatorColor;
        invalidate();
    }

    public void setIndicatorColorResource(int resId) {
        this.f65720m = getResources().getColor(resId);
        invalidate();
    }

    public void setIndicatorHeight(int indicatorLineHeightPx) {
        this.f65726s = indicatorLineHeightPx;
        invalidate();
    }

    public void setIndicatorRatioH(float indicatorRatioH) {
        this.f65727t = indicatorRatioH;
        invalidate();
    }

    public void setOnPageChangeListener(ViewPager.OnPageChangeListener listener) {
        this.f65712e = listener;
    }

    public void setOntabselected(d ontabSelected) {
        this.I = ontabSelected;
    }

    public void setScrollOffset(int scrollOffsetPx) {
        this.f65725r = scrollOffsetPx;
        invalidate();
    }

    public void setShouldExpand(boolean shouldExpand) {
        this.f65723p = shouldExpand;
        requestLayout();
    }

    public void setTabBackground(int resId) {
        this.F = resId;
    }

    public void setTabDatas(List<String> datas) {
        this.H = datas;
        g();
    }

    public void setTabPaddingLeftRight(int paddingPx) {
        this.f65730w = paddingPx;
        i();
    }

    public void setTextColor(int textColor) {
        this.A = textColor;
        i();
    }

    public void setTextColorResource(int resId) {
        this.A = getResources().getColor(resId);
        i();
    }

    public void setTextSize(int textSizePx) {
        this.f65732y = textSizePx;
        i();
    }

    public void setTypeface(Typeface typeface, int style) {
        this.C = typeface;
        this.D = style;
        i();
    }

    public void setUnderlineColor(int underlineColor) {
        this.f65721n = underlineColor;
        invalidate();
    }

    public void setUnderlineColorResource(int resId) {
        this.f65721n = getResources().getColor(resId);
        invalidate();
    }

    public void setUnderlineHeight(int underlineHeightPx) {
        this.f65728u = underlineHeightPx;
        invalidate();
    }

    public void setViewPager(ViewPager pager) {
        this.f65714g = pager;
        if (pager.getAdapter() == null) {
            throw new IllegalStateException("ViewPager does not have adapter instance.");
        }
        pager.setOnPageChangeListener(this.f65711d);
        g();
    }

    public SlidingTabLayout1(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public SlidingTabLayout1(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.f65711d = new e();
        this.f65716i = 0;
        this.f65717j = 0.0f;
        this.f65720m = -756480;
        this.f65721n = 16020736;
        this.f65722o = 16777215;
        this.f65723p = false;
        this.f65724q = true;
        this.f65725r = 52;
        this.f65726s = 3;
        this.f65727t = 0.3f;
        this.f65728u = 1;
        this.f65729v = 12;
        this.f65730w = 24;
        this.f65731x = 1;
        this.f65732y = 14;
        this.f65733z = 16;
        this.A = -11711155;
        this.B = -756480;
        this.C = null;
        this.D = 0;
        this.E = 0;
        this.F = com.join.android.app.mgsim.wufun.R.drawable.background_tab;
        this.H = null;
        setFillViewport(true);
        setWillNotDraw(false);
        LinearLayout linearLayout = new LinearLayout(context);
        this.f65713f = linearLayout;
        linearLayout.setOrientation(0);
        this.f65713f.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        addView(this.f65713f);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.f65725r = (int) TypedValue.applyDimension(1, this.f65725r, displayMetrics);
        this.f65726s = (int) TypedValue.applyDimension(1, this.f65726s, displayMetrics);
        this.f65728u = (int) TypedValue.applyDimension(0, this.f65728u, displayMetrics);
        this.f65729v = (int) TypedValue.applyDimension(1, this.f65729v, displayMetrics);
        this.f65730w = (int) TypedValue.applyDimension(1, this.f65730w, displayMetrics);
        this.f65731x = (int) TypedValue.applyDimension(1, this.f65731x, displayMetrics);
        this.f65732y = (int) TypedValue.applyDimension(1, this.f65732y, displayMetrics);
        this.f65733z = (int) TypedValue.applyDimension(1, this.f65733z, displayMetrics);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, com.join.android.app.mgsim.wufun.R.styleable.SlidingTab);
        this.f65732y = typedArrayObtainStyledAttributes.getDimensionPixelSize(3, this.f65732y);
        this.f65733z = typedArrayObtainStyledAttributes.getDimensionPixelSize(2, this.f65733z);
        this.A = typedArrayObtainStyledAttributes.getColor(1, this.A);
        this.B = typedArrayObtainStyledAttributes.getColor(0, this.B);
        typedArrayObtainStyledAttributes.recycle();
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attrs, com.join.android.app.mgsim.wufun.R.styleable.PagerSlidingTabStrip);
        this.f65720m = typedArrayObtainStyledAttributes2.getColor(2, this.f65720m);
        this.f65721n = typedArrayObtainStyledAttributes2.getColor(9, this.f65721n);
        this.f65722o = typedArrayObtainStyledAttributes2.getColor(0, this.f65722o);
        this.f65726s = typedArrayObtainStyledAttributes2.getDimensionPixelSize(3, this.f65726s);
        this.f65728u = typedArrayObtainStyledAttributes2.getDimensionPixelSize(10, this.f65728u);
        this.f65729v = typedArrayObtainStyledAttributes2.getDimensionPixelSize(1, this.f65729v);
        this.f65730w = typedArrayObtainStyledAttributes2.getDimensionPixelSize(7, this.f65730w);
        this.F = typedArrayObtainStyledAttributes2.getResourceId(6, this.F);
        this.f65723p = typedArrayObtainStyledAttributes2.getBoolean(5, this.f65723p);
        this.f65725r = typedArrayObtainStyledAttributes2.getDimensionPixelSize(4, this.f65725r);
        this.f65724q = typedArrayObtainStyledAttributes2.getBoolean(8, this.f65724q);
        typedArrayObtainStyledAttributes2.recycle();
        Paint paint = new Paint();
        this.f65718k = paint;
        paint.setAntiAlias(true);
        this.f65718k.setStyle(Paint.Style.FILL);
        Paint paint2 = new Paint();
        this.f65719l = paint2;
        paint2.setAntiAlias(true);
        this.f65719l.setStrokeWidth(this.f65731x);
        this.f65709b = new LinearLayout.LayoutParams(-2, -1);
        this.f65710c = new LinearLayout.LayoutParams(0, -1, 1.0f);
        if (this.G == null) {
            this.G = getResources().getConfiguration().locale;
        }
    }
}

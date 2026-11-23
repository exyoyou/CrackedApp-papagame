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
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewpager.widget.ViewPager;
import java.util.Locale;

/* JADX INFO: loaded from: classes3.dex */
public class SlidingTabLayout3 extends HorizontalScrollView {
    private static final int[] I = {R.attr.textSize, R.attr.textColor};
    private int A;
    private Typeface B;
    private int C;
    private int D;
    private int E;
    private Locale F;
    private int G;
    private boolean H;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected LinearLayout.LayoutParams f65755b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected LinearLayout.LayoutParams f65756c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final d f65757d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ViewPager.OnPageChangeListener f65758e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected LinearLayout f65759f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected ViewPager f65760g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected int f65761h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected int f65762i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected float f65763j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Paint f65764k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Paint f65765l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    protected int f65766m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    protected int f65767n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected int f65768o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected boolean f65769p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    protected boolean f65770q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    protected int f65771r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected int f65772s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    protected float f65773t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    protected int f65774u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    protected int f65775v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    protected int f65776w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    protected int f65777x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f65778y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f65779z;

    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f65780b;

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
            dest.writeInt(this.f65780b);
        }

        public SavedState(Parcelable superState) {
            super(superState);
        }

        private SavedState(Parcel in2) {
            super(in2);
            this.f65780b = in2.readInt();
        }
    }

    class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        @SuppressLint({"NewApi"})
        public void onGlobalLayout() {
            SlidingTabLayout3.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            SlidingTabLayout3 slidingTabLayout3 = SlidingTabLayout3.this;
            slidingTabLayout3.f65762i = slidingTabLayout3.f65760g.getCurrentItem();
            SlidingTabLayout3 slidingTabLayout4 = SlidingTabLayout3.this;
            slidingTabLayout4.f(slidingTabLayout4.f65762i, 0);
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f65782b;

        b(final int val$position) {
            this.f65782b = val$position;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            SlidingTabLayout3.this.f65760g.setCurrentItem(this.f65782b);
        }
    }

    public interface c {
        int a(int position);
    }

    protected class d implements ViewPager.OnPageChangeListener {
        protected d() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int state) {
            if (state == 0) {
                SlidingTabLayout3 slidingTabLayout3 = SlidingTabLayout3.this;
                slidingTabLayout3.f(slidingTabLayout3.f65760g.getCurrentItem(), 0);
            }
            ViewPager.OnPageChangeListener onPageChangeListener = SlidingTabLayout3.this.f65758e;
            if (onPageChangeListener != null) {
                onPageChangeListener.onPageScrollStateChanged(state);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
            SlidingTabLayout3 slidingTabLayout3 = SlidingTabLayout3.this;
            slidingTabLayout3.f65762i = position;
            slidingTabLayout3.f65763j = positionOffset;
            if (slidingTabLayout3.f65759f.getChildAt(position) != null) {
                SlidingTabLayout3 slidingTabLayout4 = SlidingTabLayout3.this;
                slidingTabLayout4.f(position, (int) (slidingTabLayout4.f65759f.getChildAt(position).getWidth() * positionOffset));
            }
            SlidingTabLayout3.this.invalidate();
            ViewPager.OnPageChangeListener onPageChangeListener = SlidingTabLayout3.this.f65758e;
            if (onPageChangeListener != null) {
                onPageChangeListener.onPageScrolled(position, positionOffset, positionOffsetPixels);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int position) {
            SlidingTabLayout3.this.g();
            ViewPager.OnPageChangeListener onPageChangeListener = SlidingTabLayout3.this.f65758e;
            if (onPageChangeListener != null) {
                onPageChangeListener.onPageSelected(position);
            }
        }
    }

    public SlidingTabLayout3(Context context) {
        this(context, null);
    }

    protected void a(final int position, int resId) {
        ImageButton imageButton = new ImageButton(getContext());
        imageButton.setImageResource(resId);
        b(position, imageButton);
    }

    protected void b(final int position, View tab) {
        tab.setFocusable(true);
        tab.setOnClickListener(new b(position));
        int i10 = this.f65776w;
        tab.setPadding(i10, 0, i10, 0);
        this.f65759f.addView(tab, position, this.f65769p ? this.f65756c : this.f65755b);
    }

    protected void c(final int position, String title) {
        RelativeLayout relativeLayout = new RelativeLayout(getContext());
        TextView textView = new TextView(getContext());
        textView.setText(title);
        textView.setGravity(17);
        textView.setSingleLine();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        textView.setLayoutParams(layoutParams);
        layoutParams.addRule(13);
        ImageView imageView = new ImageView(getContext());
        imageView.setImageResource(com.join.android.app.mgsim.wufun.R.drawable.mygame_litle_round);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        int iG = (int) (com.join.android.app.common.utils.q.n(getContext()).g() * 7.0f);
        layoutParams2.height = iG;
        layoutParams2.width = iG;
        layoutParams2.setMargins(0, iG, iG, 0);
        layoutParams2.addRule(11, -1);
        imageView.setLayoutParams(layoutParams2);
        imageView.setVisibility(8);
        relativeLayout.addView(textView);
        relativeLayout.addView(imageView);
        b(position, relativeLayout);
    }

    public boolean d() {
        return this.f65770q;
    }

    public void e() {
        this.f65759f.removeAllViews();
        this.f65761h = this.f65760g.getAdapter().getCount();
        for (int i10 = 0; i10 < this.f65761h; i10++) {
            if (this.f65760g.getAdapter() instanceof c) {
                a(i10, ((c) this.f65760g.getAdapter()).a(i10));
            } else {
                c(i10, this.f65760g.getAdapter().getPageTitle(i10).toString());
            }
        }
        g();
        getViewTreeObserver().addOnGlobalLayoutListener(new a());
    }

    protected void f(int position, int offset) {
        if (this.f65761h == 0) {
            return;
        }
        int left = this.f65759f.getChildAt(position).getLeft() + offset;
        if (position > 0 || offset > 0) {
            left -= this.f65771r;
        }
        if (left != this.D) {
            this.D = left;
            scrollTo(left, 0);
        }
    }

    protected void g() {
        for (int i10 = 0; i10 < this.f65761h; i10++) {
            View childAt = this.f65759f.getChildAt(i10);
            childAt.setBackgroundResource(this.E);
            if (childAt instanceof TextView) {
                TextView textView = (TextView) childAt;
                textView.setTextSize(0, this.f65778y);
                textView.setTypeface(this.B, this.C);
                textView.setTextColor(this.f65779z);
                ViewPager viewPager = this.f65760g;
                if (viewPager != null && i10 == viewPager.getCurrentItem()) {
                    textView.setTextColor(this.A);
                }
                if (this.f65770q) {
                    textView.setAllCaps(true);
                }
            } else if (childAt instanceof RelativeLayout) {
                RelativeLayout relativeLayout = (RelativeLayout) childAt;
                int childCount = relativeLayout.getChildCount();
                for (int i11 = 0; i11 < childCount; i11++) {
                    View childAt2 = relativeLayout.getChildAt(i11);
                    if (childAt2 instanceof TextView) {
                        TextView textView2 = (TextView) childAt2;
                        textView2.setTextSize(0, this.f65778y);
                        textView2.setTypeface(this.B, this.C);
                        textView2.setTextColor(this.f65779z);
                        ViewPager viewPager2 = this.f65760g;
                        if (viewPager2 != null && i10 == viewPager2.getCurrentItem()) {
                            textView2.setTextColor(this.A);
                        }
                        if (this.f65770q) {
                            textView2.setAllCaps(true);
                        }
                    } else if (this.G == i10 && (childAt2 instanceof ImageView)) {
                        if (this.H) {
                            childAt2.setVisibility(0);
                        } else {
                            childAt2.setVisibility(8);
                        }
                    }
                }
            }
        }
    }

    public int getDividerColor() {
        return this.f65768o;
    }

    public int getDividerPadding() {
        return this.f65775v;
    }

    public int getIndicatorColor() {
        return this.f65766m;
    }

    public int getIndicatorHeight() {
        return this.f65772s;
    }

    public float getIndicatorRatioH() {
        return this.f65773t;
    }

    public int getScrollOffset() {
        return this.f65771r;
    }

    public boolean getShouldExpand() {
        return this.f65769p;
    }

    public int getTabBackground() {
        return this.E;
    }

    public int getTabPaddingLeftRight() {
        return this.f65776w;
    }

    public int getTextColor() {
        return this.f65779z;
    }

    public int getTextSize() {
        return this.f65778y;
    }

    public int getUnderlineColor() {
        return this.f65767n;
    }

    public int getUnderlineHeight() {
        return this.f65774u;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int i10;
        super.onDraw(canvas);
        if (isInEditMode() || this.f65761h == 0) {
            return;
        }
        int height = getHeight();
        this.f65764k.setColor(this.f65766m);
        View childAt = this.f65759f.getChildAt(this.f65762i);
        float left = childAt.getLeft() * 1.0f;
        float right = childAt.getRight();
        if (this.f65763j > 0.0f && (i10 = this.f65762i) < this.f65761h - 1) {
            View childAt2 = this.f65759f.getChildAt(i10 + 1);
            float left2 = childAt2.getLeft();
            float right2 = childAt2.getRight();
            float f10 = this.f65763j;
            left = (left2 * f10) + ((1.0f - f10) * left);
            right = (right2 * f10) + ((1.0f - f10) * right);
        }
        float f11 = (int) (((1.0f - this.f65773t) * (right - left)) / 2.0f);
        float f12 = height;
        canvas.drawRect(left + f11, height - this.f65772s, right - f11, f12, this.f65764k);
        this.f65764k.setColor(this.f65767n);
        canvas.drawRect(0.0f, height - this.f65774u, this.f65759f.getWidth(), f12, this.f65764k);
        this.f65765l.setColor(this.f65768o);
        for (int i11 = 0; i11 < this.f65761h - 1; i11++) {
            View childAt3 = this.f65759f.getChildAt(i11);
            canvas.drawLine(childAt3.getRight(), this.f65775v, childAt3.getRight(), height - this.f65775v, this.f65765l);
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public void onRestoreInstanceState(Parcelable state) {
        SavedState savedState = (SavedState) state;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f65762i = savedState.f65780b;
        requestLayout();
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f65780b = this.f65762i;
        return savedState;
    }

    public void setAllCaps(boolean textAllCaps) {
        this.f65770q = textAllCaps;
    }

    public void setDividerColor(int dividerColor) {
        this.f65768o = dividerColor;
        invalidate();
    }

    public void setDividerColorResource(int resId) {
        this.f65768o = getResources().getColor(resId);
        invalidate();
    }

    public void setDividerPadding(int dividerPaddingPx) {
        this.f65775v = dividerPaddingPx;
        invalidate();
    }

    public void setIndicatorColor(int indicatorColor) {
        this.f65766m = indicatorColor;
        invalidate();
    }

    public void setIndicatorColorResource(int resId) {
        this.f65766m = getResources().getColor(resId);
        invalidate();
    }

    public void setIndicatorHeight(int indicatorLineHeightPx) {
        this.f65772s = indicatorLineHeightPx;
        invalidate();
    }

    public void setIndicatorRatioH(float indicatorRatioH) {
        this.f65773t = indicatorRatioH;
        invalidate();
    }

    public void setOnPageChangeListener(ViewPager.OnPageChangeListener listener) {
        this.f65758e = listener;
    }

    public void setRoundShow(int position, boolean isVisible) {
        this.G = position;
        this.H = isVisible;
        g();
    }

    public void setScrollOffset(int scrollOffsetPx) {
        this.f65771r = scrollOffsetPx;
        invalidate();
    }

    public void setShouldExpand(boolean shouldExpand) {
        this.f65769p = shouldExpand;
        requestLayout();
    }

    public void setTabBackground(int resId) {
        this.E = resId;
    }

    public void setTabPaddingLeftRight(int paddingPx) {
        this.f65776w = paddingPx;
        g();
    }

    public void setTextColor(int textColor) {
        this.f65779z = textColor;
        g();
    }

    public void setTextColorResource(int resId) {
        this.f65779z = getResources().getColor(resId);
        g();
    }

    public void setTextSize(int textSizePx) {
        this.f65778y = textSizePx;
        g();
    }

    public void setTypeface(Typeface typeface, int style) {
        this.B = typeface;
        this.C = style;
        g();
    }

    public void setUnderlineColor(int underlineColor) {
        this.f65767n = underlineColor;
        invalidate();
    }

    public void setUnderlineColorResource(int resId) {
        this.f65767n = getResources().getColor(resId);
        invalidate();
    }

    public void setUnderlineHeight(int underlineHeightPx) {
        this.f65774u = underlineHeightPx;
        invalidate();
    }

    public void setViewPager(ViewPager pager) {
        this.f65760g = pager;
        if (pager.getAdapter() == null) {
            throw new IllegalStateException("ViewPager does not have adapter instance.");
        }
        pager.setOnPageChangeListener(this.f65757d);
        e();
    }

    public SlidingTabLayout3(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public SlidingTabLayout3(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.f65757d = new d();
        this.f65762i = 0;
        this.f65763j = 0.0f;
        this.f65766m = -756480;
        this.f65767n = -1315861;
        this.f65768o = 16777215;
        this.f65769p = false;
        this.f65770q = true;
        this.f65771r = 52;
        this.f65772s = 3;
        this.f65773t = 0.6f;
        this.f65774u = 1;
        this.f65775v = 12;
        this.f65776w = 24;
        this.f65777x = 1;
        this.f65778y = 14;
        this.f65779z = -11711155;
        this.A = -756480;
        this.B = null;
        this.C = 0;
        this.D = 0;
        this.E = com.join.android.app.mgsim.wufun.R.drawable.background_tab;
        this.G = 0;
        this.H = false;
        setFillViewport(true);
        setWillNotDraw(false);
        LinearLayout linearLayout = new LinearLayout(context);
        this.f65759f = linearLayout;
        linearLayout.setOrientation(0);
        this.f65759f.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        addView(this.f65759f);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.f65771r = (int) TypedValue.applyDimension(1, this.f65771r, displayMetrics);
        this.f65772s = (int) TypedValue.applyDimension(1, this.f65772s, displayMetrics);
        this.f65774u = (int) TypedValue.applyDimension(0, this.f65774u, displayMetrics);
        this.f65775v = (int) TypedValue.applyDimension(1, this.f65775v, displayMetrics);
        this.f65776w = (int) TypedValue.applyDimension(1, this.f65776w, displayMetrics);
        this.f65777x = (int) TypedValue.applyDimension(1, this.f65777x, displayMetrics);
        this.f65778y = (int) TypedValue.applyDimension(1, this.f65778y, displayMetrics);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, com.join.android.app.mgsim.wufun.R.styleable.SlidingTab);
        this.f65778y = typedArrayObtainStyledAttributes.getDimensionPixelSize(3, this.f65778y);
        this.f65779z = typedArrayObtainStyledAttributes.getColor(1, this.f65779z);
        typedArrayObtainStyledAttributes.recycle();
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attrs, com.join.android.app.mgsim.wufun.R.styleable.PagerSlidingTabStrip);
        this.f65766m = typedArrayObtainStyledAttributes2.getColor(2, this.f65766m);
        this.f65767n = typedArrayObtainStyledAttributes2.getColor(9, this.f65767n);
        this.f65768o = typedArrayObtainStyledAttributes2.getColor(0, this.f65768o);
        this.f65772s = typedArrayObtainStyledAttributes2.getDimensionPixelSize(3, this.f65772s);
        this.f65774u = typedArrayObtainStyledAttributes2.getDimensionPixelSize(10, this.f65774u);
        this.f65775v = typedArrayObtainStyledAttributes2.getDimensionPixelSize(1, this.f65775v);
        this.f65776w = typedArrayObtainStyledAttributes2.getDimensionPixelSize(7, this.f65776w);
        this.E = typedArrayObtainStyledAttributes2.getResourceId(6, this.E);
        this.f65769p = typedArrayObtainStyledAttributes2.getBoolean(5, this.f65769p);
        this.f65771r = typedArrayObtainStyledAttributes2.getDimensionPixelSize(4, this.f65771r);
        this.f65770q = typedArrayObtainStyledAttributes2.getBoolean(8, this.f65770q);
        typedArrayObtainStyledAttributes2.recycle();
        Paint paint = new Paint();
        this.f65764k = paint;
        paint.setAntiAlias(true);
        this.f65764k.setStyle(Paint.Style.FILL);
        Paint paint2 = new Paint();
        this.f65765l = paint2;
        paint2.setAntiAlias(true);
        this.f65765l.setStrokeWidth(this.f65777x);
        this.f65755b = new LinearLayout.LayoutParams(-2, -1);
        this.f65756c = new LinearLayout.LayoutParams(0, -1, 1.0f);
        if (this.F == null) {
            this.F = getResources().getConfiguration().locale;
        }
    }
}

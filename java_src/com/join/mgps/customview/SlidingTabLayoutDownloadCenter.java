package com.join.mgps.customview;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
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
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewpager.widget.ViewPager;
import java.util.Locale;

/* JADX INFO: loaded from: classes3.dex */
public class SlidingTabLayoutDownloadCenter extends HorizontalScrollView {
    private static final int[] L = {R.attr.textSize, R.attr.textColor};
    private int A;
    private Typeface B;
    private int C;
    private int D;
    private int E;
    private Locale F;
    private int G;
    private boolean H;
    int I;
    int J;
    int K;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected LinearLayout.LayoutParams f65791b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected LinearLayout.LayoutParams f65792c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final d f65793d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ViewPager.OnPageChangeListener f65794e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected LinearLayout f65795f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected ViewPager f65796g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected int f65797h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected int f65798i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected float f65799j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Paint f65800k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Paint f65801l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    protected int f65802m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    protected int f65803n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected int f65804o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected boolean f65805p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    protected boolean f65806q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    protected int f65807r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected int f65808s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    protected float f65809t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    protected int f65810u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    protected int f65811v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    protected int f65812w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    protected int f65813x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f65814y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f65815z;

    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f65816b;

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
            dest.writeInt(this.f65816b);
        }

        public SavedState(Parcelable superState) {
            super(superState);
        }

        private SavedState(Parcel in2) {
            super(in2);
            this.f65816b = in2.readInt();
        }
    }

    class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        @SuppressLint({"NewApi"})
        public void onGlobalLayout() {
            SlidingTabLayoutDownloadCenter.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            SlidingTabLayoutDownloadCenter slidingTabLayoutDownloadCenter = SlidingTabLayoutDownloadCenter.this;
            slidingTabLayoutDownloadCenter.f65798i = slidingTabLayoutDownloadCenter.f65796g.getCurrentItem();
            SlidingTabLayoutDownloadCenter slidingTabLayoutDownloadCenter2 = SlidingTabLayoutDownloadCenter.this;
            slidingTabLayoutDownloadCenter2.f(slidingTabLayoutDownloadCenter2.f65798i, 0);
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f65818b;

        b(final int val$position) {
            this.f65818b = val$position;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            SlidingTabLayoutDownloadCenter.this.f65796g.setCurrentItem(this.f65818b);
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
                SlidingTabLayoutDownloadCenter slidingTabLayoutDownloadCenter = SlidingTabLayoutDownloadCenter.this;
                slidingTabLayoutDownloadCenter.f(slidingTabLayoutDownloadCenter.f65796g.getCurrentItem(), 0);
            }
            ViewPager.OnPageChangeListener onPageChangeListener = SlidingTabLayoutDownloadCenter.this.f65794e;
            if (onPageChangeListener != null) {
                onPageChangeListener.onPageScrollStateChanged(state);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
            SlidingTabLayoutDownloadCenter slidingTabLayoutDownloadCenter = SlidingTabLayoutDownloadCenter.this;
            slidingTabLayoutDownloadCenter.f65798i = position;
            slidingTabLayoutDownloadCenter.f65799j = positionOffset;
            if (slidingTabLayoutDownloadCenter.f65795f.getChildAt(position) != null) {
                SlidingTabLayoutDownloadCenter slidingTabLayoutDownloadCenter2 = SlidingTabLayoutDownloadCenter.this;
                slidingTabLayoutDownloadCenter2.f(position, (int) (slidingTabLayoutDownloadCenter2.f65795f.getChildAt(position).getWidth() * positionOffset));
            }
            SlidingTabLayoutDownloadCenter.this.invalidate();
            ViewPager.OnPageChangeListener onPageChangeListener = SlidingTabLayoutDownloadCenter.this.f65794e;
            if (onPageChangeListener != null) {
                onPageChangeListener.onPageScrolled(position, positionOffset, positionOffsetPixels);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int position) {
            SlidingTabLayoutDownloadCenter.this.h();
            ViewPager.OnPageChangeListener onPageChangeListener = SlidingTabLayoutDownloadCenter.this.f65794e;
            if (onPageChangeListener != null) {
                onPageChangeListener.onPageSelected(position);
            }
        }
    }

    public SlidingTabLayoutDownloadCenter(Context context) {
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
        int i10 = this.f65812w;
        tab.setPadding(i10, 0, i10, 0);
        this.f65795f.addView(tab, position, this.f65805p ? this.f65792c : this.f65791b);
    }

    protected void c(final int position, String title) {
        RelativeLayout relativeLayout = new RelativeLayout(getContext());
        TextView textView = new TextView(getContext());
        textView.setId(R.id.text1);
        textView.setText(title);
        textView.setGravity(17);
        textView.setSingleLine();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        textView.setLayoutParams(layoutParams);
        textView.setSingleLine(true);
        layoutParams.addRule(13);
        TextView textView2 = new TextView(getContext());
        textView2.setId(R.id.text2);
        textView2.setTextColor(Color.parseColor("#ffffff"));
        textView2.setBackgroundResource(com.join.android.app.mgsim.wufun.R.drawable.mygame_big_round);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.setMargins((int) (com.join.android.app.common.utils.q.n(getContext()).g() * 7.0f), 0, 0, 0);
        layoutParams2.addRule(15, -1);
        layoutParams2.addRule(1, textView.getId());
        textView2.setLayoutParams(layoutParams2);
        textView2.setVisibility(8);
        textView2.setSingleLine(true);
        textView2.setTextSize(8.0f);
        textView2.setGravity(17);
        relativeLayout.addView(textView);
        relativeLayout.addView(textView2);
        b(position, relativeLayout);
    }

    public boolean d() {
        return this.f65806q;
    }

    public void e() {
        this.f65795f.removeAllViews();
        this.f65797h = this.f65796g.getAdapter().getCount();
        for (int i10 = 0; i10 < this.f65797h; i10++) {
            if (this.f65796g.getAdapter() instanceof c) {
                a(i10, ((c) this.f65796g.getAdapter()).a(i10));
            } else {
                c(i10, this.f65796g.getAdapter().getPageTitle(i10).toString());
            }
        }
        h();
        getViewTreeObserver().addOnGlobalLayoutListener(new a());
    }

    protected void f(int position, int offset) {
        if (this.f65797h == 0) {
            return;
        }
        int left = this.f65795f.getChildAt(position).getLeft() + offset;
        if (position > 0 || offset > 0) {
            left -= this.f65807r;
        }
        if (left != this.D) {
            this.D = left;
            scrollTo(left, 0);
        }
    }

    void g(TextView biground, int number) {
        biground.setVisibility(0);
        if (number < 100) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) biground.getLayoutParams();
            layoutParams.width = getResources().getDimensionPixelOffset(com.join.android.app.mgsim.wufun.R.dimen.round_large_size);
            layoutParams.height = getResources().getDimensionPixelOffset(com.join.android.app.mgsim.wufun.R.dimen.round_large_size);
            biground.setLayoutParams(layoutParams);
            biground.setCompoundDrawables(null, null, null, null);
            biground.setBackgroundResource(com.join.android.app.mgsim.wufun.R.drawable.mygame_big_round);
            biground.setPadding(1, 0, 0, 1);
        } else {
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) biground.getLayoutParams();
            layoutParams2.width = getResources().getDimensionPixelOffset(com.join.android.app.mgsim.wufun.R.dimen.dp70);
            layoutParams2.height = getResources().getDimensionPixelOffset(com.join.android.app.mgsim.wufun.R.dimen.round_large_size);
            layoutParams2.setMargins(0, (int) TypedValue.applyDimension(1, 7.0f, getResources().getDisplayMetrics()), 4, 0);
            biground.setGravity(17);
            biground.setLayoutParams(layoutParams2);
            biground.setCompoundDrawables(null, null, null, null);
            biground.setBackgroundResource(com.join.android.app.mgsim.wufun.R.drawable.message_round);
            biground.setPadding(1, 0, 2, 1);
        }
        biground.setText(number + "");
    }

    public int getDividerColor() {
        return this.f65804o;
    }

    public int getDividerPadding() {
        return this.f65811v;
    }

    public int getIndicatorColor() {
        return this.f65802m;
    }

    public int getIndicatorHeight() {
        return this.f65808s;
    }

    public float getIndicatorRatioH() {
        return this.f65809t;
    }

    public int getScrollOffset() {
        return this.f65807r;
    }

    public boolean getShouldExpand() {
        return this.f65805p;
    }

    public int getTabBackground() {
        return this.E;
    }

    public int getTabPaddingLeftRight() {
        return this.f65812w;
    }

    public int getTextColor() {
        return this.f65815z;
    }

    public int getTextSize() {
        return this.f65814y;
    }

    public int getUnderlineColor() {
        return this.f65803n;
    }

    public int getUnderlineHeight() {
        return this.f65810u;
    }

    protected void h() {
        for (int i10 = 0; i10 < this.f65797h; i10++) {
            View childAt = this.f65795f.getChildAt(i10);
            childAt.setBackgroundResource(this.E);
            if (childAt instanceof TextView) {
                TextView textView = (TextView) childAt;
                textView.setTextSize(0, this.f65814y);
                textView.setTypeface(this.B, this.C);
                textView.setTextColor(this.f65815z);
                ViewPager viewPager = this.f65796g;
                if (viewPager != null && i10 == viewPager.getCurrentItem()) {
                    textView.setTextColor(this.A);
                }
                if (this.f65806q) {
                    textView.setAllCaps(true);
                }
            } else if (childAt instanceof RelativeLayout) {
                TextView textView2 = (TextView) childAt.findViewById(R.id.text1);
                TextView textView3 = (TextView) childAt.findViewById(R.id.text2);
                if (textView2 != null) {
                    textView2.setTextSize(0, this.f65814y);
                    textView2.setTypeface(this.B, this.C);
                    textView2.setTextColor(this.f65815z);
                    ViewPager viewPager2 = this.f65796g;
                    if (viewPager2 != null && i10 == viewPager2.getCurrentItem()) {
                        textView2.setTextColor(this.A);
                    }
                    ViewPager viewPager3 = this.f65796g;
                    if (viewPager3 != null && viewPager3.getAdapter() != null && (this.f65796g.getAdapter() instanceof e0)) {
                        textView2.setText(this.f65796g.getAdapter().getPageTitle(i10));
                    }
                    if (this.f65806q) {
                        textView2.setAllCaps(true);
                    }
                }
                if (textView3 != null && (this.f65796g.getAdapter() instanceof e0) && i10 == 1) {
                    int i11 = this.J;
                    if (i11 > 0) {
                        g(textView3, i11);
                    } else {
                        textView3.setVisibility(8);
                    }
                }
            }
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int i10;
        super.onDraw(canvas);
        if (isInEditMode() || this.f65797h == 0) {
            return;
        }
        int height = getHeight();
        this.f65800k.setColor(this.f65802m);
        View childAt = this.f65795f.getChildAt(this.f65798i);
        float left = childAt.getLeft() * 1.0f;
        float right = childAt.getRight();
        if (this.f65799j > 0.0f && (i10 = this.f65798i) < this.f65797h - 1) {
            View childAt2 = this.f65795f.getChildAt(i10 + 1);
            float left2 = childAt2.getLeft();
            float right2 = childAt2.getRight();
            float f10 = this.f65799j;
            left = (left2 * f10) + ((1.0f - f10) * left);
            right = (right2 * f10) + ((1.0f - f10) * right);
        }
        float f11 = (int) (((1.0f - this.f65809t) * (right - left)) / 2.0f);
        float f12 = height;
        canvas.drawRect(left + f11, height - this.f65808s, right - f11, f12, this.f65800k);
        this.f65800k.setColor(this.f65803n);
        canvas.drawRect(0.0f, height - this.f65810u, this.f65795f.getWidth(), f12, this.f65800k);
        this.f65801l.setColor(this.f65804o);
        for (int i11 = 0; i11 < this.f65797h - 1; i11++) {
            View childAt3 = this.f65795f.getChildAt(i11);
            canvas.drawLine(childAt3.getRight(), this.f65811v, childAt3.getRight(), height - this.f65811v, this.f65801l);
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public void onRestoreInstanceState(Parcelable state) {
        SavedState savedState = (SavedState) state;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f65798i = savedState.f65816b;
        requestLayout();
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f65816b = this.f65798i;
        return savedState;
    }

    public void setAllCaps(boolean textAllCaps) {
        this.f65806q = textAllCaps;
    }

    public void setBadgeSize(int a10, int b10, int c10) {
        this.I = a10;
        this.J = b10;
        this.K = c10;
        h();
    }

    public void setDividerColor(int dividerColor) {
        this.f65804o = dividerColor;
        invalidate();
    }

    public void setDividerColorResource(int resId) {
        this.f65804o = getResources().getColor(resId);
        invalidate();
    }

    public void setDividerPadding(int dividerPaddingPx) {
        this.f65811v = dividerPaddingPx;
        invalidate();
    }

    public void setIndicatorColor(int indicatorColor) {
        this.f65802m = indicatorColor;
        invalidate();
    }

    public void setIndicatorColorResource(int resId) {
        this.f65802m = getResources().getColor(resId);
        invalidate();
    }

    public void setIndicatorHeight(int indicatorLineHeightPx) {
        this.f65808s = indicatorLineHeightPx;
        invalidate();
    }

    public void setIndicatorRatioH(float indicatorRatioH) {
        this.f65809t = indicatorRatioH;
        invalidate();
    }

    public void setOnPageChangeListener(ViewPager.OnPageChangeListener listener) {
        this.f65794e = listener;
    }

    public void setRoundShow(int position, boolean isVisible) {
        this.G = position;
        this.H = isVisible;
        h();
    }

    public void setScrollOffset(int scrollOffsetPx) {
        this.f65807r = scrollOffsetPx;
        invalidate();
    }

    public void setShouldExpand(boolean shouldExpand) {
        this.f65805p = shouldExpand;
        requestLayout();
    }

    public void setTabBackground(int resId) {
        this.E = resId;
    }

    public void setTabPaddingLeftRight(int paddingPx) {
        this.f65812w = paddingPx;
        h();
    }

    public void setTextColor(int textColor) {
        this.f65815z = textColor;
        h();
    }

    public void setTextColorResource(int resId) {
        this.f65815z = getResources().getColor(resId);
        h();
    }

    public void setTextSize(int textSizePx) {
        this.f65814y = textSizePx;
        h();
    }

    public void setTypeface(Typeface typeface, int style) {
        this.B = typeface;
        this.C = style;
        h();
    }

    public void setUnderlineColor(int underlineColor) {
        this.f65803n = underlineColor;
        invalidate();
    }

    public void setUnderlineColorResource(int resId) {
        this.f65803n = getResources().getColor(resId);
        invalidate();
    }

    public void setUnderlineHeight(int underlineHeightPx) {
        this.f65810u = underlineHeightPx;
        invalidate();
    }

    public void setViewPager(ViewPager pager) {
        this.f65796g = pager;
        if (pager.getAdapter() == null) {
            throw new IllegalStateException("ViewPager does not have adapter instance.");
        }
        pager.setOnPageChangeListener(this.f65793d);
        e();
    }

    public SlidingTabLayoutDownloadCenter(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public SlidingTabLayoutDownloadCenter(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.f65793d = new d();
        this.f65798i = 0;
        this.f65799j = 0.0f;
        this.f65802m = -756480;
        this.f65803n = -1315861;
        this.f65804o = 16777215;
        this.f65805p = false;
        this.f65806q = true;
        this.f65807r = 52;
        this.f65808s = 3;
        this.f65809t = 0.6f;
        this.f65810u = 1;
        this.f65811v = 12;
        this.f65812w = 24;
        this.f65813x = 1;
        this.f65814y = 14;
        this.f65815z = -11711155;
        this.A = -756480;
        this.B = null;
        this.C = 0;
        this.D = 0;
        this.E = com.join.android.app.mgsim.wufun.R.drawable.background_tab;
        this.G = 0;
        this.H = false;
        this.I = 0;
        this.J = 0;
        this.K = 0;
        setFillViewport(true);
        setWillNotDraw(false);
        LinearLayout linearLayout = new LinearLayout(context);
        this.f65795f = linearLayout;
        linearLayout.setOrientation(0);
        this.f65795f.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        addView(this.f65795f);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.f65807r = (int) TypedValue.applyDimension(1, this.f65807r, displayMetrics);
        this.f65808s = (int) TypedValue.applyDimension(1, this.f65808s, displayMetrics);
        this.f65810u = (int) TypedValue.applyDimension(0, this.f65810u, displayMetrics);
        this.f65811v = (int) TypedValue.applyDimension(1, this.f65811v, displayMetrics);
        this.f65812w = (int) TypedValue.applyDimension(1, this.f65812w, displayMetrics);
        this.f65813x = (int) TypedValue.applyDimension(1, this.f65813x, displayMetrics);
        this.f65814y = (int) TypedValue.applyDimension(1, this.f65814y, displayMetrics);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, com.join.android.app.mgsim.wufun.R.styleable.SlidingTab);
        this.f65814y = typedArrayObtainStyledAttributes.getDimensionPixelSize(3, this.f65814y);
        this.f65815z = typedArrayObtainStyledAttributes.getColor(1, this.f65815z);
        typedArrayObtainStyledAttributes.recycle();
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attrs, com.join.android.app.mgsim.wufun.R.styleable.PagerSlidingTabStrip);
        this.f65802m = typedArrayObtainStyledAttributes2.getColor(2, this.f65802m);
        this.f65803n = typedArrayObtainStyledAttributes2.getColor(9, this.f65803n);
        this.f65804o = typedArrayObtainStyledAttributes2.getColor(0, this.f65804o);
        this.f65808s = typedArrayObtainStyledAttributes2.getDimensionPixelSize(3, this.f65808s);
        this.f65810u = typedArrayObtainStyledAttributes2.getDimensionPixelSize(10, this.f65810u);
        this.f65811v = typedArrayObtainStyledAttributes2.getDimensionPixelSize(1, this.f65811v);
        this.f65812w = typedArrayObtainStyledAttributes2.getDimensionPixelSize(7, this.f65812w);
        this.E = typedArrayObtainStyledAttributes2.getResourceId(6, this.E);
        this.f65805p = typedArrayObtainStyledAttributes2.getBoolean(5, this.f65805p);
        this.f65807r = typedArrayObtainStyledAttributes2.getDimensionPixelSize(4, this.f65807r);
        this.f65806q = typedArrayObtainStyledAttributes2.getBoolean(8, this.f65806q);
        typedArrayObtainStyledAttributes2.recycle();
        Paint paint = new Paint();
        this.f65800k = paint;
        paint.setAntiAlias(true);
        this.f65800k.setStyle(Paint.Style.FILL);
        Paint paint2 = new Paint();
        this.f65801l = paint2;
        paint2.setAntiAlias(true);
        this.f65801l.setStrokeWidth(this.f65813x);
        this.f65791b = new LinearLayout.LayoutParams(-2, -1);
        this.f65792c = new LinearLayout.LayoutParams(0, -1, 1.0f);
        if (this.F == null) {
            this.F = getResources().getConfiguration().locale;
        }
    }
}

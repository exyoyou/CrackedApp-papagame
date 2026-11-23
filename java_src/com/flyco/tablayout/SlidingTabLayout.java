package com.flyco.tablayout;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.flyco.tablayout.widget.MsgView;
import com.windmill.sdk.WMConstants;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: loaded from: classes9.dex */
public class SlidingTabLayout extends HorizontalScrollView implements ViewPager.OnPageChangeListener {
    private static final int V = 0;
    private static final int W = 1;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    private static final int f29228b1 = 0;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    private static final int f29229f1 = 1;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    private static final int f29230i1 = 2;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private static final int f29231p0 = 2;
    private float A;
    private int B;
    private boolean C;
    private int D;
    private float E;
    private int F;
    private int G;
    private float H;
    private float I;
    private float J;
    private int K;
    private int L;
    private int M;
    private boolean N;
    private int O;
    private int P;
    private boolean Q;
    private float R;
    private Paint S;
    private SparseArray<Boolean> T;
    private s4.b U;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f29232b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ViewPager f29233c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ArrayList<String> f29234d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private LinearLayout f29235e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f29236f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f29237g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f29238h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Rect f29239i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Rect f29240j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private GradientDrawable f29241k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Paint f29242l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Paint f29243m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private Paint f29244n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Path f29245o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f29246p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private float f29247q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f29248r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private float f29249s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f29250t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private float f29251u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private float f29252v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private float f29253w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private float f29254x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private float f29255y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private float f29256z;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int iIndexOfChild = SlidingTabLayout.this.f29235e.indexOfChild(view);
            if (iIndexOfChild != -1) {
                if (SlidingTabLayout.this.f29233c.getCurrentItem() == iIndexOfChild) {
                    if (SlidingTabLayout.this.U != null) {
                        SlidingTabLayout.this.U.onTabReselect(iIndexOfChild);
                    }
                } else {
                    if (SlidingTabLayout.this.Q) {
                        SlidingTabLayout.this.f29233c.setCurrentItem(iIndexOfChild, false);
                    } else {
                        SlidingTabLayout.this.f29233c.setCurrentItem(iIndexOfChild);
                    }
                    if (SlidingTabLayout.this.U != null) {
                        SlidingTabLayout.this.U.onTabSelect(iIndexOfChild);
                    }
                }
            }
        }
    }

    class b extends FragmentPagerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private ArrayList<Fragment> f29258a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String[] f29259b;

        public b(FragmentManager fragmentManager, ArrayList<Fragment> arrayList, String[] strArr) {
            super(fragmentManager);
            new ArrayList();
            this.f29258a = arrayList;
            this.f29259b = strArr;
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter, androidx.viewpager.widget.PagerAdapter
        public void destroyItem(ViewGroup viewGroup, int i10, Object obj) {
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return this.f29258a.size();
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter
        public Fragment getItem(int i10) {
            return this.f29258a.get(i10);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getItemPosition(Object obj) {
            return -2;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public CharSequence getPageTitle(int i10) {
            return this.f29259b[i10];
        }
    }

    public SlidingTabLayout(Context context) {
        this(context, null, 0);
    }

    private void f(int i10, String str, View view) {
        TextView textView = (TextView) view.findViewById(R.id.tv_tab_title);
        if (textView != null && str != null) {
            textView.setText(str);
        }
        view.setOnClickListener(new a());
        LinearLayout.LayoutParams layoutParams = this.f29248r ? new LinearLayout.LayoutParams(0, -1, 1.0f) : new LinearLayout.LayoutParams(-2, -1);
        if (this.f29249s > 0.0f) {
            layoutParams = new LinearLayout.LayoutParams((int) this.f29249s, -1);
        }
        this.f29235e.addView(view, i10, layoutParams);
    }

    private void g() {
        View childAt = this.f29235e.getChildAt(this.f29236f);
        float left = childAt.getLeft();
        float right = childAt.getRight();
        if (this.f29246p == 0 && this.C) {
            TextView textView = (TextView) childAt.findViewById(R.id.tv_tab_title);
            this.S.setTextSize(this.J);
            this.R = ((right - left) - this.S.measureText(textView.getText().toString())) / 2.0f;
        }
        int i10 = this.f29236f;
        if (i10 < this.f29238h - 1) {
            View childAt2 = this.f29235e.getChildAt(i10 + 1);
            float left2 = childAt2.getLeft();
            float right2 = childAt2.getRight();
            float f10 = this.f29237g;
            left += (left2 - left) * f10;
            right += f10 * (right2 - right);
            if (this.f29246p == 0 && this.C) {
                TextView textView2 = (TextView) childAt2.findViewById(R.id.tv_tab_title);
                this.S.setTextSize(this.J);
                float fMeasureText = ((right2 - left2) - this.S.measureText(textView2.getText().toString())) / 2.0f;
                float f11 = this.R;
                this.R = f11 + (this.f29237g * (fMeasureText - f11));
            }
        }
        Rect rect = this.f29239i;
        int i11 = (int) left;
        rect.left = i11;
        int i12 = (int) right;
        rect.right = i12;
        if (this.f29246p == 0 && this.C) {
            float f12 = this.R;
            rect.left = (int) ((left + f12) - 1.0f);
            rect.right = (int) ((right - f12) - 1.0f);
        }
        Rect rect2 = this.f29240j;
        rect2.left = i11;
        rect2.right = i12;
        if (this.f29252v < 0.0f) {
            return;
        }
        float left3 = childAt.getLeft() + ((childAt.getWidth() - this.f29252v) / 2.0f);
        int i13 = this.f29236f;
        if (i13 < this.f29238h - 1) {
            left3 += this.f29237g * ((childAt.getWidth() / 2) + (this.f29235e.getChildAt(i13 + 1).getWidth() / 2));
        }
        Rect rect3 = this.f29239i;
        int i14 = (int) left3;
        rect3.left = i14;
        rect3.right = (int) (i14 + this.f29252v);
    }

    private void n(Context context, AttributeSet attributeSet) {
        float f10;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SlidingTabLayout);
        int i10 = typedArrayObtainStyledAttributes.getInt(R.styleable.SlidingTabLayout_tl_indicator_style, 0);
        this.f29246p = i10;
        this.f29250t = typedArrayObtainStyledAttributes.getColor(R.styleable.SlidingTabLayout_tl_indicator_color, Color.parseColor(i10 == 2 ? "#4B6A87" : "#ffffff"));
        int i11 = R.styleable.SlidingTabLayout_tl_indicator_height;
        int i12 = this.f29246p;
        if (i12 == 1) {
            f10 = 4.0f;
        } else {
            f10 = i12 == 2 ? -1 : 2;
        }
        this.f29251u = typedArrayObtainStyledAttributes.getDimension(i11, h(f10));
        this.f29252v = typedArrayObtainStyledAttributes.getDimension(R.styleable.SlidingTabLayout_tl_indicator_width, h(this.f29246p == 1 ? 10.0f : -1.0f));
        this.f29253w = typedArrayObtainStyledAttributes.getDimension(R.styleable.SlidingTabLayout_tl_indicator_corner_radius, h(this.f29246p == 2 ? -1.0f : 0.0f));
        this.f29254x = typedArrayObtainStyledAttributes.getDimension(R.styleable.SlidingTabLayout_tl_indicator_margin_left, h(0.0f));
        this.f29255y = typedArrayObtainStyledAttributes.getDimension(R.styleable.SlidingTabLayout_tl_indicator_margin_top, h(this.f29246p == 2 ? 7.0f : 0.0f));
        this.f29256z = typedArrayObtainStyledAttributes.getDimension(R.styleable.SlidingTabLayout_tl_indicator_margin_right, h(0.0f));
        this.A = typedArrayObtainStyledAttributes.getDimension(R.styleable.SlidingTabLayout_tl_indicator_margin_bottom, h(this.f29246p != 2 ? 0.0f : 7.0f));
        this.B = typedArrayObtainStyledAttributes.getInt(R.styleable.SlidingTabLayout_tl_indicator_gravity, 80);
        this.C = typedArrayObtainStyledAttributes.getBoolean(R.styleable.SlidingTabLayout_tl_indicator_width_equal_title, false);
        this.D = typedArrayObtainStyledAttributes.getColor(R.styleable.SlidingTabLayout_tl_underline_color, Color.parseColor("#ffffff"));
        this.E = typedArrayObtainStyledAttributes.getDimension(R.styleable.SlidingTabLayout_tl_underline_height, h(0.0f));
        this.F = typedArrayObtainStyledAttributes.getInt(R.styleable.SlidingTabLayout_tl_underline_gravity, 80);
        this.G = typedArrayObtainStyledAttributes.getColor(R.styleable.SlidingTabLayout_tl_divider_color, Color.parseColor("#ffffff"));
        this.H = typedArrayObtainStyledAttributes.getDimension(R.styleable.SlidingTabLayout_tl_divider_width, h(0.0f));
        this.I = typedArrayObtainStyledAttributes.getDimension(R.styleable.SlidingTabLayout_tl_divider_padding, h(12.0f));
        this.J = typedArrayObtainStyledAttributes.getDimension(R.styleable.SlidingTabLayout_tl_textsize, r(14.0f));
        this.K = typedArrayObtainStyledAttributes.getColor(R.styleable.SlidingTabLayout_tl_textSelectColor, Color.parseColor("#ffffff"));
        this.L = typedArrayObtainStyledAttributes.getColor(R.styleable.SlidingTabLayout_tl_textUnselectColor, Color.parseColor("#AAffffff"));
        this.M = typedArrayObtainStyledAttributes.getInt(R.styleable.SlidingTabLayout_tl_textBold, 0);
        this.N = typedArrayObtainStyledAttributes.getBoolean(R.styleable.SlidingTabLayout_tl_textAllCaps, false);
        this.f29248r = typedArrayObtainStyledAttributes.getBoolean(R.styleable.SlidingTabLayout_tl_tab_space_equal, false);
        float dimension = typedArrayObtainStyledAttributes.getDimension(R.styleable.SlidingTabLayout_tl_tab_width, h(-1.0f));
        this.f29249s = dimension;
        this.f29247q = typedArrayObtainStyledAttributes.getDimension(R.styleable.SlidingTabLayout_tl_tab_padding, (this.f29248r || dimension > 0.0f) ? h(0.0f) : h(20.0f));
        typedArrayObtainStyledAttributes.recycle();
    }

    private void o() {
        if (this.f29238h <= 0) {
            return;
        }
        int width = (int) (this.f29237g * this.f29235e.getChildAt(this.f29236f).getWidth());
        int left = this.f29235e.getChildAt(this.f29236f).getLeft() + width;
        if (this.f29236f > 0 || width > 0) {
            int width2 = left - ((getWidth() / 2) - getPaddingLeft());
            g();
            Rect rect = this.f29240j;
            left = width2 + ((rect.right - rect.left) / 2);
        }
        if (left != this.O) {
            this.O = left;
            scrollTo(left, 0);
        }
    }

    private void s(int i10) {
        int i11 = 0;
        while (i11 < this.f29238h) {
            View childAt = this.f29235e.getChildAt(i11);
            boolean z10 = i11 == i10;
            TextView textView = (TextView) childAt.findViewById(R.id.tv_tab_title);
            if (textView != null) {
                textView.setTextColor(z10 ? this.K : this.L);
                if (this.M == 1) {
                    textView.getPaint().setFakeBoldText(z10);
                }
            }
            i11++;
        }
    }

    private void t() {
        int i10 = 0;
        while (i10 < this.f29238h) {
            TextView textView = (TextView) this.f29235e.getChildAt(i10).findViewById(R.id.tv_tab_title);
            if (textView != null) {
                textView.setTextColor(i10 == this.f29236f ? this.K : this.L);
                textView.setTextSize(0, this.J);
                float f10 = this.f29247q;
                textView.setPadding((int) f10, 0, (int) f10, 0);
                if (this.N) {
                    textView.setText(textView.getText().toString().toUpperCase());
                }
                int i11 = this.M;
                if (i11 == 2) {
                    textView.getPaint().setFakeBoldText(true);
                } else if (i11 == 0) {
                    textView.getPaint().setFakeBoldText(false);
                }
            }
            i10++;
        }
    }

    public void e(String str) {
        View viewInflate = View.inflate(this.f29232b, R.layout.layout_tab, null);
        ArrayList<String> arrayList = this.f29234d;
        if (arrayList != null) {
            arrayList.add(str);
        }
        ArrayList<String> arrayList2 = this.f29234d;
        f(this.f29238h, (arrayList2 == null ? this.f29233c.getAdapter().getPageTitle(this.f29238h) : arrayList2.get(this.f29238h)).toString(), viewInflate);
        ArrayList<String> arrayList3 = this.f29234d;
        this.f29238h = arrayList3 == null ? this.f29233c.getAdapter().getCount() : arrayList3.size();
        t();
    }

    public int getCurrentTab() {
        return this.f29236f;
    }

    public int getDividerColor() {
        return this.G;
    }

    public float getDividerPadding() {
        return this.I;
    }

    public float getDividerWidth() {
        return this.H;
    }

    public int getIndicatorColor() {
        return this.f29250t;
    }

    public float getIndicatorCornerRadius() {
        return this.f29253w;
    }

    public float getIndicatorHeight() {
        return this.f29251u;
    }

    public float getIndicatorMarginBottom() {
        return this.A;
    }

    public float getIndicatorMarginLeft() {
        return this.f29254x;
    }

    public float getIndicatorMarginRight() {
        return this.f29256z;
    }

    public float getIndicatorMarginTop() {
        return this.f29255y;
    }

    public int getIndicatorStyle() {
        return this.f29246p;
    }

    public float getIndicatorWidth() {
        return this.f29252v;
    }

    public int getTabCount() {
        return this.f29238h;
    }

    public float getTabPadding() {
        return this.f29247q;
    }

    public float getTabWidth() {
        return this.f29249s;
    }

    public int getTextBold() {
        return this.M;
    }

    public int getTextSelectColor() {
        return this.K;
    }

    public int getTextUnselectColor() {
        return this.L;
    }

    public float getTextsize() {
        return this.J;
    }

    public int getUnderlineColor() {
        return this.D;
    }

    public float getUnderlineHeight() {
        return this.E;
    }

    protected int h(float f10) {
        return (int) ((f10 * this.f29232b.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public MsgView i(int i10) {
        int i11 = this.f29238h;
        if (i10 >= i11) {
            i10 = i11 - 1;
        }
        return (MsgView) this.f29235e.getChildAt(i10).findViewById(R.id.rtv_msg_tip);
    }

    public TextView j(int i10) {
        return (TextView) this.f29235e.getChildAt(i10).findViewById(R.id.tv_tab_title);
    }

    public void k(int i10) {
        int i11 = this.f29238h;
        if (i10 >= i11) {
            i10 = i11 - 1;
        }
        MsgView msgView = (MsgView) this.f29235e.getChildAt(i10).findViewById(R.id.rtv_msg_tip);
        if (msgView != null) {
            msgView.setVisibility(8);
        }
    }

    public boolean l() {
        return this.f29248r;
    }

    public boolean m() {
        return this.N;
    }

    public void notifyDataSetChanged() {
        this.f29235e.removeAllViews();
        ArrayList<String> arrayList = this.f29234d;
        this.f29238h = arrayList == null ? this.f29233c.getAdapter().getCount() : arrayList.size();
        for (int i10 = 0; i10 < this.f29238h; i10++) {
            View viewInflate = View.inflate(this.f29232b, R.layout.layout_tab, null);
            ArrayList<String> arrayList2 = this.f29234d;
            f(i10, (arrayList2 == null ? this.f29233c.getAdapter().getPageTitle(i10) : arrayList2.get(i10)).toString(), viewInflate);
        }
        t();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (isInEditMode() || this.f29238h <= 0) {
            return;
        }
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        float f10 = this.H;
        if (f10 > 0.0f) {
            this.f29243m.setStrokeWidth(f10);
            this.f29243m.setColor(this.G);
            for (int i10 = 0; i10 < this.f29238h - 1; i10++) {
                View childAt = this.f29235e.getChildAt(i10);
                canvas.drawLine(childAt.getRight() + paddingLeft, this.I, childAt.getRight() + paddingLeft, height - this.I, this.f29243m);
            }
        }
        if (this.E > 0.0f) {
            this.f29242l.setColor(this.D);
            if (this.F == 80) {
                float f11 = height;
                canvas.drawRect(paddingLeft, f11 - this.E, this.f29235e.getWidth() + paddingLeft, f11, this.f29242l);
            } else {
                canvas.drawRect(paddingLeft, 0.0f, this.f29235e.getWidth() + paddingLeft, this.E, this.f29242l);
            }
        }
        g();
        int i11 = this.f29246p;
        if (i11 == 1) {
            if (this.f29251u > 0.0f) {
                this.f29244n.setColor(this.f29250t);
                this.f29245o.reset();
                float f12 = height;
                this.f29245o.moveTo(this.f29239i.left + paddingLeft, f12);
                Path path = this.f29245o;
                Rect rect = this.f29239i;
                path.lineTo((rect.left / 2) + paddingLeft + (rect.right / 2), f12 - this.f29251u);
                this.f29245o.lineTo(paddingLeft + this.f29239i.right, f12);
                this.f29245o.close();
                canvas.drawPath(this.f29245o, this.f29244n);
                return;
            }
            return;
        }
        if (i11 == 2) {
            if (this.f29251u < 0.0f) {
                this.f29251u = (height - this.f29255y) - this.A;
            }
            float f13 = this.f29251u;
            if (f13 > 0.0f) {
                float f14 = this.f29253w;
                if (f14 < 0.0f || f14 > f13 / 2.0f) {
                    this.f29253w = f13 / 2.0f;
                }
                this.f29241k.setColor(this.f29250t);
                GradientDrawable gradientDrawable = this.f29241k;
                int i12 = ((int) this.f29254x) + paddingLeft;
                Rect rect2 = this.f29239i;
                int i13 = i12 + rect2.left;
                float f15 = this.f29255y;
                gradientDrawable.setBounds(i13, (int) f15, (int) ((paddingLeft + rect2.right) - this.f29256z), (int) (f15 + this.f29251u));
                this.f29241k.setCornerRadius(this.f29253w);
                this.f29241k.draw(canvas);
                return;
            }
            return;
        }
        if (this.f29251u > 0.0f) {
            this.f29241k.setColor(this.f29250t);
            if (this.B == 80) {
                GradientDrawable gradientDrawable2 = this.f29241k;
                int i14 = ((int) this.f29254x) + paddingLeft;
                Rect rect3 = this.f29239i;
                int i15 = i14 + rect3.left;
                int i16 = height - ((int) this.f29251u);
                float f16 = this.A;
                gradientDrawable2.setBounds(i15, i16 - ((int) f16), (paddingLeft + rect3.right) - ((int) this.f29256z), height - ((int) f16));
            } else {
                GradientDrawable gradientDrawable3 = this.f29241k;
                int i17 = ((int) this.f29254x) + paddingLeft;
                Rect rect4 = this.f29239i;
                int i18 = i17 + rect4.left;
                float f17 = this.f29255y;
                gradientDrawable3.setBounds(i18, (int) f17, (paddingLeft + rect4.right) - ((int) this.f29256z), ((int) this.f29251u) + ((int) f17));
            }
            this.f29241k.setCornerRadius(this.f29253w);
            this.f29241k.draw(canvas);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int i10) {
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrolled(int i10, float f10, int i11) {
        this.f29236f = i10;
        this.f29237g = f10;
        o();
        invalidate();
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageSelected(int i10) {
        s(i10);
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            this.f29236f = bundle.getInt("mCurrentTab");
            parcelable = bundle.getParcelable("instanceState");
            if (this.f29236f != 0 && this.f29235e.getChildCount() > 0) {
                s(this.f29236f);
                o();
            }
        }
        super.onRestoreInstanceState(parcelable);
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    protected Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("instanceState", super.onSaveInstanceState());
        bundle.putInt("mCurrentTab", this.f29236f);
        return bundle;
    }

    public void p(int i10) {
        int i11 = this.f29238h;
        if (i10 >= i11) {
            i10 = i11 - 1;
        }
        q(i10, 0);
    }

    public void q(int i10, int i11) {
        int i12 = this.f29238h;
        if (i10 >= i12) {
            i10 = i12 - 1;
        }
        MsgView msgView = (MsgView) this.f29235e.getChildAt(i10).findViewById(R.id.rtv_msg_tip);
        if (msgView != null) {
            t4.b.b(msgView, i11);
            if (this.T.get(i10) == null || !this.T.get(i10).booleanValue()) {
                setMsgMargin(i10, 4.0f, 2.0f);
                this.T.put(i10, Boolean.TRUE);
            }
        }
    }

    protected int r(float f10) {
        return (int) ((f10 * this.f29232b.getResources().getDisplayMetrics().scaledDensity) + 0.5f);
    }

    public void setCurrentTab(int i10) {
        this.f29236f = i10;
        this.f29233c.setCurrentItem(i10);
    }

    public void setDividerColor(int i10) {
        this.G = i10;
        invalidate();
    }

    public void setDividerPadding(float f10) {
        this.I = h(f10);
        invalidate();
    }

    public void setDividerWidth(float f10) {
        this.H = h(f10);
        invalidate();
    }

    public void setIndicatorColor(int i10) {
        this.f29250t = i10;
        invalidate();
    }

    public void setIndicatorCornerRadius(float f10) {
        this.f29253w = h(f10);
        invalidate();
    }

    public void setIndicatorGravity(int i10) {
        this.B = i10;
        invalidate();
    }

    public void setIndicatorHeight(float f10) {
        this.f29251u = h(f10);
        invalidate();
    }

    public void setIndicatorMargin(float f10, float f11, float f12, float f13) {
        this.f29254x = h(f10);
        this.f29255y = h(f11);
        this.f29256z = h(f12);
        this.A = h(f13);
        invalidate();
    }

    public void setIndicatorStyle(int i10) {
        this.f29246p = i10;
        invalidate();
    }

    public void setIndicatorWidth(float f10) {
        this.f29252v = h(f10);
        invalidate();
    }

    public void setIndicatorWidthEqualTitle(boolean z10) {
        this.C = z10;
        invalidate();
    }

    public void setMsgMargin(int i10, float f10, float f11) {
        float f12;
        int i11 = this.f29238h;
        if (i10 >= i11) {
            i10 = i11 - 1;
        }
        View childAt = this.f29235e.getChildAt(i10);
        MsgView msgView = (MsgView) childAt.findViewById(R.id.rtv_msg_tip);
        if (msgView != null) {
            TextView textView = (TextView) childAt.findViewById(R.id.tv_tab_title);
            this.S.setTextSize(this.J);
            float fMeasureText = this.S.measureText(textView.getText().toString());
            float fDescent = this.S.descent() - this.S.ascent();
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) msgView.getLayoutParams();
            float f13 = this.f29249s;
            if (f13 >= 0.0f) {
                f12 = f13 / 2.0f;
                fMeasureText /= 2.0f;
            } else {
                f12 = this.f29247q;
            }
            marginLayoutParams.leftMargin = (int) (f12 + fMeasureText + h(f10));
            int i12 = this.P;
            marginLayoutParams.topMargin = i12 > 0 ? (((int) (i12 - fDescent)) / 2) - h(f11) : 0;
            msgView.setLayoutParams(marginLayoutParams);
        }
    }

    public void setOnTabSelectListener(s4.b bVar) {
        this.U = bVar;
    }

    public void setSnapOnTabClick(boolean z10) {
        this.Q = z10;
    }

    public void setTabPadding(float f10) {
        this.f29247q = h(f10);
        t();
    }

    public void setTabSpaceEqual(boolean z10) {
        this.f29248r = z10;
        t();
    }

    public void setTabWidth(float f10) {
        this.f29249s = h(f10);
        t();
    }

    public void setTextAllCaps(boolean z10) {
        this.N = z10;
        t();
    }

    public void setTextBold(int i10) {
        this.M = i10;
        t();
    }

    public void setTextSelectColor(int i10) {
        this.K = i10;
        t();
    }

    public void setTextUnselectColor(int i10) {
        this.L = i10;
        t();
    }

    public void setTextsize(float f10) {
        this.J = r(f10);
        t();
    }

    public void setUnderlineColor(int i10) {
        this.D = i10;
        invalidate();
    }

    public void setUnderlineGravity(int i10) {
        this.F = i10;
        invalidate();
    }

    public void setUnderlineHeight(float f10) {
        this.E = h(f10);
        invalidate();
    }

    public void setViewPager(ViewPager viewPager) {
        if (viewPager == null || viewPager.getAdapter() == null) {
            throw new IllegalStateException("ViewPager or ViewPager adapter can not be NULL !");
        }
        this.f29233c = viewPager;
        viewPager.removeOnPageChangeListener(this);
        this.f29233c.addOnPageChangeListener(this);
        notifyDataSetChanged();
    }

    public SlidingTabLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SlidingTabLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f29239i = new Rect();
        this.f29240j = new Rect();
        this.f29241k = new GradientDrawable();
        this.f29242l = new Paint(1);
        this.f29243m = new Paint(1);
        this.f29244n = new Paint(1);
        this.f29245o = new Path();
        this.f29246p = 0;
        this.S = new Paint(1);
        this.T = new SparseArray<>();
        setFillViewport(true);
        setWillNotDraw(false);
        setClipChildren(false);
        setClipToPadding(false);
        this.f29232b = context;
        LinearLayout linearLayout = new LinearLayout(context);
        this.f29235e = linearLayout;
        addView(linearLayout);
        n(context, attributeSet);
        String attributeValue = attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "layout_height");
        if (attributeValue.equals(WMConstants.TIMER_STAGE_NONE) || attributeValue.equals("-2")) {
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{android.R.attr.layout_height});
        this.P = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, -2);
        typedArrayObtainStyledAttributes.recycle();
    }

    public void setCurrentTab(int i10, boolean z10) {
        this.f29236f = i10;
        this.f29233c.setCurrentItem(i10, z10);
    }

    public void setViewPager(ViewPager viewPager, String[] strArr) {
        if (viewPager != null && viewPager.getAdapter() != null) {
            if (strArr != null && strArr.length != 0) {
                if (strArr.length == viewPager.getAdapter().getCount()) {
                    this.f29233c = viewPager;
                    ArrayList<String> arrayList = new ArrayList<>();
                    this.f29234d = arrayList;
                    Collections.addAll(arrayList, strArr);
                    this.f29233c.removeOnPageChangeListener(this);
                    this.f29233c.addOnPageChangeListener(this);
                    notifyDataSetChanged();
                    return;
                }
                throw new IllegalStateException("Titles length must be the same as the page count !");
            }
            throw new IllegalStateException("Titles can not be EMPTY !");
        }
        throw new IllegalStateException("ViewPager or ViewPager adapter can not be NULL !");
    }

    public void setViewPager(ViewPager viewPager, String[] strArr, FragmentActivity fragmentActivity, ArrayList<Fragment> arrayList) {
        if (viewPager != null) {
            if (strArr != null && strArr.length != 0) {
                this.f29233c = viewPager;
                viewPager.setAdapter(new b(fragmentActivity.getSupportFragmentManager(), arrayList, strArr));
                this.f29233c.removeOnPageChangeListener(this);
                this.f29233c.addOnPageChangeListener(this);
                notifyDataSetChanged();
                return;
            }
            throw new IllegalStateException("Titles can not be EMPTY !");
        }
        throw new IllegalStateException("ViewPager can not be NULL !");
    }
}

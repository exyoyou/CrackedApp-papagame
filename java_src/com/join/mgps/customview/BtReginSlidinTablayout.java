package com.join.mgps.customview;

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
import com.join.android.app.mgsim.wufun.R;
import com.windmill.sdk.WMConstants;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: loaded from: classes3.dex */
public class BtReginSlidinTablayout extends HorizontalScrollView implements ViewPager.OnPageChangeListener {
    private static final int W = 0;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    private static final int f64364b1 = 2;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    private static final int f64365f1 = 3;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    private static final int f64366i1 = 0;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    private static final int f64367l1 = 1;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private static final int f64368p0 = 1;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    private static final int f64369p1 = 2;
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
    int R;
    private float S;
    private Paint T;
    private SparseArray<Boolean> U;
    private s4.b V;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f64370b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ViewPager f64371c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ArrayList<String> f64372d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private LinearLayout f64373e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f64374f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f64375g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f64376h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Rect f64377i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Rect f64378j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private GradientDrawable f64379k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Paint f64380l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Paint f64381m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private Paint f64382n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Path f64383o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f64384p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private float f64385q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f64386r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private float f64387s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f64388t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private float f64389u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private float f64390v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private float f64391w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private float f64392x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private float f64393y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private float f64394z;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            int iIndexOfChild = BtReginSlidinTablayout.this.f64373e.indexOfChild(v10);
            if (iIndexOfChild != -1) {
                if (BtReginSlidinTablayout.this.f64371c.getCurrentItem() == iIndexOfChild) {
                    if (BtReginSlidinTablayout.this.V != null) {
                        BtReginSlidinTablayout.this.V.onTabReselect(iIndexOfChild);
                    }
                } else {
                    if (BtReginSlidinTablayout.this.Q) {
                        BtReginSlidinTablayout.this.f64371c.setCurrentItem(iIndexOfChild, false);
                    } else {
                        BtReginSlidinTablayout.this.f64371c.setCurrentItem(iIndexOfChild);
                    }
                    if (BtReginSlidinTablayout.this.V != null) {
                        BtReginSlidinTablayout.this.V.onTabSelect(iIndexOfChild);
                    }
                }
            }
        }
    }

    class b extends FragmentPagerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private ArrayList<Fragment> f64396a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String[] f64397b;

        public b(FragmentManager fm2, ArrayList<Fragment> fragments, String[] titles) {
            super(fm2);
            new ArrayList();
            this.f64396a = fragments;
            this.f64397b = titles;
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter, androidx.viewpager.widget.PagerAdapter
        public void destroyItem(ViewGroup container, int position, Object object) {
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return this.f64396a.size();
        }

        @Override // androidx.fragment.app.FragmentPagerAdapter
        public Fragment getItem(int position) {
            return this.f64396a.get(position);
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getItemPosition(Object object) {
            return -2;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public CharSequence getPageTitle(int position) {
            return this.f64397b[position];
        }
    }

    public BtReginSlidinTablayout(Context context) {
        this(context, null, 0);
    }

    private void f(final int position, String title, View tabView) {
        TextView textView = (TextView) tabView.findViewById(R.id.tv_tab_title);
        if (textView != null && title != null) {
            textView.setText(title);
        }
        tabView.setOnClickListener(new a());
        LinearLayout.LayoutParams layoutParams = this.f64386r ? new LinearLayout.LayoutParams(0, -1, 1.0f) : new LinearLayout.LayoutParams(-2, -1);
        if (this.f64387s > 0.0f) {
            layoutParams = new LinearLayout.LayoutParams((int) this.f64387s, -1);
        }
        this.f64373e.addView(tabView, position, layoutParams);
    }

    private void g() {
        View childAt = this.f64373e.getChildAt(this.f64374f);
        float left = childAt.getLeft();
        float right = childAt.getRight();
        if (this.f64384p == 0 && this.C) {
            TextView textView = (TextView) childAt.findViewById(R.id.tv_tab_title);
            this.T.setTextSize(this.J);
            this.S = ((right - left) - this.T.measureText(textView.getText().toString())) / 2.0f;
        }
        int i10 = this.f64374f;
        if (i10 < this.f64376h - 1) {
            View childAt2 = this.f64373e.getChildAt(i10 + 1);
            float left2 = childAt2.getLeft();
            float right2 = childAt2.getRight();
            float f10 = this.f64375g;
            left += (left2 - left) * f10;
            right += f10 * (right2 - right);
            if (this.f64384p == 0 && this.C) {
                TextView textView2 = (TextView) childAt2.findViewById(R.id.tv_tab_title);
                this.T.setTextSize(this.J);
                float fMeasureText = ((right2 - left2) - this.T.measureText(textView2.getText().toString())) / 2.0f;
                float f11 = this.S;
                this.S = f11 + (this.f64375g * (fMeasureText - f11));
            }
        }
        Rect rect = this.f64377i;
        int i11 = (int) left;
        rect.left = i11;
        int i12 = (int) right;
        rect.right = i12;
        if (this.f64384p == 0 && this.C) {
            float f12 = this.S;
            rect.left = (int) ((left + f12) - 1.0f);
            rect.right = (int) ((right - f12) - 1.0f);
        }
        Rect rect2 = this.f64378j;
        rect2.left = i11;
        rect2.right = i12;
        if (this.f64390v < 0.0f) {
            return;
        }
        float left3 = childAt.getLeft() + ((childAt.getWidth() - this.f64390v) / 2.0f);
        int i13 = this.f64374f;
        if (i13 < this.f64376h - 1) {
            left3 += this.f64375g * ((childAt.getWidth() / 2) + (this.f64373e.getChildAt(i13 + 1).getWidth() / 2));
        }
        Rect rect3 = this.f64377i;
        int i14 = (int) left3;
        rect3.left = i14;
        rect3.right = (int) (i14 + this.f64390v);
    }

    private void n(Context context, AttributeSet attrs) {
        float f10;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.MySlidingTabLayout);
        int i10 = typedArrayObtainStyledAttributes.getInt(11, 0);
        this.f64384p = i10;
        this.f64388t = typedArrayObtainStyledAttributes.getColor(3, Color.parseColor(i10 == 2 ? "#4B6A87" : "#ffffff"));
        int i11 = this.f64384p;
        if (i11 == 1) {
            f10 = 4.0f;
        } else {
            f10 = i11 == 2 ? -1 : 2;
        }
        this.f64389u = typedArrayObtainStyledAttributes.getDimension(6, h(f10));
        this.f64390v = typedArrayObtainStyledAttributes.getDimension(12, h(this.f64384p == 1 ? 10.0f : -1.0f));
        this.f64391w = typedArrayObtainStyledAttributes.getDimension(4, h(this.f64384p == 2 ? -1.0f : 0.0f));
        this.f64392x = typedArrayObtainStyledAttributes.getDimension(8, h(0.0f));
        this.f64393y = typedArrayObtainStyledAttributes.getDimension(10, h(this.f64384p == 2 ? 7.0f : 0.0f));
        this.f64394z = typedArrayObtainStyledAttributes.getDimension(9, h(0.0f));
        this.A = typedArrayObtainStyledAttributes.getDimension(7, h(this.f64384p != 2 ? 0.0f : 7.0f));
        this.B = typedArrayObtainStyledAttributes.getInt(5, 80);
        this.C = typedArrayObtainStyledAttributes.getBoolean(13, false);
        this.D = typedArrayObtainStyledAttributes.getColor(22, Color.parseColor("#ffffff"));
        this.E = typedArrayObtainStyledAttributes.getDimension(24, h(0.0f));
        this.F = typedArrayObtainStyledAttributes.getInt(23, 80);
        this.G = typedArrayObtainStyledAttributes.getColor(0, Color.parseColor("#ffffff"));
        this.H = typedArrayObtainStyledAttributes.getDimension(2, h(0.0f));
        this.I = typedArrayObtainStyledAttributes.getDimension(1, h(12.0f));
        this.J = typedArrayObtainStyledAttributes.getDimension(21, r(14.0f));
        this.K = typedArrayObtainStyledAttributes.getColor(19, Color.parseColor("#ffffff"));
        this.L = typedArrayObtainStyledAttributes.getColor(20, Color.parseColor("#AAffffff"));
        this.M = typedArrayObtainStyledAttributes.getInt(18, 0);
        this.N = typedArrayObtainStyledAttributes.getBoolean(17, false);
        this.f64386r = typedArrayObtainStyledAttributes.getBoolean(15, false);
        float dimension = typedArrayObtainStyledAttributes.getDimension(16, h(-1.0f));
        this.f64387s = dimension;
        this.f64385q = typedArrayObtainStyledAttributes.getDimension(14, (this.f64386r || dimension > 0.0f) ? h(0.0f) : h(20.0f));
        typedArrayObtainStyledAttributes.recycle();
    }

    private void o() {
        if (this.f64376h <= 0) {
            return;
        }
        int width = (int) (this.f64375g * this.f64373e.getChildAt(this.f64374f).getWidth());
        int left = this.f64373e.getChildAt(this.f64374f).getLeft() + width;
        if (this.f64374f > 0 || width > 0) {
            int width2 = left - ((getWidth() / 2) - getPaddingLeft());
            g();
            Rect rect = this.f64378j;
            left = width2 + ((rect.right - rect.left) / 2);
        }
        if (left != this.O) {
            this.O = left;
            scrollTo(left, 0);
        }
    }

    private void s(int position) {
        this.R = position;
        int i10 = 0;
        while (i10 < this.f64376h) {
            View childAt = this.f64373e.getChildAt(i10);
            boolean z10 = i10 == position;
            TextView textView = (TextView) childAt.findViewById(R.id.tv_tab_title);
            if (textView != null) {
                textView.setTextColor(z10 ? this.K : this.L);
                if (this.M == 1) {
                    textView.getPaint().setFakeBoldText(z10);
                }
                if (this.f64384p == 3) {
                    if (i10 == this.R) {
                        textView.setSelected(true);
                    } else {
                        textView.setSelected(false);
                    }
                }
            }
            i10++;
        }
    }

    private void t() {
        int i10 = 0;
        while (i10 < this.f64376h) {
            TextView textView = (TextView) this.f64373e.getChildAt(i10).findViewById(R.id.tv_tab_title);
            if (textView != null) {
                textView.setTextColor(i10 == this.f64374f ? this.K : this.L);
                textView.setTextSize(0, this.J);
                float f10 = this.f64385q;
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
                if (this.f64384p == 3) {
                    if (i10 == this.R) {
                        textView.setSelected(true);
                    } else {
                        textView.setSelected(false);
                    }
                }
            }
            i10++;
        }
    }

    public void e(String title) {
        View viewInflate = View.inflate(this.f64370b, R.layout.bt_tab_item_layout, null);
        ArrayList<String> arrayList = this.f64372d;
        if (arrayList != null) {
            arrayList.add(title);
        }
        ArrayList<String> arrayList2 = this.f64372d;
        f(this.f64376h, (arrayList2 == null ? this.f64371c.getAdapter().getPageTitle(this.f64376h) : arrayList2.get(this.f64376h)).toString(), viewInflate);
        ArrayList<String> arrayList3 = this.f64372d;
        this.f64376h = arrayList3 == null ? this.f64371c.getAdapter().getCount() : arrayList3.size();
        t();
    }

    public int getCurrentTab() {
        return this.f64374f;
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
        return this.f64388t;
    }

    public float getIndicatorCornerRadius() {
        return this.f64391w;
    }

    public float getIndicatorHeight() {
        return this.f64389u;
    }

    public float getIndicatorMarginBottom() {
        return this.A;
    }

    public float getIndicatorMarginLeft() {
        return this.f64392x;
    }

    public float getIndicatorMarginRight() {
        return this.f64394z;
    }

    public float getIndicatorMarginTop() {
        return this.f64393y;
    }

    public int getIndicatorStyle() {
        return this.f64384p;
    }

    public float getIndicatorWidth() {
        return this.f64390v;
    }

    public int getTabCount() {
        return this.f64376h;
    }

    public float getTabPadding() {
        return this.f64385q;
    }

    public float getTabWidth() {
        return this.f64387s;
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

    protected int h(float dp) {
        return (int) ((dp * this.f64370b.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public MsgView i(int position) {
        int i10 = this.f64376h;
        if (position >= i10) {
            position = i10 - 1;
        }
        return (MsgView) this.f64373e.getChildAt(position).findViewById(R.id.rtv_msg_tip);
    }

    public TextView j(int tab) {
        return (TextView) this.f64373e.getChildAt(tab).findViewById(R.id.tv_tab_title);
    }

    public void k(int position) {
        int i10 = this.f64376h;
        if (position >= i10) {
            position = i10 - 1;
        }
        MsgView msgView = (MsgView) this.f64373e.getChildAt(position).findViewById(R.id.rtv_msg_tip);
        if (msgView != null) {
            msgView.setVisibility(8);
        }
    }

    public boolean l() {
        return this.f64386r;
    }

    public boolean m() {
        return this.N;
    }

    public void notifyDataSetChanged() {
        this.f64373e.removeAllViews();
        ArrayList<String> arrayList = this.f64372d;
        this.f64376h = arrayList == null ? this.f64371c.getAdapter().getCount() : arrayList.size();
        for (int i10 = 0; i10 < this.f64376h; i10++) {
            View viewInflate = View.inflate(this.f64370b, R.layout.bt_tab_item_layout, null);
            ArrayList<String> arrayList2 = this.f64372d;
            f(i10, (arrayList2 == null ? this.f64371c.getAdapter().getPageTitle(i10) : arrayList2.get(i10)).toString(), viewInflate);
        }
        t();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (isInEditMode() || this.f64376h <= 0) {
            return;
        }
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        float f10 = this.H;
        if (f10 > 0.0f) {
            this.f64381m.setStrokeWidth(f10);
            this.f64381m.setColor(this.G);
            for (int i10 = 0; i10 < this.f64376h - 1; i10++) {
                View childAt = this.f64373e.getChildAt(i10);
                canvas.drawLine(childAt.getRight() + paddingLeft, this.I, childAt.getRight() + paddingLeft, height - this.I, this.f64381m);
            }
        }
        if (this.E > 0.0f) {
            this.f64380l.setColor(this.D);
            if (this.F == 80) {
                float f11 = height;
                canvas.drawRect(paddingLeft, f11 - this.E, this.f64373e.getWidth() + paddingLeft, f11, this.f64380l);
            } else {
                canvas.drawRect(paddingLeft, 0.0f, this.f64373e.getWidth() + paddingLeft, this.E, this.f64380l);
            }
        }
        g();
        int i11 = this.f64384p;
        if (i11 == 1) {
            if (this.f64389u > 0.0f) {
                this.f64382n.setColor(this.f64388t);
                this.f64383o.reset();
                float f12 = height;
                this.f64383o.moveTo(this.f64377i.left + paddingLeft, f12);
                Path path = this.f64383o;
                Rect rect = this.f64377i;
                path.lineTo((rect.left / 2) + paddingLeft + (rect.right / 2), f12 - this.f64389u);
                this.f64383o.lineTo(paddingLeft + this.f64377i.right, f12);
                this.f64383o.close();
                canvas.drawPath(this.f64383o, this.f64382n);
                return;
            }
            return;
        }
        if (i11 == 2) {
            if (this.f64389u < 0.0f) {
                this.f64389u = (height - this.f64393y) - this.A;
            }
            float f13 = this.f64389u;
            if (f13 > 0.0f) {
                float f14 = this.f64391w;
                if (f14 < 0.0f || f14 > f13 / 2.0f) {
                    this.f64391w = f13 / 2.0f;
                }
                this.f64379k.setColor(this.f64388t);
                GradientDrawable gradientDrawable = this.f64379k;
                int i12 = ((int) this.f64392x) + paddingLeft;
                Rect rect2 = this.f64377i;
                int i13 = i12 + rect2.left;
                float f15 = this.f64393y;
                gradientDrawable.setBounds(i13, (int) f15, (int) ((paddingLeft + rect2.right) - this.f64394z), (int) (f15 + this.f64389u));
                this.f64379k.setCornerRadius(this.f64391w);
                this.f64379k.draw(canvas);
                return;
            }
            return;
        }
        if (this.f64389u > 0.0f) {
            this.f64379k.setColor(this.f64388t);
            if (this.B == 80) {
                GradientDrawable gradientDrawable2 = this.f64379k;
                int i14 = ((int) this.f64392x) + paddingLeft;
                Rect rect3 = this.f64377i;
                int i15 = i14 + rect3.left;
                int i16 = height - ((int) this.f64389u);
                float f16 = this.A;
                gradientDrawable2.setBounds(i15, i16 - ((int) f16), (paddingLeft + rect3.right) - ((int) this.f64394z), height - ((int) f16));
            } else {
                GradientDrawable gradientDrawable3 = this.f64379k;
                int i17 = ((int) this.f64392x) + paddingLeft;
                Rect rect4 = this.f64377i;
                int i18 = i17 + rect4.left;
                float f17 = this.f64393y;
                gradientDrawable3.setBounds(i18, (int) f17, (paddingLeft + rect4.right) - ((int) this.f64394z), ((int) this.f64389u) + ((int) f17));
            }
            this.f64379k.setCornerRadius(this.f64391w);
            this.f64379k.draw(canvas);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int state) {
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
        this.f64374f = position;
        this.f64375g = positionOffset;
        o();
        invalidate();
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageSelected(int position) {
        s(position);
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    protected void onRestoreInstanceState(Parcelable state) {
        if (state instanceof Bundle) {
            Bundle bundle = (Bundle) state;
            this.f64374f = bundle.getInt("mCurrentTab");
            state = bundle.getParcelable("instanceState");
            if (this.f64374f != 0 && this.f64373e.getChildCount() > 0) {
                s(this.f64374f);
                o();
            }
        }
        super.onRestoreInstanceState(state);
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    protected Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("instanceState", super.onSaveInstanceState());
        bundle.putInt("mCurrentTab", this.f64374f);
        return bundle;
    }

    public void p(int position) {
        int i10 = this.f64376h;
        if (position >= i10) {
            position = i10 - 1;
        }
        q(position, 0);
    }

    public void q(int position, int num) {
        int i10 = this.f64376h;
        if (position >= i10) {
            position = i10 - 1;
        }
        MsgView msgView = (MsgView) this.f64373e.getChildAt(position).findViewById(R.id.rtv_msg_tip);
        if (msgView != null) {
            t4.b.b(msgView, num);
            if (this.U.get(position) == null || !this.U.get(position).booleanValue()) {
                setMsgMargin(position, 4.0f, 2.0f);
                this.U.put(position, Boolean.TRUE);
            }
        }
    }

    protected int r(float sp) {
        return (int) ((sp * this.f64370b.getResources().getDisplayMetrics().scaledDensity) + 0.5f);
    }

    public void setCurrentTab(int currentTab) {
        this.f64374f = currentTab;
        this.f64371c.setCurrentItem(currentTab);
    }

    public void setDividerColor(int dividerColor) {
        this.G = dividerColor;
        invalidate();
    }

    public void setDividerPadding(float dividerPadding) {
        this.I = h(dividerPadding);
        invalidate();
    }

    public void setDividerWidth(float dividerWidth) {
        this.H = h(dividerWidth);
        invalidate();
    }

    public void setIndicatorColor(int indicatorColor) {
        this.f64388t = indicatorColor;
        invalidate();
    }

    public void setIndicatorCornerRadius(float indicatorCornerRadius) {
        this.f64391w = h(indicatorCornerRadius);
        invalidate();
    }

    public void setIndicatorGravity(int indicatorGravity) {
        this.B = indicatorGravity;
        invalidate();
    }

    public void setIndicatorHeight(float indicatorHeight) {
        this.f64389u = h(indicatorHeight);
        invalidate();
    }

    public void setIndicatorMargin(float indicatorMarginLeft, float indicatorMarginTop, float indicatorMarginRight, float indicatorMarginBottom) {
        this.f64392x = h(indicatorMarginLeft);
        this.f64393y = h(indicatorMarginTop);
        this.f64394z = h(indicatorMarginRight);
        this.A = h(indicatorMarginBottom);
        invalidate();
    }

    public void setIndicatorStyle(int indicatorStyle) {
        this.f64384p = indicatorStyle;
        invalidate();
    }

    public void setIndicatorWidth(float indicatorWidth) {
        this.f64390v = h(indicatorWidth);
        invalidate();
    }

    public void setIndicatorWidthEqualTitle(boolean indicatorWidthEqualTitle) {
        this.C = indicatorWidthEqualTitle;
        invalidate();
    }

    public void setMsgMargin(int position, float leftPadding, float bottomPadding) {
        float f10;
        int i10 = this.f64376h;
        if (position >= i10) {
            position = i10 - 1;
        }
        View childAt = this.f64373e.getChildAt(position);
        MsgView msgView = (MsgView) childAt.findViewById(R.id.rtv_msg_tip);
        if (msgView != null) {
            TextView textView = (TextView) childAt.findViewById(R.id.tv_tab_title);
            this.T.setTextSize(this.J);
            float fMeasureText = this.T.measureText(textView.getText().toString());
            float fDescent = this.T.descent() - this.T.ascent();
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) msgView.getLayoutParams();
            float f11 = this.f64387s;
            if (f11 >= 0.0f) {
                f10 = f11 / 2.0f;
                fMeasureText /= 2.0f;
            } else {
                f10 = this.f64385q;
            }
            marginLayoutParams.leftMargin = (int) (f10 + fMeasureText + h(leftPadding));
            int i11 = this.P;
            marginLayoutParams.topMargin = i11 > 0 ? (((int) (i11 - fDescent)) / 2) - h(bottomPadding) : 0;
            msgView.setLayoutParams(marginLayoutParams);
        }
    }

    public void setOnTabSelectListener(s4.b listener) {
        this.V = listener;
    }

    public void setSnapOnTabClick(boolean snapOnTabClick) {
        this.Q = snapOnTabClick;
    }

    public void setTabPadding(float tabPadding) {
        this.f64385q = h(tabPadding);
        t();
    }

    public void setTabSpaceEqual(boolean tabSpaceEqual) {
        this.f64386r = tabSpaceEqual;
        t();
    }

    public void setTabWidth(float tabWidth) {
        this.f64387s = h(tabWidth);
        t();
    }

    public void setTextAllCaps(boolean textAllCaps) {
        this.N = textAllCaps;
        t();
    }

    public void setTextBold(int textBold) {
        this.M = textBold;
        t();
    }

    public void setTextSelectColor(int textSelectColor) {
        this.K = textSelectColor;
        t();
    }

    public void setTextUnselectColor(int textUnselectColor) {
        this.L = textUnselectColor;
        t();
    }

    public void setTextsize(float textsize) {
        this.J = r(textsize);
        t();
    }

    public void setUnderlineColor(int underlineColor) {
        this.D = underlineColor;
        invalidate();
    }

    public void setUnderlineGravity(int underlineGravity) {
        this.F = underlineGravity;
        invalidate();
    }

    public void setUnderlineHeight(float underlineHeight) {
        this.E = h(underlineHeight);
        invalidate();
    }

    public void setViewPager(ViewPager vp) {
        if (vp == null || vp.getAdapter() == null) {
            throw new IllegalStateException("ViewPager or ViewPager adapter can not be NULL !");
        }
        this.f64371c = vp;
        vp.removeOnPageChangeListener(this);
        this.f64371c.addOnPageChangeListener(this);
        notifyDataSetChanged();
    }

    public BtReginSlidinTablayout(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public BtReginSlidinTablayout(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f64377i = new Rect();
        this.f64378j = new Rect();
        this.f64379k = new GradientDrawable();
        this.f64380l = new Paint(1);
        this.f64381m = new Paint(1);
        this.f64382n = new Paint(1);
        this.f64383o = new Path();
        this.f64384p = 0;
        this.R = 0;
        this.T = new Paint(1);
        this.U = new SparseArray<>();
        setFillViewport(true);
        setWillNotDraw(false);
        setClipChildren(false);
        setClipToPadding(false);
        this.f64370b = context;
        LinearLayout linearLayout = new LinearLayout(context);
        this.f64373e = linearLayout;
        addView(linearLayout);
        n(context, attrs);
        String attributeValue = attrs.getAttributeValue("http://schemas.android.com/apk/res/android", "layout_height");
        if (attributeValue.equals(WMConstants.TIMER_STAGE_NONE) || attributeValue.equals("-2")) {
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, new int[]{android.R.attr.layout_height});
        this.P = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, -2);
        typedArrayObtainStyledAttributes.recycle();
    }

    public void setCurrentTab(int currentTab, boolean smoothScroll) {
        this.f64374f = currentTab;
        this.f64371c.setCurrentItem(currentTab, smoothScroll);
    }

    public void setViewPager(ViewPager vp, String[] titles) {
        if (vp != null && vp.getAdapter() != null) {
            if (titles != null && titles.length != 0) {
                if (titles.length == vp.getAdapter().getCount()) {
                    this.f64371c = vp;
                    ArrayList<String> arrayList = new ArrayList<>();
                    this.f64372d = arrayList;
                    Collections.addAll(arrayList, titles);
                    this.f64371c.removeOnPageChangeListener(this);
                    this.f64371c.addOnPageChangeListener(this);
                    notifyDataSetChanged();
                    return;
                }
                throw new IllegalStateException("Titles length must be the same as the page count !");
            }
            throw new IllegalStateException("Titles can not be EMPTY !");
        }
        throw new IllegalStateException("ViewPager or ViewPager adapter can not be NULL !");
    }

    public void setViewPager(ViewPager vp, String[] titles, FragmentActivity fa2, ArrayList<Fragment> fragments) {
        if (vp != null) {
            if (titles != null && titles.length != 0) {
                this.f64371c = vp;
                vp.setAdapter(new b(fa2.getSupportFragmentManager(), fragments, titles));
                this.f64371c.removeOnPageChangeListener(this);
                this.f64371c.addOnPageChangeListener(this);
                notifyDataSetChanged();
                return;
            }
            throw new IllegalStateException("Titles can not be EMPTY !");
        }
        throw new IllegalStateException("ViewPager can not be NULL !");
    }
}

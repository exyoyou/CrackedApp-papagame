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
import com.flyco.tablayout.widget.MsgView;
import com.join.android.app.mgsim.wufun.R;
import com.windmill.sdk.WMConstants;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: loaded from: classes3.dex */
public class SlidingTabLayoutNoViewPager extends HorizontalScrollView {
    private static final int V = 0;
    private static final int W = 1;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    private static final int f65858b1 = 0;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    private static final int f65859f1 = 1;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    private static final int f65860i1 = 2;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private static final int f65861p0 = 2;
    private int A;
    private boolean B;
    private int C;
    private float D;
    private int E;
    private int F;
    private float G;
    private float H;
    private float I;
    private int J;
    private int K;
    private int L;
    private boolean M;
    private int N;
    private int O;
    private boolean P;
    private int Q;
    private float R;
    private Paint S;
    private SparseArray<Boolean> T;
    private s4.b U;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f65862b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ArrayList<String> f65863c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private LinearLayout f65864d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f65865e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f65866f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f65867g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Rect f65868h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Rect f65869i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private GradientDrawable f65870j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Paint f65871k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Paint f65872l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Paint f65873m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private Path f65874n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f65875o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private float f65876p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f65877q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private float f65878r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f65879s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private float f65880t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private float f65881u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private float f65882v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private float f65883w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private float f65884x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private float f65885y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private float f65886z;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            int iIndexOfChild = SlidingTabLayoutNoViewPager.this.f65864d.indexOfChild(v10);
            if (iIndexOfChild != -1) {
                if (SlidingTabLayoutNoViewPager.this.Q == iIndexOfChild) {
                    if (SlidingTabLayoutNoViewPager.this.U != null) {
                        SlidingTabLayoutNoViewPager.this.u(iIndexOfChild);
                        SlidingTabLayoutNoViewPager.this.f65865e = iIndexOfChild;
                        SlidingTabLayoutNoViewPager.this.invalidate();
                        SlidingTabLayoutNoViewPager.this.U.onTabReselect(iIndexOfChild);
                        SlidingTabLayoutNoViewPager.this.o();
                        return;
                    }
                    return;
                }
                SlidingTabLayoutNoViewPager.this.Q = iIndexOfChild;
                if (SlidingTabLayoutNoViewPager.this.U != null) {
                    SlidingTabLayoutNoViewPager.this.U.onTabSelect(iIndexOfChild);
                    SlidingTabLayoutNoViewPager.this.u(iIndexOfChild);
                    SlidingTabLayoutNoViewPager.this.f65865e = iIndexOfChild;
                    SlidingTabLayoutNoViewPager.this.invalidate();
                    SlidingTabLayoutNoViewPager.this.o();
                }
            }
        }
    }

    public SlidingTabLayoutNoViewPager(Context context) {
        this(context, null, 0);
    }

    private void g(final int position, String title, View tabView) {
        TextView textView = (TextView) tabView.findViewById(R.id.tv_tab_title);
        if (textView != null && title != null) {
            textView.setText(title);
        }
        tabView.setOnClickListener(new a());
        LinearLayout.LayoutParams layoutParams = this.f65877q ? new LinearLayout.LayoutParams(0, -1, 1.0f) : new LinearLayout.LayoutParams(-2, -1);
        if (this.f65878r > 0.0f) {
            layoutParams = new LinearLayout.LayoutParams((int) this.f65878r, -1);
        }
        layoutParams.setMargins(getResources().getDimensionPixelOffset(R.dimen.wdp25), 0, 0, 0);
        this.f65864d.addView(tabView, position, layoutParams);
    }

    private void h() {
        View childAt = this.f65864d.getChildAt(this.f65865e);
        float left = childAt.getLeft();
        float right = childAt.getRight();
        if (this.f65875o == 0 && this.B) {
            TextView textView = (TextView) childAt.findViewById(R.id.tv_tab_title);
            this.S.setTextSize(this.I);
            this.R = ((right - left) - this.S.measureText(textView.getText().toString())) / 2.0f;
        }
        int i10 = this.f65865e;
        if (i10 < this.f65867g - 1) {
            View childAt2 = this.f65864d.getChildAt(i10 + 1);
            float left2 = childAt2.getLeft();
            float right2 = childAt2.getRight();
            float f10 = this.f65866f;
            left += (left2 - left) * f10;
            right += f10 * (right2 - right);
            if (this.f65875o == 0 && this.B) {
                TextView textView2 = (TextView) childAt2.findViewById(R.id.tv_tab_title);
                this.S.setTextSize(this.I);
                float fMeasureText = ((right2 - left2) - this.S.measureText(textView2.getText().toString())) / 2.0f;
                float f11 = this.R;
                this.R = f11 + (this.f65866f * (fMeasureText - f11));
            }
        }
        Rect rect = this.f65868h;
        int i11 = (int) left;
        rect.left = i11;
        int i12 = (int) right;
        rect.right = i12;
        if (this.f65875o == 0 && this.B) {
            float f12 = this.R;
            rect.left = (int) ((left + f12) - 1.0f);
            rect.right = (int) ((right - f12) - 1.0f);
        }
        Rect rect2 = this.f65869i;
        rect2.left = i11;
        rect2.right = i12;
        if (this.f65881u < 0.0f) {
            return;
        }
        float left3 = childAt.getLeft() + ((childAt.getWidth() - this.f65881u) / 2.0f);
        int i13 = this.f65865e;
        if (i13 < this.f65867g - 1) {
            left3 += this.f65866f * ((childAt.getWidth() / 2) + (this.f65864d.getChildAt(i13 + 1).getWidth() / 2));
        }
        Rect rect3 = this.f65868h;
        int i14 = (int) left3;
        rect3.left = i14;
        rect3.right = (int) (i14 + this.f65881u);
    }

    private void p(Context context, AttributeSet attrs) {
        float f10;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, com.flyco.tablayout.R.styleable.SlidingTabLayout);
        int i10 = typedArrayObtainStyledAttributes.getInt(11, 0);
        this.f65875o = i10;
        this.f65879s = typedArrayObtainStyledAttributes.getColor(3, Color.parseColor(i10 == 2 ? "#4B6A87" : "#ffffff"));
        int i11 = this.f65875o;
        if (i11 == 1) {
            f10 = 4.0f;
        } else {
            f10 = i11 == 2 ? -1 : 2;
        }
        this.f65880t = typedArrayObtainStyledAttributes.getDimension(6, i(f10));
        this.f65881u = typedArrayObtainStyledAttributes.getDimension(12, i(this.f65875o == 1 ? 10.0f : -1.0f));
        this.f65882v = typedArrayObtainStyledAttributes.getDimension(4, i(this.f65875o == 2 ? -1.0f : 0.0f));
        this.f65883w = typedArrayObtainStyledAttributes.getDimension(8, i(0.0f));
        this.f65884x = typedArrayObtainStyledAttributes.getDimension(10, i(this.f65875o == 2 ? 7.0f : 0.0f));
        this.f65885y = typedArrayObtainStyledAttributes.getDimension(9, i(0.0f));
        this.f65886z = typedArrayObtainStyledAttributes.getDimension(7, i(this.f65875o != 2 ? 0.0f : 7.0f));
        this.A = typedArrayObtainStyledAttributes.getInt(5, 80);
        this.B = typedArrayObtainStyledAttributes.getBoolean(13, false);
        this.C = typedArrayObtainStyledAttributes.getColor(22, Color.parseColor("#ffffff"));
        this.D = typedArrayObtainStyledAttributes.getDimension(24, i(0.0f));
        this.E = typedArrayObtainStyledAttributes.getInt(23, 80);
        this.F = typedArrayObtainStyledAttributes.getColor(0, Color.parseColor("#ffffff"));
        this.G = typedArrayObtainStyledAttributes.getDimension(2, i(0.0f));
        this.H = typedArrayObtainStyledAttributes.getDimension(1, i(12.0f));
        this.I = typedArrayObtainStyledAttributes.getDimension(21, t(14.0f));
        this.J = typedArrayObtainStyledAttributes.getColor(19, Color.parseColor("#ffffff"));
        this.K = typedArrayObtainStyledAttributes.getColor(20, Color.parseColor("#AAffffff"));
        this.L = typedArrayObtainStyledAttributes.getInt(18, 0);
        this.M = typedArrayObtainStyledAttributes.getBoolean(17, false);
        this.f65877q = typedArrayObtainStyledAttributes.getBoolean(15, false);
        float dimension = typedArrayObtainStyledAttributes.getDimension(16, i(-1.0f));
        this.f65878r = dimension;
        this.f65876p = typedArrayObtainStyledAttributes.getDimension(14, (this.f65877q || dimension > 0.0f) ? i(0.0f) : i(20.0f));
        typedArrayObtainStyledAttributes.recycle();
    }

    private void q() {
        if (this.f65867g <= 0) {
            return;
        }
        int left = (this.f65864d.getChildAt(this.f65865e).getLeft() + 0) - getResources().getDimensionPixelOffset(R.dimen.wdp25);
        if (this.f65865e > 0) {
            int width = left - ((getWidth() / 2) - getPaddingLeft());
            h();
            Rect rect = this.f65869i;
            left = width + ((rect.right - rect.left) / 2);
        }
        if (left != this.N) {
            this.N = left;
            scrollTo(left, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u(int position) {
        int i10 = 0;
        while (i10 < this.f65867g) {
            View childAt = this.f65864d.getChildAt(i10);
            boolean z10 = i10 == position;
            TextView textView = (TextView) childAt.findViewById(R.id.tv_tab_title);
            if (textView != null) {
                textView.setTextColor(z10 ? this.J : this.K);
                if (this.L == 1) {
                    textView.getPaint().setFakeBoldText(z10);
                }
            }
            i10++;
        }
    }

    private void v() {
        int i10 = 0;
        while (i10 < this.f65867g) {
            TextView textView = (TextView) this.f65864d.getChildAt(i10).findViewById(R.id.tv_tab_title);
            if (textView != null) {
                textView.setTextColor(i10 == this.f65865e ? this.J : this.K);
                textView.setTextSize(0, this.I);
                float f10 = this.f65876p;
                textView.setPadding((int) f10, 0, (int) f10, 0);
                if (this.M) {
                    textView.setText(textView.getText().toString().toUpperCase());
                }
                int i11 = this.L;
                if (i11 == 2) {
                    textView.getPaint().setFakeBoldText(true);
                } else if (i11 == 0) {
                    textView.getPaint().setFakeBoldText(false);
                }
                if (i10 == this.Q) {
                    textView.setSelected(true);
                } else {
                    textView.setSelected(false);
                }
            }
            i10++;
        }
    }

    public int getCurrentTab() {
        return this.f65865e;
    }

    public int getDividerColor() {
        return this.F;
    }

    public float getDividerPadding() {
        return this.H;
    }

    public float getDividerWidth() {
        return this.G;
    }

    public int getIndicatorColor() {
        return this.f65879s;
    }

    public float getIndicatorCornerRadius() {
        return this.f65882v;
    }

    public float getIndicatorHeight() {
        return this.f65880t;
    }

    public float getIndicatorMarginBottom() {
        return this.f65886z;
    }

    public float getIndicatorMarginLeft() {
        return this.f65883w;
    }

    public float getIndicatorMarginRight() {
        return this.f65885y;
    }

    public float getIndicatorMarginTop() {
        return this.f65884x;
    }

    public int getIndicatorStyle() {
        return this.f65875o;
    }

    public float getIndicatorWidth() {
        return this.f65881u;
    }

    public String getSelectTabName() {
        ArrayList<String> arrayList = this.f65863c;
        if (arrayList == null) {
            return "";
        }
        int size = arrayList.size();
        int i10 = this.Q;
        return size > i10 ? this.f65863c.get(i10) : "";
    }

    public int getTabCount() {
        return this.f65867g;
    }

    public float getTabPadding() {
        return this.f65876p;
    }

    public float getTabWidth() {
        return this.f65878r;
    }

    public int getTextBold() {
        return this.L;
    }

    public int getTextSelectColor() {
        return this.J;
    }

    public int getTextUnselectColor() {
        return this.K;
    }

    public float getTextsize() {
        return this.I;
    }

    public int getUnderlineColor() {
        return this.C;
    }

    public float getUnderlineHeight() {
        return this.D;
    }

    protected int i(float dp) {
        return (int) ((dp * this.f65862b.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public MsgView j(int position) {
        int i10 = this.f65867g;
        if (position >= i10) {
            position = i10 - 1;
        }
        return (MsgView) this.f65864d.getChildAt(position).findViewById(R.id.rtv_msg_tip);
    }

    public TextView k(int tab) {
        return (TextView) this.f65864d.getChildAt(tab).findViewById(R.id.tv_tab_title);
    }

    public void l(int position) {
        int i10 = this.f65867g;
        if (position >= i10) {
            position = i10 - 1;
        }
        MsgView msgView = (MsgView) this.f65864d.getChildAt(position).findViewById(R.id.rtv_msg_tip);
        if (msgView != null) {
            msgView.setVisibility(8);
        }
    }

    public boolean m() {
        return this.f65877q;
    }

    public boolean n() {
        return this.M;
    }

    public void o() {
        this.f65864d.removeAllViews();
        this.f65867g = this.f65863c.size();
        for (int i10 = 0; i10 < this.f65867g; i10++) {
            g(i10, this.f65863c.get(i10).toString(), View.inflate(this.f65862b, R.layout.tab_item_layout, null));
        }
        v();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (isInEditMode() || this.f65867g <= 0) {
            return;
        }
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        float f10 = this.G;
        if (f10 > 0.0f) {
            this.f65872l.setStrokeWidth(f10);
            this.f65872l.setColor(this.F);
            for (int i10 = 0; i10 < this.f65867g - 1; i10++) {
                View childAt = this.f65864d.getChildAt(i10);
                canvas.drawLine(childAt.getRight() + paddingLeft, this.H, childAt.getRight() + paddingLeft, height - this.H, this.f65872l);
            }
        }
        if (this.D > 0.0f) {
            this.f65871k.setColor(this.C);
            if (this.E == 80) {
                float f11 = height;
                canvas.drawRect(paddingLeft, f11 - this.D, this.f65864d.getWidth() + paddingLeft, f11, this.f65871k);
            } else {
                canvas.drawRect(paddingLeft, 0.0f, this.f65864d.getWidth() + paddingLeft, this.D, this.f65871k);
            }
        }
        h();
        int i11 = this.f65875o;
        if (i11 == 1) {
            if (this.f65880t > 0.0f) {
                this.f65873m.setColor(this.f65879s);
                this.f65874n.reset();
                float f12 = height;
                this.f65874n.moveTo(this.f65868h.left + paddingLeft, f12);
                Path path = this.f65874n;
                Rect rect = this.f65868h;
                path.lineTo((rect.left / 2) + paddingLeft + (rect.right / 2), f12 - this.f65880t);
                this.f65874n.lineTo(paddingLeft + this.f65868h.right, f12);
                this.f65874n.close();
                canvas.drawPath(this.f65874n, this.f65873m);
                return;
            }
            return;
        }
        if (i11 == 2) {
            if (this.f65880t < 0.0f) {
                this.f65880t = (height - this.f65884x) - this.f65886z;
            }
            float f13 = this.f65880t;
            if (f13 > 0.0f) {
                float f14 = this.f65882v;
                if (f14 < 0.0f || f14 > f13 / 2.0f) {
                    this.f65882v = f13 / 2.0f;
                }
                this.f65870j.setColor(this.f65879s);
                GradientDrawable gradientDrawable = this.f65870j;
                int i12 = ((int) this.f65883w) + paddingLeft;
                Rect rect2 = this.f65868h;
                int i13 = i12 + rect2.left;
                float f15 = this.f65884x;
                gradientDrawable.setBounds(i13, (int) f15, (int) ((paddingLeft + rect2.right) - this.f65885y), (int) (f15 + this.f65880t));
                this.f65870j.setCornerRadius(this.f65882v);
                this.f65870j.draw(canvas);
                return;
            }
            return;
        }
        if (this.f65880t > 0.0f) {
            this.f65870j.setColor(this.f65879s);
            if (this.A == 80) {
                GradientDrawable gradientDrawable2 = this.f65870j;
                int i14 = ((int) this.f65883w) + paddingLeft;
                Rect rect3 = this.f65868h;
                int i15 = i14 + rect3.left;
                int i16 = height - ((int) this.f65880t);
                float f16 = this.f65886z;
                gradientDrawable2.setBounds(i15, i16 - ((int) f16), (paddingLeft + rect3.right) - ((int) this.f65885y), height - ((int) f16));
            } else {
                GradientDrawable gradientDrawable3 = this.f65870j;
                int i17 = ((int) this.f65883w) + paddingLeft;
                Rect rect4 = this.f65868h;
                int i18 = i17 + rect4.left;
                float f17 = this.f65884x;
                gradientDrawable3.setBounds(i18, (int) f17, (paddingLeft + rect4.right) - ((int) this.f65885y), ((int) this.f65880t) + ((int) f17));
            }
            this.f65870j.setCornerRadius(this.f65882v);
            this.f65870j.draw(canvas);
        }
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    protected void onRestoreInstanceState(Parcelable state) {
        if (state instanceof Bundle) {
            Bundle bundle = (Bundle) state;
            this.f65865e = bundle.getInt("mCurrentTab");
            state = bundle.getParcelable("instanceState");
            if (this.f65865e != 0 && this.f65864d.getChildCount() > 0) {
                u(this.f65865e);
                q();
            }
        }
        super.onRestoreInstanceState(state);
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    protected Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("instanceState", super.onSaveInstanceState());
        bundle.putInt("mCurrentTab", this.f65865e);
        return bundle;
    }

    public void r(int position) {
        int i10 = this.f65867g;
        if (position >= i10) {
            position = i10 - 1;
        }
        s(position, 0);
    }

    public void s(int position, int num) {
        int i10 = this.f65867g;
        if (position >= i10) {
            position = i10 - 1;
        }
        MsgView msgView = (MsgView) this.f65864d.getChildAt(position).findViewById(R.id.rtv_msg_tip);
        if (msgView != null) {
            t4.b.b(msgView, num);
            if (this.T.get(position) == null || !this.T.get(position).booleanValue()) {
                setMsgMargin(position, 4.0f, 2.0f);
                this.T.put(position, Boolean.TRUE);
            }
        }
    }

    public void setDividerColor(int dividerColor) {
        this.F = dividerColor;
        invalidate();
    }

    public void setDividerPadding(float dividerPadding) {
        this.H = i(dividerPadding);
        invalidate();
    }

    public void setDividerWidth(float dividerWidth) {
        this.G = i(dividerWidth);
        invalidate();
    }

    public void setIndicatorColor(int indicatorColor) {
        this.f65879s = indicatorColor;
        invalidate();
    }

    public void setIndicatorCornerRadius(float indicatorCornerRadius) {
        this.f65882v = i(indicatorCornerRadius);
        invalidate();
    }

    public void setIndicatorGravity(int indicatorGravity) {
        this.A = indicatorGravity;
        invalidate();
    }

    public void setIndicatorHeight(float indicatorHeight) {
        this.f65880t = i(indicatorHeight);
        invalidate();
    }

    public void setIndicatorMargin(float indicatorMarginLeft, float indicatorMarginTop, float indicatorMarginRight, float indicatorMarginBottom) {
        this.f65883w = i(indicatorMarginLeft);
        this.f65884x = i(indicatorMarginTop);
        this.f65885y = i(indicatorMarginRight);
        this.f65886z = i(indicatorMarginBottom);
        invalidate();
    }

    public void setIndicatorStyle(int indicatorStyle) {
        this.f65875o = indicatorStyle;
        invalidate();
    }

    public void setIndicatorWidth(float indicatorWidth) {
        this.f65881u = i(indicatorWidth);
        invalidate();
    }

    public void setIndicatorWidthEqualTitle(boolean indicatorWidthEqualTitle) {
        this.B = indicatorWidthEqualTitle;
        invalidate();
    }

    public void setItemSelected(int position) {
        if (position != -1) {
            if (this.Q == position) {
                if (this.U == null) {
                    u(position);
                    this.f65866f = position;
                    this.f65865e = position;
                    q();
                    invalidate();
                    o();
                    return;
                }
                u(position);
                this.f65865e = position;
                this.f65866f = position;
                q();
                invalidate();
                this.U.onTabReselect(position);
                o();
                return;
            }
            this.Q = position;
            s4.b bVar = this.U;
            if (bVar == null) {
                u(position);
                this.f65865e = position;
                this.f65866f = position;
                invalidate();
                q();
                o();
                return;
            }
            bVar.onTabSelect(position);
            u(position);
            this.f65865e = position;
            this.f65866f = position;
            invalidate();
            q();
            o();
        }
    }

    public void setMsgMargin(int position, float leftPadding, float bottomPadding) {
        float f10;
        int i10 = this.f65867g;
        if (position >= i10) {
            position = i10 - 1;
        }
        View childAt = this.f65864d.getChildAt(position);
        MsgView msgView = (MsgView) childAt.findViewById(R.id.rtv_msg_tip);
        if (msgView != null) {
            TextView textView = (TextView) childAt.findViewById(R.id.tv_tab_title);
            this.S.setTextSize(this.I);
            float fMeasureText = this.S.measureText(textView.getText().toString());
            float fDescent = this.S.descent() - this.S.ascent();
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) msgView.getLayoutParams();
            float f11 = this.f65878r;
            if (f11 >= 0.0f) {
                f10 = f11 / 2.0f;
                fMeasureText /= 2.0f;
            } else {
                f10 = this.f65876p;
            }
            marginLayoutParams.leftMargin = (int) (f10 + fMeasureText + i(leftPadding));
            int i11 = this.O;
            marginLayoutParams.topMargin = i11 > 0 ? (((int) (i11 - fDescent)) / 2) - i(bottomPadding) : 0;
            msgView.setLayoutParams(marginLayoutParams);
        }
    }

    public void setOnTabSelectListener(s4.b listener) {
        this.U = listener;
    }

    public void setSnapOnTabClick(boolean snapOnTabClick) {
        this.P = snapOnTabClick;
    }

    public void setTabPadding(float tabPadding) {
        this.f65876p = i(tabPadding);
        v();
    }

    public void setTabSpaceEqual(boolean tabSpaceEqual) {
        this.f65877q = tabSpaceEqual;
        v();
    }

    public void setTabWidth(float tabWidth) {
        this.f65878r = i(tabWidth);
        v();
    }

    public void setTextAllCaps(boolean textAllCaps) {
        this.M = textAllCaps;
        v();
    }

    public void setTextBold(int textBold) {
        this.L = textBold;
        v();
    }

    public void setTextSelectColor(int textSelectColor) {
        this.J = textSelectColor;
        v();
    }

    public void setTextUnselectColor(int textUnselectColor) {
        this.K = textUnselectColor;
        v();
    }

    public void setTextsize(float textsize) {
        this.I = t(textsize);
        v();
    }

    public void setUnderlineColor(int underlineColor) {
        this.C = underlineColor;
        invalidate();
    }

    public void setUnderlineGravity(int underlineGravity) {
        this.E = underlineGravity;
        invalidate();
    }

    public void setUnderlineHeight(float underlineHeight) {
        this.D = i(underlineHeight);
        invalidate();
    }

    public void setmTitles(String[] titles) {
        ArrayList<String> arrayList = new ArrayList<>();
        this.f65863c = arrayList;
        Collections.addAll(arrayList, titles);
        o();
    }

    protected int t(float sp) {
        return (int) ((sp * this.f65862b.getResources().getDisplayMetrics().scaledDensity) + 0.5f);
    }

    public SlidingTabLayoutNoViewPager(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public SlidingTabLayoutNoViewPager(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f65868h = new Rect();
        this.f65869i = new Rect();
        this.f65870j = new GradientDrawable();
        this.f65871k = new Paint(1);
        this.f65872l = new Paint(1);
        this.f65873m = new Paint(1);
        this.f65874n = new Path();
        this.f65875o = 0;
        this.Q = 0;
        this.S = new Paint(1);
        this.T = new SparseArray<>();
        setFillViewport(true);
        setWillNotDraw(false);
        setClipChildren(false);
        setClipToPadding(false);
        this.f65862b = context;
        LinearLayout linearLayout = new LinearLayout(context);
        this.f65864d = linearLayout;
        addView(linearLayout);
        p(context, attrs);
        String attributeValue = attrs.getAttributeValue("http://schemas.android.com/apk/res/android", "layout_height");
        if (attributeValue.equals(WMConstants.TIMER_STAGE_NONE) || attributeValue.equals("-2")) {
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, new int[]{android.R.attr.layout_height});
        this.O = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, -2);
        typedArrayObtainStyledAttributes.recycle();
    }
}

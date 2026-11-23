package com.flyco.tablayout;

import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.flyco.tablayout.widget.MsgView;
import com.windmill.sdk.WMConstants;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes9.dex */
public class SegmentTabLayout extends FrameLayout implements ValueAnimator.AnimatorUpdateListener {
    private static final int U = 0;
    private static final int V = 1;
    private static final int W = 2;
    private float A;
    private float B;
    private int C;
    private int D;
    private int E;
    private boolean F;
    private int G;
    private int H;
    private float I;
    private int J;
    private ValueAnimator K;
    private OvershootInterpolator L;
    private t4.a M;
    private float[] N;
    private boolean O;
    private Paint P;
    private SparseArray<Boolean> Q;
    private s4.b R;
    private b S;
    private b T;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f29198b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String[] f29199c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private LinearLayout f29200d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f29201e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f29202f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f29203g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Rect f29204h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private GradientDrawable f29205i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private GradientDrawable f29206j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Paint f29207k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private float f29208l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f29209m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f29210n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f29211o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private float f29212p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private float f29213q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private float f29214r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private float f29215s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private float f29216t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private float f29217u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private long f29218v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f29219w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f29220x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f29221y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private float f29222z;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int iIntValue = ((Integer) view.getTag()).intValue();
            if (SegmentTabLayout.this.f29201e == iIntValue) {
                if (SegmentTabLayout.this.R != null) {
                    SegmentTabLayout.this.R.onTabReselect(iIntValue);
                }
            } else {
                SegmentTabLayout.this.setCurrentTab(iIntValue);
                if (SegmentTabLayout.this.R != null) {
                    SegmentTabLayout.this.R.onTabSelect(iIntValue);
                }
            }
        }
    }

    class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public float f29224a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public float f29225b;

        b() {
        }
    }

    class c implements TypeEvaluator<b> {
        c() {
        }

        @Override // android.animation.TypeEvaluator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public b evaluate(float f10, b bVar, b bVar2) {
            float f11 = bVar.f29224a;
            float f12 = f11 + ((bVar2.f29224a - f11) * f10);
            float f13 = bVar.f29225b;
            float f14 = f13 + (f10 * (bVar2.f29225b - f13));
            b bVar3 = SegmentTabLayout.this.new b();
            bVar3.f29224a = f12;
            bVar3.f29225b = f14;
            return bVar3;
        }
    }

    public SegmentTabLayout(Context context) {
        this(context, null, 0);
    }

    private void c(int i10, View view) {
        ((TextView) view.findViewById(R.id.tv_tab_title)).setText(this.f29199c[i10]);
        view.setOnClickListener(new a());
        LinearLayout.LayoutParams layoutParams = this.f29209m ? new LinearLayout.LayoutParams(0, -1, 1.0f) : new LinearLayout.LayoutParams(-2, -1);
        if (this.f29210n > 0.0f) {
            layoutParams = new LinearLayout.LayoutParams((int) this.f29210n, -1);
        }
        this.f29200d.addView(view, i10, layoutParams);
    }

    private void d() {
        View childAt = this.f29200d.getChildAt(this.f29201e);
        float left = childAt.getLeft();
        float right = childAt.getRight();
        Rect rect = this.f29204h;
        rect.left = (int) left;
        rect.right = (int) right;
        if (this.f29219w) {
            float[] fArr = this.N;
            float f10 = this.f29213q;
            fArr[0] = f10;
            fArr[1] = f10;
            fArr[2] = f10;
            fArr[3] = f10;
            fArr[4] = f10;
            fArr[5] = f10;
            fArr[6] = f10;
            fArr[7] = f10;
            return;
        }
        int i10 = this.f29201e;
        if (i10 == 0) {
            float[] fArr2 = this.N;
            float f11 = this.f29213q;
            fArr2[0] = f11;
            fArr2[1] = f11;
            fArr2[2] = 0.0f;
            fArr2[3] = 0.0f;
            fArr2[4] = 0.0f;
            fArr2[5] = 0.0f;
            fArr2[6] = f11;
            fArr2[7] = f11;
            return;
        }
        if (i10 != this.f29203g - 1) {
            float[] fArr3 = this.N;
            fArr3[0] = 0.0f;
            fArr3[1] = 0.0f;
            fArr3[2] = 0.0f;
            fArr3[3] = 0.0f;
            fArr3[4] = 0.0f;
            fArr3[5] = 0.0f;
            fArr3[6] = 0.0f;
            fArr3[7] = 0.0f;
            return;
        }
        float[] fArr4 = this.N;
        fArr4[0] = 0.0f;
        fArr4[1] = 0.0f;
        float f12 = this.f29213q;
        fArr4[2] = f12;
        fArr4[3] = f12;
        fArr4[4] = f12;
        fArr4[5] = f12;
        fArr4[6] = 0.0f;
        fArr4[7] = 0.0f;
    }

    private void e() {
        View childAt = this.f29200d.getChildAt(this.f29201e);
        this.S.f29224a = childAt.getLeft();
        this.S.f29225b = childAt.getRight();
        View childAt2 = this.f29200d.getChildAt(this.f29202f);
        this.T.f29224a = childAt2.getLeft();
        this.T.f29225b = childAt2.getRight();
        b bVar = this.T;
        float f10 = bVar.f29224a;
        b bVar2 = this.S;
        if (f10 == bVar2.f29224a && bVar.f29225b == bVar2.f29225b) {
            invalidate();
            return;
        }
        this.K.setObjectValues(bVar, bVar2);
        if (this.f29220x) {
            this.K.setInterpolator(this.L);
        }
        if (this.f29218v < 0) {
            this.f29218v = this.f29220x ? 500L : 250L;
        }
        this.K.setDuration(this.f29218v);
        this.K.start();
    }

    private void o(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SegmentTabLayout);
        this.f29211o = typedArrayObtainStyledAttributes.getColor(R.styleable.SegmentTabLayout_tl_indicator_color, Color.parseColor("#222831"));
        this.f29212p = typedArrayObtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_indicator_height, -1.0f);
        this.f29213q = typedArrayObtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_indicator_corner_radius, -1.0f);
        this.f29214r = typedArrayObtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_indicator_margin_left, f(0.0f));
        this.f29215s = typedArrayObtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_indicator_margin_top, 0.0f);
        this.f29216t = typedArrayObtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_indicator_margin_right, f(0.0f));
        this.f29217u = typedArrayObtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_indicator_margin_bottom, 0.0f);
        this.f29219w = typedArrayObtainStyledAttributes.getBoolean(R.styleable.SegmentTabLayout_tl_indicator_anim_enable, false);
        this.f29220x = typedArrayObtainStyledAttributes.getBoolean(R.styleable.SegmentTabLayout_tl_indicator_bounce_enable, true);
        this.f29218v = typedArrayObtainStyledAttributes.getInt(R.styleable.SegmentTabLayout_tl_indicator_anim_duration, -1);
        this.f29221y = typedArrayObtainStyledAttributes.getColor(R.styleable.SegmentTabLayout_tl_divider_color, this.f29211o);
        this.f29222z = typedArrayObtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_divider_width, f(1.0f));
        this.A = typedArrayObtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_divider_padding, 0.0f);
        this.B = typedArrayObtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_textsize, r(13.0f));
        this.C = typedArrayObtainStyledAttributes.getColor(R.styleable.SegmentTabLayout_tl_textSelectColor, Color.parseColor("#ffffff"));
        this.D = typedArrayObtainStyledAttributes.getColor(R.styleable.SegmentTabLayout_tl_textUnselectColor, this.f29211o);
        this.E = typedArrayObtainStyledAttributes.getInt(R.styleable.SegmentTabLayout_tl_textBold, 0);
        this.F = typedArrayObtainStyledAttributes.getBoolean(R.styleable.SegmentTabLayout_tl_textAllCaps, false);
        this.f29209m = typedArrayObtainStyledAttributes.getBoolean(R.styleable.SegmentTabLayout_tl_tab_space_equal, true);
        float dimension = typedArrayObtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_tab_width, f(-1.0f));
        this.f29210n = dimension;
        this.f29208l = typedArrayObtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_tab_padding, (this.f29209m || dimension > 0.0f) ? f(0.0f) : f(10.0f));
        this.G = typedArrayObtainStyledAttributes.getColor(R.styleable.SegmentTabLayout_tl_bar_color, 0);
        this.H = typedArrayObtainStyledAttributes.getColor(R.styleable.SegmentTabLayout_tl_bar_stroke_color, this.f29211o);
        this.I = typedArrayObtainStyledAttributes.getDimension(R.styleable.SegmentTabLayout_tl_bar_stroke_width, f(1.0f));
        typedArrayObtainStyledAttributes.recycle();
    }

    private void s(int i10) {
        int i11 = 0;
        while (i11 < this.f29203g) {
            View childAt = this.f29200d.getChildAt(i11);
            boolean z10 = i11 == i10;
            TextView textView = (TextView) childAt.findViewById(R.id.tv_tab_title);
            textView.setTextColor(z10 ? this.C : this.D);
            if (this.E == 1) {
                textView.getPaint().setFakeBoldText(z10);
            }
            i11++;
        }
    }

    private void t() {
        int i10 = 0;
        while (i10 < this.f29203g) {
            View childAt = this.f29200d.getChildAt(i10);
            float f10 = this.f29208l;
            childAt.setPadding((int) f10, 0, (int) f10, 0);
            TextView textView = (TextView) childAt.findViewById(R.id.tv_tab_title);
            textView.setTextColor(i10 == this.f29201e ? this.C : this.D);
            textView.setTextSize(0, this.B);
            if (this.F) {
                textView.setText(textView.getText().toString().toUpperCase());
            }
            int i11 = this.E;
            if (i11 == 2) {
                textView.getPaint().setFakeBoldText(true);
            } else if (i11 == 0) {
                textView.getPaint().setFakeBoldText(false);
            }
            i10++;
        }
    }

    protected int f(float f10) {
        return (int) ((f10 * this.f29198b.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public MsgView g(int i10) {
        int i11 = this.f29203g;
        if (i10 >= i11) {
            i10 = i11 - 1;
        }
        return (MsgView) this.f29200d.getChildAt(i10).findViewById(R.id.rtv_msg_tip);
    }

    public int getCurrentTab() {
        return this.f29201e;
    }

    public int getDividerColor() {
        return this.f29221y;
    }

    public float getDividerPadding() {
        return this.A;
    }

    public float getDividerWidth() {
        return this.f29222z;
    }

    public long getIndicatorAnimDuration() {
        return this.f29218v;
    }

    public int getIndicatorColor() {
        return this.f29211o;
    }

    public float getIndicatorCornerRadius() {
        return this.f29213q;
    }

    public float getIndicatorHeight() {
        return this.f29212p;
    }

    public float getIndicatorMarginBottom() {
        return this.f29217u;
    }

    public float getIndicatorMarginLeft() {
        return this.f29214r;
    }

    public float getIndicatorMarginRight() {
        return this.f29216t;
    }

    public float getIndicatorMarginTop() {
        return this.f29215s;
    }

    public int getTabCount() {
        return this.f29203g;
    }

    public float getTabPadding() {
        return this.f29208l;
    }

    public float getTabWidth() {
        return this.f29210n;
    }

    public int getTextBold() {
        return this.E;
    }

    public int getTextSelectColor() {
        return this.C;
    }

    public int getTextUnselectColor() {
        return this.D;
    }

    public float getTextsize() {
        return this.B;
    }

    public TextView h(int i10) {
        return (TextView) this.f29200d.getChildAt(i10).findViewById(R.id.tv_tab_title);
    }

    public void i(int i10) {
        int i11 = this.f29203g;
        if (i10 >= i11) {
            i10 = i11 - 1;
        }
        MsgView msgView = (MsgView) this.f29200d.getChildAt(i10).findViewById(R.id.rtv_msg_tip);
        if (msgView != null) {
            msgView.setVisibility(8);
        }
    }

    public boolean j() {
        return this.f29219w;
    }

    public boolean k() {
        return this.f29220x;
    }

    public boolean l() {
        return this.f29209m;
    }

    public boolean m() {
        return this.F;
    }

    public void n() {
        this.f29200d.removeAllViews();
        this.f29203g = this.f29199c.length;
        for (int i10 = 0; i10 < this.f29203g; i10++) {
            View viewInflate = View.inflate(this.f29198b, R.layout.layout_tab_segment, null);
            viewInflate.setTag(Integer.valueOf(i10));
            c(i10, viewInflate);
        }
        t();
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        b bVar = (b) valueAnimator.getAnimatedValue();
        Rect rect = this.f29204h;
        rect.left = (int) bVar.f29224a;
        rect.right = (int) bVar.f29225b;
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (isInEditMode() || this.f29203g <= 0) {
            return;
        }
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        if (this.f29212p < 0.0f) {
            this.f29212p = (height - this.f29215s) - this.f29217u;
        }
        float f10 = this.f29213q;
        if (f10 < 0.0f || f10 > this.f29212p / 2.0f) {
            this.f29213q = this.f29212p / 2.0f;
        }
        this.f29206j.setColor(this.G);
        this.f29206j.setStroke((int) this.I, this.H);
        this.f29206j.setCornerRadius(this.f29213q);
        this.f29206j.setBounds(getPaddingLeft(), getPaddingTop(), getWidth() - getPaddingRight(), getHeight() - getPaddingBottom());
        this.f29206j.draw(canvas);
        if (!this.f29219w) {
            float f11 = this.f29222z;
            if (f11 > 0.0f) {
                this.f29207k.setStrokeWidth(f11);
                this.f29207k.setColor(this.f29221y);
                for (int i10 = 0; i10 < this.f29203g - 1; i10++) {
                    View childAt = this.f29200d.getChildAt(i10);
                    canvas.drawLine(childAt.getRight() + paddingLeft, this.A, childAt.getRight() + paddingLeft, height - this.A, this.f29207k);
                }
            }
        }
        if (!this.f29219w) {
            d();
        } else if (this.O) {
            this.O = false;
            d();
        }
        this.f29205i.setColor(this.f29211o);
        GradientDrawable gradientDrawable = this.f29205i;
        int i11 = ((int) this.f29214r) + paddingLeft;
        Rect rect = this.f29204h;
        int i12 = i11 + rect.left;
        float f12 = this.f29215s;
        gradientDrawable.setBounds(i12, (int) f12, (int) ((paddingLeft + rect.right) - this.f29216t), (int) (f12 + this.f29212p));
        this.f29205i.setCornerRadii(this.N);
        this.f29205i.draw(canvas);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            this.f29201e = bundle.getInt("mCurrentTab");
            parcelable = bundle.getParcelable("instanceState");
            if (this.f29201e != 0 && this.f29200d.getChildCount() > 0) {
                s(this.f29201e);
            }
        }
        super.onRestoreInstanceState(parcelable);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("instanceState", super.onSaveInstanceState());
        bundle.putInt("mCurrentTab", this.f29201e);
        return bundle;
    }

    public void p(int i10) {
        int i11 = this.f29203g;
        if (i10 >= i11) {
            i10 = i11 - 1;
        }
        q(i10, 0);
    }

    public void q(int i10, int i11) {
        int i12 = this.f29203g;
        if (i10 >= i12) {
            i10 = i12 - 1;
        }
        MsgView msgView = (MsgView) this.f29200d.getChildAt(i10).findViewById(R.id.rtv_msg_tip);
        if (msgView != null) {
            t4.b.b(msgView, i11);
            if (this.Q.get(i10) == null || !this.Q.get(i10).booleanValue()) {
                setMsgMargin(i10, 2.0f, 2.0f);
                this.Q.put(i10, Boolean.TRUE);
            }
        }
    }

    protected int r(float f10) {
        return (int) ((f10 * this.f29198b.getResources().getDisplayMetrics().scaledDensity) + 0.5f);
    }

    public void setCurrentTab(int i10) {
        this.f29202f = this.f29201e;
        this.f29201e = i10;
        s(i10);
        t4.a aVar = this.M;
        if (aVar != null) {
            aVar.d(i10);
        }
        if (this.f29219w) {
            e();
        } else {
            invalidate();
        }
    }

    public void setDividerColor(int i10) {
        this.f29221y = i10;
        invalidate();
    }

    public void setDividerPadding(float f10) {
        this.A = f(f10);
        invalidate();
    }

    public void setDividerWidth(float f10) {
        this.f29222z = f(f10);
        invalidate();
    }

    public void setIndicatorAnimDuration(long j10) {
        this.f29218v = j10;
    }

    public void setIndicatorAnimEnable(boolean z10) {
        this.f29219w = z10;
    }

    public void setIndicatorBounceEnable(boolean z10) {
        this.f29220x = z10;
    }

    public void setIndicatorColor(int i10) {
        this.f29211o = i10;
        invalidate();
    }

    public void setIndicatorCornerRadius(float f10) {
        this.f29213q = f(f10);
        invalidate();
    }

    public void setIndicatorHeight(float f10) {
        this.f29212p = f(f10);
        invalidate();
    }

    public void setIndicatorMargin(float f10, float f11, float f12, float f13) {
        this.f29214r = f(f10);
        this.f29215s = f(f11);
        this.f29216t = f(f12);
        this.f29217u = f(f13);
        invalidate();
    }

    public void setMsgMargin(int i10, float f10, float f11) {
        int i11 = this.f29203g;
        if (i10 >= i11) {
            i10 = i11 - 1;
        }
        View childAt = this.f29200d.getChildAt(i10);
        MsgView msgView = (MsgView) childAt.findViewById(R.id.rtv_msg_tip);
        if (msgView != null) {
            TextView textView = (TextView) childAt.findViewById(R.id.tv_tab_title);
            this.P.setTextSize(this.B);
            this.P.measureText(textView.getText().toString());
            float fDescent = this.P.descent() - this.P.ascent();
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) msgView.getLayoutParams();
            marginLayoutParams.leftMargin = f(f10);
            int i12 = this.J;
            marginLayoutParams.topMargin = i12 > 0 ? (((int) (i12 - fDescent)) / 2) - f(f11) : f(f11);
            msgView.setLayoutParams(marginLayoutParams);
        }
    }

    public void setOnTabSelectListener(s4.b bVar) {
        this.R = bVar;
    }

    public void setTabData(String[] strArr) {
        if (strArr == null || strArr.length == 0) {
            throw new IllegalStateException("Titles can not be NULL or EMPTY !");
        }
        this.f29199c = strArr;
        n();
    }

    public void setTabPadding(float f10) {
        this.f29208l = f(f10);
        t();
    }

    public void setTabSpaceEqual(boolean z10) {
        this.f29209m = z10;
        t();
    }

    public void setTabWidth(float f10) {
        this.f29210n = f(f10);
        t();
    }

    public void setTextAllCaps(boolean z10) {
        this.F = z10;
        t();
    }

    public void setTextBold(int i10) {
        this.E = i10;
        t();
    }

    public void setTextSelectColor(int i10) {
        this.C = i10;
        t();
    }

    public void setTextUnselectColor(int i10) {
        this.D = i10;
        t();
    }

    public void setTextsize(float f10) {
        this.B = r(f10);
        t();
    }

    public SegmentTabLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SegmentTabLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f29204h = new Rect();
        this.f29205i = new GradientDrawable();
        this.f29206j = new GradientDrawable();
        this.f29207k = new Paint(1);
        this.L = new OvershootInterpolator(0.8f);
        this.N = new float[8];
        this.O = true;
        this.P = new Paint(1);
        this.Q = new SparseArray<>();
        this.S = new b();
        this.T = new b();
        setWillNotDraw(false);
        setClipChildren(false);
        setClipToPadding(false);
        this.f29198b = context;
        LinearLayout linearLayout = new LinearLayout(context);
        this.f29200d = linearLayout;
        addView(linearLayout);
        o(context, attributeSet);
        String attributeValue = attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "layout_height");
        if (!attributeValue.equals(WMConstants.TIMER_STAGE_NONE) && !attributeValue.equals("-2")) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{android.R.attr.layout_height});
            this.J = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, -2);
            typedArrayObtainStyledAttributes.recycle();
        }
        ValueAnimator valueAnimatorOfObject = ValueAnimator.ofObject(new c(), this.T, this.S);
        this.K = valueAnimatorOfObject;
        valueAnimatorOfObject.addUpdateListener(this);
    }

    public void setTabData(String[] strArr, FragmentActivity fragmentActivity, int i10, ArrayList<Fragment> arrayList) {
        this.M = new t4.a(fragmentActivity.getSupportFragmentManager(), i10, arrayList);
        setTabData(strArr);
    }
}

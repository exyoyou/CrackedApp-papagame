package com.flyco.tablayout;

import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
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
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.flyco.tablayout.widget.MsgView;
import com.windmill.sdk.WMConstants;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes9.dex */
public class CommonTabLayout extends FrameLayout implements ValueAnimator.AnimatorUpdateListener {
    private static final int L1 = 0;
    private static final int R1 = 1;
    private static final int V1 = 2;

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    private static final int f29159q1 = 0;

    /* JADX INFO: renamed from: r1, reason: collision with root package name */
    private static final int f29160r1 = 1;

    /* JADX INFO: renamed from: v1, reason: collision with root package name */
    private static final int f29161v1 = 2;
    private boolean A;
    private boolean B;
    private int C;
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
    private boolean O;
    private int P;
    private float Q;
    private float R;
    private float S;
    private int T;
    private ValueAnimator U;
    private OvershootInterpolator V;
    private t4.a W;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f29162b;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    private Paint f29163b1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ArrayList<s4.a> f29164c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private LinearLayout f29165d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f29166e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f29167f;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    private SparseArray<Boolean> f29168f1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f29169g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Rect f29170h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private GradientDrawable f29171i;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    private s4.b f29172i1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Paint f29173j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Paint f29174k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Paint f29175l;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    private b f29176l1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Path f29177m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f29178n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private float f29179o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f29180p;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private boolean f29181p0;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    private b f29182p1;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private float f29183q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f29184r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private float f29185s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private float f29186t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private float f29187u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private float f29188v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private float f29189w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private float f29190x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private float f29191y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private long f29192z;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int iIntValue = ((Integer) view.getTag()).intValue();
            if (CommonTabLayout.this.f29166e == iIntValue) {
                if (CommonTabLayout.this.f29172i1 != null) {
                    CommonTabLayout.this.f29172i1.onTabReselect(iIntValue);
                }
            } else {
                CommonTabLayout.this.setCurrentTab(iIntValue);
                if (CommonTabLayout.this.f29172i1 != null) {
                    CommonTabLayout.this.f29172i1.onTabSelect(iIntValue);
                }
            }
        }
    }

    class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public float f29194a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public float f29195b;

        b() {
        }
    }

    class c implements TypeEvaluator<b> {
        c() {
        }

        @Override // android.animation.TypeEvaluator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public b evaluate(float f10, b bVar, b bVar2) {
            float f11 = bVar.f29194a;
            float f12 = f11 + ((bVar2.f29194a - f11) * f10);
            float f13 = bVar.f29195b;
            float f14 = f13 + (f10 * (bVar2.f29195b - f13));
            b bVar3 = CommonTabLayout.this.new b();
            bVar3.f29194a = f12;
            bVar3.f29195b = f14;
            return bVar3;
        }
    }

    public CommonTabLayout(Context context) {
        this(context, null, 0);
    }

    private void c(int i10, View view) {
        ((TextView) view.findViewById(R.id.tv_tab_title)).setText(this.f29164c.get(i10).b());
        ((ImageView) view.findViewById(R.id.iv_tab_icon)).setImageResource(this.f29164c.get(i10).c());
        view.setOnClickListener(new a());
        LinearLayout.LayoutParams layoutParams = this.f29180p ? new LinearLayout.LayoutParams(0, -1, 1.0f) : new LinearLayout.LayoutParams(-2, -1);
        if (this.f29183q > 0.0f) {
            layoutParams = new LinearLayout.LayoutParams((int) this.f29183q, -1);
        }
        this.f29165d.addView(view, i10, layoutParams);
    }

    private void d() {
        View childAt = this.f29165d.getChildAt(this.f29166e);
        float left = childAt.getLeft();
        float right = childAt.getRight();
        Rect rect = this.f29170h;
        rect.left = (int) left;
        rect.right = (int) right;
        if (this.f29186t < 0.0f) {
            return;
        }
        float left2 = childAt.getLeft();
        float width = childAt.getWidth();
        float f10 = this.f29186t;
        float f11 = left2 + ((width - f10) / 2.0f);
        Rect rect2 = this.f29170h;
        int i10 = (int) f11;
        rect2.left = i10;
        rect2.right = (int) (i10 + f10);
    }

    private void e() {
        View childAt = this.f29165d.getChildAt(this.f29166e);
        this.f29176l1.f29194a = childAt.getLeft();
        this.f29176l1.f29195b = childAt.getRight();
        View childAt2 = this.f29165d.getChildAt(this.f29167f);
        this.f29182p1.f29194a = childAt2.getLeft();
        this.f29182p1.f29195b = childAt2.getRight();
        b bVar = this.f29182p1;
        float f10 = bVar.f29194a;
        b bVar2 = this.f29176l1;
        if (f10 == bVar2.f29194a && bVar.f29195b == bVar2.f29195b) {
            invalidate();
            return;
        }
        this.U.setObjectValues(bVar, bVar2);
        if (this.B) {
            this.U.setInterpolator(this.V);
        }
        if (this.f29192z < 0) {
            this.f29192z = this.B ? 500L : 250L;
        }
        this.U.setDuration(this.f29192z);
        this.U.start();
    }

    private void q(Context context, AttributeSet attributeSet) {
        float f10;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CommonTabLayout);
        int i10 = typedArrayObtainStyledAttributes.getInt(R.styleable.CommonTabLayout_tl_indicator_style, 0);
        this.f29178n = i10;
        this.f29184r = typedArrayObtainStyledAttributes.getColor(R.styleable.CommonTabLayout_tl_indicator_color, Color.parseColor(i10 == 2 ? "#4B6A87" : "#ffffff"));
        int i11 = R.styleable.CommonTabLayout_tl_indicator_height;
        int i12 = this.f29178n;
        if (i12 == 1) {
            f10 = 4.0f;
        } else {
            f10 = i12 == 2 ? -1 : 2;
        }
        this.f29185s = typedArrayObtainStyledAttributes.getDimension(i11, f(f10));
        this.f29186t = typedArrayObtainStyledAttributes.getDimension(R.styleable.CommonTabLayout_tl_indicator_width, f(this.f29178n == 1 ? 10.0f : -1.0f));
        this.f29187u = typedArrayObtainStyledAttributes.getDimension(R.styleable.CommonTabLayout_tl_indicator_corner_radius, f(this.f29178n == 2 ? -1.0f : 0.0f));
        this.f29188v = typedArrayObtainStyledAttributes.getDimension(R.styleable.CommonTabLayout_tl_indicator_margin_left, f(0.0f));
        this.f29189w = typedArrayObtainStyledAttributes.getDimension(R.styleable.CommonTabLayout_tl_indicator_margin_top, f(this.f29178n == 2 ? 7.0f : 0.0f));
        this.f29190x = typedArrayObtainStyledAttributes.getDimension(R.styleable.CommonTabLayout_tl_indicator_margin_right, f(0.0f));
        this.f29191y = typedArrayObtainStyledAttributes.getDimension(R.styleable.CommonTabLayout_tl_indicator_margin_bottom, f(this.f29178n != 2 ? 0.0f : 7.0f));
        this.A = typedArrayObtainStyledAttributes.getBoolean(R.styleable.CommonTabLayout_tl_indicator_anim_enable, true);
        this.B = typedArrayObtainStyledAttributes.getBoolean(R.styleable.CommonTabLayout_tl_indicator_bounce_enable, true);
        this.f29192z = typedArrayObtainStyledAttributes.getInt(R.styleable.CommonTabLayout_tl_indicator_anim_duration, -1);
        this.C = typedArrayObtainStyledAttributes.getInt(R.styleable.CommonTabLayout_tl_indicator_gravity, 80);
        this.D = typedArrayObtainStyledAttributes.getColor(R.styleable.CommonTabLayout_tl_underline_color, Color.parseColor("#ffffff"));
        this.E = typedArrayObtainStyledAttributes.getDimension(R.styleable.CommonTabLayout_tl_underline_height, f(0.0f));
        this.F = typedArrayObtainStyledAttributes.getInt(R.styleable.CommonTabLayout_tl_underline_gravity, 80);
        this.G = typedArrayObtainStyledAttributes.getColor(R.styleable.CommonTabLayout_tl_divider_color, Color.parseColor("#ffffff"));
        this.H = typedArrayObtainStyledAttributes.getDimension(R.styleable.CommonTabLayout_tl_divider_width, f(0.0f));
        this.I = typedArrayObtainStyledAttributes.getDimension(R.styleable.CommonTabLayout_tl_divider_padding, f(12.0f));
        this.J = typedArrayObtainStyledAttributes.getDimension(R.styleable.CommonTabLayout_tl_textsize, t(13.0f));
        this.K = typedArrayObtainStyledAttributes.getColor(R.styleable.CommonTabLayout_tl_textSelectColor, Color.parseColor("#ffffff"));
        this.L = typedArrayObtainStyledAttributes.getColor(R.styleable.CommonTabLayout_tl_textUnselectColor, Color.parseColor("#AAffffff"));
        this.M = typedArrayObtainStyledAttributes.getInt(R.styleable.CommonTabLayout_tl_textBold, 0);
        this.N = typedArrayObtainStyledAttributes.getBoolean(R.styleable.CommonTabLayout_tl_textAllCaps, false);
        this.O = typedArrayObtainStyledAttributes.getBoolean(R.styleable.CommonTabLayout_tl_iconVisible, true);
        this.P = typedArrayObtainStyledAttributes.getInt(R.styleable.CommonTabLayout_tl_iconGravity, 48);
        this.Q = typedArrayObtainStyledAttributes.getDimension(R.styleable.CommonTabLayout_tl_iconWidth, f(0.0f));
        this.R = typedArrayObtainStyledAttributes.getDimension(R.styleable.CommonTabLayout_tl_iconHeight, f(0.0f));
        this.S = typedArrayObtainStyledAttributes.getDimension(R.styleable.CommonTabLayout_tl_iconMargin, f(2.5f));
        this.f29180p = typedArrayObtainStyledAttributes.getBoolean(R.styleable.CommonTabLayout_tl_tab_space_equal, true);
        float dimension = typedArrayObtainStyledAttributes.getDimension(R.styleable.CommonTabLayout_tl_tab_width, f(-1.0f));
        this.f29183q = dimension;
        this.f29179o = typedArrayObtainStyledAttributes.getDimension(R.styleable.CommonTabLayout_tl_tab_padding, (this.f29180p || dimension > 0.0f) ? f(0.0f) : f(10.0f));
        typedArrayObtainStyledAttributes.recycle();
    }

    private void u(int i10) {
        int i11 = 0;
        while (i11 < this.f29169g) {
            View childAt = this.f29165d.getChildAt(i11);
            boolean z10 = i11 == i10;
            TextView textView = (TextView) childAt.findViewById(R.id.tv_tab_title);
            textView.setTextColor(z10 ? this.K : this.L);
            ImageView imageView = (ImageView) childAt.findViewById(R.id.iv_tab_icon);
            s4.a aVar = this.f29164c.get(i11);
            imageView.setImageResource(z10 ? aVar.a() : aVar.c());
            if (this.M == 1) {
                textView.getPaint().setFakeBoldText(z10);
            }
            i11++;
        }
    }

    private void v() {
        int i10 = 0;
        while (i10 < this.f29169g) {
            View childAt = this.f29165d.getChildAt(i10);
            float f10 = this.f29179o;
            childAt.setPadding((int) f10, 0, (int) f10, 0);
            TextView textView = (TextView) childAt.findViewById(R.id.tv_tab_title);
            textView.setTextColor(i10 == this.f29166e ? this.K : this.L);
            textView.setTextSize(0, this.J);
            if (this.N) {
                textView.setText(textView.getText().toString().toUpperCase());
            }
            int i11 = this.M;
            if (i11 == 2) {
                textView.getPaint().setFakeBoldText(true);
            } else if (i11 == 0) {
                textView.getPaint().setFakeBoldText(false);
            }
            ImageView imageView = (ImageView) childAt.findViewById(R.id.iv_tab_icon);
            if (this.O) {
                imageView.setVisibility(0);
                s4.a aVar = this.f29164c.get(i10);
                imageView.setImageResource(i10 == this.f29166e ? aVar.a() : aVar.c());
                float f11 = this.Q;
                int i12 = f11 <= 0.0f ? -2 : (int) f11;
                float f12 = this.R;
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i12, f12 > 0.0f ? (int) f12 : -2);
                int i13 = this.P;
                if (i13 == 3) {
                    layoutParams.rightMargin = (int) this.S;
                } else if (i13 == 5) {
                    layoutParams.leftMargin = (int) this.S;
                } else if (i13 == 80) {
                    layoutParams.topMargin = (int) this.S;
                } else {
                    layoutParams.bottomMargin = (int) this.S;
                }
                imageView.setLayoutParams(layoutParams);
            } else {
                imageView.setVisibility(8);
            }
            i10++;
        }
    }

    protected int f(float f10) {
        return (int) ((f10 * this.f29162b.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public ImageView g(int i10) {
        return (ImageView) this.f29165d.getChildAt(i10).findViewById(R.id.iv_tab_icon);
    }

    public int getCurrentTab() {
        return this.f29166e;
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

    public int getIconGravity() {
        return this.P;
    }

    public float getIconHeight() {
        return this.R;
    }

    public float getIconMargin() {
        return this.S;
    }

    public float getIconWidth() {
        return this.Q;
    }

    public long getIndicatorAnimDuration() {
        return this.f29192z;
    }

    public int getIndicatorColor() {
        return this.f29184r;
    }

    public float getIndicatorCornerRadius() {
        return this.f29187u;
    }

    public float getIndicatorHeight() {
        return this.f29185s;
    }

    public float getIndicatorMarginBottom() {
        return this.f29191y;
    }

    public float getIndicatorMarginLeft() {
        return this.f29188v;
    }

    public float getIndicatorMarginRight() {
        return this.f29190x;
    }

    public float getIndicatorMarginTop() {
        return this.f29189w;
    }

    public int getIndicatorStyle() {
        return this.f29178n;
    }

    public float getIndicatorWidth() {
        return this.f29186t;
    }

    public int getTabCount() {
        return this.f29169g;
    }

    public float getTabPadding() {
        return this.f29179o;
    }

    public float getTabWidth() {
        return this.f29183q;
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

    public MsgView h(int i10) {
        int i11 = this.f29169g;
        if (i10 >= i11) {
            i10 = i11 - 1;
        }
        return (MsgView) this.f29165d.getChildAt(i10).findViewById(R.id.rtv_msg_tip);
    }

    public TextView i(int i10) {
        return (TextView) this.f29165d.getChildAt(i10).findViewById(R.id.tv_tab_title);
    }

    public void j(int i10) {
        int i11 = this.f29169g;
        if (i10 >= i11) {
            i10 = i11 - 1;
        }
        MsgView msgView = (MsgView) this.f29165d.getChildAt(i10).findViewById(R.id.rtv_msg_tip);
        if (msgView != null) {
            msgView.setVisibility(8);
        }
    }

    public boolean k() {
        return this.O;
    }

    public boolean l() {
        return this.A;
    }

    public boolean m() {
        return this.B;
    }

    public boolean n() {
        return this.f29180p;
    }

    public boolean o() {
        return this.N;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        View childAt = this.f29165d.getChildAt(this.f29166e);
        b bVar = (b) valueAnimator.getAnimatedValue();
        Rect rect = this.f29170h;
        float f10 = bVar.f29194a;
        rect.left = (int) f10;
        rect.right = (int) bVar.f29195b;
        if (this.f29186t >= 0.0f) {
            float width = childAt.getWidth();
            float f11 = this.f29186t;
            float f12 = f10 + ((width - f11) / 2.0f);
            Rect rect2 = this.f29170h;
            int i10 = (int) f12;
            rect2.left = i10;
            rect2.right = (int) (i10 + f11);
        }
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (isInEditMode() || this.f29169g <= 0) {
            return;
        }
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        float f10 = this.H;
        if (f10 > 0.0f) {
            this.f29174k.setStrokeWidth(f10);
            this.f29174k.setColor(this.G);
            for (int i10 = 0; i10 < this.f29169g - 1; i10++) {
                View childAt = this.f29165d.getChildAt(i10);
                canvas.drawLine(childAt.getRight() + paddingLeft, this.I, childAt.getRight() + paddingLeft, height - this.I, this.f29174k);
            }
        }
        if (this.E > 0.0f) {
            this.f29173j.setColor(this.D);
            if (this.F == 80) {
                float f11 = height;
                canvas.drawRect(paddingLeft, f11 - this.E, this.f29165d.getWidth() + paddingLeft, f11, this.f29173j);
            } else {
                canvas.drawRect(paddingLeft, 0.0f, this.f29165d.getWidth() + paddingLeft, this.E, this.f29173j);
            }
        }
        if (!this.A) {
            d();
        } else if (this.f29181p0) {
            this.f29181p0 = false;
            d();
        }
        int i11 = this.f29178n;
        if (i11 == 1) {
            if (this.f29185s > 0.0f) {
                this.f29175l.setColor(this.f29184r);
                this.f29177m.reset();
                float f12 = height;
                this.f29177m.moveTo(this.f29170h.left + paddingLeft, f12);
                Path path = this.f29177m;
                Rect rect = this.f29170h;
                path.lineTo((rect.left / 2) + paddingLeft + (rect.right / 2), f12 - this.f29185s);
                this.f29177m.lineTo(paddingLeft + this.f29170h.right, f12);
                this.f29177m.close();
                canvas.drawPath(this.f29177m, this.f29175l);
                return;
            }
            return;
        }
        if (i11 == 2) {
            if (this.f29185s < 0.0f) {
                this.f29185s = (height - this.f29189w) - this.f29191y;
            }
            float f13 = this.f29185s;
            if (f13 > 0.0f) {
                float f14 = this.f29187u;
                if (f14 < 0.0f || f14 > f13 / 2.0f) {
                    this.f29187u = f13 / 2.0f;
                }
                this.f29171i.setColor(this.f29184r);
                GradientDrawable gradientDrawable = this.f29171i;
                int i12 = ((int) this.f29188v) + paddingLeft;
                Rect rect2 = this.f29170h;
                int i13 = i12 + rect2.left;
                float f15 = this.f29189w;
                gradientDrawable.setBounds(i13, (int) f15, (int) ((paddingLeft + rect2.right) - this.f29190x), (int) (f15 + this.f29185s));
                this.f29171i.setCornerRadius(this.f29187u);
                this.f29171i.draw(canvas);
                return;
            }
            return;
        }
        if (this.f29185s > 0.0f) {
            this.f29171i.setColor(this.f29184r);
            if (this.C == 80) {
                GradientDrawable gradientDrawable2 = this.f29171i;
                int i14 = ((int) this.f29188v) + paddingLeft;
                Rect rect3 = this.f29170h;
                int i15 = i14 + rect3.left;
                int i16 = height - ((int) this.f29185s);
                float f16 = this.f29191y;
                gradientDrawable2.setBounds(i15, i16 - ((int) f16), (paddingLeft + rect3.right) - ((int) this.f29190x), height - ((int) f16));
            } else {
                GradientDrawable gradientDrawable3 = this.f29171i;
                int i17 = ((int) this.f29188v) + paddingLeft;
                Rect rect4 = this.f29170h;
                int i18 = i17 + rect4.left;
                float f17 = this.f29189w;
                gradientDrawable3.setBounds(i18, (int) f17, (paddingLeft + rect4.right) - ((int) this.f29190x), ((int) this.f29185s) + ((int) f17));
            }
            this.f29171i.setCornerRadius(this.f29187u);
            this.f29171i.draw(canvas);
        }
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            this.f29166e = bundle.getInt("mCurrentTab");
            parcelable = bundle.getParcelable("instanceState");
            if (this.f29166e != 0 && this.f29165d.getChildCount() > 0) {
                u(this.f29166e);
            }
        }
        super.onRestoreInstanceState(parcelable);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("instanceState", super.onSaveInstanceState());
        bundle.putInt("mCurrentTab", this.f29166e);
        return bundle;
    }

    public void p() {
        View viewInflate;
        this.f29165d.removeAllViews();
        this.f29169g = this.f29164c.size();
        for (int i10 = 0; i10 < this.f29169g; i10++) {
            int i11 = this.P;
            if (i11 == 3) {
                viewInflate = View.inflate(this.f29162b, R.layout.layout_tab_left, null);
            } else if (i11 == 5) {
                viewInflate = View.inflate(this.f29162b, R.layout.layout_tab_right, null);
            } else {
                viewInflate = i11 == 80 ? View.inflate(this.f29162b, R.layout.layout_tab_bottom, null) : View.inflate(this.f29162b, R.layout.layout_tab_top, null);
            }
            viewInflate.setTag(Integer.valueOf(i10));
            c(i10, viewInflate);
        }
        v();
    }

    public void r(int i10) {
        int i11 = this.f29169g;
        if (i10 >= i11) {
            i10 = i11 - 1;
        }
        s(i10, 0);
    }

    public void s(int i10, int i11) {
        int i12 = this.f29169g;
        if (i10 >= i12) {
            i10 = i12 - 1;
        }
        MsgView msgView = (MsgView) this.f29165d.getChildAt(i10).findViewById(R.id.rtv_msg_tip);
        if (msgView != null) {
            t4.b.b(msgView, i11);
            if (this.f29168f1.get(i10) == null || !this.f29168f1.get(i10).booleanValue()) {
                if (this.O) {
                    int i13 = this.P;
                    setMsgMargin(i10, 0.0f, (i13 == 3 || i13 == 5) ? 4.0f : 0.0f);
                } else {
                    setMsgMargin(i10, 2.0f, 2.0f);
                }
                this.f29168f1.put(i10, Boolean.TRUE);
            }
        }
    }

    public void setCurrentTab(int i10) {
        this.f29167f = this.f29166e;
        this.f29166e = i10;
        u(i10);
        t4.a aVar = this.W;
        if (aVar != null) {
            aVar.d(i10);
        }
        if (this.A) {
            e();
        } else {
            invalidate();
        }
    }

    public void setDividerColor(int i10) {
        this.G = i10;
        invalidate();
    }

    public void setDividerPadding(float f10) {
        this.I = f(f10);
        invalidate();
    }

    public void setDividerWidth(float f10) {
        this.H = f(f10);
        invalidate();
    }

    public void setIconGravity(int i10) {
        this.P = i10;
        p();
    }

    public void setIconHeight(float f10) {
        this.R = f(f10);
        v();
    }

    public void setIconMargin(float f10) {
        this.S = f(f10);
        v();
    }

    public void setIconVisible(boolean z10) {
        this.O = z10;
        v();
    }

    public void setIconWidth(float f10) {
        this.Q = f(f10);
        v();
    }

    public void setIndicatorAnimDuration(long j10) {
        this.f29192z = j10;
    }

    public void setIndicatorAnimEnable(boolean z10) {
        this.A = z10;
    }

    public void setIndicatorBounceEnable(boolean z10) {
        this.B = z10;
    }

    public void setIndicatorColor(int i10) {
        this.f29184r = i10;
        invalidate();
    }

    public void setIndicatorCornerRadius(float f10) {
        this.f29187u = f(f10);
        invalidate();
    }

    public void setIndicatorGravity(int i10) {
        this.C = i10;
        invalidate();
    }

    public void setIndicatorHeight(float f10) {
        this.f29185s = f(f10);
        invalidate();
    }

    public void setIndicatorMargin(float f10, float f11, float f12, float f13) {
        this.f29188v = f(f10);
        this.f29189w = f(f11);
        this.f29190x = f(f12);
        this.f29191y = f(f13);
        invalidate();
    }

    public void setIndicatorStyle(int i10) {
        this.f29178n = i10;
        invalidate();
    }

    public void setIndicatorWidth(float f10) {
        this.f29186t = f(f10);
        invalidate();
    }

    public void setMsgMargin(int i10, float f10, float f11) {
        int i11 = this.f29169g;
        if (i10 >= i11) {
            i10 = i11 - 1;
        }
        View childAt = this.f29165d.getChildAt(i10);
        MsgView msgView = (MsgView) childAt.findViewById(R.id.rtv_msg_tip);
        if (msgView != null) {
            TextView textView = (TextView) childAt.findViewById(R.id.tv_tab_title);
            this.f29163b1.setTextSize(this.J);
            this.f29163b1.measureText(textView.getText().toString());
            float fDescent = this.f29163b1.descent() - this.f29163b1.ascent();
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) msgView.getLayoutParams();
            float intrinsicHeight = this.R;
            float f12 = 0.0f;
            if (this.O) {
                if (intrinsicHeight <= 0.0f) {
                    intrinsicHeight = this.f29162b.getResources().getDrawable(this.f29164c.get(i10).a()).getIntrinsicHeight();
                }
                f12 = this.S;
            }
            int i12 = this.P;
            if (i12 == 48 || i12 == 80) {
                marginLayoutParams.leftMargin = f(f10);
                int i13 = this.T;
                marginLayoutParams.topMargin = i13 > 0 ? (((int) (((i13 - fDescent) - intrinsicHeight) - f12)) / 2) - f(f11) : f(f11);
            } else {
                marginLayoutParams.leftMargin = f(f10);
                int i14 = this.T;
                marginLayoutParams.topMargin = i14 > 0 ? (((int) (i14 - Math.max(fDescent, intrinsicHeight))) / 2) - f(f11) : f(f11);
            }
            msgView.setLayoutParams(marginLayoutParams);
        }
    }

    public void setOnTabSelectListener(s4.b bVar) {
        this.f29172i1 = bVar;
    }

    public void setTabData(ArrayList<s4.a> arrayList) {
        if (arrayList == null || arrayList.size() == 0) {
            throw new IllegalStateException("TabEntitys can not be NULL or EMPTY !");
        }
        this.f29164c.clear();
        this.f29164c.addAll(arrayList);
        p();
    }

    public void setTabPadding(float f10) {
        this.f29179o = f(f10);
        v();
    }

    public void setTabSpaceEqual(boolean z10) {
        this.f29180p = z10;
        v();
    }

    public void setTabWidth(float f10) {
        this.f29183q = f(f10);
        v();
    }

    public void setTextAllCaps(boolean z10) {
        this.N = z10;
        v();
    }

    public void setTextBold(int i10) {
        this.M = i10;
        v();
    }

    public void setTextSelectColor(int i10) {
        this.K = i10;
        v();
    }

    public void setTextUnselectColor(int i10) {
        this.L = i10;
        v();
    }

    public void setTextsize(float f10) {
        this.J = t(f10);
        v();
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
        this.E = f(f10);
        invalidate();
    }

    protected int t(float f10) {
        return (int) ((f10 * this.f29162b.getResources().getDisplayMetrics().scaledDensity) + 0.5f);
    }

    public CommonTabLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CommonTabLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f29164c = new ArrayList<>();
        this.f29170h = new Rect();
        this.f29171i = new GradientDrawable();
        this.f29173j = new Paint(1);
        this.f29174k = new Paint(1);
        this.f29175l = new Paint(1);
        this.f29177m = new Path();
        this.f29178n = 0;
        this.V = new OvershootInterpolator(1.5f);
        this.f29181p0 = true;
        this.f29163b1 = new Paint(1);
        this.f29168f1 = new SparseArray<>();
        this.f29176l1 = new b();
        this.f29182p1 = new b();
        setWillNotDraw(false);
        setClipChildren(false);
        setClipToPadding(false);
        this.f29162b = context;
        LinearLayout linearLayout = new LinearLayout(context);
        this.f29165d = linearLayout;
        addView(linearLayout);
        q(context, attributeSet);
        String attributeValue = attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "layout_height");
        if (!attributeValue.equals(WMConstants.TIMER_STAGE_NONE) && !attributeValue.equals("-2")) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{android.R.attr.layout_height});
            this.T = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, -2);
            typedArrayObtainStyledAttributes.recycle();
        }
        ValueAnimator valueAnimatorOfObject = ValueAnimator.ofObject(new c(), this.f29182p1, this.f29176l1);
        this.U = valueAnimatorOfObject;
        valueAnimatorOfObject.addUpdateListener(this);
    }

    public void setTabData(ArrayList<s4.a> arrayList, FragmentActivity fragmentActivity, int i10, ArrayList<Fragment> arrayList2) {
        this.W = new t4.a(fragmentActivity.getSupportFragmentManager(), i10, arrayList2);
        setTabData(arrayList);
    }
}

package com.join.mgps.widget.indicator;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.core.internal.view.SupportMenu;
import com.join.android.app.mgsim.wufun.R;
import rc.a;

/* JADX INFO: loaded from: classes3.dex */
public class UIndicator extends View implements a {
    public static final int A = 0;
    public static final int B = 1;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final String f73342w = "LineCircleNavigator";

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final int f73343x = 0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final int f73344y = 1;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final int f73345z = 2;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f73346b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f73347c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f73348d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ColorStateList f73349e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ColorStateList f73350f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f73351g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f73352h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f73353i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f73354j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f73355k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f73356l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f73357m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f73358n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f73359o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Paint f73360p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Paint f73361q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private RectF f73362r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f73363s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f73364t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f73365u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f73366v;

    public UIndicator(Context context) {
        this(context, null);
    }

    private void b(AttributeSet attrs) {
        TypedArray typedArrayObtainStyledAttributes = this.f73346b.obtainStyledAttributes(attrs, R.styleable.UIndicator);
        this.f73349e = typedArrayObtainStyledAttributes.getColorStateList(10);
        this.f73350f = typedArrayObtainStyledAttributes.getColorStateList(5);
        this.f73347c = typedArrayObtainStyledAttributes.getDimensionPixelSize(11, a(6.0f));
        this.f73348d = typedArrayObtainStyledAttributes.getInt(6, 0);
        this.f73351g = typedArrayObtainStyledAttributes.getInt(12, 0);
        this.f73352h = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, a(3.0f));
        this.f73355k = typedArrayObtainStyledAttributes.getDimensionPixelSize(7, 0);
        this.f73354j = typedArrayObtainStyledAttributes.getDimensionPixelSize(8, a(3.0f));
        this.f73353i = typedArrayObtainStyledAttributes.getDimensionPixelSize(9, a(15.0f));
        this.f73358n = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, 0);
        this.f73359o = typedArrayObtainStyledAttributes.getDimensionPixelSize(4, a(3.0f));
        this.f73357m = typedArrayObtainStyledAttributes.getDimensionPixelSize(2, a(3.0f));
        this.f73356l = typedArrayObtainStyledAttributes.getDimensionPixelSize(3, a(15.0f));
        typedArrayObtainStyledAttributes.recycle();
    }

    private void c() {
        Paint paint = new Paint();
        this.f73360p = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f73360p.setAntiAlias(true);
        Paint paint2 = this.f73360p;
        ColorStateList colorStateList = this.f73350f;
        paint2.setColor(colorStateList == null ? -7829368 : colorStateList.getDefaultColor());
        Paint paint3 = new Paint();
        this.f73361q = paint3;
        paint3.setStyle(Paint.Style.FILL);
        this.f73361q.setAntiAlias(true);
        Paint paint4 = this.f73361q;
        ColorStateList colorStateList2 = this.f73349e;
        paint4.setColor(colorStateList2 == null ? SupportMenu.CATEGORY_MASK : colorStateList2.getDefaultColor());
        this.f73362r = new RectF();
    }

    public int a(float dpValue) {
        return (int) ((dpValue * getContext().getResources().getDisplayMetrics().density) + 0.5f);
    }

    @Override // rc.a
    public void e() {
    }

    @Override // rc.a
    public void f() {
    }

    @Override // rc.a
    public void notifyDataSetChanged() {
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int i10;
        int i11;
        int i12;
        int i13;
        super.onDraw(canvas);
        int i14 = 0;
        if (this.f73348d == 0) {
            int i15 = this.f73351g;
            if (i15 == 0) {
                float f10 = this.f73364t / 2;
                while (i14 < this.f73365u) {
                    int i16 = i14 + 1;
                    int i17 = this.f73352h;
                    canvas.drawCircle((i16 * i17) + (this.f73347c * i14), f10, i17, i14 == this.f73366v ? this.f73361q : this.f73360p);
                    i14 = i16;
                }
                return;
            }
            if (i15 == 1) {
                while (i14 < this.f73365u) {
                    int i18 = this.f73353i;
                    int i19 = (i14 * i18) + (this.f73347c * i14);
                    this.f73362r.set(i19, 0.0f, i19 + i18, this.f73354j);
                    RectF rectF = this.f73362r;
                    int i20 = this.f73355k;
                    canvas.drawRoundRect(rectF, i20, i20, i14 == this.f73366v ? this.f73361q : this.f73360p);
                    i14++;
                }
                return;
            }
            if (i15 != 2) {
                return;
            }
            while (i14 < this.f73365u) {
                int i21 = this.f73366v;
                int i22 = this.f73359o;
                int i23 = this.f73347c;
                int i24 = ((i22 * 2) + i23) * i21;
                if (i21 == i14) {
                    this.f73362r.set(i24, 0.0f, i24 + this.f73356l, this.f73357m * 2);
                    RectF rectF2 = this.f73362r;
                    int i25 = this.f73358n;
                    canvas.drawRoundRect(rectF2, i25, i25, this.f73361q);
                } else {
                    float f11 = ((this.f73364t - (i22 * 2)) / 2) + i22;
                    if (i21 < i14) {
                        i12 = ((i14 - 1) * i22 * 2) + (i23 * i14);
                        i13 = this.f73356l;
                    } else {
                        i12 = i22 * 2 * i14;
                        i13 = i23 * i14;
                    }
                    canvas.drawCircle(i12 + i13 + i22, f11, i22, this.f73360p);
                }
                i14++;
            }
            return;
        }
        int i26 = this.f73351g;
        if (i26 == 0) {
            float f12 = this.f73363s / 2;
            while (i14 < this.f73365u) {
                int i27 = this.f73352h;
                canvas.drawCircle(f12, (((i27 * 2) + this.f73347c) * i14) + i27, i27, i14 == this.f73366v ? this.f73361q : this.f73360p);
                i14++;
            }
            return;
        }
        if (i26 == 1) {
            while (i14 < this.f73365u) {
                int i28 = this.f73354j;
                int i29 = (i14 * i28) + (this.f73347c * i14);
                int i30 = this.f73363s;
                int i31 = this.f73353i;
                int i32 = (i30 - i31) / 2;
                this.f73362r.set(i32, i29, i32 + i31, i29 + i28);
                RectF rectF3 = this.f73362r;
                int i33 = this.f73355k;
                canvas.drawRoundRect(rectF3, i33, i33, i14 == this.f73366v ? this.f73361q : this.f73360p);
                i14++;
            }
            return;
        }
        if (i26 != 2) {
            return;
        }
        while (i14 < this.f73365u) {
            int i34 = this.f73366v;
            if (i34 == i14) {
                int i35 = this.f73363s;
                int i36 = this.f73356l;
                int i37 = (i35 - i36) / 2;
                int i38 = i34 * ((this.f73359o * 2) + this.f73347c);
                this.f73362r.set(i37, i38, i37 + i36, i38 + this.f73357m);
                RectF rectF4 = this.f73362r;
                int i39 = this.f73358n;
                canvas.drawRoundRect(rectF4, i39, i39, this.f73361q);
            } else {
                int i40 = this.f73363s;
                int i41 = this.f73359o;
                int i42 = ((i40 - (i41 * 2)) / 2) + i41;
                if (i34 < i14) {
                    i10 = ((i14 - 1) * i41 * 2) + (this.f73347c * i14);
                    i11 = this.f73357m;
                } else {
                    i10 = i41 * 2 * i14;
                    i11 = this.f73347c * i14;
                }
                canvas.drawCircle(i42, i10 + i11 + i41, i41, this.f73360p);
            }
            i14++;
        }
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        int size = View.MeasureSpec.getSize(heightMeasureSpec);
        int size2 = View.MeasureSpec.getSize(widthMeasureSpec);
        int i10 = this.f73351g;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    if (this.f73348d == 0) {
                        int i11 = this.f73359o;
                        int i12 = this.f73365u;
                        this.f73363s = ((i12 - 1) * i11 * 2) + this.f73356l + ((i12 - 1) * this.f73347c);
                        this.f73364t = Math.max(size, Math.max(this.f73357m, i11 * 2));
                    } else {
                        int i13 = this.f73359o;
                        int i14 = this.f73365u;
                        this.f73364t = ((i14 - 1) * i13 * 2) + this.f73357m + ((i14 - 1) * this.f73347c);
                        this.f73363s = Math.max(size2, Math.max(this.f73356l, i13 * 2));
                    }
                }
            } else if (this.f73348d == 0) {
                int i15 = this.f73353i;
                int i16 = this.f73365u;
                this.f73363s = (i15 * i16) + ((i16 - 1) * this.f73347c);
                this.f73364t = Math.max(size, this.f73354j);
            } else {
                int i17 = this.f73354j;
                int i18 = this.f73365u;
                this.f73364t = (i17 * i18) + ((i18 - 1) * this.f73347c);
                this.f73363s = Math.max(size2, this.f73353i);
            }
        } else if (this.f73348d == 0) {
            int i19 = this.f73352h;
            int i20 = this.f73365u;
            this.f73363s = (i19 * 2 * i20) + ((i20 - 1) * this.f73347c);
            this.f73364t = Math.max(size, i19 * 2);
        } else {
            int i21 = this.f73352h;
            int i22 = this.f73365u;
            this.f73364t = (i21 * 2 * i22) + ((i22 - 1) * this.f73347c);
            this.f73363s = Math.max(size2, i21 * 2);
        }
        setMeasuredDimension(this.f73363s, this.f73364t);
    }

    @Override // rc.a
    public void onPageScrollStateChanged(int i10) {
    }

    @Override // rc.a
    public void onPageScrolled(int i10, float v10, int i11) {
    }

    @Override // rc.a
    public void onPageSelected(int i10) {
        this.f73366v = i10;
        postInvalidate();
    }

    public void setItemCount(int itemCount) {
        this.f73365u = itemCount;
    }

    public void setSelection(int selection) {
        this.f73366v = selection;
    }

    public UIndicator(Context context, @Nullable AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public UIndicator(Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f73348d = 0;
        this.f73351g = 0;
        this.f73352h = 0;
        this.f73353i = 0;
        this.f73354j = 0;
        this.f73355k = 0;
        this.f73356l = 0;
        this.f73357m = 0;
        this.f73358n = 0;
        this.f73359o = 0;
        this.f73365u = 0;
        this.f73366v = 0;
        this.f73346b = context;
        b(attrs);
        c();
    }
}

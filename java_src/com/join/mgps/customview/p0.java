package com.join.mgps.customview;

import android.R;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;

/* JADX INFO: loaded from: classes3.dex */
class p0 extends LinearLayout {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final int f66721k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final byte f66722l = 38;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final int f66723m = 3;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final int f66724n = -13388315;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f66725b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Paint f66726c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f66727d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Paint f66728e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f66729f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f66730g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f66731h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private SlidingTabLayout2.d f66732i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final b f66733j;

    private static class b implements SlidingTabLayout2.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int[] f66734a;

        private b() {
        }

        @Override // com.join.mgps.customview.SlidingTabLayout2.d
        public final int a(int position) {
            int[] iArr = this.f66734a;
            return iArr[position % iArr.length];
        }

        void b(int... colors) {
            this.f66734a = colors;
        }
    }

    p0(Context context) {
        this(context, null);
    }

    private static int a(int color1, int color2, float ratio) {
        float f10 = 1.0f - ratio;
        return Color.rgb((int) ((Color.red(color1) * ratio) + (Color.red(color2) * f10)), (int) ((Color.green(color1) * ratio) + (Color.green(color2) * f10)), (int) ((Color.blue(color1) * ratio) + (Color.blue(color2) * f10)));
    }

    private static int d(int color, byte alpha) {
        return Color.argb((int) alpha, Color.red(color), Color.green(color), Color.blue(color));
    }

    public int b(float fontSize) {
        Paint paint = new Paint();
        paint.setTextSize(fontSize);
        Paint.FontMetrics fontMetrics = paint.getFontMetrics();
        return ((int) Math.ceil(fontMetrics.descent - fontMetrics.top)) + 2;
    }

    void c(int position, float positionOffset) {
        this.f66730g = position;
        this.f66731h = positionOffset;
        invalidate();
    }

    void e(SlidingTabLayout2.d customTabColorizer) {
        this.f66732i = customTabColorizer;
        invalidate();
    }

    void f(int... colors) {
        this.f66732i = null;
        this.f66733j.b(colors);
        invalidate();
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onDraw(Canvas canvas) {
        int height = getHeight();
        int childCount = getChildCount();
        SlidingTabLayout2.d dVar = this.f66732i;
        if (dVar == null) {
            dVar = this.f66733j;
        }
        if (childCount > 0) {
            View childAt = getChildAt(this.f66730g);
            int left = childAt.getLeft();
            int right = childAt.getRight();
            int iA = dVar.a(this.f66730g);
            if (this.f66731h > 0.0f && this.f66730g < getChildCount() - 1) {
                int iA2 = dVar.a(this.f66730g + 1);
                if (iA != iA2) {
                    iA = a(iA2, iA, this.f66731h);
                }
                View childAt2 = getChildAt(this.f66730g + 1);
                float left2 = this.f66731h * childAt2.getLeft();
                float f10 = this.f66731h;
                left = (int) (left2 + ((1.0f - f10) * left));
                right = (int) ((f10 * childAt2.getRight()) + ((1.0f - this.f66731h) * right));
            }
            this.f66728e.setColor(iA);
            if (childAt instanceof TextView) {
                int iB = b(((TextView) childAt).getTextSize());
                this.f66728e.setAntiAlias(true);
                this.f66728e.setStrokeWidth(2.0f);
                this.f66728e.setStyle(Paint.Style.STROKE);
                float fA = com.join.mgps.Util.i0.a(getContext(), 6.0f);
                RectF rectF = new RectF();
                rectF.left = left + com.join.mgps.Util.i0.a(getContext(), 1.0f);
                int i10 = ((height - iB) / 2) * 1;
                rectF.top = i10;
                rectF.right = right - com.join.mgps.Util.i0.a(getContext(), 1.0f);
                rectF.bottom = height - i10;
                canvas.drawRoundRect(rectF, fA, fA, this.f66728e);
            } else {
                canvas.drawRect(left, height - this.f66727d, right, height, this.f66728e);
            }
        }
        canvas.drawRect(0.0f, height - this.f66725b, getWidth(), height, this.f66726c);
    }

    p0(Context context, AttributeSet attrs) {
        super(context, attrs);
        setWillNotDraw(false);
        float f10 = getResources().getDisplayMetrics().density;
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.colorForeground, typedValue, true);
        int iD = d(typedValue.data, f66722l);
        this.f66729f = iD;
        b bVar = new b();
        this.f66733j = bVar;
        bVar.b(f66724n);
        this.f66725b = (int) (0.0f * f10);
        Paint paint = new Paint();
        this.f66726c = paint;
        paint.setColor(iD);
        this.f66727d = (int) (f10 * 3.0f);
        this.f66728e = new Paint();
    }
}

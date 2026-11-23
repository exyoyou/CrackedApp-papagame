package com.join.mgps.customview;

import android.R;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.widget.LinearLayout;

/* JADX INFO: loaded from: classes3.dex */
class o0 extends LinearLayout {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final int f66698k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final byte f66699l = 38;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final int f66700m = 3;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final int f66701n = -13388315;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f66702b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Paint f66703c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f66704d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Paint f66705e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f66706f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f66707g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f66708h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private SlidingTabLayout.d f66709i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final b f66710j;

    private static class b implements SlidingTabLayout.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int[] f66711a;

        private b() {
        }

        @Override // com.join.mgps.customview.SlidingTabLayout.d
        public final int a(int position) {
            int[] iArr = this.f66711a;
            return iArr[position % iArr.length];
        }

        void b(int... colors) {
            this.f66711a = colors;
        }
    }

    o0(Context context) {
        this(context, null);
    }

    private static int a(int color1, int color2, float ratio) {
        float f10 = 1.0f - ratio;
        return Color.rgb((int) ((Color.red(color1) * ratio) + (Color.red(color2) * f10)), (int) ((Color.green(color1) * ratio) + (Color.green(color2) * f10)), (int) ((Color.blue(color1) * ratio) + (Color.blue(color2) * f10)));
    }

    private static int c(int color, byte alpha) {
        return Color.argb((int) alpha, Color.red(color), Color.green(color), Color.blue(color));
    }

    void b(int position, float positionOffset) {
        this.f66707g = position;
        this.f66708h = positionOffset;
        invalidate();
    }

    void d(SlidingTabLayout.d customTabColorizer) {
        this.f66709i = customTabColorizer;
        invalidate();
    }

    void e(int... colors) {
        this.f66709i = null;
        this.f66710j.b(colors);
        invalidate();
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onDraw(Canvas canvas) {
        int height = getHeight();
        int childCount = getChildCount();
        SlidingTabLayout.d dVar = this.f66709i;
        if (dVar == null) {
            dVar = this.f66710j;
        }
        if (childCount > 0) {
            View childAt = getChildAt(this.f66707g);
            int left = childAt.getLeft();
            int right = childAt.getRight();
            int iA = dVar.a(this.f66707g);
            if (this.f66708h > 0.0f && this.f66707g < getChildCount() - 1) {
                int iA2 = dVar.a(this.f66707g + 1);
                if (iA != iA2) {
                    iA = a(iA2, iA, this.f66708h);
                }
                View childAt2 = getChildAt(this.f66707g + 1);
                float left2 = this.f66708h * childAt2.getLeft();
                float f10 = this.f66708h;
                left = (int) (left2 + ((1.0f - f10) * left));
                right = (int) ((f10 * childAt2.getRight()) + ((1.0f - this.f66708h) * right));
            }
            this.f66705e.setColor(iA);
            canvas.drawRect(left, height - this.f66704d, right, height, this.f66705e);
        }
        canvas.drawRect(0.0f, height - this.f66702b, getWidth(), height, this.f66703c);
    }

    o0(Context context, AttributeSet attrs) {
        super(context, attrs);
        setWillNotDraw(false);
        float f10 = getResources().getDisplayMetrics().density;
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.colorForeground, typedValue, true);
        int iC = c(typedValue.data, f66699l);
        this.f66706f = iC;
        b bVar = new b();
        this.f66710j = bVar;
        bVar.b(f66701n);
        this.f66702b = (int) (0.0f * f10);
        Paint paint = new Paint();
        this.f66703c = paint;
        paint.setColor(iC);
        this.f66704d = (int) (f10 * 3.0f);
        this.f66705e = new Paint();
    }
}

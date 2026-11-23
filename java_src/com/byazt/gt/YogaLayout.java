package com.byazt.gt;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import com.byazt.bj.a;
import com.byazt.bj.da;
import com.byazt.bj.i;
import com.byazt.bj.n;
import com.byazt.bj.sl;
import com.byazt.bj.u;
import com.byazt.bj.ve;
import com.byazt.bj.yp;
import com.byazt.rb.sp;
import com.byazt.rb.x;
import com.byazt.sa.uj;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 195, 225})
public class YogaLayout extends ViewGroup implements sp, com.byazt.xj.tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Map<View, da> f14729c;
    public final da tt;
    public x uj;
    public uj ve;

    public YogaLayout(Context context) {
        this(context, null, 0);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        da daVarC;
        this.tt.c((com.byazt.bj.sp) null);
        if (view instanceof VirtualYogaLayout) {
            VirtualYogaLayout virtualYogaLayout = (VirtualYogaLayout) view;
            virtualYogaLayout.c(this);
            da yogaNode = virtualYogaLayout.getYogaNode();
            da daVar = this.tt;
            daVar.c(yogaNode, daVar.c());
            return;
        }
        super.addView(view, i10, layoutParams);
        if (this.f14729c.containsKey(view)) {
            return;
        }
        if (view instanceof YogaLayout) {
            daVarC = ((YogaLayout) view).getYogaNode();
        } else {
            daVarC = this.f14729c.containsKey(view) ? this.f14729c.get(view) : sl.c();
            daVarC.c(view);
            daVarC.c((com.byazt.bj.sp) new tt());
        }
        c((c) view.getLayoutParams(), daVarC, view);
        this.f14729c.put(view, daVarC);
        if (view.getVisibility() == 8) {
            view.setTag(151060224, Integer.valueOf(this.tt.c()));
        } else {
            da daVar2 = this.tt;
            daVar2.c(daVarC, daVar2.c());
        }
    }

    public da c(View view) {
        return this.f14729c.get(view);
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof c;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        uj ujVar = this.ve;
        if (ujVar != null) {
            ujVar.tt(canvas);
        }
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new c(-1, -1);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new c(layoutParams);
    }

    public float getBorderRadius() {
        return this.uj.c();
    }

    @Override // com.byazt.rb.sp
    public float getRipple() {
        return this.uj.getRipple();
    }

    @Override // com.byazt.rb.sp
    public float getRubIn() {
        return this.uj.getRubIn();
    }

    @Override // com.byazt.rb.sp
    public float getShine() {
        return this.uj.getShine();
    }

    @Override // com.byazt.rb.sp
    public float getStretch() {
        return this.uj.getStretch();
    }

    public da getYogaNode() {
        return this.tt;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        uj ujVar = this.ve;
        if (ujVar != null) {
            ujVar.n();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        uj ujVar = this.ve;
        if (ujVar != null) {
            ujVar.a();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        uj ujVar = this.ve;
        if (ujVar != null) {
            ujVar.c(canvas);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        uj ujVar = this.ve;
        if (ujVar != null) {
            ujVar.uj();
        }
        if (!(getParent() instanceof YogaLayout)) {
            c(View.MeasureSpec.makeMeasureSpec(i12 - i10, 1073741824), View.MeasureSpec.makeMeasureSpec(i13 - i11, 1073741824));
        }
        c(this.tt, 0.0f, 0.0f);
        uj ujVar2 = this.ve;
        if (ujVar2 != null) {
            ujVar2.c(i10, i11, i12, i13);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i10, int i11) {
        if (!(getParent() instanceof YogaLayout)) {
            c(i10, i11);
        }
        uj ujVar = this.ve;
        if (ujVar != null) {
            int[] iArrC = ujVar.c(i10, i11);
            setMeasuredDimension(iArrC[0], iArrC[1]);
        } else {
            setMeasuredDimension(Math.round(this.tt.x()), Math.round(this.tt.i()));
        }
        uj ujVar2 = this.ve;
        if (ujVar2 != null) {
            ujVar2.ve();
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        uj ujVar = this.ve;
        if (ujVar != null) {
            ujVar.tt(i10, i11, i12, i13);
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        uj ujVar = this.ve;
        if (ujVar != null) {
            ujVar.c(z10);
        }
    }

    @Override // android.view.ViewGroup
    public void removeAllViews() {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            c(getChildAt(i10), false);
        }
        super.removeAllViews();
    }

    @Override // android.view.ViewGroup
    public void removeAllViewsInLayout() {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            c(getChildAt(i10), true);
        }
        super.removeAllViewsInLayout();
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        c(view, false);
        super.removeView(view);
    }

    @Override // android.view.ViewGroup
    public void removeViewAt(int i10) {
        c(getChildAt(i10), false);
        super.removeViewAt(i10);
    }

    @Override // android.view.ViewGroup
    public void removeViewInLayout(View view) {
        c(view, true);
        super.removeViewInLayout(view);
    }

    @Override // android.view.ViewGroup
    public void removeViews(int i10, int i11) {
        for (int i12 = i10; i12 < i10 + i11; i12++) {
            c(getChildAt(i12), false);
        }
        super.removeViews(i10, i11);
    }

    @Override // android.view.ViewGroup
    public void removeViewsInLayout(int i10, int i11) {
        for (int i12 = i10; i12 < i10 + i11; i12++) {
            c(getChildAt(i12), true);
        }
        super.removeViewsInLayout(i10, i11);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i10) {
        this.uj.c(i10);
    }

    public void setBorderRadius(float f10) {
        this.uj.c(f10);
    }

    public void setRipple(float f10) {
        x xVar = this.uj;
        if (xVar != null) {
            xVar.tt(f10);
        }
    }

    public void setRubIn(float f10) {
        x xVar = this.uj;
        if (xVar != null) {
            xVar.n(f10);
        }
    }

    public void setShine(float f10) {
        x xVar = this.uj;
        if (xVar != null) {
            xVar.ve(f10);
        }
    }

    public void setStretch(float f10) {
        x xVar = this.uj;
        if (xVar != null) {
            xVar.uj(f10);
        }
    }

    @Override // com.byazt.xj.tt
    public void tt(int i10) {
        da daVar = this.tt;
        if (daVar != null) {
            tt(daVar, i10);
            requestLayout();
        }
    }

    public void uj(View view, int i10) {
        int iC;
        view.setVisibility(i10);
        try {
            da daVar = this.f14729c.get(view);
            Object tag = view.getTag(151060224);
            if (i10 != 0) {
                if (i10 != 8 || (iC = this.tt.c(daVar)) == -1) {
                    return;
                }
                this.tt.tt(iC);
                view.setTag(151060224, Integer.valueOf(iC));
                c(this.tt);
                return;
            }
            if (tag == null || this.tt.c(daVar) != -1) {
                return;
            }
            int iIntValue = ((Integer) tag).intValue();
            if (iIntValue < this.tt.c()) {
                this.tt.c(this.f14729c.get(view), iIntValue);
            } else {
                this.tt.c(this.f14729c.get(view), this.tt.c());
            }
            c(this.tt);
        } catch (Throwable unused) {
        }
    }

    @Override // com.byazt.xj.tt
    public void ve(View view, int i10) {
        uj(view, i10);
    }

    public YogaLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.uj = new x(this);
        da daVarC = sl.c();
        this.tt = daVarC;
        this.f14729c = new HashMap();
        daVarC.c(this);
        daVarC.c((com.byazt.bj.sp) new tt());
        c((c) generateDefaultLayoutParams(), daVarC, this);
    }

    @Override // com.byazt.xj.tt
    public void c(int i10) {
        da daVar = this.tt;
        if (daVar != null) {
            c(daVar, i10);
            requestLayout();
        }
    }

    @Override // com.byazt.xj.tt
    public void tt(View view, int i10) {
        da daVarC;
        if (view == null || (daVarC = c(view)) == null) {
            return;
        }
        tt(daVarC, i10);
        view.requestLayout();
    }

    @Override // com.byazt.xj.tt
    public void c(View view, int i10) {
        da daVarC;
        if (view == null || (daVarC = c(view)) == null) {
            return;
        }
        c(daVarC, i10);
        view.requestLayout();
    }

    private void tt(da daVar, int i10) {
        if (i10 == -1) {
            daVar.sp(100.0f);
        } else if (i10 == -2) {
            daVar.n();
        } else {
            daVar.a(i10);
        }
    }

    private void c(da daVar, int i10) {
        if (i10 == -1) {
            daVar.n(100.0f);
        } else if (i10 == -2) {
            daVar.uj();
        } else {
            daVar.uj(i10);
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 195, 2212})
    public static class tt implements com.byazt.bj.sp {
        @Override // com.byazt.bj.sp
        public long c(da daVar, float f10, com.byazt.bj.x xVar, float f11, com.byazt.bj.x xVar2) {
            View view = (View) daVar.da();
            if (view == null || (view instanceof YogaLayout)) {
                return i.c(0, 0);
            }
            view.measure(View.MeasureSpec.makeMeasureSpec((int) f10, c(xVar)), View.MeasureSpec.makeMeasureSpec((int) f11, c(xVar2)));
            return i.c(view.getMeasuredWidth(), view.getMeasuredHeight());
        }

        private int c(com.byazt.bj.x xVar) {
            if (xVar == com.byazt.bj.x.AT_MOST) {
                return Integer.MIN_VALUE;
            }
            return xVar == com.byazt.bj.x.EXACTLY ? 1073741824 : 0;
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 195, 2525})
    public static class c extends ViewGroup.LayoutParams {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public float f14730a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public SparseArray<Float> f14731c;

        /* JADX INFO: renamed from: da, reason: collision with root package name */
        public float f14732da;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public float f14733i;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public float f14734m;
        public float my;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public float f14735n;
        public float nu;
        public float rh;
        public float sl;
        public float sp;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public float f14736t;
        public SparseArray<String> tt;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public float f14737u;
        public float uj;
        public float ve;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public float f14738x;
        public float yp;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        public float f14739z;

        public c(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            if (layoutParams instanceof c) {
                c cVar = (c) layoutParams;
                this.f14731c = cVar.f14731c.clone();
                this.tt = cVar.tt.clone();
                return;
            }
            this.f14731c = new SparseArray<>();
            this.tt = new SparseArray<>();
            if (layoutParams.width >= 0) {
                this.f14731c.put(15, Float.valueOf(((ViewGroup.LayoutParams) this).width));
            }
            if (layoutParams.height >= 0) {
                this.f14731c.put(16, Float.valueOf(((ViewGroup.LayoutParams) this).height));
            }
        }

        public void a(float f10) {
            this.f14736t = f10;
            this.f14731c.put(14, Float.valueOf(f10));
        }

        public void c(float f10) {
            this.sp = f10;
            this.f14731c.put(5, Float.valueOf(f10));
        }

        public void da(float f10) {
            this.f14734m = f10;
            this.f14731c.put(13, Float.valueOf(f10));
        }

        public void i(float f10) {
            this.f14739z = f10;
            this.f14731c.put(12, Float.valueOf(f10));
        }

        public void m(float f10) {
            this.rh = f10;
            this.f14731c.put(27, Float.valueOf(f10));
        }

        public void n(float f10) {
            this.sl = f10;
            this.f14731c.put(9, Float.valueOf(f10));
        }

        public void nu(float f10) {
            this.my = f10;
            this.f14731c.put(28, Float.valueOf(f10));
        }

        public void sl(float f10) {
            this.ve = f10;
            this.f14731c.put(17, Float.valueOf(f10));
        }

        public void sp(float f10) {
            this.f14737u = f10;
            this.f14731c.put(10, Float.valueOf(f10));
        }

        public void t(float f10) {
            this.uj = f10;
            this.f14731c.put(18, Float.valueOf(f10));
        }

        public void tt(float f10) {
            this.f14738x = f10;
            this.f14731c.put(6, Float.valueOf(f10));
        }

        public void u(float f10) {
            this.f14735n = f10;
            this.f14731c.put(19, Float.valueOf(f10));
        }

        public void uj(float f10) {
            this.f14732da = f10;
            this.f14731c.put(8, Float.valueOf(f10));
        }

        public void ve(float f10) {
            this.f14733i = f10;
            this.f14731c.put(7, Float.valueOf(f10));
        }

        public void x(float f10) {
            this.yp = f10;
            this.f14731c.put(11, Float.valueOf(f10));
        }

        public void yp(float f10) {
            this.f14730a = f10;
            this.f14731c.put(20, Float.valueOf(f10));
        }

        public void z(float f10) {
            this.nu = f10;
            this.f14731c.put(25, Float.valueOf(f10));
        }

        public c(int i10, int i11) {
            super(i10, i11);
            this.f14731c = new SparseArray<>();
            this.tt = new SparseArray<>();
            if (i10 == -2 || i10 == -1 || i10 >= 0) {
                this.f14731c.put(15, Float.valueOf(i10));
            }
            if (i11 == -2 || i11 == -1 || i11 >= 0) {
                this.f14731c.put(16, Float.valueOf(i11));
            }
        }
    }

    private void c(da daVar) {
        if (daVar.tt() != null) {
            c(daVar.tt());
        } else {
            daVar.c(Float.NaN, Float.NaN);
        }
    }

    public void c(View view, da daVar) {
        this.f14729c.put(view, daVar);
        addView(view);
    }

    private void c(View view, boolean z10) {
        try {
            da daVar = this.f14729c.get(view);
            if (daVar == null) {
                return;
            }
            da daVarTt = daVar.tt();
            for (int i10 = 0; i10 < daVarTt.c(); i10++) {
                if (daVarTt.c(i10).equals(daVar)) {
                    daVarTt.tt(i10);
                    break;
                }
            }
            daVar.c((Object) null);
            this.f14729c.remove(view);
            if (z10) {
                this.tt.c(Float.NaN, Float.NaN);
            }
        } catch (Throwable unused) {
        }
    }

    private void c(da daVar, float f10, float f11) {
        View view = (View) daVar.da();
        if (view != null && view != this) {
            if (view.getVisibility() == 8) {
                return;
            }
            int iRound = Math.round(daVar.a() + f10);
            int iRound2 = Math.round(daVar.sp() + f11);
            view.measure(View.MeasureSpec.makeMeasureSpec(Math.round(daVar.x()), 1073741824), View.MeasureSpec.makeMeasureSpec(Math.round(daVar.i()), 1073741824));
            view.layout(iRound, iRound2, view.getMeasuredWidth() + iRound, view.getMeasuredHeight() + iRound2);
        }
        int iC = daVar.c();
        for (int i10 = 0; i10 < iC; i10++) {
            if (equals(view)) {
                c(daVar.c(i10), f10, f11);
            } else if (!(view instanceof YogaLayout)) {
                c(daVar.c(i10), daVar.a() + f10, daVar.sp() + f11);
            }
        }
    }

    private void c(int i10, int i11) {
        int size = View.MeasureSpec.getSize(i10);
        int size2 = View.MeasureSpec.getSize(i11);
        int mode = View.MeasureSpec.getMode(i10);
        int mode2 = View.MeasureSpec.getMode(i11);
        if (mode2 == 1073741824) {
            this.tt.a(size2);
        }
        if (mode == 1073741824) {
            this.tt.uj(size);
        }
        if (mode2 == Integer.MIN_VALUE) {
            this.tt.sl(size2);
        }
        if (mode == Integer.MIN_VALUE) {
            this.tt.da(size);
        }
        this.tt.c(Float.NaN, Float.NaN);
    }

    public static void c(c cVar, da daVar, View view) {
        if (view.getResources().getConfiguration().getLayoutDirection() == 1) {
            daVar.c(ve.RTL);
        }
        Drawable background = view.getBackground();
        if (background != null) {
            Rect rect = new Rect();
            if (background.getPadding(rect)) {
                daVar.tt(com.byazt.bj.uj.LEFT, rect.left);
                daVar.tt(com.byazt.bj.uj.TOP, rect.top);
                daVar.tt(com.byazt.bj.uj.RIGHT, rect.right);
                daVar.tt(com.byazt.bj.uj.BOTTOM, rect.bottom);
            }
        }
        for (int i10 = 0; i10 < cVar.f14731c.size(); i10++) {
            int iKeyAt = cVar.f14731c.keyAt(i10);
            float fFloatValue = cVar.f14731c.valueAt(i10).floatValue();
            if (iKeyAt == 4) {
                daVar.ve(com.byazt.bj.c.c(Math.round(fFloatValue)));
            } else if (iKeyAt == 0) {
                daVar.c(com.byazt.bj.c.c(Math.round(fFloatValue)));
            } else if (iKeyAt == 9) {
                daVar.tt(com.byazt.bj.c.c(Math.round(fFloatValue)));
            } else if (iKeyAt == 25) {
                daVar.t(fFloatValue);
            } else if (iKeyAt == 8) {
                if (fFloatValue < 0.0f) {
                    daVar.ve();
                } else {
                    daVar.ve(fFloatValue);
                }
            } else if (iKeyAt == 1) {
                daVar.c(n.c(Math.round(fFloatValue)));
            } else if (iKeyAt == 6) {
                daVar.c(fFloatValue);
            } else if (iKeyAt == 7) {
                daVar.tt(fFloatValue);
            } else if (iKeyAt == 16) {
                if (fFloatValue == -1.0f) {
                    daVar.sp(100.0f);
                } else if (fFloatValue == -2.0f) {
                    daVar.n();
                } else {
                    daVar.a(fFloatValue);
                }
            } else if (iKeyAt == 18) {
                daVar.c(com.byazt.bj.uj.LEFT, fFloatValue);
            } else if (iKeyAt == 3) {
                daVar.c(a.c(Math.round(fFloatValue)));
            } else if (iKeyAt == 17) {
                daVar.c(com.byazt.bj.uj.TOP, fFloatValue);
            } else if (iKeyAt == 20) {
                daVar.c(com.byazt.bj.uj.RIGHT, fFloatValue);
            } else if (iKeyAt == 19) {
                daVar.c(com.byazt.bj.uj.BOTTOM, fFloatValue);
            } else if (iKeyAt == 28) {
                daVar.i(fFloatValue);
            } else if (iKeyAt == 27) {
                daVar.x(fFloatValue);
            } else if (iKeyAt == 22) {
                daVar.tt(com.byazt.bj.uj.LEFT, fFloatValue);
            } else if (iKeyAt == 21) {
                daVar.tt(com.byazt.bj.uj.TOP, fFloatValue);
            } else if (iKeyAt == 24) {
                daVar.tt(com.byazt.bj.uj.RIGHT, fFloatValue);
            } else if (iKeyAt == 23) {
                daVar.tt(com.byazt.bj.uj.BOTTOM, fFloatValue);
            } else if (iKeyAt == 11) {
                daVar.ve(com.byazt.bj.uj.LEFT, fFloatValue);
            } else if (iKeyAt == 10) {
                daVar.ve(com.byazt.bj.uj.TOP, fFloatValue);
            } else if (iKeyAt == 13) {
                daVar.ve(com.byazt.bj.uj.RIGHT, fFloatValue);
            } else if (iKeyAt == 12) {
                daVar.ve(com.byazt.bj.uj.BOTTOM, fFloatValue);
            } else if (iKeyAt == 14) {
                daVar.c(u.c(Math.round(fFloatValue)));
            } else if (iKeyAt == 15) {
                if (fFloatValue == -1.0f) {
                    daVar.n(100.0f);
                } else if (fFloatValue == -2.0f) {
                    daVar.uj();
                } else {
                    daVar.uj(fFloatValue);
                }
            } else if (iKeyAt == 2) {
                daVar.c(yp.c(Math.round(fFloatValue)));
            }
        }
    }

    public void c(com.byazt.xj.ve veVar) {
        this.ve = veVar;
    }
}

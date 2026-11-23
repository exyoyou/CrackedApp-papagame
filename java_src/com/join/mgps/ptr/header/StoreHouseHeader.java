package com.join.mgps.ptr.header;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Transformation;
import com.join.mgps.ptr.PtrFrameLayout;
import com.join.mgps.ptr.PtrUIHeader;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class StoreHouseHeader extends PtrUIHeader {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ArrayList<c> f72030b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f72031c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f72032d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f72033e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float f72034f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f72035g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f72036h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f72037i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f72038j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f72039k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f72040l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float f72041m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f72042n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private float f72043o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f72044p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f72045q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f72046r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private Transformation f72047s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f72048t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private b f72049u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f72050v;

    private class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f72051b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f72052c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f72053d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f72054e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f72055f;

        private b() {
            this.f72051b = 0;
            this.f72052c = 0;
            this.f72053d = 0;
            this.f72054e = 0;
            this.f72055f = true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void c() {
            this.f72055f = true;
            this.f72051b = 0;
            this.f72054e = StoreHouseHeader.this.f72044p / StoreHouseHeader.this.f72030b.size();
            this.f72052c = StoreHouseHeader.this.f72045q / this.f72054e;
            this.f72053d = (StoreHouseHeader.this.f72030b.size() / this.f72052c) + 1;
            run();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void d() {
            this.f72055f = false;
            StoreHouseHeader.this.removeCallbacks(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            int i10 = this.f72051b % this.f72052c;
            for (int i11 = 0; i11 < this.f72053d; i11++) {
                int i12 = (this.f72052c * i11) + i10;
                if (i12 <= this.f72051b) {
                    c cVar = StoreHouseHeader.this.f72030b.get(i12 % StoreHouseHeader.this.f72030b.size());
                    cVar.setFillAfter(false);
                    cVar.setFillEnabled(true);
                    cVar.setFillBefore(false);
                    cVar.setDuration(StoreHouseHeader.this.f72046r);
                    cVar.f(StoreHouseHeader.this.f72042n, StoreHouseHeader.this.f72043o);
                }
            }
            this.f72051b++;
            if (this.f72055f) {
                StoreHouseHeader.this.postDelayed(this, this.f72054e);
            }
        }
    }

    public StoreHouseHeader(Context context) {
        super(context);
        this.f72030b = new ArrayList<>();
        this.f72031c = -1;
        this.f72032d = 1.0f;
        this.f72033e = -1;
        this.f72034f = 0.7f;
        this.f72035g = -1;
        this.f72036h = 0.0f;
        this.f72037i = 0;
        this.f72038j = 0;
        this.f72039k = 0;
        this.f72040l = 0;
        this.f72041m = 0.4f;
        this.f72042n = 1.0f;
        this.f72043o = 0.4f;
        this.f72044p = 1000;
        this.f72045q = 1000;
        this.f72046r = 400;
        this.f72047s = new Transformation();
        this.f72048t = false;
        this.f72049u = new b();
        this.f72050v = -1;
        l();
    }

    private int getBottomOffset() {
        return getPaddingBottom() + z6.b.b(10.0f);
    }

    private int getTopOffset() {
        return getPaddingTop() + z6.b.b(10.0f);
    }

    private void k() {
        this.f72048t = true;
        this.f72049u.c();
        invalidate();
    }

    private void l() {
        z6.b.c(getContext());
        this.f72031c = z6.b.b(1.0f);
        this.f72033e = z6.b.b(40.0f);
        this.f72035g = z6.b.f97721a / 2;
    }

    private void q() {
        this.f72048t = false;
        this.f72049u.d();
    }

    private void setProgress(float progress) {
        this.f72036h = progress;
    }

    @Override // com.join.mgps.ptr.PtrUIHeader, com.join.mgps.ptr.c
    public void a(PtrFrameLayout frame) {
        q();
    }

    @Override // com.join.mgps.ptr.PtrUIHeader, com.join.mgps.ptr.c
    public void b(PtrFrameLayout frame) {
    }

    @Override // com.join.mgps.ptr.PtrUIHeader, com.join.mgps.ptr.c
    public void c(PtrFrameLayout frame, boolean isUnderTouch, byte status, com.join.mgps.ptr.indicator.a ptrIndicator) {
        setProgress(Math.min(1.0f, ptrIndicator.c()));
        invalidate();
    }

    @Override // com.join.mgps.ptr.PtrUIHeader, com.join.mgps.ptr.c
    public void d(PtrFrameLayout frame) {
        q();
        for (int i10 = 0; i10 < this.f72030b.size(); i10++) {
            this.f72030b.get(i10).b(this.f72035g);
        }
    }

    @Override // com.join.mgps.ptr.PtrUIHeader, com.join.mgps.ptr.c
    public void e(PtrFrameLayout frame) {
        k();
    }

    public int getLoadingAniDuration() {
        return this.f72044p;
    }

    public float getScale() {
        return this.f72032d;
    }

    public void m(ArrayList<float[]> pointList) {
        boolean z10 = this.f72030b.size() > 0;
        this.f72030b.clear();
        float fMax = 0.0f;
        float fMax2 = 0.0f;
        for (int i10 = 0; i10 < pointList.size(); i10++) {
            float[] fArr = pointList.get(i10);
            PointF pointF = new PointF(z6.b.b(fArr[0]) * this.f72032d, z6.b.b(fArr[1]) * this.f72032d);
            PointF pointF2 = new PointF(z6.b.b(fArr[2]) * this.f72032d, z6.b.b(fArr[3]) * this.f72032d);
            fMax = Math.max(Math.max(fMax, pointF.x), pointF2.x);
            fMax2 = Math.max(Math.max(fMax2, pointF.y), pointF2.y);
            c cVar = new c(i10, pointF, pointF2, this.f72050v, this.f72031c);
            cVar.b(this.f72035g);
            this.f72030b.add(cVar);
        }
        this.f72037i = (int) Math.ceil(fMax);
        this.f72038j = (int) Math.ceil(fMax2);
        if (z10) {
            requestLayout();
        }
    }

    public void n(String str) {
        o(str, 25);
    }

    public void o(String str, int fontSize) {
        m(d.c(str, fontSize * 0.01f, 14));
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float f10 = this.f72036h;
        int iSave = canvas.save();
        int size = this.f72030b.size();
        for (int i10 = 0; i10 < size; i10++) {
            canvas.save();
            c cVar = this.f72030b.get(i10);
            float f11 = this.f72039k;
            PointF pointF = cVar.f72145b;
            float f12 = f11 + pointF.x;
            float f13 = this.f72040l + pointF.y;
            if (this.f72048t) {
                cVar.getTransformation(getDrawingTime(), this.f72047s);
                canvas.translate(f12, f13);
            } else {
                if (f10 == 0.0f) {
                    cVar.b(this.f72035g);
                } else {
                    float f14 = this.f72034f;
                    float f15 = ((1.0f - f14) * i10) / size;
                    float f16 = (1.0f - f14) - f15;
                    if (f10 == 1.0f || f10 >= 1.0f - f16) {
                        canvas.translate(f12, f13);
                        cVar.c(this.f72041m);
                    } else {
                        float fMin = f10 > f15 ? Math.min(1.0f, (f10 - f15) / f14) : 0.0f;
                        float f17 = 1.0f - fMin;
                        float f18 = f12 + (cVar.f72146c * f17);
                        float f19 = f13 + ((-this.f72033e) * f17);
                        Matrix matrix = new Matrix();
                        matrix.postRotate(360.0f * fMin);
                        matrix.postScale(fMin, fMin);
                        matrix.postTranslate(f18, f19);
                        cVar.c(this.f72041m * fMin);
                        canvas.concat(matrix);
                    }
                }
            }
            cVar.a(canvas);
            canvas.restore();
        }
        if (this.f72048t) {
            invalidate();
        }
        canvas.restoreToCount(iSave);
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, View.MeasureSpec.makeMeasureSpec(getTopOffset() + this.f72038j + getBottomOffset(), 1073741824));
        this.f72039k = (getMeasuredWidth() - this.f72037i) / 2;
        this.f72040l = getTopOffset();
        this.f72033e = getTopOffset();
    }

    public void p(int id2) {
        String[] stringArray = getResources().getStringArray(id2);
        ArrayList<float[]> arrayList = new ArrayList<>();
        for (String str : stringArray) {
            String[] strArrSplit = str.split(",");
            float[] fArr = new float[4];
            for (int i10 = 0; i10 < 4; i10++) {
                fArr[i10] = Float.parseFloat(strArrSplit[i10]);
            }
            arrayList.add(fArr);
        }
        m(arrayList);
    }

    public StoreHouseHeader r(int height) {
        this.f72033e = height;
        return this;
    }

    public StoreHouseHeader s(int width) {
        this.f72031c = width;
        for (int i10 = 0; i10 < this.f72030b.size(); i10++) {
            this.f72030b.get(i10).e(width);
        }
        return this;
    }

    public void setLoadingAniDuration(int duration) {
        this.f72044p = duration;
        this.f72045q = duration;
    }

    public void setScale(float scale) {
        this.f72032d = scale;
    }

    public StoreHouseHeader t(int color) {
        this.f72050v = color;
        for (int i10 = 0; i10 < this.f72030b.size(); i10++) {
            this.f72030b.get(i10).d(color);
        }
        return this;
    }

    public StoreHouseHeader(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f72030b = new ArrayList<>();
        this.f72031c = -1;
        this.f72032d = 1.0f;
        this.f72033e = -1;
        this.f72034f = 0.7f;
        this.f72035g = -1;
        this.f72036h = 0.0f;
        this.f72037i = 0;
        this.f72038j = 0;
        this.f72039k = 0;
        this.f72040l = 0;
        this.f72041m = 0.4f;
        this.f72042n = 1.0f;
        this.f72043o = 0.4f;
        this.f72044p = 1000;
        this.f72045q = 1000;
        this.f72046r = 400;
        this.f72047s = new Transformation();
        this.f72048t = false;
        this.f72049u = new b();
        this.f72050v = -1;
        l();
    }

    public StoreHouseHeader(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f72030b = new ArrayList<>();
        this.f72031c = -1;
        this.f72032d = 1.0f;
        this.f72033e = -1;
        this.f72034f = 0.7f;
        this.f72035g = -1;
        this.f72036h = 0.0f;
        this.f72037i = 0;
        this.f72038j = 0;
        this.f72039k = 0;
        this.f72040l = 0;
        this.f72041m = 0.4f;
        this.f72042n = 1.0f;
        this.f72043o = 0.4f;
        this.f72044p = 1000;
        this.f72045q = 1000;
        this.f72046r = 400;
        this.f72047s = new Transformation();
        this.f72048t = false;
        this.f72049u = new b();
        this.f72050v = -1;
        l();
    }
}

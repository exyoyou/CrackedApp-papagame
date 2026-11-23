package com.byazt.sgn;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.view.View;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 211, 66})
public class t extends Drawable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f19695a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f19696c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public RectF f19697da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f19698i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public LinearGradient f19699n;
    public Paint sl;
    public int sp;
    public int tt;
    public float[] uj;
    public int[] ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f19700x;

    @com.byazt.zqa.c(c = {0, 1, 211, 125})
    public static class c {

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public LinearGradient f19704n;
        public float[] uj;
        public int[] ve;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f19702c = 2789591;
        public int tt = 2789591;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f19701a = 10;
        public int sp = 16;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public int f19705x = 0;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f19703i = 0;

        public c c(int i10) {
            this.f19702c = i10;
            return this;
        }

        public c n(int i10) {
            this.f19703i = i10;
            return this;
        }

        public c tt(int i10) {
            this.tt = i10;
            return this;
        }

        public c uj(int i10) {
            this.f19705x = i10;
            return this;
        }

        public c ve(int i10) {
            this.f19701a = i10;
            return this;
        }

        public c c(int[] iArr) {
            this.ve = iArr;
            return this;
        }

        public t c() {
            return new t(this.f19702c, this.ve, this.uj, this.tt, this.f19704n, this.f19701a, this.sp, this.f19705x, this.f19703i);
        }
    }

    public t(int i10, int[] iArr, float[] fArr, int i11, LinearGradient linearGradient, int i12, int i13, int i14, int i15) {
        this.f19696c = i10;
        this.ve = iArr;
        this.uj = fArr;
        this.tt = i11;
        this.f19699n = linearGradient;
        this.f19695a = i12;
        this.sp = i13;
        this.f19700x = i14;
        this.f19698i = i15;
    }

    private void c() {
        int[] iArr;
        Paint paint = new Paint();
        this.sl = paint;
        paint.setAntiAlias(true);
        this.sl.setShadowLayer(this.sp, this.f19700x, this.f19698i, this.tt);
        if (this.f19697da == null || (iArr = this.ve) == null || iArr.length <= 1) {
            this.sl.setColor(this.f19696c);
            return;
        }
        float[] fArr = this.uj;
        boolean z10 = fArr != null && fArr.length > 0 && fArr.length == iArr.length;
        Paint paint2 = this.sl;
        LinearGradient linearGradient = this.f19699n;
        if (linearGradient == null) {
            RectF rectF = this.f19697da;
            linearGradient = new LinearGradient(rectF.left, 0.0f, rectF.right, 0.0f, this.ve, z10 ? this.uj : null, Shader.TileMode.CLAMP);
        }
        paint2.setShader(linearGradient);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f19697da == null) {
            Rect bounds = getBounds();
            int i10 = bounds.left;
            int i11 = this.sp;
            int i12 = this.f19700x;
            int i13 = bounds.top + i11;
            int i14 = this.f19698i;
            this.f19697da = new RectF((i10 + i11) - i12, i13 - i14, (bounds.right - i11) - i12, (bounds.bottom - i11) - i14);
        }
        if (this.sl == null) {
            c();
        }
        RectF rectF = this.f19697da;
        int i15 = this.f19695a;
        canvas.drawRoundRect(rectF, i15, i15, this.sl);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        Paint paint = this.sl;
        if (paint != null) {
            paint.setAlpha(i10);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        Paint paint = this.sl;
        if (paint != null) {
            paint.setColorFilter(colorFilter);
        }
    }

    public static void c(View view, c cVar) {
        if (view == null || cVar == null) {
            return;
        }
        view.setLayerType(1, null);
        view.setBackground(cVar.c());
    }
}

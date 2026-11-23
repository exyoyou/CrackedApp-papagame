package com.byazt.zk;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 909, 91})
public class sp extends ve {

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final Rect f22836da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Rect f22837i;
    public com.byazt.dg.c<ColorFilter, ColorFilter> sl;
    public final com.byazt.ga.i sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public com.byazt.dg.c<Bitmap, Bitmap> f22838t;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final Paint f22839x;

    public sp(com.byazt.ga.x xVar, x xVar2) {
        super(xVar, xVar2);
        this.f22839x = new com.byazt.xg.c(3);
        this.f22837i = new Rect();
        this.f22836da = new Rect();
        this.sp = xVar.a(xVar2.sp());
    }

    @Override // com.byazt.zk.ve, com.byazt.zy.n
    public void c(RectF rectF, Matrix matrix, boolean z10) {
        super.c(rectF, matrix, z10);
        if (this.sp != null) {
            float fC = com.byazt.kk.da.c();
            rectF.set(0.0f, 0.0f, this.sp.c() * fC, this.sp.tt() * fC);
            this.f22875c.mapRect(rectF);
        }
    }

    @Override // com.byazt.zk.ve
    public void tt(Canvas canvas, Matrix matrix, int i10) {
        super.tt(canvas, matrix, i10);
        Bitmap bitmapYp = yp();
        if (bitmapYp == null || bitmapYp.isRecycled() || this.sp == null) {
            return;
        }
        float fC = com.byazt.kk.da.c();
        this.f22839x.setAlpha(i10);
        com.byazt.dg.c<ColorFilter, ColorFilter> cVar = this.sl;
        if (cVar != null) {
            this.f22839x.setColorFilter(cVar.sp());
        }
        canvas.save();
        canvas.concat(matrix);
        this.f22837i.set(0, 0, bitmapYp.getWidth(), bitmapYp.getHeight());
        if (this.tt.a()) {
            this.f22836da.set(0, 0, (int) (this.sp.c() * fC), (int) (this.sp.tt() * fC));
        } else {
            this.f22836da.set(0, 0, (int) (bitmapYp.getWidth() * fC), (int) (bitmapYp.getHeight() * fC));
        }
        canvas.drawBitmap(bitmapYp, this.f22837i, this.f22836da, this.f22839x);
        canvas.restore();
    }

    public Bitmap yp() {
        Bitmap bitmapSp;
        com.byazt.dg.c<Bitmap, Bitmap> cVar = this.f22838t;
        if (cVar != null && (bitmapSp = cVar.sp()) != null) {
            return bitmapSp;
        }
        Bitmap bitmapN = this.tt.n(this.ve.sp());
        if (bitmapN != null) {
            return bitmapN;
        }
        com.byazt.ga.i iVar = this.sp;
        if (iVar != null) {
            return iVar.z();
        }
        return null;
    }
}

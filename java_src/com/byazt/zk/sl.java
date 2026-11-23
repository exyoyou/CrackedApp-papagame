package com.byazt.zk;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 909, 158})
public class sl extends ve {

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final Path f22832da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final float[] f22833i;
    public final x sl;
    public final RectF sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public com.byazt.dg.c<ColorFilter, ColorFilter> f22834t;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final Paint f22835x;

    public sl(com.byazt.ga.x xVar, x xVar2) {
        super(xVar, xVar2);
        this.sp = new RectF();
        com.byazt.xg.c cVar = new com.byazt.xg.c();
        this.f22835x = cVar;
        this.f22833i = new float[8];
        this.f22832da = new Path();
        this.sl = xVar2;
        cVar.setAlpha(0);
        cVar.setStyle(Paint.Style.FILL);
        cVar.setColor(xVar2.m());
    }

    @Override // com.byazt.zk.ve, com.byazt.zy.n
    public void c(RectF rectF, Matrix matrix, boolean z10) {
        super.c(rectF, matrix, z10);
        this.sp.set(0.0f, 0.0f, this.sl.rh(), this.sl.nu());
        this.f22875c.mapRect(this.sp);
        rectF.set(this.sp);
    }

    @Override // com.byazt.zk.ve
    public void tt(Canvas canvas, Matrix matrix, int i10) {
        super.tt(canvas, matrix, i10);
        int iAlpha = Color.alpha(this.sl.m());
        if (iAlpha == 0) {
            return;
        }
        int iIntValue = (int) ((i10 / 255.0f) * (((iAlpha / 255.0f) * (this.uj.c() == null ? 100 : this.uj.c().sp().intValue())) / 100.0f) * 255.0f);
        this.f22835x.setAlpha(iIntValue);
        com.byazt.dg.c<ColorFilter, ColorFilter> cVar = this.f22834t;
        if (cVar != null) {
            this.f22835x.setColorFilter(cVar.sp());
        }
        if (iIntValue > 0) {
            float[] fArr = this.f22833i;
            fArr[0] = 0.0f;
            fArr[1] = 0.0f;
            fArr[2] = this.sl.rh();
            float[] fArr2 = this.f22833i;
            fArr2[3] = 0.0f;
            fArr2[4] = this.sl.rh();
            this.f22833i[5] = this.sl.nu();
            float[] fArr3 = this.f22833i;
            fArr3[6] = 0.0f;
            fArr3[7] = this.sl.nu();
            matrix.mapPoints(this.f22833i);
            this.f22832da.reset();
            Path path = this.f22832da;
            float[] fArr4 = this.f22833i;
            path.moveTo(fArr4[0], fArr4[1]);
            Path path2 = this.f22832da;
            float[] fArr5 = this.f22833i;
            path2.lineTo(fArr5[2], fArr5[3]);
            Path path3 = this.f22832da;
            float[] fArr6 = this.f22833i;
            path3.lineTo(fArr6[4], fArr6[5]);
            Path path4 = this.f22832da;
            float[] fArr7 = this.f22833i;
            path4.lineTo(fArr7[6], fArr7[7]);
            Path path5 = this.f22832da;
            float[] fArr8 = this.f22833i;
            path5.lineTo(fArr8[0], fArr8[1]);
            this.f22832da.close();
            canvas.drawPath(this.f22832da, this.f22835x);
        }
    }
}

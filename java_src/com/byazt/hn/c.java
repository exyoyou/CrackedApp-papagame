package com.byazt.hn;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.Choreographer;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 25, 20})
public final class c extends Drawable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f14974a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final n f14975c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Choreographer f14976n;
    public final tt.uj[] tt;
    public final Paint ve;
    public final Path uj = new Path();
    public final Choreographer.FrameCallback sp = new Choreographer.FrameCallback() { // from class: com.byazt.hn.c.1
        @Override // android.view.Choreographer.FrameCallback
        public void doFrame(long j10) {
            if (c.this.f14974a) {
                c.this.invalidateSelf();
                if (!c.this.f14974a || c.this.f14976n == null) {
                    return;
                }
                c.this.f14976n.postFrameCallback(this);
            }
        }
    };

    public c(n nVar) {
        this.f14975c = nVar;
        this.tt = nVar.ve();
        Paint paint = new Paint(1);
        this.ve = paint;
        paint.setStyle(Paint.Style.FILL);
        if (nVar.tt().c().f14997a == 1) {
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.ADD));
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        a aVarC;
        int i10;
        Rect bounds = getBounds();
        if (bounds.width() <= 0 || bounds.height() <= 0 || (i10 = (aVarC = this.f14975c.c()).f14970c) <= 0) {
            return;
        }
        int iSave = canvas.save();
        canvas.translate(bounds.left, bounds.top);
        try {
            c(canvas, aVarC, i10);
        } finally {
            canvas.restoreToCount(iSave);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f14975c.c(rect.width(), rect.height());
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.ve.setColorFilter(colorFilter);
    }

    public void c() {
        if (this.f14974a) {
            return;
        }
        this.f14974a = true;
        try {
            Choreographer choreographer = Choreographer.getInstance();
            this.f14976n = choreographer;
            choreographer.postFrameCallback(this.sp);
        } catch (Throwable unused) {
            this.f14974a = false;
        }
    }

    public void tt() {
        this.f14974a = false;
        Choreographer choreographer = this.f14976n;
        if (choreographer != null) {
            choreographer.removeFrameCallback(this.sp);
            this.f14976n = null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0093  */
    private void c(Canvas canvas, a aVar, int i10) {
        int i11;
        tt.c cVar;
        int i12;
        int i13 = i10;
        int[] iArrC = c(aVar, i13);
        float[] fArr = aVar.ve;
        float[] fArr2 = aVar.uj;
        float[] fArr3 = aVar.f14972n;
        float[] fArr4 = aVar.f14969a;
        int[] iArr = aVar.f14973x;
        tt.uj[] ujVarArr = this.tt;
        int i14 = 0;
        while (i14 < i13) {
            int i15 = iArrC[i14];
            int i16 = iArr[i15];
            if (i16 < 0 || i16 >= ujVarArr.length || (cVar = ujVarArr[i16].f14995t) == null) {
                i11 = i14;
            } else {
                float f10 = fArr3[i15];
                float f11 = cVar.ve * f10;
                float f12 = cVar.uj * f10;
                if (f11 <= 0.0f || f12 <= 0.0f || (i12 = (int) ((fArr4[i15] * 255.0f) + 0.5f)) <= 0) {
                    i11 = i14;
                } else {
                    i11 = i14;
                    if (i12 > 255) {
                        i12 = 255;
                    }
                    this.ve.setColor(cVar.f14988n);
                    this.ve.setAlpha(i12);
                    float f13 = fArr[i15];
                    float f14 = fArr2[i15];
                    int i17 = cVar.tt;
                    if (i17 == 1) {
                        float f15 = f11 / 2.0f;
                        float f16 = f12 / 2.0f;
                        canvas.drawRect(f13 - f15, f14 - f16, f15 + f13, f16 + f14, this.ve);
                    } else if (i17 != 2) {
                        canvas.drawCircle(f13, f14, Math.min(f11, f12) / 2.0f, this.ve);
                    } else {
                        c(canvas, f13, f14, Math.min(f11, f12) / 2.0f);
                    }
                }
            }
            i14 = i11 + 1;
            i13 = i10;
        }
    }

    private int[] c(a aVar, int i10) {
        int[] iArr = aVar.f14971i;
        for (int i11 = 0; i11 < i10; i11++) {
            iArr[i11] = i11;
        }
        int i12 = aVar.tt;
        if (i12 != 0 && i12 != 1 && i10 > 1) {
            c(iArr, aVar.sp, i10, i12 == 4);
        }
        return iArr;
    }

    private static void c(int[] iArr, float[] fArr, int i10, boolean z10) {
        for (int i11 = 1; i11 < i10; i11++) {
            int i12 = iArr[i11];
            float f10 = fArr[i12];
            int i13 = i11 - 1;
            if (!z10) {
                while (i13 >= 0) {
                    int i14 = iArr[i13];
                    if (fArr[i14] >= f10) {
                        break;
                    }
                    iArr[i13 + 1] = i14;
                    i13--;
                }
            } else {
                while (i13 >= 0) {
                    int i15 = iArr[i13];
                    if (fArr[i15] <= f10) {
                        break;
                    }
                    iArr[i13 + 1] = i15;
                    i13--;
                }
            }
            iArr[i13 + 1] = i12;
        }
    }

    private void c(Canvas canvas, float f10, float f11, float f12) {
        float f13 = 0.5f * f12;
        Path path = this.uj;
        path.rewind();
        float f14 = -1.5707964f;
        for (int i10 = 0; i10 < 10; i10++) {
            float f15 = i10 % 2 == 0 ? f12 : f13;
            double d10 = f14;
            float fCos = (((float) Math.cos(d10)) * f15) + f10;
            float fSin = (((float) Math.sin(d10)) * f15) + f11;
            if (i10 == 0) {
                path.moveTo(fCos, fSin);
            } else {
                path.lineTo(fCos, fSin);
            }
            f14 += 0.62831855f;
        }
        path.close();
        canvas.drawPath(path, this.ve);
    }
}

package com.facebook.imagepipeline.animated.impl;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import com.facebook.common.internal.i;
import com.facebook.common.references.CloseableReference;
import com.facebook.imagepipeline.animated.base.AnimatedDrawableFrameInfo;
import com.facebook.imagepipeline.animated.base.d;
import com.facebook.imagepipeline.animated.base.e;
import com.facebook.imagepipeline.animated.base.f;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class a implements com.facebook.imagepipeline.animated.base.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e4.a f27592a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final f f27593b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final d f27594c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Rect f27595d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int[] f27596e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int[] f27597f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f27598g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final AnimatedDrawableFrameInfo[] f27599h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Rect f27600i = new Rect();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Rect f27601j = new Rect();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final boolean f27602k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @GuardedBy("this")
    @Nullable
    private Bitmap f27603l;

    public a(e4.a animatedDrawableUtil, f animatedImageResult, @Nullable Rect bounds, boolean downscaleFrameToDrawableDimensions) {
        this.f27592a = animatedDrawableUtil;
        this.f27593b = animatedImageResult;
        d dVarF = animatedImageResult.f();
        this.f27594c = dVarF;
        int[] iArrJ = dVarF.j();
        this.f27596e = iArrJ;
        animatedDrawableUtil.a(iArrJ);
        this.f27598g = animatedDrawableUtil.e(iArrJ);
        this.f27597f = animatedDrawableUtil.c(iArrJ);
        this.f27595d = s(dVarF, bounds);
        this.f27602k = downscaleFrameToDrawableDimensions;
        this.f27599h = new AnimatedDrawableFrameInfo[dVarF.c()];
        for (int i10 = 0; i10 < this.f27594c.c(); i10++) {
            this.f27599h[i10] = this.f27594c.e(i10);
        }
    }

    private synchronized void r() {
        Bitmap bitmap = this.f27603l;
        if (bitmap != null) {
            bitmap.recycle();
            this.f27603l = null;
        }
    }

    private static Rect s(d image, @Nullable Rect targetBounds) {
        return targetBounds == null ? new Rect(0, 0, image.getWidth(), image.getHeight()) : new Rect(0, 0, Math.min(targetBounds.width(), image.getWidth()), Math.min(targetBounds.height(), image.getHeight()));
    }

    private synchronized Bitmap t(int width, int height) {
        Bitmap bitmap = this.f27603l;
        if (bitmap != null && (bitmap.getWidth() < width || this.f27603l.getHeight() < height)) {
            r();
        }
        if (this.f27603l == null) {
            this.f27603l = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        }
        this.f27603l.eraseColor(0);
        return this.f27603l;
    }

    private void u(Canvas canvas, e frame) {
        int width;
        int height;
        int xOffset;
        int yOffset;
        if (this.f27602k) {
            float fMax = Math.max(frame.getWidth() / Math.min(frame.getWidth(), canvas.getWidth()), frame.getHeight() / Math.min(frame.getHeight(), canvas.getHeight()));
            width = (int) (frame.getWidth() / fMax);
            height = (int) (frame.getHeight() / fMax);
            xOffset = (int) (frame.getXOffset() / fMax);
            yOffset = (int) (frame.getYOffset() / fMax);
        } else {
            width = frame.getWidth();
            height = frame.getHeight();
            xOffset = frame.getXOffset();
            yOffset = frame.getYOffset();
        }
        synchronized (this) {
            Bitmap bitmapT = t(width, height);
            this.f27603l = bitmapT;
            frame.a(width, height, bitmapT);
            canvas.save();
            canvas.translate(xOffset, yOffset);
            canvas.drawBitmap(this.f27603l, 0.0f, 0.0f, (Paint) null);
            canvas.restore();
        }
    }

    private void v(Canvas canvas, e frame) {
        double dWidth = ((double) this.f27595d.width()) / ((double) this.f27594c.getWidth());
        double dHeight = ((double) this.f27595d.height()) / ((double) this.f27594c.getHeight());
        int iRound = (int) Math.round(((double) frame.getWidth()) * dWidth);
        int iRound2 = (int) Math.round(((double) frame.getHeight()) * dHeight);
        int xOffset = (int) (((double) frame.getXOffset()) * dWidth);
        int yOffset = (int) (((double) frame.getYOffset()) * dHeight);
        synchronized (this) {
            int iWidth = this.f27595d.width();
            int iHeight = this.f27595d.height();
            t(iWidth, iHeight);
            Bitmap bitmap = this.f27603l;
            if (bitmap != null) {
                frame.a(iRound, iRound2, bitmap);
            }
            this.f27600i.set(0, 0, iWidth, iHeight);
            this.f27601j.set(xOffset, yOffset, iWidth + xOffset, iHeight + yOffset);
            Bitmap bitmap2 = this.f27603l;
            if (bitmap2 != null) {
                canvas.drawBitmap(bitmap2, this.f27600i, this.f27601j, (Paint) null);
            }
        }
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public synchronized void a() {
        r();
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public int b() {
        return this.f27594c.b();
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public int c() {
        return this.f27594c.c();
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public int d() {
        return this.f27598g;
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public AnimatedDrawableFrameInfo e(int frameNumber) {
        return this.f27599h[frameNumber];
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public int f(int timestampMs) {
        return this.f27592a.b(this.f27597f, timestampMs);
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public int g(int frameNumber) {
        i.g(frameNumber, this.f27597f.length);
        return this.f27597f[frameNumber];
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public int getHeight() {
        return this.f27594c.getHeight();
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public int getWidth() {
        return this.f27594c.getWidth();
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public int h(int frameNumber) {
        return this.f27596e[frameNumber];
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public int i() {
        return this.f27595d.width();
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public int j() {
        return this.f27593b.e();
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public f k() {
        return this.f27593b;
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public void l(int frameNumber, Canvas canvas) {
        e eVarH = this.f27594c.h(frameNumber);
        try {
            if (eVarH.getWidth() > 0 && eVarH.getHeight() > 0) {
                if (this.f27594c.f()) {
                    v(canvas, eVarH);
                } else {
                    u(canvas, eVarH);
                }
            }
        } finally {
            eVarH.dispose();
        }
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public com.facebook.imagepipeline.animated.base.a m(@Nullable Rect bounds) {
        return s(this.f27594c, bounds).equals(this.f27595d) ? this : new a(this.f27592a, this.f27593b, bounds, this.f27602k);
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public boolean n(int index) {
        return this.f27593b.h(index);
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    @Nullable
    public CloseableReference<Bitmap> o(int frameNumber) {
        return this.f27593b.d(frameNumber);
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public synchronized int p() {
        Bitmap bitmap;
        bitmap = this.f27603l;
        return (bitmap != null ? 0 + this.f27592a.d(bitmap) : 0) + this.f27594c.a();
    }

    @Override // com.facebook.imagepipeline.animated.base.a
    public int q() {
        return this.f27595d.height();
    }
}

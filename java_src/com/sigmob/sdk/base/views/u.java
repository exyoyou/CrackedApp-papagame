package com.sigmob.sdk.base.views;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import com.czhj.sdk.common.utils.Dips;
import com.czhj.sdk.logger.SigmobLog;

/* JADX INFO: loaded from: classes5.dex */
public class u extends g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Paint f80236a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Paint f80237b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f80238c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f80239d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f80240e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f80241f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f80242g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f80243h;

    public u(final Context context) {
        Paint paint = new Paint();
        this.f80236a = paint;
        paint.setColor(-1);
        paint.setAlpha(128);
        paint.setStyle(o.b.f80203e);
        paint.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.f80237b = paint2;
        paint2.setColor(o.b.f80204f);
        paint2.setAlpha(255);
        paint2.setStyle(o.b.f80206h);
        paint2.setAntiAlias(true);
        this.f80243h = Dips.dipsToIntPixels(4.0f, context);
    }

    private void d() {
        this.f80240e = this.f80238c;
    }

    public void a() {
        this.f80241f = 0;
    }

    @Deprecated
    public float b() {
        return this.f80242g;
    }

    @Deprecated
    public int c() {
        return this.f80240e;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(final Canvas canvas) {
        canvas.drawRect(getBounds(), this.f80236a);
        int i10 = this.f80238c;
        canvas.drawRect(getBounds().left, getBounds().top, getBounds().right * (i10 > 0 ? this.f80240e / i10 : 0.0f), getBounds().bottom, this.f80237b);
        int i11 = this.f80239d;
        if (i11 <= 0 || i11 >= this.f80238c) {
            return;
        }
        float f10 = getBounds().right * this.f80242g;
        canvas.drawRect(f10, getBounds().top, f10 + this.f80243h, getBounds().bottom, this.f80237b);
    }

    @Override // com.sigmob.sdk.base.views.g, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getOpacity() {
        return super.getOpacity();
    }

    @Override // com.sigmob.sdk.base.views.g, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setAlpha(int i10) {
        super.setAlpha(i10);
    }

    @Override // com.sigmob.sdk.base.views.g, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setColorFilter(ColorFilter colorFilter) {
        super.setColorFilter(colorFilter);
    }

    @SuppressLint({"DefaultLocale"})
    public void a(final int currentProgress) {
        int i10 = this.f80241f;
        if (currentProgress >= i10) {
            this.f80240e = currentProgress;
            this.f80241f = currentProgress;
        } else if (currentProgress != 0) {
            SigmobLog.d(String.format("Progress not monotonically increasing: last = %d, current = %d", Integer.valueOf(i10), Integer.valueOf(currentProgress)));
            d();
        }
        invalidateSelf();
    }

    public void a(final int duration, final int skipOffset) {
        this.f80238c = duration;
        this.f80239d = skipOffset;
        this.f80242g = duration > 0 ? skipOffset / duration : 0.0f;
    }
}

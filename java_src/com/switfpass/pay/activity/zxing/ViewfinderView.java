package com.switfpass.pay.activity.zxing;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import com.google.zxing.ResultPoint;
import com.join.android.app.mgsim.wufun.R;
import com.switfpass.pay.activity.zxing.camera.a;
import java.util.Collection;
import java.util.HashSet;

/* JADX INFO: loaded from: classes2.dex */
public final class ViewfinderView extends View {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final int[] f82554o = {0, 64, 128, 192, 255, 192, 128, 64};

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static float f82555p;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Paint f82556b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Bitmap f82557c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f82558d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f82559e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f82560f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f82561g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f82562h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f82563i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Collection f82564j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Collection f82565k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f82566l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Rect f82567m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private Drawable f82568n;

    public ViewfinderView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f82566l = 0;
        this.f82556b = new Paint();
        Resources resources = getResources();
        this.f82558d = resources.getColor(R.bool.abc_action_bar_embed_tabs);
        this.f82559e = resources.getColor(R.bool.abc_config_actionMenuItemAllCaps);
        this.f82560f = resources.getColor(R.bool.bottomsheet_is_tablet);
        this.f82561g = resources.getColor(R.bool.default_circle_indicator_centered);
        this.f82562h = 0;
        this.f82564j = new HashSet(5);
        this.f82567m = new Rect();
        this.f82568n = getResources().getDrawable(2130837586);
        float f10 = context.getResources().getDisplayMetrics().density;
        f82555p = f10;
        this.f82563i = (int) (f10 * 20.0f);
    }

    public final void a(ResultPoint resultPoint) {
        this.f82564j.add(resultPoint);
    }

    public final void b(Bitmap bitmap) {
        this.f82557c = bitmap;
        invalidate();
    }

    public final void c() {
        this.f82557c = null;
        invalidate();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        Rect rectD = a.c().d();
        if (rectD == null) {
            return;
        }
        int width = canvas.getWidth();
        int height = canvas.getHeight();
        this.f82556b.setColor(this.f82557c != null ? this.f82559e : this.f82558d);
        float f10 = width;
        canvas.drawRect(0.0f, 0.0f, f10, rectD.top, this.f82556b);
        canvas.drawRect(0.0f, rectD.top, rectD.left, rectD.bottom, this.f82556b);
        canvas.drawRect(rectD.right, rectD.top, f10, rectD.bottom, this.f82556b);
        canvas.drawRect(0.0f, rectD.bottom, f10, height, this.f82556b);
        if (this.f82557c != null) {
            this.f82556b.setAlpha(255);
            canvas.drawBitmap(this.f82557c, (Rect) null, rectD, this.f82556b);
            return;
        }
        this.f82556b.setColor(this.f82560f);
        int i10 = rectD.left;
        int i11 = rectD.top;
        canvas.drawRect(i10, i11, i10 + this.f82563i, i11 + 10, this.f82556b);
        int i12 = rectD.left;
        int i13 = rectD.top;
        canvas.drawRect(i12, i13, i12 + 10, i13 + this.f82563i, this.f82556b);
        int i14 = rectD.right;
        float f11 = i14 - this.f82563i;
        int i15 = rectD.top;
        canvas.drawRect(f11, i15, i14, i15 + 10, this.f82556b);
        int i16 = rectD.right;
        int i17 = rectD.top;
        canvas.drawRect(i16 - 10, i17, i16, i17 + this.f82563i, this.f82556b);
        int i18 = rectD.left;
        int i19 = rectD.bottom;
        canvas.drawRect(i18, i19 - 10, i18 + this.f82563i, i19, this.f82556b);
        int i20 = rectD.left;
        int i21 = rectD.bottom;
        canvas.drawRect(i20, i21 - this.f82563i, i20 + 10, i21, this.f82556b);
        int i22 = rectD.right;
        float f12 = i22 - this.f82563i;
        int i23 = rectD.bottom;
        canvas.drawRect(f12, i23 - 10, i22, i23, this.f82556b);
        int i24 = rectD.right;
        int i25 = rectD.bottom;
        canvas.drawRect(i24 - 10, i25 - this.f82563i, i24, i25, this.f82556b);
        this.f82562h = (this.f82562h + 1) % f82554o.length;
        int i26 = this.f82566l + 3;
        this.f82566l = i26;
        int i27 = rectD.bottom;
        int i28 = rectD.top;
        if (i26 < i27 - i28) {
            this.f82567m.set(rectD.left - 6, (i28 + i26) - 6, rectD.right + 6, i28 + 6 + i26);
            this.f82568n.setBounds(this.f82567m);
            this.f82568n.draw(canvas);
            invalidate();
        } else {
            this.f82566l = 0;
        }
        Collection<ResultPoint> collection = this.f82564j;
        Collection<ResultPoint> collection2 = this.f82565k;
        if (collection.isEmpty()) {
            this.f82565k = null;
        } else {
            this.f82564j = new HashSet(5);
            this.f82565k = collection;
            this.f82556b.setAlpha(255);
            this.f82556b.setColor(this.f82561g);
            for (ResultPoint resultPoint : collection) {
                canvas.drawCircle(rectD.left + resultPoint.getX(), rectD.top + resultPoint.getY(), 6.0f, this.f82556b);
            }
        }
        if (collection2 != null) {
            this.f82556b.setAlpha(127);
            this.f82556b.setColor(this.f82561g);
            for (ResultPoint resultPoint2 : collection2) {
                canvas.drawCircle(rectD.left + resultPoint2.getX(), rectD.top + resultPoint2.getY(), 3.0f, this.f82556b);
            }
        }
        postInvalidateDelayed(100L, rectD.left, rectD.top, rectD.right, rectD.bottom);
    }
}

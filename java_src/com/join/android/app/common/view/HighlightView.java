package com.join.android.app.common.view;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.RegionIterator;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes5.dex */
public class HighlightView {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final String f34835q = "HighlightView";

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final int f34836r = 1;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final int f34837s = 2;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final int f34838t = 4;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final int f34839u = 8;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final int f34840v = 16;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final int f34841w = 32;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    View f34842a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f34843b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f34844c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Rect f34846e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public RectF f34847f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public RectF f34848g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Matrix f34849h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private float f34851j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Drawable f34853l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private Drawable f34854m;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ModifyMode f34845d = ModifyMode.None;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f34850i = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f34852k = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final Paint f34855n = new Paint();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Paint f34856o = new Paint();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Paint f34857p = new Paint();

    public enum ModifyMode {
        None,
        Move,
        Grow
    }

    public HighlightView(View ctx) {
        this.f34842a = ctx;
    }

    private Rect a() {
        RectF rectF = this.f34848g;
        RectF rectF2 = new RectF(rectF.left, rectF.top, rectF.right, rectF.bottom);
        this.f34849h.mapRect(rectF2);
        return new Rect(Math.round(rectF2.left), Math.round(rectF2.top), Math.round(rectF2.right), Math.round(rectF2.bottom));
    }

    private void h() {
        Resources resources = this.f34842a.getResources();
        this.f34853l = resources.getDrawable(R.drawable.picture_cut_button_normal);
        this.f34854m = resources.getDrawable(R.drawable.picture_cut_button_normal);
    }

    public void b(Canvas canvas) {
        if (this.f34844c) {
            return;
        }
        canvas.save();
        Path path = new Path();
        if (!g()) {
            this.f34857p.setColor(-16777216);
            canvas.drawRect(this.f34846e, this.f34857p);
            return;
        }
        Rect rect = new Rect();
        this.f34842a.getDrawingRect(rect);
        if (this.f34852k) {
            float fWidth = this.f34846e.width();
            float fHeight = this.f34846e.height();
            Rect rect2 = this.f34846e;
            float f10 = fWidth / 2.0f;
            path.addCircle(rect2.left + f10, rect2.top + (fHeight / 2.0f), f10, Path.Direction.CW);
            this.f34857p.setColor(-1112874);
        } else {
            path.addRect(new RectF(this.f34846e), Path.Direction.CW);
            this.f34857p.setColor(-1);
        }
        Region region = new Region();
        region.set(rect);
        region.op(this.f34846e, Region.Op.DIFFERENCE);
        RegionIterator regionIterator = new RegionIterator(region);
        Rect rect3 = new Rect();
        while (regionIterator.next(rect3)) {
            canvas.drawRect(rect3, g() ? this.f34855n : this.f34856o);
        }
        canvas.restore();
        canvas.drawPath(path, this.f34857p);
        if (this.f34845d == ModifyMode.Grow && this.f34852k) {
            int intrinsicWidth = this.f34853l.getIntrinsicWidth();
            int intrinsicHeight = this.f34853l.getIntrinsicHeight();
            int iRound = (int) Math.round(Math.cos(0.7853981633974483d) * (((double) this.f34846e.width()) / 2.0d));
            Rect rect4 = this.f34846e;
            int iWidth = ((rect4.left + (rect4.width() / 2)) + iRound) - (intrinsicWidth / 2);
            Rect rect5 = this.f34846e;
            int iHeight = ((rect5.top + (rect5.height() / 2)) - iRound) - (intrinsicHeight / 2);
            Drawable drawable = this.f34853l;
            drawable.setBounds(iWidth, iHeight, drawable.getIntrinsicWidth() + iWidth, this.f34853l.getIntrinsicHeight() + iHeight);
            this.f34853l.draw(canvas);
        }
        if (this.f34852k) {
            return;
        }
        Rect rect6 = this.f34846e;
        int i10 = rect6.left + 1;
        int i11 = rect6.right + 1;
        int i12 = rect6.top + 4;
        int i13 = rect6.bottom + 3;
        int intrinsicWidth2 = this.f34853l.getIntrinsicWidth() / 2;
        int intrinsicHeight2 = this.f34853l.getIntrinsicHeight() / 2;
        int i14 = i10 - intrinsicWidth2;
        int i15 = i12 - intrinsicHeight2;
        int i16 = i10 + intrinsicWidth2;
        int i17 = i12 + intrinsicHeight2;
        this.f34854m.setBounds(i14, i15, i16, i17);
        this.f34854m.draw(canvas);
        int i18 = i11 - intrinsicWidth2;
        int i19 = i11 + intrinsicWidth2;
        this.f34853l.setBounds(i18, i15, i19, i17);
        this.f34853l.draw(canvas);
        int i20 = i13 - intrinsicHeight2;
        int i21 = i13 + intrinsicHeight2;
        this.f34853l.setBounds(i14, i20, i16, i21);
        this.f34853l.draw(canvas);
        this.f34854m.setBounds(i18, i20, i19, i21);
        this.f34854m.draw(canvas);
    }

    public Rect c() {
        RectF rectF = this.f34848g;
        return new Rect((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
    }

    public int d(float x10, float y10) {
        Rect rectA = a();
        if (this.f34852k) {
            float fCenterX = x10 - rectA.centerX();
            float fCenterY = y10 - rectA.centerY();
            int iSqrt = (int) Math.sqrt((fCenterX * fCenterX) + (fCenterY * fCenterY));
            int iWidth = this.f34846e.width() / 2;
            if (Math.abs(iSqrt - iWidth) > 20.0f) {
                return iSqrt < iWidth ? 32 : 1;
            }
            if (Math.abs(fCenterY) > Math.abs(fCenterX)) {
                return fCenterY < 0.0f ? 8 : 16;
            }
            return fCenterX < 0.0f ? 2 : 4;
        }
        boolean z10 = false;
        boolean z11 = y10 >= ((float) rectA.top) - 20.0f && y10 < ((float) rectA.bottom) + 20.0f;
        int i10 = rectA.left;
        if (x10 >= i10 - 20.0f && x10 < rectA.right + 20.0f) {
            z10 = true;
        }
        int i11 = (Math.abs(((float) i10) - x10) >= 20.0f || !z11) ? 1 : 3;
        if (Math.abs(rectA.right - x10) < 20.0f && z11) {
            i11 |= 4;
        }
        if (Math.abs(rectA.top - y10) < 20.0f && z10) {
            i11 |= 8;
        }
        if (Math.abs(rectA.bottom - y10) < 20.0f && z10) {
            i11 |= 16;
        }
        if (i11 == 1 && rectA.contains((int) x10, (int) y10)) {
            return 32;
        }
        return i11;
    }

    void e(float dx, float dy) {
        if (this.f34850i) {
            if (dx != 0.0f) {
                dy = dx / this.f34851j;
            } else if (dy != 0.0f) {
                dx = this.f34851j * dy;
            }
        }
        RectF rectF = new RectF(this.f34848g);
        if (dx > 0.0f && rectF.width() + (dx * 2.0f) > this.f34847f.width()) {
            dx = (this.f34847f.width() - rectF.width()) / 2.0f;
            if (this.f34850i) {
                dy = dx / this.f34851j;
            }
        }
        if (dy > 0.0f && rectF.height() + (dy * 2.0f) > this.f34847f.height()) {
            dy = (this.f34847f.height() - rectF.height()) / 2.0f;
            if (this.f34850i) {
                dx = this.f34851j * dy;
            }
        }
        rectF.inset(-dx, -dy);
        if (rectF.width() < 25.0f) {
            return;
        }
        if (rectF.height() < (this.f34850i ? 25.0f / this.f34851j : 25.0f)) {
            return;
        }
        float f10 = rectF.left;
        RectF rectF2 = this.f34847f;
        float f11 = rectF2.left;
        if (f10 < f11) {
            rectF.offset(f11 - f10, 0.0f);
        } else {
            float f12 = rectF.right;
            float f13 = rectF2.right;
            if (f12 > f13) {
                rectF.offset(-(f12 - f13), 0.0f);
            }
        }
        float f14 = rectF.top;
        RectF rectF3 = this.f34847f;
        float f15 = rectF3.top;
        if (f14 < f15) {
            rectF.offset(0.0f, f15 - f14);
        } else {
            float f16 = rectF.bottom;
            float f17 = rectF3.bottom;
            if (f16 > f17) {
                rectF.offset(0.0f, -(f16 - f17));
            }
        }
        this.f34848g.set(rectF);
        this.f34846e = a();
        this.f34842a.invalidate();
    }

    public void f(int edge, float dx, float dy) {
        Rect rectA = a();
        if (edge == 1) {
            return;
        }
        if (edge == 32) {
            j(dx * (this.f34848g.width() / rectA.width()), dy * (this.f34848g.height() / rectA.height()));
            return;
        }
        if ((edge & 6) == 0) {
            dx = 0.0f;
        }
        if ((edge & 24) == 0) {
            dy = 0.0f;
        }
        e(((edge & 2) != 0 ? -1 : 1) * dx * (this.f34848g.width() / rectA.width()), ((edge & 8) != 0 ? -1 : 1) * dy * (this.f34848g.height() / rectA.height()));
    }

    public boolean g() {
        return this.f34843b;
    }

    public void i() {
        this.f34846e = a();
    }

    void j(float dx, float dy) {
        Rect rect = new Rect(this.f34846e);
        this.f34848g.offset(dx, dy);
        RectF rectF = this.f34848g;
        rectF.offset(Math.max(0.0f, this.f34847f.left - rectF.left), Math.max(0.0f, this.f34847f.top - this.f34848g.top));
        RectF rectF2 = this.f34848g;
        rectF2.offset(Math.min(0.0f, this.f34847f.right - rectF2.right), Math.min(0.0f, this.f34847f.bottom - this.f34848g.bottom));
        Rect rectA = a();
        this.f34846e = rectA;
        rect.union(rectA);
        rect.inset(-10, -10);
        this.f34842a.invalidate();
    }

    public void k(boolean f10) {
        this.f34843b = f10;
    }

    public void l(boolean hidden) {
        this.f34844c = hidden;
    }

    public void m(ModifyMode mode) {
        if (mode != this.f34845d) {
            this.f34845d = mode;
            this.f34842a.invalidate();
        }
    }

    public void n(Matrix m10, Rect imageRect, RectF cropRect, boolean circle, boolean maintainAspectRatio) {
        if (circle) {
            maintainAspectRatio = true;
        }
        this.f34849h = new Matrix(m10);
        this.f34848g = cropRect;
        this.f34847f = new RectF(imageRect);
        this.f34850i = maintainAspectRatio;
        this.f34852k = circle;
        this.f34851j = this.f34848g.width() / this.f34848g.height();
        this.f34846e = a();
        this.f34855n.setARGB(125, 50, 50, 50);
        this.f34856o.setARGB(125, 50, 50, 50);
        this.f34857p.setStrokeWidth(3.0f);
        this.f34857p.setStyle(Paint.Style.STROKE);
        this.f34857p.setAntiAlias(true);
        this.f34845d = ModifyMode.None;
        h();
    }
}

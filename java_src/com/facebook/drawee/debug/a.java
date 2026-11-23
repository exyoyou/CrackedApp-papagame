package com.facebook.drawee.debug;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import androidx.annotation.VisibleForTesting;
import com.facebook.drawee.drawable.s;
import com.sdk.base.module.manager.SDKManager;
import com.umeng.analytics.pro.bm;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import javax.annotation.Nullable;
import r3.b;

/* JADX INFO: loaded from: classes9.dex */
public class a extends Drawable implements b {

    @VisibleForTesting
    static final int A = -16711936;

    @VisibleForTesting
    static final int B = -256;

    @VisibleForTesting
    static final int C = -65536;
    private static final float D = 0.1f;
    private static final float E = 0.5f;
    private static final int F = -26624;
    private static final int G = 1711276032;
    private static final int H = -1;
    private static final int I = 2;
    private static final int J = 40;
    private static final int K = 10;
    private static final int L = 8;
    private static final int M = 10;
    private static final int N = 9;
    private static final int O = 8;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final String f27118z = "none";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f27119b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private String f27120c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f27121d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f27122e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f27123f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private String f27124g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private s.c f27125h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f27127j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f27128k;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f27134q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f27135r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f27136s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f27137t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f27138u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private long f27139v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @Nullable
    private String f27140w;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private HashMap<String, String> f27126i = new HashMap<>();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f27129l = 80;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final Paint f27130m = new Paint(1);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final Matrix f27131n = new Matrix();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Rect f27132o = new Rect();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final RectF f27133p = new RectF();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f27141x = -1;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f27142y = 0;

    public a() {
        i();
    }

    private void c(Canvas canvas, String label, Object value) {
        e(canvas, label, String.valueOf(value), -1);
    }

    private void d(Canvas canvas, String label, String value) {
        e(canvas, label, value, -1);
    }

    private void e(Canvas canvas, String label, String value, int valueColor) {
        String str = label + ": ";
        float fMeasureText = this.f27130m.measureText(str);
        float fMeasureText2 = this.f27130m.measureText(value);
        this.f27130m.setColor(G);
        int i10 = this.f27137t;
        int i11 = this.f27138u;
        canvas.drawRect(i10 - 4, i11 + 8, i10 + fMeasureText + fMeasureText2 + 4.0f, i11 + this.f27136s + 8, this.f27130m);
        this.f27130m.setColor(-1);
        canvas.drawText(str, this.f27137t, this.f27138u, this.f27130m);
        this.f27130m.setColor(valueColor);
        canvas.drawText(value, this.f27137t + fMeasureText, this.f27138u, this.f27130m);
        this.f27138u += this.f27136s;
    }

    private static String g(String text, @Nullable Object... args) {
        return args == null ? text : String.format(Locale.US, text, args);
    }

    private void h(Rect bounds, int numberOfLines, int maxLineLengthEm) {
        int iMin = Math.min(40, Math.max(10, Math.min(bounds.width() / maxLineLengthEm, bounds.height() / numberOfLines)));
        this.f27130m.setTextSize(iMin);
        int i10 = iMin + 8;
        this.f27136s = i10;
        int i11 = this.f27129l;
        if (i11 == 80) {
            this.f27136s = i10 * (-1);
        }
        this.f27134q = bounds.left + 10;
        this.f27135r = i11 == 80 ? bounds.bottom - 10 : bounds.top + 10 + 10;
    }

    @Override // r3.b
    public void a(long finalImageTimeMs) {
        this.f27139v = finalImageTimeMs;
        invalidateSelf();
    }

    public void b(String key, String value) {
        this.f27126i.put(key, value);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        this.f27130m.setStyle(Paint.Style.STROKE);
        this.f27130m.setStrokeWidth(2.0f);
        this.f27130m.setColor(F);
        canvas.drawRect(bounds.left, bounds.top, bounds.right, bounds.bottom, this.f27130m);
        this.f27130m.setStyle(Paint.Style.FILL);
        this.f27130m.setColor(this.f27142y);
        canvas.drawRect(bounds.left, bounds.top, bounds.right, bounds.bottom, this.f27130m);
        this.f27130m.setStyle(Paint.Style.FILL);
        this.f27130m.setStrokeWidth(0.0f);
        this.f27130m.setColor(-1);
        this.f27137t = this.f27134q;
        this.f27138u = this.f27135r;
        String str = this.f27120c;
        if (str != null) {
            d(canvas, "IDs", g("%s, %s", this.f27119b, str));
        } else {
            d(canvas, "ID", this.f27119b);
        }
        d(canvas, SDKManager.ALGO_D_RFU, g("%dx%d", Integer.valueOf(bounds.width()), Integer.valueOf(bounds.height())));
        e(canvas, "I", g("%dx%d", Integer.valueOf(this.f27121d), Integer.valueOf(this.f27122e)), f(this.f27121d, this.f27122e, this.f27125h));
        d(canvas, "I", g("%d KiB", Integer.valueOf(this.f27123f / 1024)));
        String str2 = this.f27124g;
        if (str2 != null) {
            d(canvas, "i format", str2);
        }
        int i10 = this.f27127j;
        if (i10 > 0) {
            d(canvas, "anim", g("f %d, l %d", Integer.valueOf(i10), Integer.valueOf(this.f27128k)));
        }
        s.c cVar = this.f27125h;
        if (cVar != null) {
            c(canvas, "scale", cVar);
        }
        long j10 = this.f27139v;
        if (j10 >= 0) {
            d(canvas, bm.aM, g("%d ms", Long.valueOf(j10)));
        }
        String str3 = this.f27140w;
        if (str3 != null) {
            e(canvas, "origin", str3, this.f27141x);
        }
        for (Map.Entry<String, String> entry : this.f27126i.entrySet()) {
            d(canvas, entry.getKey(), entry.getValue());
        }
    }

    @VisibleForTesting
    int f(int imageWidth, int imageHeight, @Nullable s.c scaleType) {
        int iWidth = getBounds().width();
        int iHeight = getBounds().height();
        if (iWidth > 0 && iHeight > 0 && imageWidth > 0 && imageHeight > 0) {
            if (scaleType != null) {
                Rect rect = this.f27132o;
                rect.top = 0;
                rect.left = 0;
                rect.right = iWidth;
                rect.bottom = iHeight;
                this.f27131n.reset();
                scaleType.a(this.f27131n, this.f27132o, imageWidth, imageHeight, 0.0f, 0.0f);
                RectF rectF = this.f27133p;
                rectF.top = 0.0f;
                rectF.left = 0.0f;
                rectF.right = imageWidth;
                rectF.bottom = imageHeight;
                this.f27131n.mapRect(rectF);
                int iWidth2 = (int) this.f27133p.width();
                int iHeight2 = (int) this.f27133p.height();
                iWidth = Math.min(iWidth, iWidth2);
                iHeight = Math.min(iHeight, iHeight2);
            }
            float f10 = iWidth;
            float f11 = f10 * 0.1f;
            float f12 = f10 * 0.5f;
            float f13 = iHeight;
            float f14 = 0.1f * f13;
            float f15 = f13 * 0.5f;
            int iAbs = Math.abs(imageWidth - iWidth);
            int iAbs2 = Math.abs(imageHeight - iHeight);
            float f16 = iAbs;
            if (f16 < f11 && iAbs2 < f14) {
                return -16711936;
            }
            if (f16 < f12 && iAbs2 < f15) {
                return -256;
            }
        }
        return -65536;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public void i() {
        this.f27121d = -1;
        this.f27122e = -1;
        this.f27123f = -1;
        this.f27126i = new HashMap<>();
        this.f27127j = -1;
        this.f27128k = -1;
        this.f27124g = null;
        k(null);
        this.f27139v = -1L;
        this.f27140w = null;
        this.f27141x = -1;
        invalidateSelf();
    }

    public void j(int frameCount, int loopCount) {
        this.f27127j = frameCount;
        this.f27128k = loopCount;
        invalidateSelf();
    }

    public void k(@Nullable String controllerId) {
        if (controllerId == null) {
            controllerId = "none";
        }
        this.f27119b = controllerId;
        invalidateSelf();
    }

    public void l(int widthPx, int heightPx) {
        this.f27121d = widthPx;
        this.f27122e = heightPx;
        invalidateSelf();
    }

    public void m(long finalImageTimeMs) {
        this.f27139v = finalImageTimeMs;
    }

    public void n(@Nullable String imageFormat) {
        this.f27124g = imageFormat;
    }

    public void o(@Nullable String imageId) {
        this.f27120c = imageId;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect bounds) {
        super.onBoundsChange(bounds);
        h(bounds, 9, 8);
    }

    public void p(int imageSizeBytes) {
        this.f27123f = imageSizeBytes;
    }

    public void q(String text, int color) {
        this.f27140w = text;
        this.f27141x = color;
        invalidateSelf();
    }

    public void r(int overlayColor) {
        this.f27142y = overlayColor;
    }

    public void s(s.c scaleType) {
        this.f27125h = scaleType;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int alpha) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter cf) {
    }

    public void t(int textGravity) {
        this.f27129l = textGravity;
        invalidateSelf();
    }
}

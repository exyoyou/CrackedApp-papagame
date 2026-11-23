package com.google.android.material.circularreveal;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.internal.view.SupportMenu;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes5.dex */
public class CircularRevealHelper {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final boolean f30004k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int f30005l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int f30006m = 1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int f30007n = 2;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int f30008o = 2;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f30009a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final View f30010b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    private final Path f30011c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    private final Paint f30012d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    private final Paint f30013e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private b.e f30014f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private Drawable f30015g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Paint f30016h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f30017i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f30018j;

    @Retention(RetentionPolicy.SOURCE)
    public @interface Strategy {
    }

    public interface a {
        void b(Canvas canvas);

        boolean c();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CircularRevealHelper(a aVar) {
        this.f30009a = aVar;
        View view = (View) aVar;
        this.f30010b = view;
        view.setWillNotDraw(false);
        this.f30011c = new Path();
        this.f30012d = new Paint(7);
        Paint paint = new Paint(1);
        this.f30013e = paint;
        paint.setColor(0);
    }

    private void d(@NonNull Canvas canvas, int i10, float f10) {
        this.f30016h.setColor(i10);
        this.f30016h.setStrokeWidth(f10);
        b.e eVar = this.f30014f;
        canvas.drawCircle(eVar.f30027a, eVar.f30028b, eVar.f30029c - (f10 / 2.0f), this.f30016h);
    }

    private void e(@NonNull Canvas canvas) {
        this.f30009a.b(canvas);
        if (r()) {
            b.e eVar = this.f30014f;
            canvas.drawCircle(eVar.f30027a, eVar.f30028b, eVar.f30029c, this.f30013e);
        }
        if (p()) {
            d(canvas, -16777216, 10.0f);
            d(canvas, SupportMenu.CATEGORY_MASK, 5.0f);
        }
        f(canvas);
    }

    private void f(@NonNull Canvas canvas) {
        if (q()) {
            Rect bounds = this.f30015g.getBounds();
            float fWidth = this.f30014f.f30027a - (bounds.width() / 2.0f);
            float fHeight = this.f30014f.f30028b - (bounds.height() / 2.0f);
            canvas.translate(fWidth, fHeight);
            this.f30015g.draw(canvas);
            canvas.translate(-fWidth, -fHeight);
        }
    }

    private float i(@NonNull b.e eVar) {
        return z4.a.b(eVar.f30027a, eVar.f30028b, 0.0f, 0.0f, this.f30010b.getWidth(), this.f30010b.getHeight());
    }

    private void k() {
        if (f30008o == 1) {
            this.f30011c.rewind();
            b.e eVar = this.f30014f;
            if (eVar != null) {
                this.f30011c.addCircle(eVar.f30027a, eVar.f30028b, eVar.f30029c, Path.Direction.CW);
            }
        }
        this.f30010b.invalidate();
    }

    private boolean p() {
        b.e eVar = this.f30014f;
        boolean z10 = eVar == null || eVar.a();
        if (f30008o == 0) {
            return !z10 && this.f30018j;
        }
        return !z10;
    }

    private boolean q() {
        return (this.f30017i || this.f30015g == null || this.f30014f == null) ? false : true;
    }

    private boolean r() {
        return (this.f30017i || Color.alpha(this.f30013e.getColor()) == 0) ? false : true;
    }

    public void a() {
        if (f30008o == 0) {
            this.f30017i = true;
            this.f30018j = false;
            this.f30010b.buildDrawingCache();
            Bitmap drawingCache = this.f30010b.getDrawingCache();
            if (drawingCache == null && this.f30010b.getWidth() != 0 && this.f30010b.getHeight() != 0) {
                drawingCache = Bitmap.createBitmap(this.f30010b.getWidth(), this.f30010b.getHeight(), Bitmap.Config.ARGB_8888);
                this.f30010b.draw(new Canvas(drawingCache));
            }
            if (drawingCache != null) {
                Paint paint = this.f30012d;
                Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                paint.setShader(new BitmapShader(drawingCache, tileMode, tileMode));
            }
            this.f30017i = false;
            this.f30018j = true;
        }
    }

    public void b() {
        if (f30008o == 0) {
            this.f30018j = false;
            this.f30010b.destroyDrawingCache();
            this.f30012d.setShader(null);
            this.f30010b.invalidate();
        }
    }

    public void c(@NonNull Canvas canvas) {
        if (p()) {
            int i10 = f30008o;
            if (i10 == 0) {
                b.e eVar = this.f30014f;
                canvas.drawCircle(eVar.f30027a, eVar.f30028b, eVar.f30029c, this.f30012d);
                if (r()) {
                    b.e eVar2 = this.f30014f;
                    canvas.drawCircle(eVar2.f30027a, eVar2.f30028b, eVar2.f30029c, this.f30013e);
                }
            } else if (i10 == 1) {
                int iSave = canvas.save();
                canvas.clipPath(this.f30011c);
                this.f30009a.b(canvas);
                if (r()) {
                    canvas.drawRect(0.0f, 0.0f, this.f30010b.getWidth(), this.f30010b.getHeight(), this.f30013e);
                }
                canvas.restoreToCount(iSave);
            } else {
                if (i10 != 2) {
                    throw new IllegalStateException("Unsupported strategy " + i10);
                }
                this.f30009a.b(canvas);
                if (r()) {
                    canvas.drawRect(0.0f, 0.0f, this.f30010b.getWidth(), this.f30010b.getHeight(), this.f30013e);
                }
            }
        } else {
            this.f30009a.b(canvas);
            if (r()) {
                canvas.drawRect(0.0f, 0.0f, this.f30010b.getWidth(), this.f30010b.getHeight(), this.f30013e);
            }
        }
        f(canvas);
    }

    @Nullable
    public Drawable g() {
        return this.f30015g;
    }

    @ColorInt
    public int h() {
        return this.f30013e.getColor();
    }

    @Nullable
    public b.e j() {
        b.e eVar = this.f30014f;
        if (eVar == null) {
            return null;
        }
        b.e eVar2 = new b.e(eVar);
        if (eVar2.a()) {
            eVar2.f30029c = i(eVar2);
        }
        return eVar2;
    }

    public boolean l() {
        return this.f30009a.c() && !p();
    }

    public void m(@Nullable Drawable drawable) {
        this.f30015g = drawable;
        this.f30010b.invalidate();
    }

    public void n(@ColorInt int i10) {
        this.f30013e.setColor(i10);
        this.f30010b.invalidate();
    }

    public void o(@Nullable b.e eVar) {
        if (eVar == null) {
            this.f30014f = null;
        } else {
            b.e eVar2 = this.f30014f;
            if (eVar2 == null) {
                this.f30014f = new b.e(eVar);
            } else {
                eVar2.c(eVar);
            }
            if (z4.a.e(eVar.f30029c, i(eVar), 1.0E-4f)) {
                this.f30014f.f30029c = Float.MAX_VALUE;
            }
        }
        k();
    }
}

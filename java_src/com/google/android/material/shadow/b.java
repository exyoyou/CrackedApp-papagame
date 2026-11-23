package com.google.android.material.shadow;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.ColorUtils;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class b {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int f31544i = 68;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final int f31545j = 20;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final int f31546k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final int[] f31547l = new int[3];

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final float[] f31548m = {0.0f, 0.5f, 1.0f};

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final int[] f31549n = new int[4];

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final float[] f31550o = {0.0f, 0.0f, 0.5f, 1.0f};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NonNull
    private final Paint f31551a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final Paint f31552b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    private final Paint f31553c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f31554d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f31555e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f31556f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Path f31557g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Paint f31558h;

    public b() {
        this(-16777216);
    }

    public void a(@NonNull Canvas canvas, @Nullable Matrix matrix, @NonNull RectF rectF, int i10, float f10, float f11) {
        boolean z10 = f11 < 0.0f;
        Path path = this.f31557g;
        if (z10) {
            int[] iArr = f31549n;
            iArr[0] = 0;
            iArr[1] = this.f31556f;
            iArr[2] = this.f31555e;
            iArr[3] = this.f31554d;
        } else {
            path.rewind();
            path.moveTo(rectF.centerX(), rectF.centerY());
            path.arcTo(rectF, f10, f11);
            path.close();
            float f12 = -i10;
            rectF.inset(f12, f12);
            int[] iArr2 = f31549n;
            iArr2[0] = 0;
            iArr2[1] = this.f31554d;
            iArr2[2] = this.f31555e;
            iArr2[3] = this.f31556f;
        }
        float fWidth = rectF.width() / 2.0f;
        if (fWidth <= 0.0f) {
            return;
        }
        float f13 = 1.0f - (i10 / fWidth);
        float[] fArr = f31550o;
        fArr[1] = f13;
        fArr[2] = ((1.0f - f13) / 2.0f) + f13;
        this.f31552b.setShader(new RadialGradient(rectF.centerX(), rectF.centerY(), fWidth, f31549n, fArr, Shader.TileMode.CLAMP));
        canvas.save();
        canvas.concat(matrix);
        canvas.scale(1.0f, rectF.height() / rectF.width());
        if (!z10) {
            canvas.clipPath(path, Region.Op.DIFFERENCE);
            canvas.drawPath(path, this.f31558h);
        }
        canvas.drawArc(rectF, f10, f11, true, this.f31552b);
        canvas.restore();
    }

    public void b(@NonNull Canvas canvas, @Nullable Matrix matrix, @NonNull RectF rectF, int i10) {
        rectF.bottom += i10;
        rectF.offset(0.0f, -i10);
        int[] iArr = f31547l;
        iArr[0] = this.f31556f;
        iArr[1] = this.f31555e;
        iArr[2] = this.f31554d;
        Paint paint = this.f31553c;
        float f10 = rectF.left;
        paint.setShader(new LinearGradient(f10, rectF.top, f10, rectF.bottom, iArr, f31548m, Shader.TileMode.CLAMP));
        canvas.save();
        canvas.concat(matrix);
        canvas.drawRect(rectF, this.f31553c);
        canvas.restore();
    }

    public void c(@NonNull Canvas canvas, @Nullable Matrix matrix, @NonNull RectF rectF, int i10, float f10, float f11, @NonNull float[] fArr) {
        if (f11 > 0.0f) {
            f10 += f11;
            f11 = -f11;
        }
        a(canvas, matrix, rectF, i10, f10, f11);
        Path path = this.f31557g;
        path.rewind();
        path.moveTo(fArr[0], fArr[1]);
        path.arcTo(rectF, f10, f11);
        path.close();
        canvas.save();
        canvas.concat(matrix);
        canvas.scale(1.0f, rectF.height() / rectF.width());
        canvas.drawPath(path, this.f31558h);
        canvas.drawPath(path, this.f31551a);
        canvas.restore();
    }

    @NonNull
    public Paint d() {
        return this.f31551a;
    }

    public void e(int i10) {
        this.f31554d = ColorUtils.setAlphaComponent(i10, 68);
        this.f31555e = ColorUtils.setAlphaComponent(i10, 20);
        this.f31556f = ColorUtils.setAlphaComponent(i10, 0);
        this.f31551a.setColor(this.f31554d);
    }

    public b(int i10) {
        this.f31557g = new Path();
        Paint paint = new Paint();
        this.f31558h = paint;
        this.f31551a = new Paint();
        e(i10);
        paint.setColor(0);
        Paint paint2 = new Paint(4);
        this.f31552b = paint2;
        paint2.setStyle(Paint.Style.FILL);
        this.f31553c = new Paint(paint2);
    }
}

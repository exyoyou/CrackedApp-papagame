package u6;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public class a extends Drawable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f97441a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f97442b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f97443c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f97444d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final float f97445e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Paint f97446f = new Paint(1);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Paint f97447g = new Paint(1);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Path f97448h = new Path();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Path f97449i = new Path();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final RectF f97450j = new RectF();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final RectF f97451k = new RectF();

    public a(int baseColorArgb, int borderWidthPx, float cornerRadiusPx) {
        this.f97441a = Color.red(baseColorArgb);
        this.f97442b = Color.green(baseColorArgb);
        this.f97443c = Color.blue(baseColorArgb);
        this.f97444d = Math.max(1, borderWidthPx);
        this.f97445e = Math.max(0.0f, cornerRadiusPx);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        Rect bounds = getBounds();
        if (bounds.isEmpty()) {
            return;
        }
        this.f97446f.setShader(new LinearGradient(0.0f, bounds.top, 0.0f, bounds.bottom, Color.argb(255, this.f97441a, this.f97442b, this.f97443c), Color.argb(0, this.f97441a, this.f97442b, this.f97443c), Shader.TileMode.CLAMP));
        this.f97450j.set(bounds);
        this.f97448h.reset();
        float f10 = this.f97445e;
        if (f10 <= 0.0f) {
            this.f97448h.addRect(this.f97450j, Path.Direction.CW);
        } else {
            this.f97448h.addRoundRect(this.f97450j, f10, f10, Path.Direction.CW);
        }
        canvas.drawPath(this.f97448h, this.f97446f);
        this.f97446f.setShader(null);
        RectF rectF = this.f97451k;
        int i10 = bounds.left;
        int i11 = this.f97444d;
        rectF.set(i10 + i11, bounds.top + i11, bounds.right - i11, bounds.bottom - i11);
        if (this.f97451k.width() <= 0.0f || this.f97451k.height() <= 0.0f) {
            return;
        }
        float fMax = Math.max(0.0f, this.f97445e - this.f97444d);
        this.f97449i.reset();
        float f11 = this.f97445e;
        if (f11 <= 0.0f) {
            this.f97449i.addRect(this.f97450j, Path.Direction.CW);
            this.f97449i.addRect(this.f97451k, Path.Direction.CCW);
        } else {
            this.f97449i.addRoundRect(this.f97450j, f11, f11, Path.Direction.CW);
            if (fMax > 0.0f) {
                this.f97449i.addRoundRect(this.f97451k, fMax, fMax, Path.Direction.CCW);
            } else {
                this.f97449i.addRect(this.f97451k, Path.Direction.CCW);
            }
        }
        this.f97449i.setFillType(Path.FillType.EVEN_ODD);
        this.f97447g.setShader(new LinearGradient(0.0f, bounds.top, 0.0f, bounds.bottom, -1, 16777215, Shader.TileMode.CLAMP));
        canvas.drawPath(this.f97449i, this.f97447g);
        this.f97447g.setShader(null);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int alpha) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
    }
}

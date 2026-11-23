package x4;

import android.content.Context;
import android.graphics.Color;
import android.view.View;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.core.graphics.ColorUtils;
import com.google.android.material.R;
import com.google.android.material.color.s;
import com.google.android.material.internal.p0;
import com.google.android.material.resources.b;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final float f97596f = 4.5f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final float f97597g = 2.0f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int f97598h = (int) Math.round(5.1000000000000005d);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f97599a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f97600b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f97601c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f97602d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final float f97603e;

    public a(@NonNull Context context) {
        this(b.b(context, R.attr.elevationOverlayEnabled, false), s.b(context, R.attr.elevationOverlayColor, 0), s.b(context, R.attr.elevationOverlayAccentColor, 0), s.b(context, R.attr.colorSurface, 0), context.getResources().getDisplayMetrics().density);
    }

    private boolean m(@ColorInt int i10) {
        return ColorUtils.setAlphaComponent(i10, 255) == this.f97602d;
    }

    public int a(float f10) {
        return Math.round(b(f10) * 255.0f);
    }

    public float b(float f10) {
        float f11 = this.f97603e;
        if (f11 <= 0.0f || f10 <= 0.0f) {
            return 0.0f;
        }
        return Math.min(((((float) Math.log1p(f10 / f11)) * f97596f) + 2.0f) / 100.0f, 1.0f);
    }

    @ColorInt
    public int c(@ColorInt int i10, float f10) {
        int i11;
        float fB = b(f10);
        int iAlpha = Color.alpha(i10);
        int iT = s.t(ColorUtils.setAlphaComponent(i10, 255), this.f97600b, fB);
        if (fB > 0.0f && (i11 = this.f97601c) != 0) {
            iT = s.s(iT, ColorUtils.setAlphaComponent(i11, f97598h));
        }
        return ColorUtils.setAlphaComponent(iT, iAlpha);
    }

    @ColorInt
    public int d(@ColorInt int i10, float f10, @NonNull View view) {
        return c(i10, f10 + i(view));
    }

    @ColorInt
    public int e(@ColorInt int i10, float f10) {
        return (this.f97599a && m(i10)) ? c(i10, f10) : i10;
    }

    @ColorInt
    public int f(@ColorInt int i10, float f10, @NonNull View view) {
        return e(i10, f10 + i(view));
    }

    @ColorInt
    public int g(float f10) {
        return e(this.f97602d, f10);
    }

    @ColorInt
    public int h(float f10, @NonNull View view) {
        return g(f10 + i(view));
    }

    public float i(@NonNull View view) {
        return p0.p(view);
    }

    @ColorInt
    public int j() {
        return this.f97600b;
    }

    @ColorInt
    public int k() {
        return this.f97602d;
    }

    public boolean l() {
        return this.f97599a;
    }

    public a(boolean z10, @ColorInt int i10, @ColorInt int i11, @ColorInt int i12, float f10) {
        this.f97599a = z10;
        this.f97600b = i10;
        this.f97601c = i11;
        this.f97602d = i12;
        this.f97603e = f10;
    }
}

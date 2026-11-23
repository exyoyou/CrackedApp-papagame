package com.join.mgps.widget.textview;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.style.ReplacementSpan;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public final class a extends ReplacementSpan {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f73372b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final float f73373c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final float f73374d;

    public a() {
        this(0, 0.0f, 0.0f, 7, null);
    }

    @Override // android.text.style.ReplacementSpan
    public void draw(@NotNull Canvas canvas, @Nullable CharSequence charSequence, int i10, int i11, float f10, int i12, int i13, int i14, @NotNull Paint paint) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(paint, "paint");
        float fMeasureText = paint.measureText(charSequence, i10, i11);
        float f11 = i13;
        canvas.drawText(String.valueOf(charSequence), i10, i11, f10, f11, paint);
        int color = paint.getColor();
        Paint.Style style = paint.getStyle();
        float strokeWidth = paint.getStrokeWidth();
        paint.setColor(this.f73372b);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(this.f73373c);
        float f12 = f11 + this.f73374d;
        canvas.drawLine(f10, f12, f10 + fMeasureText, f12, paint);
        paint.setColor(color);
        paint.setStyle(style);
        paint.setStrokeWidth(strokeWidth);
    }

    @Override // android.text.style.ReplacementSpan
    public int getSize(@NotNull Paint paint, @Nullable CharSequence charSequence, int i10, int i11, @Nullable Paint.FontMetricsInt fontMetricsInt) {
        Intrinsics.checkNotNullParameter(paint, "paint");
        return (int) paint.measureText(charSequence, i10, i11);
    }

    public /* synthetic */ a(int i10, float f10, float f11, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? -16777216 : i10, (i11 & 2) != 0 ? 2.0f : f10, (i11 & 4) != 0 ? 8.0f : f11);
    }

    public a(int i10, float f10, float f11) {
        this.f73372b = i10;
        this.f73373c = f10;
        this.f73374d = f11;
    }
}

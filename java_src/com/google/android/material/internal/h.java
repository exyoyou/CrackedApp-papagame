package com.google.android.material.internal;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class h extends Drawable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Drawable f30925a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Drawable f30926b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final float[] f30927c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f30928d;

    public h(@NonNull Drawable drawable, @NonNull Drawable drawable2) {
        this.f30925a = drawable.getConstantState().newDrawable().mutate();
        Drawable drawableMutate = drawable2.getConstantState().newDrawable().mutate();
        this.f30926b = drawableMutate;
        drawableMutate.setAlpha(0);
        this.f30927c = new float[2];
    }

    public void a(@FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f10) {
        if (this.f30928d != f10) {
            this.f30928d = f10;
            j.a(f10, this.f30927c);
            this.f30925a.setAlpha((int) (this.f30927c[0] * 255.0f));
            this.f30926b.setAlpha((int) (this.f30927c[1] * 255.0f));
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        this.f30925a.draw(canvas);
        this.f30926b.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return Math.max(this.f30925a.getIntrinsicHeight(), this.f30926b.getIntrinsicHeight());
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return Math.max(this.f30925a.getIntrinsicWidth(), this.f30926b.getIntrinsicWidth());
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        return Math.max(this.f30925a.getMinimumHeight(), this.f30926b.getMinimumHeight());
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return Math.max(this.f30925a.getMinimumWidth(), this.f30926b.getMinimumWidth());
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return this.f30925a.isStateful() || this.f30926b.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        if (this.f30928d <= 0.5f) {
            this.f30925a.setAlpha(i10);
            this.f30926b.setAlpha(0);
        } else {
            this.f30925a.setAlpha(0);
            this.f30926b.setAlpha(i10);
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setBounds(int i10, int i11, int i12, int i13) {
        super.setBounds(i10, i11, i12, i13);
        this.f30925a.setBounds(i10, i11, i12, i13);
        this.f30926b.setBounds(i10, i11, i12, i13);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.f30925a.setColorFilter(colorFilter);
        this.f30926b.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setState(int[] iArr) {
        return this.f30925a.setState(iArr) || this.f30926b.setState(iArr);
    }
}

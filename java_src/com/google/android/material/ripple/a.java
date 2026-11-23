package com.google.android.material.ripple;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.drawable.TintAwareDrawable;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.n;
import com.google.android.material.shape.r;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class a extends Drawable implements r, TintAwareDrawable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private b f31366b;

    @Override // android.graphics.drawable.Drawable
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public a mutate() {
        this.f31366b = new b(this.f31366b);
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        b bVar = this.f31366b;
        if (bVar.f31368b) {
            bVar.f31367a.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    @Nullable
    public Drawable.ConstantState getConstantState() {
        return this.f31366b;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f31366b.f31367a.getOpacity();
    }

    @Override // com.google.android.material.shape.r
    @NonNull
    public n getShapeAppearanceModel() {
        return this.f31366b.f31367a.getShapeAppearanceModel();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(@NonNull Rect rect) {
        super.onBoundsChange(rect);
        this.f31366b.f31367a.setBounds(rect);
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(@NonNull int[] iArr) {
        boolean zOnStateChange = super.onStateChange(iArr);
        if (this.f31366b.f31367a.setState(iArr)) {
            zOnStateChange = true;
        }
        boolean zF = com.google.android.material.ripple.b.f(iArr);
        b bVar = this.f31366b;
        if (bVar.f31368b == zF) {
            return zOnStateChange;
        }
        bVar.f31368b = zF;
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        this.f31366b.f31367a.setAlpha(i10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        this.f31366b.f31367a.setColorFilter(colorFilter);
    }

    @Override // com.google.android.material.shape.r
    public void setShapeAppearanceModel(@NonNull n nVar) {
        this.f31366b.f31367a.setShapeAppearanceModel(nVar);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTint(@ColorInt int i10) {
        this.f31366b.f31367a.setTint(i10);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintList(@Nullable ColorStateList colorStateList) {
        this.f31366b.f31367a.setTintList(colorStateList);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public void setTintMode(@Nullable PorterDuff.Mode mode) {
        this.f31366b.f31367a.setTintMode(mode);
    }

    public a(n nVar) {
        this(new b(new MaterialShapeDrawable(nVar)));
    }

    static final class b extends Drawable.ConstantState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @NonNull
        MaterialShapeDrawable f31367a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f31368b;

        public b(MaterialShapeDrawable materialShapeDrawable) {
            this.f31367a = materialShapeDrawable;
            this.f31368b = false;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        @NonNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public a newDrawable() {
            return new a(new b(this));
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        public b(@NonNull b bVar) {
            this.f31367a = (MaterialShapeDrawable) bVar.f31367a.getConstantState().newDrawable();
            this.f31368b = bVar.f31368b;
        }
    }

    private a(b bVar) {
        this.f31366b = bVar;
    }
}

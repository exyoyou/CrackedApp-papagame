package com.facebook.drawee.generic;

import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import androidx.annotation.VisibleForTesting;
import com.facebook.drawee.drawable.h;
import com.facebook.drawee.drawable.v;
import com.facebook.drawee.drawable.w;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class d extends h implements v {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    @VisibleForTesting
    Drawable f27350f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private w f27351g;

    public d(Drawable drawable) {
        super(drawable);
        this.f27350f = null;
    }

    public void A(@Nullable Drawable controllerOverlay) {
        this.f27350f = controllerOverlay;
        invalidateSelf();
    }

    @Override // com.facebook.drawee.drawable.h, android.graphics.drawable.Drawable
    @SuppressLint({"WrongCall"})
    public void draw(Canvas canvas) {
        if (isVisible()) {
            w wVar = this.f27351g;
            if (wVar != null) {
                wVar.onDraw();
            }
            super.draw(canvas);
            Drawable drawable = this.f27350f;
            if (drawable != null) {
                drawable.setBounds(getBounds());
                this.f27350f.draw(canvas);
            }
        }
    }

    @Override // com.facebook.drawee.drawable.h, android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return -1;
    }

    @Override // com.facebook.drawee.drawable.h, android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return -1;
    }

    @Override // com.facebook.drawee.drawable.v
    public void s(@Nullable w visibilityCallback) {
        this.f27351g = visibilityCallback;
    }

    @Override // com.facebook.drawee.drawable.h, android.graphics.drawable.Drawable
    public boolean setVisible(boolean visible, boolean restart) {
        w wVar = this.f27351g;
        if (wVar != null) {
            wVar.onVisibilityChange(visible);
        }
        return super.setVisible(visible, restart);
    }
}

package com.google.android.material.progressindicator;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import androidx.vectordrawable.graphics.drawable.VectorDrawableCompat;
import com.google.android.material.R;
import com.google.android.material.progressindicator.b;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class i<S extends b> extends f {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private g<S> f31297s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private h<ObjectAnimator> f31298t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private Drawable f31299u;

    i(@NonNull Context context, @NonNull b bVar, @NonNull g<S> gVar, @NonNull h<ObjectAnimator> hVar) {
        super(context, bVar);
        E(gVar);
        D(hVar);
    }

    private boolean C() {
        a aVar = this.f31276d;
        return aVar != null && aVar.a(this.f31274b.getContentResolver()) == 0.0f;
    }

    @NonNull
    public static i<CircularProgressIndicatorSpec> v(@NonNull Context context, @NonNull CircularProgressIndicatorSpec circularProgressIndicatorSpec) {
        return w(context, circularProgressIndicatorSpec, new c(circularProgressIndicatorSpec));
    }

    @NonNull
    static i<CircularProgressIndicatorSpec> w(@NonNull Context context, @NonNull CircularProgressIndicatorSpec circularProgressIndicatorSpec, @NonNull c cVar) {
        i<CircularProgressIndicatorSpec> iVar = new i<>(context, circularProgressIndicatorSpec, cVar, new d(circularProgressIndicatorSpec));
        iVar.F(VectorDrawableCompat.create(context.getResources(), R.drawable.indeterminate_static, null));
        return iVar;
    }

    @NonNull
    public static i<LinearProgressIndicatorSpec> x(@NonNull Context context, @NonNull LinearProgressIndicatorSpec linearProgressIndicatorSpec) {
        return y(context, linearProgressIndicatorSpec, new j(linearProgressIndicatorSpec));
    }

    @NonNull
    static i<LinearProgressIndicatorSpec> y(@NonNull Context context, @NonNull LinearProgressIndicatorSpec linearProgressIndicatorSpec, @NonNull j jVar) {
        return new i<>(context, linearProgressIndicatorSpec, jVar, linearProgressIndicatorSpec.f31221h == 0 ? new k(linearProgressIndicatorSpec) : new l(context, linearProgressIndicatorSpec));
    }

    @NonNull
    g<S> A() {
        return this.f31297s;
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public Drawable B() {
        return this.f31299u;
    }

    void D(@NonNull h<ObjectAnimator> hVar) {
        this.f31298t = hVar;
        hVar.e(this);
    }

    void E(@NonNull g<S> gVar) {
        this.f31297s = gVar;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @VisibleForTesting
    public void F(@Nullable Drawable drawable) {
        this.f31299u = drawable;
    }

    @Override // com.google.android.material.progressindicator.f, androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public /* bridge */ /* synthetic */ void clearAnimationCallbacks() {
        super.clearAnimationCallbacks();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        Drawable drawable;
        Rect rect = new Rect();
        if (!getBounds().isEmpty() && isVisible() && canvas.getClipBounds(rect)) {
            if (C() && (drawable = this.f31299u) != null) {
                drawable.setBounds(getBounds());
                DrawableCompat.setTint(this.f31299u, this.f31275c.f31228c[0]);
                this.f31299u.draw(canvas);
                return;
            }
            canvas.save();
            this.f31297s.g(canvas, getBounds(), h(), l(), k());
            int i10 = this.f31275c.f31232g;
            int alpha = getAlpha();
            if (i10 == 0) {
                this.f31297s.d(canvas, this.f31286n, 0.0f, 1.0f, this.f31275c.f31229d, alpha, 0);
            } else {
                g.a aVar = this.f31298t.f31296b.get(0);
                List<g.a> list = this.f31298t.f31296b;
                g.a aVar2 = list.get(list.size() - 1);
                g<S> gVar = this.f31297s;
                if (gVar instanceof j) {
                    gVar.d(canvas, this.f31286n, 0.0f, aVar.f31291a, this.f31275c.f31229d, alpha, i10);
                    this.f31297s.d(canvas, this.f31286n, aVar2.f31292b, 1.0f, this.f31275c.f31229d, alpha, i10);
                } else {
                    alpha = 0;
                    gVar.d(canvas, this.f31286n, aVar2.f31292b, 1.0f + aVar.f31291a, this.f31275c.f31229d, 0, i10);
                }
            }
            for (int i11 = 0; i11 < this.f31298t.f31296b.size(); i11++) {
                g.a aVar3 = this.f31298t.f31296b.get(i11);
                this.f31297s.c(canvas, this.f31286n, aVar3, getAlpha());
                if (i11 > 0 && i10 > 0) {
                    this.f31297s.d(canvas, this.f31286n, this.f31298t.f31296b.get(i11 - 1).f31292b, aVar3.f31291a, this.f31275c.f31229d, alpha, i10);
                }
            }
            canvas.restore();
        }
    }

    @Override // com.google.android.material.progressindicator.f, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getAlpha() {
        return super.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f31297s.e();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f31297s.f();
    }

    @Override // com.google.android.material.progressindicator.f, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getOpacity() {
        return super.getOpacity();
    }

    @Override // com.google.android.material.progressindicator.f, android.graphics.drawable.Animatable
    public /* bridge */ /* synthetic */ boolean isRunning() {
        return super.isRunning();
    }

    @Override // com.google.android.material.progressindicator.f
    public /* bridge */ /* synthetic */ boolean j() {
        return super.j();
    }

    @Override // com.google.android.material.progressindicator.f
    public /* bridge */ /* synthetic */ boolean k() {
        return super.k();
    }

    @Override // com.google.android.material.progressindicator.f
    public /* bridge */ /* synthetic */ boolean l() {
        return super.l();
    }

    @Override // com.google.android.material.progressindicator.f, androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public /* bridge */ /* synthetic */ void registerAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        super.registerAnimationCallback(animationCallback);
    }

    @Override // com.google.android.material.progressindicator.f, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setAlpha(@IntRange(from = 0, to = 255) int i10) {
        super.setAlpha(i10);
    }

    @Override // com.google.android.material.progressindicator.f, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setColorFilter(@Nullable ColorFilter colorFilter) {
        super.setColorFilter(colorFilter);
    }

    @Override // com.google.android.material.progressindicator.f, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean setVisible(boolean z10, boolean z11) {
        return super.setVisible(z10, z11);
    }

    @Override // com.google.android.material.progressindicator.f, android.graphics.drawable.Animatable
    public /* bridge */ /* synthetic */ void start() {
        super.start();
    }

    @Override // com.google.android.material.progressindicator.f, android.graphics.drawable.Animatable
    public /* bridge */ /* synthetic */ void stop() {
        super.stop();
    }

    @Override // com.google.android.material.progressindicator.f
    public /* bridge */ /* synthetic */ boolean t(boolean z10, boolean z11, boolean z12) {
        return super.t(z10, z11, z12);
    }

    @Override // com.google.android.material.progressindicator.f
    boolean u(boolean z10, boolean z11, boolean z12) {
        Drawable drawable;
        boolean zU = super.u(z10, z11, z12);
        if (C() && (drawable = this.f31299u) != null) {
            return drawable.setVisible(z10, z11);
        }
        if (!isRunning()) {
            this.f31298t.a();
        }
        if (z10 && (z12 || (Build.VERSION.SDK_INT <= 22 && !C()))) {
            this.f31298t.i();
        }
        return zU;
    }

    @Override // com.google.android.material.progressindicator.f, androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public /* bridge */ /* synthetic */ boolean unregisterAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        return super.unregisterAnimationCallback(animationCallback);
    }

    @NonNull
    h<ObjectAnimator> z() {
        return this.f31298t;
    }
}

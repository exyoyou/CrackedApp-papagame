package com.google.android.material.progressindicator;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.math.MathUtils;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.FloatPropertyCompat;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import com.google.android.material.progressindicator.b;

/* JADX INFO: loaded from: classes5.dex */
public final class e<S extends b> extends f {
    private static final FloatPropertyCompat<e<?>> A = new a("indicatorLevel");

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final int f31263x = 10000;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final float f31264y = 50.0f;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    static final float f31265z = 0.01f;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private g<S> f31266s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final SpringForce f31267t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final SpringAnimation f31268u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final g.a f31269v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f31270w;

    class a extends FloatPropertyCompat<e<?>> {
        a(String str) {
            super(str);
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public float getValue(e<?> eVar) {
            return eVar.D() * 10000.0f;
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void setValue(e<?> eVar, float f10) {
            eVar.G(f10 / 10000.0f);
        }
    }

    e(@NonNull Context context, @NonNull b bVar, @NonNull g<S> gVar) {
        super(context, bVar);
        this.f31270w = false;
        F(gVar);
        this.f31269v = new g.a();
        SpringForce springForce = new SpringForce();
        this.f31267t = springForce;
        springForce.setDampingRatio(1.0f);
        springForce.setStiffness(50.0f);
        SpringAnimation springAnimation = new SpringAnimation(this, A);
        this.f31268u = springAnimation;
        springAnimation.setSpring(springForce);
        n(1.0f);
    }

    @NonNull
    public static e<LinearProgressIndicatorSpec> A(@NonNull Context context, @NonNull LinearProgressIndicatorSpec linearProgressIndicatorSpec) {
        return B(context, linearProgressIndicatorSpec, new j(linearProgressIndicatorSpec));
    }

    @NonNull
    static e<LinearProgressIndicatorSpec> B(@NonNull Context context, @NonNull LinearProgressIndicatorSpec linearProgressIndicatorSpec, @NonNull j jVar) {
        return new e<>(context, linearProgressIndicatorSpec, jVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float D() {
        return this.f31269v.f31292b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G(float f10) {
        this.f31269v.f31292b = f10;
        invalidateSelf();
    }

    @NonNull
    public static e<CircularProgressIndicatorSpec> y(@NonNull Context context, @NonNull CircularProgressIndicatorSpec circularProgressIndicatorSpec) {
        return z(context, circularProgressIndicatorSpec, new c(circularProgressIndicatorSpec));
    }

    @NonNull
    static e<CircularProgressIndicatorSpec> z(@NonNull Context context, @NonNull CircularProgressIndicatorSpec circularProgressIndicatorSpec, @NonNull c cVar) {
        return new e<>(context, circularProgressIndicatorSpec, cVar);
    }

    @NonNull
    g<S> C() {
        return this.f31266s;
    }

    public void E(@NonNull DynamicAnimation.OnAnimationEndListener onAnimationEndListener) {
        this.f31268u.removeEndListener(onAnimationEndListener);
    }

    void F(@NonNull g<S> gVar) {
        this.f31266s = gVar;
    }

    void H(float f10) {
        setLevel((int) (f10 * 10000.0f));
    }

    @Override // com.google.android.material.progressindicator.f, androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public /* bridge */ /* synthetic */ void clearAnimationCallbacks() {
        super.clearAnimationCallbacks();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        Rect rect = new Rect();
        if (!getBounds().isEmpty() && isVisible() && canvas.getClipBounds(rect)) {
            canvas.save();
            this.f31266s.g(canvas, getBounds(), h(), l(), k());
            this.f31286n.setStyle(Paint.Style.FILL);
            this.f31286n.setAntiAlias(true);
            g.a aVar = this.f31269v;
            b bVar = this.f31275c;
            aVar.f31293c = bVar.f31228c[0];
            int iClamp = bVar.f31232g;
            if (iClamp > 0) {
                if (!(this.f31266s instanceof j)) {
                    iClamp = (int) ((iClamp * MathUtils.clamp(D(), 0.0f, f31265z)) / f31265z);
                }
                this.f31266s.d(canvas, this.f31286n, D(), 1.0f, this.f31275c.f31229d, getAlpha(), iClamp);
            } else {
                this.f31266s.d(canvas, this.f31286n, 0.0f, 1.0f, bVar.f31229d, getAlpha(), 0);
            }
            this.f31266s.c(canvas, this.f31286n, this.f31269v, getAlpha());
            this.f31266s.b(canvas, this.f31286n, this.f31275c.f31228c[0], getAlpha());
            canvas.restore();
        }
    }

    @Override // com.google.android.material.progressindicator.f, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getAlpha() {
        return super.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f31266s.e();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f31266s.f();
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

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        this.f31268u.skipToEnd();
        G(getLevel() / 10000.0f);
    }

    @Override // com.google.android.material.progressindicator.f
    public /* bridge */ /* synthetic */ boolean k() {
        return super.k();
    }

    @Override // com.google.android.material.progressindicator.f
    public /* bridge */ /* synthetic */ boolean l() {
        return super.l();
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i10) {
        if (this.f31270w) {
            this.f31268u.skipToEnd();
            G(i10 / 10000.0f);
            return true;
        }
        this.f31268u.setStartValue(D() * 10000.0f);
        this.f31268u.animateToFinalPosition(i10);
        return true;
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
        boolean zU = super.u(z10, z11, z12);
        float fA = this.f31276d.a(this.f31274b.getContentResolver());
        if (fA == 0.0f) {
            this.f31270w = true;
        } else {
            this.f31270w = false;
            this.f31267t.setStiffness(50.0f / fA);
        }
        return zU;
    }

    @Override // com.google.android.material.progressindicator.f, androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public /* bridge */ /* synthetic */ boolean unregisterAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        return super.unregisterAnimationCallback(animationCallback);
    }

    public void x(@NonNull DynamicAnimation.OnAnimationEndListener onAnimationEndListener) {
        this.f31268u.addEndListener(onAnimationEndListener);
    }
}

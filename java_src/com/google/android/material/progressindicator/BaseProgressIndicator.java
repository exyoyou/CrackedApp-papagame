package com.google.android.material.progressindicator;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ProgressBar;
import androidx.annotation.AttrRes;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.core.view.ViewCompat;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import com.google.android.material.R;
import com.google.android.material.color.s;
import com.google.android.material.internal.g0;
import com.google.android.material.progressindicator.b;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public abstract class BaseProgressIndicator<S extends com.google.android.material.progressindicator.b> extends ProgressBar {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final int f31189p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final int f31190q = 1;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final int f31191r = 2;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final int f31192s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final int f31193t = 1;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final int f31194u = 2;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final int f31195v = 3;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    static final int f31196w = R.style.Widget_MaterialComponents_ProgressIndicator;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    static final float f31197x = 0.2f;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    static final int f31198y = 255;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    static final int f31199z = 1000;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    S f31200b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f31201c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f31202d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f31203e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f31204f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f31205g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f31206h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    com.google.android.material.progressindicator.a f31207i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f31208j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f31209k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final Runnable f31210l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final Runnable f31211m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final Animatable2Compat.AnimationCallback f31212n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Animatable2Compat.AnimationCallback f31213o;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface HideAnimationBehavior {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface ShowAnimationBehavior {
    }

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BaseProgressIndicator.this.l();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            BaseProgressIndicator.this.k();
            BaseProgressIndicator.this.f31206h = -1L;
        }
    }

    class c extends Animatable2Compat.AnimationCallback {
        c() {
        }

        @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat.AnimationCallback
        public void onAnimationEnd(Drawable drawable) {
            BaseProgressIndicator.this.setIndeterminate(false);
            BaseProgressIndicator baseProgressIndicator = BaseProgressIndicator.this;
            baseProgressIndicator.setProgressCompat(baseProgressIndicator.f31201c, BaseProgressIndicator.this.f31202d);
        }
    }

    class d extends Animatable2Compat.AnimationCallback {
        d() {
        }

        @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat.AnimationCallback
        public void onAnimationEnd(Drawable drawable) {
            super.onAnimationEnd(drawable);
            if (BaseProgressIndicator.this.f31208j) {
                return;
            }
            BaseProgressIndicator baseProgressIndicator = BaseProgressIndicator.this;
            baseProgressIndicator.setVisibility(baseProgressIndicator.f31209k);
        }
    }

    protected BaseProgressIndicator(@NonNull Context context, @Nullable AttributeSet attributeSet, @AttrRes int i10, @StyleRes int i11) {
        super(a5.a.c(context, attributeSet, i10, f31196w), attributeSet, i10);
        this.f31206h = -1L;
        this.f31208j = false;
        this.f31209k = 4;
        this.f31210l = new a();
        this.f31211m = new b();
        this.f31212n = new c();
        this.f31213o = new d();
        Context context2 = getContext();
        this.f31200b = (S) i(context2, attributeSet);
        TypedArray typedArrayK = g0.k(context2, attributeSet, R.styleable.BaseProgressIndicator, i10, i11, new int[0]);
        this.f31204f = typedArrayK.getInt(R.styleable.BaseProgressIndicator_showDelay, -1);
        this.f31205g = Math.min(typedArrayK.getInt(R.styleable.BaseProgressIndicator_minHideDelay, -1), 1000);
        typedArrayK.recycle();
        this.f31207i = new com.google.android.material.progressindicator.a();
        this.f31203e = true;
    }

    @Nullable
    private g<S> getCurrentDrawingDelegate() {
        if (isIndeterminate()) {
            if (getIndeterminateDrawable() == null) {
                return null;
            }
            return getIndeterminateDrawable().A();
        }
        if (getProgressDrawable() == null) {
            return null;
        }
        return getProgressDrawable().C();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        ((f) getCurrentDrawable()).t(false, false, true);
        if (n()) {
            setVisibility(4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        if (this.f31205g > 0) {
            this.f31206h = SystemClock.uptimeMillis();
        }
        setVisibility(0);
    }

    private boolean n() {
        return (getProgressDrawable() == null || !getProgressDrawable().isVisible()) && (getIndeterminateDrawable() == null || !getIndeterminateDrawable().isVisible());
    }

    private void o() {
        if (getProgressDrawable() != null && getIndeterminateDrawable() != null) {
            getIndeterminateDrawable().z().d(this.f31212n);
        }
        if (getProgressDrawable() != null) {
            getProgressDrawable().registerAnimationCallback(this.f31213o);
        }
        if (getIndeterminateDrawable() != null) {
            getIndeterminateDrawable().registerAnimationCallback(this.f31213o);
        }
    }

    private void q() {
        if (getIndeterminateDrawable() != null) {
            getIndeterminateDrawable().unregisterAnimationCallback(this.f31213o);
            getIndeterminateDrawable().z().j();
        }
        if (getProgressDrawable() != null) {
            getProgressDrawable().unregisterAnimationCallback(this.f31213o);
        }
    }

    @Override // android.widget.ProgressBar
    @Nullable
    public Drawable getCurrentDrawable() {
        return isIndeterminate() ? getIndeterminateDrawable() : getProgressDrawable();
    }

    public int getHideAnimationBehavior() {
        return this.f31200b.f31231f;
    }

    @NonNull
    public int[] getIndicatorColor() {
        return this.f31200b.f31228c;
    }

    @Px
    public int getIndicatorTrackGapSize() {
        return this.f31200b.f31232g;
    }

    public int getShowAnimationBehavior() {
        return this.f31200b.f31230e;
    }

    @ColorInt
    public int getTrackColor() {
        return this.f31200b.f31229d;
    }

    @Px
    public int getTrackCornerRadius() {
        return this.f31200b.f31227b;
    }

    @Px
    public int getTrackThickness() {
        return this.f31200b.f31226a;
    }

    protected void h(boolean z10) {
        if (this.f31203e) {
            ((f) getCurrentDrawable()).t(r(), false, z10);
        }
    }

    abstract S i(@NonNull Context context, @NonNull AttributeSet attributeSet);

    @Override // android.view.View
    public void invalidate() {
        super.invalidate();
        if (getCurrentDrawable() != null) {
            getCurrentDrawable().invalidateSelf();
        }
    }

    public void j() {
        if (getVisibility() != 0) {
            removeCallbacks(this.f31210l);
            return;
        }
        removeCallbacks(this.f31211m);
        long jUptimeMillis = SystemClock.uptimeMillis() - this.f31206h;
        int i10 = this.f31205g;
        if (jUptimeMillis >= ((long) i10)) {
            this.f31211m.run();
        } else {
            postDelayed(this.f31211m, ((long) i10) - jUptimeMillis);
        }
    }

    boolean m() {
        View view = this;
        while (view.getVisibility() == 0) {
            Object parent = view.getParent();
            if (parent == null) {
                return getWindowVisibility() == 0;
            }
            if (!(parent instanceof View)) {
                return true;
            }
            view = (View) parent;
        }
        return false;
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        o();
        if (r()) {
            l();
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected void onDetachedFromWindow() {
        removeCallbacks(this.f31211m);
        removeCallbacks(this.f31210l);
        ((f) getCurrentDrawable()).j();
        q();
        super.onDetachedFromWindow();
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected synchronized void onDraw(@NonNull Canvas canvas) {
        int iSave = canvas.save();
        if (getPaddingLeft() != 0 || getPaddingTop() != 0) {
            canvas.translate(getPaddingLeft(), getPaddingTop());
        }
        if (getPaddingRight() != 0 || getPaddingBottom() != 0) {
            canvas.clipRect(0, 0, getWidth() - (getPaddingLeft() + getPaddingRight()), getHeight() - (getPaddingTop() + getPaddingBottom()));
        }
        getCurrentDrawable().draw(canvas);
        canvas.restoreToCount(iSave);
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected synchronized void onMeasure(int i10, int i11) {
        g<S> currentDrawingDelegate = getCurrentDrawingDelegate();
        if (currentDrawingDelegate == null) {
            return;
        }
        setMeasuredDimension(currentDrawingDelegate.f() < 0 ? View.getDefaultSize(getSuggestedMinimumWidth(), i10) : currentDrawingDelegate.f() + getPaddingLeft() + getPaddingRight(), currentDrawingDelegate.e() < 0 ? View.getDefaultSize(getSuggestedMinimumHeight(), i11) : currentDrawingDelegate.e() + getPaddingTop() + getPaddingBottom());
    }

    @Override // android.view.View
    protected void onVisibilityChanged(@NonNull View view, int i10) {
        super.onVisibilityChanged(view, i10);
        h(i10 == 0);
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i10) {
        super.onWindowVisibilityChanged(i10);
        h(false);
    }

    public void p() {
        if (this.f31204f <= 0) {
            this.f31210l.run();
        } else {
            removeCallbacks(this.f31210l);
            postDelayed(this.f31210l, this.f31204f);
        }
    }

    boolean r() {
        return ViewCompat.isAttachedToWindow(this) && getWindowVisibility() == 0 && m();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @VisibleForTesting
    public void setAnimatorDurationScaleProvider(@NonNull com.google.android.material.progressindicator.a aVar) {
        this.f31207i = aVar;
        if (getProgressDrawable() != null) {
            getProgressDrawable().f31276d = aVar;
        }
        if (getIndeterminateDrawable() != null) {
            getIndeterminateDrawable().f31276d = aVar;
        }
    }

    public void setHideAnimationBehavior(int i10) {
        this.f31200b.f31231f = i10;
        invalidate();
    }

    @Override // android.widget.ProgressBar
    public synchronized void setIndeterminate(boolean z10) {
        if (z10 == isIndeterminate()) {
            return;
        }
        f fVar = (f) getCurrentDrawable();
        if (fVar != null) {
            fVar.j();
        }
        super.setIndeterminate(z10);
        f fVar2 = (f) getCurrentDrawable();
        if (fVar2 != null) {
            fVar2.t(r(), false, false);
        }
        if ((fVar2 instanceof i) && r()) {
            ((i) fVar2).z().i();
        }
        this.f31208j = false;
    }

    @Override // android.widget.ProgressBar
    public void setIndeterminateDrawable(@Nullable Drawable drawable) {
        if (drawable == null) {
            super.setIndeterminateDrawable(null);
        } else {
            if (!(drawable instanceof i)) {
                throw new IllegalArgumentException("Cannot set framework drawable as indeterminate drawable.");
            }
            ((f) drawable).j();
            super.setIndeterminateDrawable(drawable);
        }
    }

    public void setIndicatorColor(@ColorInt int... iArr) {
        if (iArr.length == 0) {
            iArr = new int[]{s.b(getContext(), R.attr.colorPrimary, -1)};
        }
        if (Arrays.equals(getIndicatorColor(), iArr)) {
            return;
        }
        this.f31200b.f31228c = iArr;
        getIndeterminateDrawable().z().c();
        invalidate();
    }

    public void setIndicatorTrackGapSize(@Px int i10) {
        S s10 = this.f31200b;
        if (s10.f31232g != i10) {
            s10.f31232g = i10;
            s10.e();
            invalidate();
        }
    }

    @Override // android.widget.ProgressBar
    public synchronized void setProgress(int i10) {
        if (isIndeterminate()) {
            return;
        }
        setProgressCompat(i10, false);
    }

    public void setProgressCompat(int i10, boolean z10) {
        if (!isIndeterminate()) {
            super.setProgress(i10);
            if (getProgressDrawable() == null || z10) {
                return;
            }
            getProgressDrawable().jumpToCurrentState();
            return;
        }
        if (getProgressDrawable() != null) {
            this.f31201c = i10;
            this.f31202d = z10;
            this.f31208j = true;
            if (!getIndeterminateDrawable().isVisible() || this.f31207i.a(getContext().getContentResolver()) == 0.0f) {
                this.f31212n.onAnimationEnd(getIndeterminateDrawable());
            } else {
                getIndeterminateDrawable().z().f();
            }
        }
    }

    @Override // android.widget.ProgressBar
    public void setProgressDrawable(@Nullable Drawable drawable) {
        if (drawable == null) {
            super.setProgressDrawable(null);
        } else {
            if (!(drawable instanceof e)) {
                throw new IllegalArgumentException("Cannot set framework drawable as progress drawable.");
            }
            e eVar = (e) drawable;
            eVar.j();
            super.setProgressDrawable(eVar);
            eVar.H(getProgress() / getMax());
        }
    }

    public void setShowAnimationBehavior(int i10) {
        this.f31200b.f31230e = i10;
        invalidate();
    }

    public void setTrackColor(@ColorInt int i10) {
        S s10 = this.f31200b;
        if (s10.f31229d != i10) {
            s10.f31229d = i10;
            invalidate();
        }
    }

    public void setTrackCornerRadius(@Px int i10) {
        S s10 = this.f31200b;
        if (s10.f31227b != i10) {
            s10.f31227b = Math.min(i10, s10.f31226a / 2);
            invalidate();
        }
    }

    public void setTrackThickness(@Px int i10) {
        S s10 = this.f31200b;
        if (s10.f31226a != i10) {
            s10.f31226a = i10;
            requestLayout();
        }
    }

    public void setVisibilityAfterHide(int i10) {
        if (i10 != 0 && i10 != 4 && i10 != 8) {
            throw new IllegalArgumentException("The component's visibility must be one of VISIBLE, INVISIBLE, and GONE defined in View.");
        }
        this.f31209k = i10;
    }

    @Override // android.widget.ProgressBar
    @Nullable
    public i<S> getIndeterminateDrawable() {
        return (i) super.getIndeterminateDrawable();
    }

    @Override // android.widget.ProgressBar
    @Nullable
    public e<S> getProgressDrawable() {
        return (e) super.getProgressDrawable();
    }
}

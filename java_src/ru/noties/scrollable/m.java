package ru.noties.scrollable;

import android.animation.ValueAnimator;

/* JADX INFO: loaded from: classes10.dex */
public abstract class m implements l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f96941a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f96942b = -1.0f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ValueAnimator f96943c;

    class a implements ValueAnimator.AnimatorUpdateListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ScrollableLayout f96944b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ float f96945c;

        a(ScrollableLayout scrollableLayout, float f10) {
            this.f96944b = scrollableLayout;
            this.f96945c = f10;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float animatedFraction = valueAnimator.getAnimatedFraction();
            m.this.f96941a -= (int) (m.this.f96941a * animatedFraction);
            m mVar = m.this;
            ScrollableLayout scrollableLayout = this.f96944b;
            float f10 = this.f96945c;
            mVar.j(scrollableLayout, f10 - (animatedFraction * f10));
        }
    }

    @Override // ru.noties.scrollable.l
    public void a(ScrollableLayout scrollableLayout, int i10) {
        f();
        int iH = h(scrollableLayout);
        int i11 = this.f96941a + (-i10);
        this.f96941a = i11;
        if (i11 > iH) {
            this.f96941a = iH;
        }
        float fI = i(scrollableLayout);
        if (Float.compare(this.f96942b, fI) != 0) {
            j(scrollableLayout, fI);
            this.f96942b = fI;
        }
    }

    @Override // ru.noties.scrollable.l
    public boolean b(ScrollableLayout scrollableLayout, int i10) {
        return this.f96941a > 0;
    }

    @Override // ru.noties.scrollable.l
    public void c(ScrollableLayout scrollableLayout) {
        f();
        float fI = i(scrollableLayout);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f96943c = valueAnimatorOfFloat;
        g(valueAnimatorOfFloat);
        this.f96943c.addUpdateListener(new a(scrollableLayout, fI));
        this.f96943c.start();
    }

    @Override // ru.noties.scrollable.l
    public void clear() {
        this.f96941a = 0;
    }

    public void f() {
        ValueAnimator valueAnimator = this.f96943c;
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            return;
        }
        this.f96943c.cancel();
    }

    protected void g(ValueAnimator valueAnimator) {
        valueAnimator.setDuration(250L);
    }

    protected int h(ScrollableLayout scrollableLayout) {
        return scrollableLayout.getMaxScrollY();
    }

    protected float i(ScrollableLayout scrollableLayout) {
        int i10 = this.f96941a;
        if (i10 < 0) {
            return 0.0f;
        }
        return i10 / h(scrollableLayout);
    }

    protected abstract void j(ScrollableLayout scrollableLayout, float f10);
}

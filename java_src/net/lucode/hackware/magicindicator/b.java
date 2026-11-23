package net.lucode.hackware.magicindicator;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(11)
public class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ValueAnimator f94765b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f94766c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List<MagicIndicator> f94764a = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f94767d = 150;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Interpolator f94768e = new AccelerateDecelerateInterpolator();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Animator.AnimatorListener f94769f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ValueAnimator.AnimatorUpdateListener f94770g = new C1216b();

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            b.this.e(0);
            b.this.f94765b = null;
        }
    }

    /* JADX INFO: renamed from: net.lucode.hackware.magicindicator.b$b, reason: collision with other inner class name */
    class C1216b implements ValueAnimator.AnimatorUpdateListener {
        C1216b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            int i10 = (int) fFloatValue;
            float f10 = fFloatValue - i10;
            if (fFloatValue < 0.0f) {
                i10--;
                f10 += 1.0f;
            }
            b.this.f(i10, f10, 0);
        }
    }

    public b() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(int i10) {
        Iterator<MagicIndicator> it2 = this.f94764a.iterator();
        while (it2.hasNext()) {
            it2.next().a(i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(int i10, float f10, int i11) {
        Iterator<MagicIndicator> it2 = this.f94764a.iterator();
        while (it2.hasNext()) {
            it2.next().b(i10, f10, i11);
        }
    }

    private void g(int i10) {
        Iterator<MagicIndicator> it2 = this.f94764a.iterator();
        while (it2.hasNext()) {
            it2.next().c(i10);
        }
    }

    public static uc.a h(List<uc.a> list, int i10) {
        uc.a aVar;
        if (i10 >= 0 && i10 <= list.size() - 1) {
            return list.get(i10);
        }
        uc.a aVar2 = new uc.a();
        if (i10 < 0) {
            aVar = list.get(0);
        } else {
            i10 = (i10 - list.size()) + 1;
            aVar = list.get(list.size() - 1);
        }
        aVar2.f97492a = aVar.f97492a + (aVar.f() * i10);
        aVar2.f97493b = aVar.f97493b;
        aVar2.f97494c = aVar.f97494c + (aVar.f() * i10);
        aVar2.f97495d = aVar.f97495d;
        aVar2.f97496e = aVar.f97496e + (aVar.f() * i10);
        aVar2.f97497f = aVar.f97497f;
        aVar2.f97498g = aVar.f97498g + (i10 * aVar.f());
        aVar2.f97499h = aVar.f97499h;
        return aVar2;
    }

    public void d(MagicIndicator magicIndicator) {
        this.f94764a.add(magicIndicator);
    }

    public void i(int i10) {
        j(i10, true);
    }

    public void j(int i10, boolean z10) {
        if (this.f94766c == i10) {
            return;
        }
        if (z10) {
            ValueAnimator valueAnimator = this.f94765b;
            if (valueAnimator == null || !valueAnimator.isRunning()) {
                e(2);
            }
            g(i10);
            float fFloatValue = this.f94766c;
            ValueAnimator valueAnimator2 = this.f94765b;
            if (valueAnimator2 != null) {
                fFloatValue = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                this.f94765b.cancel();
                this.f94765b = null;
            }
            ValueAnimator valueAnimator3 = new ValueAnimator();
            this.f94765b = valueAnimator3;
            valueAnimator3.setFloatValues(fFloatValue, i10);
            this.f94765b.addUpdateListener(this.f94770g);
            this.f94765b.addListener(this.f94769f);
            this.f94765b.setInterpolator(this.f94768e);
            this.f94765b.setDuration(this.f94767d);
            this.f94765b.start();
        } else {
            g(i10);
            ValueAnimator valueAnimator4 = this.f94765b;
            if (valueAnimator4 != null && valueAnimator4.isRunning()) {
                f(this.f94766c, 0.0f, 0);
            }
            e(0);
            f(i10, 0.0f, 0);
        }
        this.f94766c = i10;
    }

    public void k(int i10) {
        this.f94767d = i10;
    }

    public void l(Interpolator interpolator) {
        if (interpolator == null) {
            this.f94768e = new AccelerateDecelerateInterpolator();
        } else {
            this.f94768e = interpolator;
        }
    }

    public b(MagicIndicator magicIndicator) {
        this.f94764a.add(magicIndicator);
    }
}

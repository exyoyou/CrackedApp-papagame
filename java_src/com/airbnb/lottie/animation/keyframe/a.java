package com.airbnb.lottie.animation.keyframe;

import android.view.animation.Interpolator;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public abstract class a<K, A> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final d<K> f5511c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    protected com.airbnb.lottie.value.j<A> f5513e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final List<b> f5509a = new ArrayList(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f5510b = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected float f5512d = 0.0f;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private A f5514f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f5515g = -1.0f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private float f5516h = -1.0f;

    public interface b {
        void d();
    }

    private static final class c<T> implements d<T> {
        private c() {
        }

        @Override // com.airbnb.lottie.animation.keyframe.a.d
        public com.airbnb.lottie.value.a<T> a() {
            throw new IllegalStateException("not implemented");
        }

        @Override // com.airbnb.lottie.animation.keyframe.a.d
        public float b() {
            return 0.0f;
        }

        @Override // com.airbnb.lottie.animation.keyframe.a.d
        public boolean c(float f10) {
            throw new IllegalStateException("not implemented");
        }

        @Override // com.airbnb.lottie.animation.keyframe.a.d
        public boolean d(float f10) {
            return false;
        }

        @Override // com.airbnb.lottie.animation.keyframe.a.d
        public float e() {
            return 1.0f;
        }

        @Override // com.airbnb.lottie.animation.keyframe.a.d
        public boolean isEmpty() {
            return true;
        }
    }

    private interface d<T> {
        com.airbnb.lottie.value.a<T> a();

        @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a)
        float b();

        boolean c(float f10);

        boolean d(float f10);

        @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a)
        float e();

        boolean isEmpty();
    }

    private static final class e<T> implements d<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List<? extends com.airbnb.lottie.value.a<T>> f5517a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private com.airbnb.lottie.value.a<T> f5519c = null;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private float f5520d = -1.0f;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @NonNull
        private com.airbnb.lottie.value.a<T> f5518b = f(0.0f);

        e(List<? extends com.airbnb.lottie.value.a<T>> list) {
            this.f5517a = list;
        }

        private com.airbnb.lottie.value.a<T> f(float f10) {
            List<? extends com.airbnb.lottie.value.a<T>> list = this.f5517a;
            com.airbnb.lottie.value.a<T> aVar = list.get(list.size() - 1);
            if (f10 >= aVar.f()) {
                return aVar;
            }
            for (int size = this.f5517a.size() - 2; size >= 1; size--) {
                com.airbnb.lottie.value.a<T> aVar2 = this.f5517a.get(size);
                if (this.f5518b != aVar2 && aVar2.a(f10)) {
                    return aVar2;
                }
            }
            return this.f5517a.get(0);
        }

        @Override // com.airbnb.lottie.animation.keyframe.a.d
        @NonNull
        public com.airbnb.lottie.value.a<T> a() {
            return this.f5518b;
        }

        @Override // com.airbnb.lottie.animation.keyframe.a.d
        public float b() {
            return this.f5517a.get(0).f();
        }

        @Override // com.airbnb.lottie.animation.keyframe.a.d
        public boolean c(float f10) {
            com.airbnb.lottie.value.a<T> aVar = this.f5519c;
            com.airbnb.lottie.value.a<T> aVar2 = this.f5518b;
            if (aVar == aVar2 && this.f5520d == f10) {
                return true;
            }
            this.f5519c = aVar2;
            this.f5520d = f10;
            return false;
        }

        @Override // com.airbnb.lottie.animation.keyframe.a.d
        public boolean d(float f10) {
            if (this.f5518b.a(f10)) {
                return !this.f5518b.i();
            }
            this.f5518b = f(f10);
            return true;
        }

        @Override // com.airbnb.lottie.animation.keyframe.a.d
        public float e() {
            List<? extends com.airbnb.lottie.value.a<T>> list = this.f5517a;
            return list.get(list.size() - 1).c();
        }

        @Override // com.airbnb.lottie.animation.keyframe.a.d
        public boolean isEmpty() {
            return false;
        }
    }

    private static final class f<T> implements d<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @NonNull
        private final com.airbnb.lottie.value.a<T> f5521a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private float f5522b = -1.0f;

        f(List<? extends com.airbnb.lottie.value.a<T>> list) {
            this.f5521a = list.get(0);
        }

        @Override // com.airbnb.lottie.animation.keyframe.a.d
        public com.airbnb.lottie.value.a<T> a() {
            return this.f5521a;
        }

        @Override // com.airbnb.lottie.animation.keyframe.a.d
        public float b() {
            return this.f5521a.f();
        }

        @Override // com.airbnb.lottie.animation.keyframe.a.d
        public boolean c(float f10) {
            if (this.f5522b == f10) {
                return true;
            }
            this.f5522b = f10;
            return false;
        }

        @Override // com.airbnb.lottie.animation.keyframe.a.d
        public boolean d(float f10) {
            return !this.f5521a.i();
        }

        @Override // com.airbnb.lottie.animation.keyframe.a.d
        public float e() {
            return this.f5521a.c();
        }

        @Override // com.airbnb.lottie.animation.keyframe.a.d
        public boolean isEmpty() {
            return false;
        }
    }

    a(List<? extends com.airbnb.lottie.value.a<K>> list) {
        this.f5511c = o(list);
    }

    @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a)
    private float g() {
        if (this.f5515g == -1.0f) {
            this.f5515g = this.f5511c.b();
        }
        return this.f5515g;
    }

    private static <T> d<T> o(List<? extends com.airbnb.lottie.value.a<T>> list) {
        if (list.isEmpty()) {
            return new c();
        }
        return list.size() == 1 ? new f(list) : new e(list);
    }

    public void a(b bVar) {
        this.f5509a.add(bVar);
    }

    protected com.airbnb.lottie.value.a<K> b() {
        com.airbnb.lottie.e.b("BaseKeyframeAnimation#getCurrentKeyframe");
        com.airbnb.lottie.value.a<K> aVarA = this.f5511c.a();
        com.airbnb.lottie.e.c("BaseKeyframeAnimation#getCurrentKeyframe");
        return aVarA;
    }

    @FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a)
    float c() {
        if (this.f5516h == -1.0f) {
            this.f5516h = this.f5511c.e();
        }
        return this.f5516h;
    }

    protected float d() {
        com.airbnb.lottie.value.a<K> aVarB = b();
        if (aVarB == null || aVarB.i()) {
            return 0.0f;
        }
        return aVarB.f6135d.getInterpolation(e());
    }

    float e() {
        if (this.f5510b) {
            return 0.0f;
        }
        com.airbnb.lottie.value.a<K> aVarB = b();
        if (aVarB.i()) {
            return 0.0f;
        }
        return (this.f5512d - aVarB.f()) / (aVarB.c() - aVarB.f());
    }

    public float f() {
        return this.f5512d;
    }

    public A h() {
        float fE = e();
        if (this.f5513e == null && this.f5511c.c(fE)) {
            return this.f5514f;
        }
        com.airbnb.lottie.value.a<K> aVarB = b();
        Interpolator interpolator = aVarB.f6136e;
        A aI = (interpolator == null || aVarB.f6137f == null) ? i(aVarB, d()) : j(aVarB, fE, interpolator.getInterpolation(fE), aVarB.f6137f.getInterpolation(fE));
        this.f5514f = aI;
        return aI;
    }

    abstract A i(com.airbnb.lottie.value.a<K> aVar, float f10);

    protected A j(com.airbnb.lottie.value.a<K> aVar, float f10, float f11, float f12) {
        throw new UnsupportedOperationException("This animation does not support split dimensions!");
    }

    public void k() {
        com.airbnb.lottie.e.b("BaseKeyframeAnimation#notifyListeners");
        for (int i10 = 0; i10 < this.f5509a.size(); i10++) {
            this.f5509a.get(i10).d();
        }
        com.airbnb.lottie.e.c("BaseKeyframeAnimation#notifyListeners");
    }

    public void l() {
        this.f5510b = true;
    }

    public void m(@FloatRange(from = 0.0d, to = com.google.android.material.color.utilities.d.f30216a) float f10) {
        com.airbnb.lottie.e.b("BaseKeyframeAnimation#setProgress");
        if (this.f5511c.isEmpty()) {
            com.airbnb.lottie.e.c("BaseKeyframeAnimation#setProgress");
            return;
        }
        if (f10 < g()) {
            f10 = g();
        } else if (f10 > c()) {
            f10 = c();
        }
        if (f10 == this.f5512d) {
            com.airbnb.lottie.e.c("BaseKeyframeAnimation#setProgress");
            return;
        }
        this.f5512d = f10;
        if (this.f5511c.d(f10)) {
            k();
        }
        com.airbnb.lottie.e.c("BaseKeyframeAnimation#setProgress");
    }

    public void n(@Nullable com.airbnb.lottie.value.j<A> jVar) {
        com.airbnb.lottie.value.j<A> jVar2 = this.f5513e;
        if (jVar2 != null) {
            jVar2.c(null);
        }
        this.f5513e = jVar;
        if (jVar != null) {
            jVar.c(this);
        }
    }
}

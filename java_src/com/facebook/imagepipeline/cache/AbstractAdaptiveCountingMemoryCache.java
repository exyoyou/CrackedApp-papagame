package com.facebook.imagepipeline.cache;

import android.graphics.Bitmap;
import android.os.SystemClock;
import androidx.annotation.VisibleForTesting;
import com.facebook.common.memory.MemoryTrimType;
import com.facebook.common.references.CloseableReference;
import com.facebook.infer.annotation.Nullsafe;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: loaded from: classes9.dex */
@ThreadSafe
@Nullsafe(Nullsafe.Mode.STRICT)
public abstract class AbstractAdaptiveCountingMemoryCache<K, V> implements i<K, V> {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final String f27625o = "AbstractArcCountingMemoryCache";

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    static final int f27626p = 500;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    static final int f27627q = 1000;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @VisibleForTesting
    static final int f27628r = 100;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    static final int f27629s = 900;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    static final int f27630t = 10;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @GuardedBy("this")
    @VisibleForTesting
    final h<K, i.a<K, V>> f27631a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @GuardedBy("this")
    @VisibleForTesting
    final h<K, i.a<K, V>> f27632b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy("this")
    @VisibleForTesting
    final h<K, i.a<K, V>> f27633c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final z<V> f27634d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final t.a f27635e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final com.facebook.common.internal.l<u> f27636f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @GuardedBy("this")
    @VisibleForTesting
    int f27637g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f27638h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @GuardedBy("this")
    @VisibleForTesting
    final int f27639i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @GuardedBy("this")
    @VisibleForTesting
    final AbstractAdaptiveCountingMemoryCache<K, V>.c<K> f27640j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @GuardedBy("this")
    @VisibleForTesting
    final ArrayList<K> f27641k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @GuardedBy("this")
    @VisibleForTesting
    final int f27642l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @GuardedBy("this")
    protected u f27643m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @GuardedBy("this")
    private long f27644n;

    enum ArrayListType {
        LFU,
        MFU
    }

    class a implements z<i.a<K, V>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ z f27645a;

        a(final z val$evictableValueDescriptor) {
            this.f27645a = val$evictableValueDescriptor;
        }

        @Override // com.facebook.imagepipeline.cache.z
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public int a(i.a<K, V> entry) {
            return this.f27645a.a(entry.f27700b.j());
        }
    }

    class b implements com.facebook.common.references.g<V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ i.a f27647a;

        b(final i.a val$entry) {
            this.f27647a = val$entry;
        }

        @Override // com.facebook.common.references.g
        public void release(V unused) {
            AbstractAdaptiveCountingMemoryCache.this.P(this.f27647a);
        }
    }

    @VisibleForTesting
    class c<E> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ArrayList<E> f27649a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final ArrayList<Integer> f27650b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f27651c;

        public c(int maxCapacity) {
            this.f27649a = new ArrayList<>(maxCapacity);
            this.f27650b = new ArrayList<>(maxCapacity);
            this.f27651c = maxCapacity;
        }

        public void a(E element, Integer second) {
            if (this.f27649a.size() == this.f27651c) {
                this.f27649a.remove(0);
                this.f27650b.remove(0);
            }
            this.f27649a.add(element);
            this.f27650b.add(second);
        }

        public boolean b(E element) {
            return this.f27649a.contains(element);
        }

        @Nullable
        public Integer c(E element) {
            int iIndexOf = this.f27649a.indexOf(element);
            if (iIndexOf < 0) {
                return null;
            }
            return this.f27650b.get(iIndexOf);
        }

        public void d(E element) {
            int iIndexOf = this.f27649a.indexOf(element);
            if (iIndexOf < 0) {
                return;
            }
            Integer numValueOf = Integer.valueOf(this.f27650b.get(iIndexOf).intValue() + 1);
            int i10 = this.f27651c;
            if (iIndexOf == i10 - 1) {
                this.f27650b.set(i10 - 1, numValueOf);
                return;
            }
            this.f27649a.remove(iIndexOf);
            this.f27650b.remove(iIndexOf);
            this.f27649a.add(element);
            this.f27650b.add(numValueOf);
        }

        public int e() {
            return this.f27649a.size();
        }
    }

    public AbstractAdaptiveCountingMemoryCache(com.facebook.common.internal.l<u> memoryCacheParamsSupplier, t.a cacheTrimStrategy, z<V> valueDescriptor, int adaptiveRatePromil, int frequentlyUsedThreshold, int ghostListMaxSize, int lfuFractionPromil) {
        i3.a.i(f27625o, "Create Adaptive Replacement Cache");
        this.f27634d = valueDescriptor;
        this.f27631a = new h<>(S(valueDescriptor));
        this.f27632b = new h<>(S(valueDescriptor));
        this.f27633c = new h<>(S(valueDescriptor));
        this.f27635e = cacheTrimStrategy;
        this.f27636f = memoryCacheParamsSupplier;
        this.f27643m = (u) com.facebook.common.internal.i.j(memoryCacheParamsSupplier.get(), "mMemoryCacheParamsSupplier returned null");
        this.f27644n = SystemClock.uptimeMillis();
        this.f27638h = frequentlyUsedThreshold;
        this.f27642l = ghostListMaxSize;
        this.f27640j = new c<>(ghostListMaxSize);
        this.f27641k = new ArrayList<>(ghostListMaxSize);
        if (lfuFractionPromil < 100 || lfuFractionPromil > 900) {
            this.f27637g = 500;
            z();
        } else {
            this.f27637g = lfuFractionPromil;
        }
        if (adaptiveRatePromil > 0 && adaptiveRatePromil < 1000) {
            this.f27639i = adaptiveRatePromil;
        } else {
            this.f27639i = 10;
            y();
        }
    }

    private synchronized void A(i.a<K, V> entry) {
        com.facebook.common.internal.i.i(entry);
        com.facebook.common.internal.i.o(!entry.f27702d);
        entry.f27702d = true;
    }

    private synchronized void B(@Nullable ArrayList<i.a<K, V>> oldEntries) {
        if (oldEntries != null) {
            Iterator<i.a<K, V>> it2 = oldEntries.iterator();
            while (it2.hasNext()) {
                A(it2.next());
            }
        }
    }

    private synchronized void C(@Nullable ArrayList<i.a<K, V>> oldEntries1, @Nullable ArrayList<i.a<K, V>> oldEntries2) {
        B(oldEntries1);
        B(oldEntries2);
    }

    private synchronized boolean D(i.a<K, V> entry) {
        if (entry.f27702d || entry.f27701c != 0) {
            return false;
        }
        if (entry.f27704f > this.f27638h) {
            this.f27632b.k(entry.f27699a, entry);
        } else {
            this.f27631a.k(entry.f27699a, entry);
        }
        return true;
    }

    private void E(@Nullable ArrayList<i.a<K, V>> oldEntries) {
        if (oldEntries != null) {
            Iterator<i.a<K, V>> it2 = oldEntries.iterator();
            while (it2.hasNext()) {
                CloseableReference.h(O(it2.next()));
            }
        }
    }

    private void F(@Nullable ArrayList<i.a<K, V>> oldEntries1, @Nullable ArrayList<i.a<K, V>> oldEntries2) {
        E(oldEntries1);
        E(oldEntries2);
    }

    private void G(@Nullable ArrayList<i.a<K, V>> entries1, @Nullable ArrayList<i.a<K, V>> entries2) {
        K(entries1);
        K(entries2);
    }

    private static <K, V> void H(@Nullable i.a<K, V> entry) {
        i.b<K> bVar;
        if (entry == null || (bVar = entry.f27703e) == null) {
            return;
        }
        bVar.a(entry.f27699a, true);
    }

    private static <K, V> void I(@Nullable i.a<K, V> entry) {
        i.b<K> bVar;
        if (entry == null || (bVar = entry.f27703e) == null) {
            return;
        }
        bVar.a(entry.f27699a, false);
    }

    private void J(@Nullable i.a<K, V> entry1, @Nullable i.a<K, V> entry2) {
        I(entry1);
        I(entry2);
    }

    private void K(@Nullable ArrayList<i.a<K, V>> entries) {
        if (entries != null) {
            Iterator<i.a<K, V>> it2 = entries.iterator();
            while (it2.hasNext()) {
                I(it2.next());
            }
        }
    }

    private synchronized void L(K key) {
        if (this.f27640j.b(key)) {
            int i10 = this.f27637g;
            int i11 = this.f27639i;
            if (i10 + i11 <= 900) {
                this.f27637g = i10 + i11;
            }
            this.f27640j.d(key);
        } else if (this.f27637g - this.f27639i >= 100 && this.f27641k.contains(key)) {
            this.f27637g -= this.f27639i;
        }
    }

    private synchronized void M() {
        if (this.f27644n + this.f27643m.f27751f > SystemClock.uptimeMillis()) {
            return;
        }
        this.f27644n = SystemClock.uptimeMillis();
        this.f27643m = (u) com.facebook.common.internal.i.j(this.f27636f.get(), "mMemoryCacheParamsSupplier returned null");
    }

    private synchronized CloseableReference<V> N(final i.a<K, V> entry) {
        x(entry);
        return CloseableReference.t(entry.f27700b.j(), new b(entry));
    }

    @Nullable
    private synchronized CloseableReference<V> O(i.a<K, V> entry) {
        com.facebook.common.internal.i.i(entry);
        return (entry.f27702d && entry.f27701c == 0) ? entry.f27700b : null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P(final i.a<K, V> entry) {
        boolean zD;
        CloseableReference<V> closeableReferenceO;
        com.facebook.common.internal.i.i(entry);
        synchronized (this) {
            u(entry);
            zD = D(entry);
            closeableReferenceO = O(entry);
        }
        CloseableReference.h(closeableReferenceO);
        if (!zD) {
            entry = null;
        }
        H(entry);
        M();
        l();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    private synchronized ArrayList<i.a<K, V>> R(int i10, int i11, h<K, i.a<K, V>> hVar, ArrayListType arrayListType) {
        int iMax = Math.max(i10, 0);
        int iMax2 = Math.max(i11, 0);
        if (hVar.d() <= iMax && hVar.h() <= iMax2) {
            return null;
        }
        ArrayList<i.a<K, V>> arrayList = new ArrayList<>();
        while (true) {
            if (hVar.d() <= iMax && hVar.h() <= iMax2) {
                return arrayList;
            }
            Object objI = com.facebook.common.internal.i.i(hVar.e());
            s(objI, ((i.a) com.facebook.common.internal.i.i(hVar.c(objI))).f27704f, arrayListType);
            hVar.l(objI);
            arrayList.add(this.f27633c.l((K) objI));
        }
    }

    private z<i.a<K, V>> S(final z<V> evictableValueDescriptor) {
        return new a(evictableValueDescriptor);
    }

    private synchronized void s(K key, int accessCount, ArrayListType evictionType) {
        if (evictionType == ArrayListType.LFU) {
            this.f27640j.a(key, Integer.valueOf(accessCount));
        } else {
            if (this.f27641k.size() == this.f27642l) {
                this.f27641k.remove(0);
            }
            this.f27641k.add(key);
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0025  */
    private synchronized boolean t(V value) {
        boolean z10;
        int iA = this.f27634d.a(value);
        if (iA <= this.f27643m.f27750e) {
            z10 = v() <= this.f27643m.f27747b - 1 && k() <= this.f27643m.f27746a - iA;
        }
        return z10;
    }

    private synchronized void u(i.a<K, V> entry) {
        com.facebook.common.internal.i.i(entry);
        com.facebook.common.internal.i.o(entry.f27701c > 0);
        entry.f27701c--;
    }

    private synchronized void w(i.a<K, V> entry) {
        com.facebook.common.internal.i.i(entry);
        com.facebook.common.internal.i.o(!entry.f27702d);
        entry.f27704f++;
    }

    private synchronized void x(i.a<K, V> entry) {
        com.facebook.common.internal.i.i(entry);
        com.facebook.common.internal.i.o(!entry.f27702d);
        entry.f27701c++;
        w(entry);
    }

    public String Q() {
        return com.facebook.common.internal.h.f("CountingMemoryCache").d("cached_entries_count:", this.f27633c.d()).d("exclusive_entries_count", m()).toString();
    }

    @Override // com.facebook.imagepipeline.cache.t
    public synchronized int a() {
        return this.f27633c.h();
    }

    @Override // com.facebook.imagepipeline.cache.t
    public void b(K key) {
        com.facebook.common.internal.i.i(key);
        synchronized (this) {
            i.a<K, V> aVarL = this.f27631a.l(key);
            if (aVarL == null) {
                aVarL = this.f27632b.l(key);
            }
            if (aVarL != null) {
                w(aVarL);
                D(aVarL);
            }
        }
    }

    @Override // com.facebook.imagepipeline.cache.t
    @Nullable
    public CloseableReference<V> c(final K key, final CloseableReference<V> valueRef) {
        return h(key, valueRef, null);
    }

    @Override // com.facebook.imagepipeline.cache.i
    public void clear() {
        ArrayList<i.a<K, V>> arrayListA;
        ArrayList<i.a<K, V>> arrayListA2;
        ArrayList<i.a<K, V>> arrayListA3;
        synchronized (this) {
            arrayListA = this.f27631a.a();
            arrayListA2 = this.f27632b.a();
            arrayListA3 = this.f27633c.a();
            B(arrayListA3);
        }
        E(arrayListA3);
        G(arrayListA, arrayListA2);
        M();
    }

    @Override // com.facebook.imagepipeline.cache.t
    public synchronized boolean contains(K key) {
        return this.f27633c.b(key);
    }

    @Override // com.facebook.imagepipeline.cache.i
    public h d() {
        return this.f27633c;
    }

    @Override // com.facebook.imagepipeline.cache.i
    public synchronized int e() {
        return this.f27631a.h() + this.f27632b.h();
    }

    @Override // com.facebook.imagepipeline.cache.i
    public u f() {
        return this.f27643m;
    }

    @Override // com.facebook.imagepipeline.cache.t
    @Nullable
    public CloseableReference<V> get(final K key) {
        i.a<K, V> aVarL;
        i.a<K, V> aVarL2;
        CloseableReference<V> closeableReferenceN;
        com.facebook.common.internal.i.i(key);
        synchronized (this) {
            aVarL = this.f27631a.l(key);
            aVarL2 = this.f27632b.l(key);
            i.a<K, V> aVarC = this.f27633c.c(key);
            if (aVarC != null) {
                closeableReferenceN = N(aVarC);
            } else {
                L(key);
                closeableReferenceN = null;
            }
        }
        J(aVarL, aVarL2);
        M();
        l();
        return closeableReferenceN;
    }

    @Override // com.facebook.imagepipeline.cache.t
    public synchronized int getCount() {
        return this.f27633c.d();
    }

    @Override // com.facebook.imagepipeline.cache.i
    @Nullable
    public CloseableReference<V> h(final K key, final CloseableReference<V> valueRef, @Nullable final i.b<K> observer) {
        i.a<K, V> aVarL;
        i.a<K, V> aVarL2;
        CloseableReference<V> closeableReferenceN;
        CloseableReference<V> closeableReferenceO;
        com.facebook.common.internal.i.i(key);
        com.facebook.common.internal.i.i(valueRef);
        M();
        synchronized (this) {
            aVarL = this.f27631a.l(key);
            aVarL2 = this.f27632b.l(key);
            com.facebook.common.internal.i.o(aVarL == null || aVarL2 == null);
            i.a<K, V> aVarL3 = this.f27633c.l(key);
            closeableReferenceN = null;
            if (aVarL3 != null) {
                A(aVarL3);
                closeableReferenceO = O(aVarL3);
            } else {
                closeableReferenceO = null;
            }
            if (t(valueRef.j())) {
                i.a<K, V> aVarB = i.a.b(key, valueRef, observer);
                Integer numC = this.f27640j.c(key);
                aVarB.f27704f = numC != null ? numC.intValue() : 0;
                this.f27633c.k(key, aVarB);
                closeableReferenceN = N(aVarB);
            }
        }
        CloseableReference.h(closeableReferenceO);
        J(aVarL, aVarL2);
        l();
        return closeableReferenceN;
    }

    @Override // com.facebook.imagepipeline.cache.t
    public int i(com.facebook.common.internal.j<K> predicate) {
        ArrayList<i.a<K, V>> arrayListM;
        ArrayList<i.a<K, V>> arrayListM2;
        ArrayList<i.a<K, V>> arrayListM3;
        synchronized (this) {
            arrayListM = this.f27631a.m(predicate);
            arrayListM2 = this.f27632b.m(predicate);
            arrayListM3 = this.f27633c.m(predicate);
            B(arrayListM3);
        }
        E(arrayListM3);
        G(arrayListM, arrayListM2);
        M();
        l();
        return arrayListM3.size();
    }

    @Override // com.facebook.imagepipeline.cache.i
    @Nullable
    public CloseableReference<V> j(K key) {
        i.a<K, V> aVarL;
        boolean z10;
        CloseableReference<V> closeableReference;
        com.facebook.common.internal.i.i(key);
        synchronized (this) {
            aVarL = this.f27631a.l(key);
            if (aVarL == null) {
                aVarL = this.f27632b.l(key);
            }
            z10 = false;
            if (aVarL != null) {
                i.a<K, V> aVarL2 = this.f27633c.l(key);
                com.facebook.common.internal.i.i(aVarL2);
                com.facebook.common.internal.i.o(aVarL2.f27701c == 0);
                closeableReference = aVarL2.f27700b;
                z10 = true;
            } else {
                closeableReference = null;
            }
        }
        if (z10) {
            I(aVarL);
        }
        return closeableReference;
    }

    @Override // com.facebook.imagepipeline.cache.i
    public synchronized int k() {
        return (this.f27633c.h() - this.f27631a.h()) - this.f27632b.h();
    }

    @Override // com.facebook.imagepipeline.cache.i
    public void l() {
        ArrayList<i.a<K, V>> arrayListR;
        ArrayList<i.a<K, V>> arrayListR2;
        synchronized (this) {
            u uVar = this.f27643m;
            int iMin = Math.min(uVar.f27749d, uVar.f27747b - v());
            u uVar2 = this.f27643m;
            int iMin2 = Math.min(uVar2.f27748c, uVar2.f27746a - k());
            int i10 = this.f27637g;
            int i11 = (int) ((((long) iMin) * ((long) i10)) / 1000);
            int i12 = (int) ((((long) iMin2) * ((long) i10)) / 1000);
            arrayListR = R(i11, i12, this.f27631a, ArrayListType.LFU);
            arrayListR2 = R(iMin - i11, iMin2 - i12, this.f27632b, ArrayListType.MFU);
            C(arrayListR, arrayListR2);
        }
        F(arrayListR, arrayListR2);
        G(arrayListR, arrayListR2);
    }

    @Override // com.facebook.imagepipeline.cache.i
    public synchronized int m() {
        return this.f27631a.d() + this.f27632b.d();
    }

    @Override // com.facebook.imagepipeline.cache.t
    @Nullable
    public V n(K key) {
        return null;
    }

    @Override // com.facebook.imagepipeline.cache.i
    public Map<Bitmap, Object> o() {
        return Collections.emptyMap();
    }

    @Override // com.facebook.imagepipeline.cache.t
    public synchronized boolean p(com.facebook.common.internal.j<K> predicate) {
        return !this.f27633c.g(predicate).isEmpty();
    }

    @Override // com.facebook.common.memory.b
    public void q(MemoryTrimType trimType) {
        ArrayList<i.a<K, V>> arrayListR;
        ArrayList<i.a<K, V>> arrayListR2;
        double dA = this.f27635e.a(trimType);
        synchronized (this) {
            int iH = ((int) (((double) this.f27633c.h()) * (1.0d - dA))) - k();
            int i10 = 0;
            int iMax = Math.max(0, iH);
            int iH2 = this.f27632b.h();
            int iMax2 = Math.max(0, iMax - iH2);
            if (iMax > iH2) {
                iMax = iH2;
                i10 = iMax2;
            }
            arrayListR = R(Integer.MAX_VALUE, i10, this.f27631a, ArrayListType.LFU);
            arrayListR2 = R(Integer.MAX_VALUE, iMax, this.f27632b, ArrayListType.MFU);
            C(arrayListR, arrayListR2);
        }
        F(arrayListR, arrayListR2);
        G(arrayListR, arrayListR2);
        M();
        l();
    }

    public synchronized int v() {
        return (this.f27633c.d() - this.f27631a.d()) - this.f27632b.d();
    }

    protected abstract void y();

    protected abstract void z();
}

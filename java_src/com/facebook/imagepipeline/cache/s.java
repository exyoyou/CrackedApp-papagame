package com.facebook.imagepipeline.cache;

import android.graphics.Bitmap;
import android.os.SystemClock;
import androidx.annotation.VisibleForTesting;
import com.facebook.common.memory.MemoryTrimType;
import com.facebook.common.references.CloseableReference;
import com.facebook.infer.annotation.Nullsafe;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: loaded from: classes9.dex */
@ThreadSafe
@Nullsafe(Nullsafe.Mode.STRICT)
public class s<K, V> implements i<K, V>, t<K, V>, com.facebook.cache.common.f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private final i.b<K> f27731a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @GuardedBy("this")
    @VisibleForTesting
    final h<K, i.a<K, V>> f27732b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy("this")
    @VisibleForTesting
    final h<K, i.a<K, V>> f27733c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final z<V> f27735e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final t.a f27736f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final com.facebook.common.internal.l<u> f27737g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @GuardedBy("this")
    protected u f27738h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final boolean f27740j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final boolean f27741k;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @GuardedBy("this")
    @VisibleForTesting
    final Map<Bitmap, Object> f27734d = new WeakHashMap();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @GuardedBy("this")
    private long f27739i = SystemClock.uptimeMillis();

    class a implements z<i.a<K, V>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ z f27742a;

        a(final z val$evictableValueDescriptor) {
            this.f27742a = val$evictableValueDescriptor;
        }

        @Override // com.facebook.imagepipeline.cache.z
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public int a(i.a<K, V> entry) {
            return s.this.f27740j ? entry.f27705g : this.f27742a.a(entry.f27700b.j());
        }
    }

    class b implements com.facebook.common.references.g<V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ i.a f27744a;

        b(final i.a val$entry) {
            this.f27744a = val$entry;
        }

        @Override // com.facebook.common.references.g
        public void release(V unused) {
            s.this.H(this.f27744a);
        }
    }

    public s(z<V> valueDescriptor, t.a cacheTrimStrategy, com.facebook.common.internal.l<u> memoryCacheParamsSupplier, @Nullable i.b<K> entryStateObserver, boolean storeEntrySize, boolean ignoreSizeMismatch) {
        this.f27735e = valueDescriptor;
        this.f27732b = new h<>(J(valueDescriptor));
        this.f27733c = new h<>(J(valueDescriptor));
        this.f27736f = cacheTrimStrategy;
        this.f27737g = memoryCacheParamsSupplier;
        this.f27738h = (u) com.facebook.common.internal.i.j(memoryCacheParamsSupplier.get(), "mMemoryCacheParamsSupplier returned null");
        this.f27731a = entryStateObserver;
        this.f27740j = storeEntrySize;
        this.f27741k = ignoreSizeMismatch;
    }

    private void A(@Nullable ArrayList<i.a<K, V>> oldEntries) {
        if (oldEntries != null) {
            Iterator<i.a<K, V>> it2 = oldEntries.iterator();
            while (it2.hasNext()) {
                CloseableReference.h(G(it2.next()));
            }
        }
    }

    private static <K, V> void B(@Nullable i.a<K, V> entry) {
        i.b<K> bVar;
        if (entry == null || (bVar = entry.f27703e) == null) {
            return;
        }
        bVar.a(entry.f27699a, true);
    }

    private static <K, V> void C(@Nullable i.a<K, V> entry) {
        i.b<K> bVar;
        if (entry == null || (bVar = entry.f27703e) == null) {
            return;
        }
        bVar.a(entry.f27699a, false);
    }

    private void D(@Nullable ArrayList<i.a<K, V>> entries) {
        if (entries != null) {
            Iterator<i.a<K, V>> it2 = entries.iterator();
            while (it2.hasNext()) {
                C(it2.next());
            }
        }
    }

    private synchronized void E() {
        if (this.f27739i + this.f27738h.f27751f > SystemClock.uptimeMillis()) {
            return;
        }
        this.f27739i = SystemClock.uptimeMillis();
        this.f27738h = (u) com.facebook.common.internal.i.j(this.f27737g.get(), "mMemoryCacheParamsSupplier returned null");
    }

    private synchronized CloseableReference<V> F(final i.a<K, V> entry) {
        w(entry);
        return CloseableReference.t(entry.f27700b.j(), new b(entry));
    }

    @Nullable
    private synchronized CloseableReference<V> G(i.a<K, V> entry) {
        com.facebook.common.internal.i.i(entry);
        return (entry.f27702d && entry.f27701c == 0) ? entry.f27700b : null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H(final i.a<K, V> entry) {
        boolean z10;
        CloseableReference<V> closeableReferenceG;
        com.facebook.common.internal.i.i(entry);
        synchronized (this) {
            u(entry);
            z10 = z(entry);
            closeableReferenceG = G(entry);
        }
        CloseableReference.h(closeableReferenceG);
        if (!z10) {
            entry = null;
        }
        B(entry);
        E();
        l();
    }

    @Nullable
    private synchronized ArrayList<i.a<K, V>> I(int i10, int i11) {
        int iMax = Math.max(i10, 0);
        int iMax2 = Math.max(i11, 0);
        if (this.f27732b.d() <= iMax && this.f27732b.h() <= iMax2) {
            return null;
        }
        ArrayList<i.a<K, V>> arrayList = new ArrayList<>();
        while (true) {
            if (this.f27732b.d() <= iMax && this.f27732b.h() <= iMax2) {
                break;
            }
            K kE = this.f27732b.e();
            if (kE == null) {
                if (!this.f27741k) {
                    throw new IllegalStateException(String.format("key is null, but exclusiveEntries count: %d, size: %d", Integer.valueOf(this.f27732b.d()), Integer.valueOf(this.f27732b.h())));
                }
                this.f27732b.n();
                break;
            }
            this.f27732b.l(kE);
            arrayList.add(this.f27733c.l(kE));
        }
        return arrayList;
    }

    private z<i.a<K, V>> J(final z<V> evictableValueDescriptor) {
        return new a(evictableValueDescriptor);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x001f  */
    private synchronized boolean t(int newValueSize) {
        boolean z10;
        if (newValueSize <= this.f27738h.f27750e) {
            z10 = v() <= this.f27738h.f27747b - 1 && k() <= this.f27738h.f27746a - newValueSize;
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
        entry.f27701c++;
    }

    private synchronized void x(i.a<K, V> entry) {
        com.facebook.common.internal.i.i(entry);
        com.facebook.common.internal.i.o(!entry.f27702d);
        entry.f27702d = true;
    }

    private synchronized void y(@Nullable ArrayList<i.a<K, V>> oldEntries) {
        if (oldEntries != null) {
            Iterator<i.a<K, V>> it2 = oldEntries.iterator();
            while (it2.hasNext()) {
                x(it2.next());
            }
        }
    }

    private synchronized boolean z(i.a<K, V> entry) {
        if (entry.f27702d || entry.f27701c != 0) {
            return false;
        }
        this.f27732b.k(entry.f27699a, entry);
        return true;
    }

    @Override // com.facebook.imagepipeline.cache.t
    public synchronized int a() {
        return this.f27733c.h();
    }

    @Override // com.facebook.imagepipeline.cache.t
    public void b(final K key) {
        com.facebook.common.internal.i.i(key);
        synchronized (this) {
            i.a<K, V> aVarL = this.f27732b.l(key);
            if (aVarL != null) {
                this.f27732b.k(key, aVarL);
            }
        }
    }

    @Override // com.facebook.imagepipeline.cache.t
    @Nullable
    public CloseableReference<V> c(final K key, final CloseableReference<V> valueRef) {
        return h(key, valueRef, this.f27731a);
    }

    @Override // com.facebook.imagepipeline.cache.i
    public void clear() {
        ArrayList<i.a<K, V>> arrayListA;
        ArrayList<i.a<K, V>> arrayListA2;
        synchronized (this) {
            arrayListA = this.f27732b.a();
            arrayListA2 = this.f27733c.a();
            y(arrayListA2);
        }
        A(arrayListA2);
        D(arrayListA);
        E();
    }

    @Override // com.facebook.imagepipeline.cache.t
    public synchronized boolean contains(K key) {
        return this.f27733c.b(key);
    }

    @Override // com.facebook.imagepipeline.cache.i
    public h<K, i.a<K, V>> d() {
        return this.f27733c;
    }

    @Override // com.facebook.imagepipeline.cache.i
    public synchronized int e() {
        return this.f27732b.h();
    }

    @Override // com.facebook.imagepipeline.cache.i
    public u f() {
        return this.f27738h;
    }

    @Override // com.facebook.cache.common.f
    @Nullable
    public synchronized String g() {
        return com.facebook.common.internal.h.f("CountingMemoryCache").d("cached_entries_count", this.f27733c.d()).d("cached_entries_size_bytes", this.f27733c.h()).d("exclusive_entries_count", this.f27732b.d()).d("exclusive_entries_size_bytes", this.f27732b.h()).toString();
    }

    @Override // com.facebook.imagepipeline.cache.t
    @Nullable
    public CloseableReference<V> get(final K key) {
        i.a<K, V> aVarL;
        CloseableReference<V> closeableReferenceF;
        com.facebook.common.internal.i.i(key);
        synchronized (this) {
            aVarL = this.f27732b.l(key);
            i.a<K, V> aVarC = this.f27733c.c(key);
            closeableReferenceF = aVarC != null ? F(aVarC) : null;
        }
        C(aVarL);
        E();
        l();
        return closeableReferenceF;
    }

    @Override // com.facebook.imagepipeline.cache.t
    public synchronized int getCount() {
        return this.f27733c.d();
    }

    @Override // com.facebook.imagepipeline.cache.i
    @Nullable
    public CloseableReference<V> h(final K key, final CloseableReference<V> valueRef, @Nullable final i.b<K> observer) {
        i.a<K, V> aVarL;
        CloseableReference<V> closeableReferenceF;
        CloseableReference<V> closeableReferenceG;
        com.facebook.common.internal.i.i(key);
        com.facebook.common.internal.i.i(valueRef);
        E();
        synchronized (this) {
            aVarL = this.f27732b.l(key);
            i.a<K, V> aVarL2 = this.f27733c.l(key);
            closeableReferenceF = null;
            if (aVarL2 != null) {
                x(aVarL2);
                closeableReferenceG = G(aVarL2);
            } else {
                closeableReferenceG = null;
            }
            int iA = this.f27735e.a(valueRef.j());
            if (t(iA)) {
                i.a<K, V> aVarA = this.f27740j ? i.a.a(key, valueRef, iA, observer) : i.a.b(key, valueRef, observer);
                this.f27733c.k(key, aVarA);
                closeableReferenceF = F(aVarA);
            }
        }
        CloseableReference.h(closeableReferenceG);
        C(aVarL);
        l();
        return closeableReferenceF;
    }

    @Override // com.facebook.imagepipeline.cache.t
    public int i(com.facebook.common.internal.j<K> predicate) {
        ArrayList<i.a<K, V>> arrayListM;
        ArrayList<i.a<K, V>> arrayListM2;
        synchronized (this) {
            arrayListM = this.f27732b.m(predicate);
            arrayListM2 = this.f27733c.m(predicate);
            y(arrayListM2);
        }
        A(arrayListM2);
        D(arrayListM);
        E();
        l();
        return arrayListM2.size();
    }

    @Override // com.facebook.imagepipeline.cache.i
    @Nullable
    public CloseableReference<V> j(K key) {
        i.a<K, V> aVarL;
        boolean z10;
        CloseableReference<V> closeableReference;
        com.facebook.common.internal.i.i(key);
        synchronized (this) {
            aVarL = this.f27732b.l(key);
            z10 = false;
            if (aVarL != null) {
                i.a<K, V> aVarL2 = this.f27733c.l(key);
                com.facebook.common.internal.i.i(aVarL2);
                com.facebook.common.internal.i.o(aVarL2.f27701c == 0);
                closeableReference = aVarL2.f27700b;
                z10 = true;
            } else {
                closeableReference = null;
            }
        }
        if (z10) {
            C(aVarL);
        }
        return closeableReference;
    }

    @Override // com.facebook.imagepipeline.cache.i
    public synchronized int k() {
        return this.f27733c.h() - this.f27732b.h();
    }

    @Override // com.facebook.imagepipeline.cache.i
    public void l() {
        ArrayList<i.a<K, V>> arrayListI;
        synchronized (this) {
            u uVar = this.f27738h;
            int iMin = Math.min(uVar.f27749d, uVar.f27747b - v());
            u uVar2 = this.f27738h;
            arrayListI = I(iMin, Math.min(uVar2.f27748c, uVar2.f27746a - k()));
            y(arrayListI);
        }
        A(arrayListI);
        D(arrayListI);
    }

    @Override // com.facebook.imagepipeline.cache.i
    public synchronized int m() {
        return this.f27732b.d();
    }

    @Override // com.facebook.imagepipeline.cache.t
    @Nullable
    public synchronized V n(final K key) {
        i.a<K, V> aVarC = this.f27733c.c(key);
        if (aVarC == null) {
            return null;
        }
        return aVarC.f27700b.j();
    }

    @Override // com.facebook.imagepipeline.cache.i
    public Map<Bitmap, Object> o() {
        return this.f27734d;
    }

    @Override // com.facebook.imagepipeline.cache.t
    public synchronized boolean p(com.facebook.common.internal.j<K> predicate) {
        return !this.f27733c.g(predicate).isEmpty();
    }

    @Override // com.facebook.common.memory.b
    public void q(MemoryTrimType trimType) {
        ArrayList<i.a<K, V>> arrayListI;
        double dA = this.f27736f.a(trimType);
        synchronized (this) {
            arrayListI = I(Integer.MAX_VALUE, Math.max(0, ((int) (((double) this.f27733c.h()) * (1.0d - dA))) - k()));
            y(arrayListI);
        }
        A(arrayListI);
        D(arrayListI);
        E();
        l();
    }

    public synchronized int v() {
        return this.f27733c.d() - this.f27732b.d();
    }
}

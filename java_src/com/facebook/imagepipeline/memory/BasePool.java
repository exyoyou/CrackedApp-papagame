package com.facebook.imagepipeline.memory;

import android.annotation.SuppressLint;
import android.util.SparseArray;
import android.util.SparseIntArray;
import androidx.annotation.VisibleForTesting;
import com.facebook.common.memory.MemoryTrimType;
import com.facebook.infer.annotation.Nullsafe;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import javax.annotation.concurrent.NotThreadSafe;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public abstract class BasePool<V> implements com.facebook.common.memory.e<V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Class<?> f28062a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final com.facebook.common.memory.c f28063b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final j0 f28064c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @VisibleForTesting
    final SparseArray<l<V>> f28065d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @VisibleForTesting
    final Set<V> f28066e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f28067f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @GuardedBy("this")
    @VisibleForTesting
    final a f28068g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @GuardedBy("this")
    @VisibleForTesting
    final a f28069h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final k0 f28070i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f28071j;

    public static class InvalidSizeException extends RuntimeException {
        public InvalidSizeException(Object size) {
            super("Invalid size: " + size.toString());
        }
    }

    public static class InvalidValueException extends RuntimeException {
        public InvalidValueException(Object value) {
            super("Invalid value: " + value.toString());
        }
    }

    public static class PoolSizeViolationException extends RuntimeException {
        public PoolSizeViolationException(int hardCap, int usedBytes, int freeBytes, int allocSize) {
            super("Pool hard cap violation? Hard cap = " + hardCap + " Used size = " + usedBytes + " Free size = " + freeBytes + " Request size = " + allocSize);
        }
    }

    public static class SizeTooLargeException extends InvalidSizeException {
        public SizeTooLargeException(Object size) {
            super(size);
        }
    }

    @NotThreadSafe
    @VisibleForTesting
    static class a {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final String f28072c = "com.facebook.imagepipeline.memory.BasePool.Counter";

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f28073a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f28074b;

        a() {
        }

        public void a(int numBytes) {
            int i10;
            int i11 = this.f28074b;
            if (i11 < numBytes || (i10 = this.f28073a) <= 0) {
                i3.a.y0(f28072c, "Unexpected decrement of %d. Current numBytes = %d, count = %d", Integer.valueOf(numBytes), Integer.valueOf(this.f28074b), Integer.valueOf(this.f28073a));
            } else {
                this.f28073a = i10 - 1;
                this.f28074b = i11 - numBytes;
            }
        }

        public void b(int numBytes) {
            this.f28073a++;
            this.f28074b += numBytes;
        }

        public void c() {
            this.f28073a = 0;
            this.f28074b = 0;
        }
    }

    public BasePool(com.facebook.common.memory.c memoryTrimmableRegistry, j0 poolParams, k0 poolStatsTracker) {
        this.f28062a = getClass();
        this.f28063b = (com.facebook.common.memory.c) com.facebook.common.internal.i.i(memoryTrimmableRegistry);
        j0 j0Var = (j0) com.facebook.common.internal.i.i(poolParams);
        this.f28064c = j0Var;
        this.f28070i = (k0) com.facebook.common.internal.i.i(poolStatsTracker);
        this.f28065d = new SparseArray<>();
        if (j0Var.f28150f) {
            C();
        } else {
            G(new SparseIntArray(0));
        }
        this.f28066e = com.facebook.common.internal.k.g();
        this.f28069h = new a();
        this.f28068g = new a();
    }

    private synchronized void C() {
        SparseIntArray sparseIntArray = this.f28064c.f28147c;
        if (sparseIntArray != null) {
            t(sparseIntArray);
            this.f28067f = false;
        } else {
            this.f28067f = true;
        }
    }

    private synchronized void G(SparseIntArray inUseCounts) {
        com.facebook.common.internal.i.i(inUseCounts);
        this.f28065d.clear();
        SparseIntArray sparseIntArray = this.f28064c.f28147c;
        if (sparseIntArray != null) {
            for (int i10 = 0; i10 < sparseIntArray.size(); i10++) {
                int iKeyAt = sparseIntArray.keyAt(i10);
                this.f28065d.put(iKeyAt, new l<>(z(iKeyAt), sparseIntArray.valueAt(i10), inUseCounts.get(iKeyAt, 0), this.f28064c.f28150f));
            }
            this.f28067f = false;
        } else {
            this.f28067f = true;
        }
    }

    @SuppressLint({"InvalidAccessToGuardedField"})
    private void H() {
        if (i3.a.R(2)) {
            i3.a.Y(this.f28062a, "Used = (%d, %d); Free = (%d, %d)", Integer.valueOf(this.f28068g.f28073a), Integer.valueOf(this.f28068g.f28074b), Integer.valueOf(this.f28069h.f28073a), Integer.valueOf(this.f28069h.f28074b));
        }
    }

    private List<l<V>> K() {
        ArrayList arrayList = new ArrayList(this.f28065d.size());
        int size = this.f28065d.size();
        for (int i10 = 0; i10 < size; i10++) {
            l lVar = (l) com.facebook.common.internal.i.i(this.f28065d.valueAt(i10));
            int i11 = lVar.f28161a;
            int i12 = lVar.f28162b;
            int iE = lVar.e();
            if (lVar.d() > 0) {
                arrayList.add(lVar);
            }
            this.f28065d.setValueAt(i10, new l<>(z(i11), i12, iE, this.f28064c.f28150f));
        }
        return arrayList;
    }

    private synchronized void s() {
        com.facebook.common.internal.i.o(!E() || this.f28069h.f28074b == 0);
    }

    private void t(SparseIntArray bucketSizes) {
        this.f28065d.clear();
        for (int i10 = 0; i10 < bucketSizes.size(); i10++) {
            int iKeyAt = bucketSizes.keyAt(i10);
            this.f28065d.put(iKeyAt, new l<>(z(iKeyAt), bucketSizes.valueAt(i10), 0, this.f28064c.f28150f));
        }
    }

    @Nullable
    private synchronized l<V> w(int bucketedSize) {
        return this.f28065d.get(bucketedSize);
    }

    public synchronized Map<String, Integer> A() {
        HashMap map;
        map = new HashMap();
        for (int i10 = 0; i10 < this.f28065d.size(); i10++) {
            map.put(k0.f28153a + z(this.f28065d.keyAt(i10)), Integer.valueOf(((l) com.facebook.common.internal.i.i(this.f28065d.valueAt(i10))).e()));
        }
        map.put(k0.f28158f, Integer.valueOf(this.f28064c.f28146b));
        map.put(k0.f28159g, Integer.valueOf(this.f28064c.f28145a));
        map.put(k0.f28154b, Integer.valueOf(this.f28068g.f28073a));
        map.put(k0.f28155c, Integer.valueOf(this.f28068g.f28074b));
        map.put(k0.f28156d, Integer.valueOf(this.f28069h.f28073a));
        map.put(k0.f28157e, Integer.valueOf(this.f28069h.f28074b));
        return map;
    }

    @Nullable
    protected synchronized V B(l<V> bucket) {
        return bucket.c();
    }

    protected void D() {
        this.f28063b.b(this);
        this.f28070i.g(this);
    }

    @VisibleForTesting
    synchronized boolean E() {
        boolean z10;
        z10 = this.f28068g.f28074b + this.f28069h.f28074b > this.f28064c.f28146b;
        if (z10) {
            this.f28070i.d();
        }
        return z10;
    }

    protected boolean F(V value) {
        com.facebook.common.internal.i.i(value);
        return true;
    }

    l<V> I(int bucketedSize) {
        return new l<>(z(bucketedSize), Integer.MAX_VALUE, 0, this.f28064c.f28150f);
    }

    protected void J() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @VisibleForTesting
    void L() {
        int i10;
        List arrayList;
        synchronized (this) {
            if (this.f28064c.f28150f) {
                arrayList = K();
            } else {
                arrayList = new ArrayList(this.f28065d.size());
                SparseIntArray sparseIntArray = new SparseIntArray();
                for (int i11 = 0; i11 < this.f28065d.size(); i11++) {
                    l lVar = (l) com.facebook.common.internal.i.i(this.f28065d.valueAt(i11));
                    if (lVar.d() > 0) {
                        arrayList.add(lVar);
                    }
                    sparseIntArray.put(this.f28065d.keyAt(i11), lVar.e());
                }
                G(sparseIntArray);
            }
            this.f28069h.c();
            H();
        }
        J();
        for (i10 = 0; i10 < arrayList.size(); i10++) {
            l lVar2 = (l) arrayList.get(i10);
            while (true) {
                Object objH = lVar2.h();
                if (objH == null) {
                    break;
                } else {
                    u(objH);
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @VisibleForTesting
    synchronized void M(int targetSize) {
        int i10 = this.f28068g.f28074b;
        int i11 = this.f28069h.f28074b;
        int iMin = Math.min((i10 + i11) - targetSize, i11);
        if (iMin <= 0) {
            return;
        }
        if (i3.a.R(2)) {
            i3.a.X(this.f28062a, "trimToSize: TargetSize = %d; Initial Size = %d; Bytes to free = %d", Integer.valueOf(targetSize), Integer.valueOf(this.f28068g.f28074b + this.f28069h.f28074b), Integer.valueOf(iMin));
        }
        H();
        for (int i12 = 0; i12 < this.f28065d.size() && iMin > 0; i12++) {
            l lVar = (l) com.facebook.common.internal.i.i(this.f28065d.valueAt(i12));
            while (iMin > 0) {
                Object objH = lVar.h();
                if (objH == null) {
                    break;
                }
                u(objH);
                int i13 = lVar.f28161a;
                iMin -= i13;
                this.f28069h.a(i13);
            }
        }
        H();
        if (i3.a.R(2)) {
            i3.a.W(this.f28062a, "trimToSize: TargetSize = %d; Final Size = %d", Integer.valueOf(targetSize), Integer.valueOf(this.f28068g.f28074b + this.f28069h.f28074b));
        }
    }

    @VisibleForTesting
    synchronized void N() {
        if (E()) {
            M(this.f28064c.f28146b);
        }
    }

    protected abstract V g(int bucketedSize);

    @Override // com.facebook.common.memory.e
    public V get(int size) throws Throwable {
        V vG;
        V vB;
        s();
        int iX = x(size);
        synchronized (this) {
            l<V> lVarV = v(iX);
            if (lVarV != null && (vB = B(lVarV)) != null) {
                com.facebook.common.internal.i.o(this.f28066e.add(vB));
                int iY = y(vB);
                int iZ = z(iY);
                this.f28068g.b(iZ);
                this.f28069h.a(iZ);
                this.f28070i.b(iZ);
                H();
                if (i3.a.R(2)) {
                    i3.a.W(this.f28062a, "get (reuse) (object, size) = (%x, %s)", Integer.valueOf(System.identityHashCode(vB)), Integer.valueOf(iY));
                }
                return vB;
            }
            int iZ2 = z(iX);
            if (!r(iZ2)) {
                throw new PoolSizeViolationException(this.f28064c.f28145a, this.f28068g.f28074b, this.f28069h.f28074b, iZ2);
            }
            this.f28068g.b(iZ2);
            if (lVarV != null) {
                lVarV.f();
            }
            try {
                vG = g(iX);
            } catch (Throwable th) {
                synchronized (this) {
                    this.f28068g.a(iZ2);
                    l<V> lVarV2 = v(iX);
                    if (lVarV2 != null) {
                        lVarV2.b();
                    }
                    com.facebook.common.internal.n.f(th);
                    vG = null;
                }
            }
            synchronized (this) {
                com.facebook.common.internal.i.o(this.f28066e.add(vG));
                N();
                this.f28070i.a(iZ2);
                H();
                if (i3.a.R(2)) {
                    i3.a.W(this.f28062a, "get (alloc) (object, size) = (%x, %s)", Integer.valueOf(System.identityHashCode(vG)), Integer.valueOf(iX));
                }
            }
            return vG;
        }
    }

    @Override // com.facebook.common.memory.b
    public void q(MemoryTrimType memoryTrimType) {
        L();
    }

    @VisibleForTesting
    synchronized boolean r(int sizeInBytes) {
        if (this.f28071j) {
            return true;
        }
        j0 j0Var = this.f28064c;
        int i10 = j0Var.f28145a;
        int i11 = this.f28068g.f28074b;
        if (sizeInBytes > i10 - i11) {
            this.f28070i.c();
            return false;
        }
        int i12 = j0Var.f28146b;
        if (sizeInBytes > i12 - (i11 + this.f28069h.f28074b)) {
            M(i12 - sizeInBytes);
        }
        if (sizeInBytes <= i10 - (this.f28068g.f28074b + this.f28069h.f28074b)) {
            return true;
        }
        this.f28070i.c();
        return false;
    }

    @Override // com.facebook.common.memory.e, com.facebook.common.references.g
    public void release(V value) {
        com.facebook.common.internal.i.i(value);
        int iY = y(value);
        int iZ = z(iY);
        synchronized (this) {
            l<V> lVarW = w(iY);
            if (!this.f28066e.remove(value)) {
                i3.a.s(this.f28062a, "release (free, value unrecognized) (object, size) = (%x, %s)", Integer.valueOf(System.identityHashCode(value)), Integer.valueOf(iY));
                u(value);
                this.f28070i.e(iZ);
            } else if (lVarW == null || lVarW.g() || E() || !F(value)) {
                if (lVarW != null) {
                    lVarW.b();
                }
                if (i3.a.R(2)) {
                    i3.a.W(this.f28062a, "release (free) (object, size) = (%x, %s)", Integer.valueOf(System.identityHashCode(value)), Integer.valueOf(iY));
                }
                u(value);
                this.f28068g.a(iZ);
                this.f28070i.e(iZ);
            } else {
                lVarW.i(value);
                this.f28069h.b(iZ);
                this.f28068g.a(iZ);
                this.f28070i.f(iZ);
                if (i3.a.R(2)) {
                    i3.a.W(this.f28062a, "release (reuse) (object, size) = (%x, %s)", Integer.valueOf(System.identityHashCode(value)), Integer.valueOf(iY));
                }
            }
            H();
        }
    }

    @VisibleForTesting
    protected abstract void u(V value);

    @Nullable
    @VisibleForTesting
    synchronized l<V> v(int bucketedSize) {
        l<V> lVar = this.f28065d.get(bucketedSize);
        if (lVar == null && this.f28067f) {
            if (i3.a.R(2)) {
                i3.a.V(this.f28062a, "creating new bucket %s", Integer.valueOf(bucketedSize));
            }
            l<V> lVarI = I(bucketedSize);
            this.f28065d.put(bucketedSize, lVarI);
            return lVarI;
        }
        return lVar;
    }

    protected abstract int x(int requestSize);

    protected abstract int y(V value);

    protected abstract int z(int bucketedSize);

    public BasePool(com.facebook.common.memory.c memoryTrimmableRegistry, j0 poolParams, k0 poolStatsTracker, boolean ignoreHardCap) {
        this(memoryTrimmableRegistry, poolParams, poolStatsTracker);
        this.f28071j = ignoreHardCap;
    }
}

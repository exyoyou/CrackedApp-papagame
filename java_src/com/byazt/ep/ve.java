package com.byazt.ep;

import com.byazt.nr.m;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.lang.ref.SoftReference;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1555, 54})
public class ve<K, V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f13542a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LinkedHashMap<K, SoftReference<V>> f13543c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f13544n;
    public int sp;
    public int tt;
    public int uj;
    public int ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f13545x;

    public ve(int i10) {
        if (i10 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        this.ve = i10;
        this.f13543c = new LinkedHashMap<>(0, 0.75f, true);
    }

    private int ve(K k10, V v10) {
        int iTt = tt(k10, v10);
        if (iTt >= 0) {
            return iTt;
        }
        throw new IllegalStateException("Negative size: " + k10 + SimpleComparison.EQUAL_TO_OPERATION + v10);
    }

    public final V c(K k10) {
        V v10;
        if (k10 == null) {
            throw new NullPointerException("key == null");
        }
        synchronized (this) {
            SoftReference<V> softReference = this.f13543c.get(k10);
            if (softReference != null) {
                v10 = softReference.get();
                if (v10 != null) {
                    this.sp++;
                    return v10;
                }
                this.f13543c.remove(k10);
            } else {
                v10 = null;
            }
            this.f13545x++;
            V vTt = tt(k10);
            if (vTt == null) {
                return null;
            }
            synchronized (this) {
                this.f13544n++;
                SoftReference<V> softReferencePut = this.f13543c.put(k10, new SoftReference<>(vTt));
                if (softReferencePut != null) {
                    v10 = softReferencePut.get();
                }
                if (v10 != null) {
                    this.f13543c.put(k10, softReferencePut);
                } else {
                    this.tt += ve(k10, vTt);
                }
            }
            if (v10 != null) {
                return v10;
            }
            c(this.ve);
            return vTt;
        }
    }

    public final synchronized String toString() {
        int i10;
        int i11;
        i10 = this.sp;
        i11 = this.f13545x + i10;
        return String.format("LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", Integer.valueOf(this.ve), Integer.valueOf(this.sp), Integer.valueOf(this.f13545x), Integer.valueOf(i11 != 0 ? (i10 * 100) / i11 : 0));
    }

    public int tt(K k10, V v10) {
        return 1;
    }

    public V tt(K k10) {
        return null;
    }

    public final V c(K k10, V v10) {
        V v11;
        if (k10 != null && v10 != null) {
            synchronized (this) {
                this.uj++;
                this.tt += ve(k10, v10);
                SoftReference<V> softReferencePut = this.f13543c.put(k10, new SoftReference<>(v10));
                if (softReferencePut != null) {
                    v11 = softReferencePut.get();
                    if (v11 != null) {
                        this.tt -= ve(k10, v11);
                    }
                } else {
                    v11 = null;
                }
            }
            c(this.ve);
            return v11;
        }
        throw new NullPointerException("key == null || value == null");
    }

    public void c(int i10) {
        while (true) {
            synchronized (this) {
                if (this.tt < 0 || (this.f13543c.isEmpty() && this.tt != 0)) {
                    break;
                    break;
                }
                if (this.tt <= i10) {
                    return;
                }
                Map.Entry<K, SoftReference<V>> next = this.f13543c.entrySet().iterator().next();
                if (next == null) {
                    return;
                }
                K key = next.getKey();
                SoftReference<V> value = next.getValue();
                this.f13543c.remove(key);
                if (value != null) {
                    this.tt -= ve(key, value.get());
                }
                this.f13542a++;
            }
        }
        m.uj("LruCache", "oom maybe occured, clear cache. size= " + this.tt + ", maxSize: " + i10);
        this.tt = 0;
        this.f13543c.clear();
    }

    public final void c() {
        c(-1);
    }
}

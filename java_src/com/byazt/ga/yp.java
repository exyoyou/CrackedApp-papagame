package com.byazt.ga;

import com.j256.ormlite.stmt.query.SimpleComparison;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 256, 215})
public class yp<K, V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f14454a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LinkedHashMap<K, V> f14455c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f14456n;
    public int sp;
    public int tt;
    public int uj;
    public int ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f14457x;

    public yp(int i10) {
        if (i10 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        this.ve = i10;
        this.f14455c = new LinkedHashMap<>(0, 0.75f, true);
    }

    private int ve(K k10, V v10) {
        int iTt = tt(k10, v10);
        if (iTt >= 0) {
            return iTt;
        }
        throw new IllegalStateException("Negative size: " + k10 + SimpleComparison.EQUAL_TO_OPERATION + v10);
    }

    public void c(boolean z10, K k10, V v10, V v11) {
    }

    public final synchronized String toString() {
        int i10;
        int i11;
        i10 = this.sp;
        i11 = this.f14457x + i10;
        return String.format(Locale.US, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", Integer.valueOf(this.ve), Integer.valueOf(this.sp), Integer.valueOf(this.f14457x), Integer.valueOf(i11 != 0 ? (i10 * 100) / i11 : 0));
    }

    public int tt(K k10, V v10) {
        return 1;
    }

    public void c(int i10) {
        if (i10 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        synchronized (this) {
            this.ve = i10;
        }
        tt(i10);
    }

    public V tt(K k10) {
        return null;
    }

    public void tt(int i10) {
        K key;
        V value;
        while (true) {
            synchronized (this) {
                if (this.tt < 0 || (this.f14455c.isEmpty() && this.tt != 0)) {
                    break;
                }
                if (this.tt > i10 && !this.f14455c.isEmpty()) {
                    Map.Entry<K, V> next = this.f14455c.entrySet().iterator().next();
                    key = next.getKey();
                    value = next.getValue();
                    this.f14455c.remove(key);
                    this.tt -= ve(key, value);
                    this.f14454a++;
                }
                return;
            }
            c(true, key, value, null);
        }
        throw new IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
    }

    public final V c(K k10) {
        V vPut;
        if (k10 != null) {
            synchronized (this) {
                V v10 = this.f14455c.get(k10);
                if (v10 != null) {
                    this.sp++;
                    return v10;
                }
                this.f14457x++;
                V vTt = tt(k10);
                if (vTt == null) {
                    return null;
                }
                synchronized (this) {
                    this.f14456n++;
                    vPut = this.f14455c.put(k10, vTt);
                    if (vPut != null) {
                        this.f14455c.put(k10, vPut);
                    } else {
                        this.tt += ve(k10, vTt);
                    }
                }
                if (vPut != null) {
                    c(false, k10, vTt, vPut);
                    return vPut;
                }
                tt(this.ve);
                return vTt;
            }
        }
        throw new NullPointerException("key == null");
    }

    public final V c(K k10, V v10) {
        V vPut;
        if (k10 != null && v10 != null) {
            synchronized (this) {
                this.uj++;
                this.tt += ve(k10, v10);
                vPut = this.f14455c.put(k10, v10);
                if (vPut != null) {
                    this.tt -= ve(k10, vPut);
                }
            }
            if (vPut != null) {
                c(false, k10, vPut, v10);
            }
            tt(this.ve);
            return vPut;
        }
        throw new NullPointerException("key == null || value == null");
    }

    public final synchronized Map<K, V> c() {
        return new LinkedHashMap(this.f14455c);
    }

    public final synchronized boolean c(K k10, int i10) {
        if (k10 == null || i10 <= 0) {
            return false;
        }
        if (!this.f14455c.containsKey(k10)) {
            return false;
        }
        int size = this.f14455c.size();
        if (size <= i10) {
            return true;
        }
        Iterator<K> it2 = this.f14455c.keySet().iterator();
        int i11 = 0;
        while (it2.hasNext() && !it2.next().equals(k10)) {
            i11++;
        }
        return i11 >= size - i10;
    }
}

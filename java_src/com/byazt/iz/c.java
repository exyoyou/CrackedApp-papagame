package com.byazt.iz;

import android.text.TextUtils;
import com.byazt.nbs.da;
import com.byazt.qv.sp;
import com.byazt.vx.p;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 732, 20})
public class c {
    public List<Integer> sl;
    public AtomicInteger ve = new AtomicInteger(-1);
    public AtomicBoolean uj = new AtomicBoolean();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Map<Integer, Boolean> f15678c = new HashMap();
    public final Map<Integer, Boolean> tt = new HashMap();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Map<Integer, AtomicInteger> f15681n = new HashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicInteger f15677a = new AtomicInteger();
    public final AtomicInteger sp = new AtomicInteger();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final AtomicInteger f15682x = new AtomicInteger();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List<String> f15680i = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final AtomicInteger f15679da = new AtomicInteger(-1000);

    public synchronized boolean a() {
        AtomicInteger atomicInteger = this.f15681n.get(-100);
        if (atomicInteger == null) {
            return false;
        }
        return atomicInteger.get() == 0;
    }

    public List<Integer> c() {
        return this.sl;
    }

    public synchronized boolean da() {
        return this.f15682x.get() == 0;
    }

    public synchronized boolean i() {
        return this.sp.get() == 0;
    }

    public synchronized boolean n(int i10) {
        Boolean bool = this.tt.get(Integer.valueOf(i10));
        return bool != null && bool.booleanValue();
    }

    public synchronized int sl() {
        return this.f15679da.get();
    }

    public synchronized boolean sp() {
        AtomicInteger atomicInteger = this.f15681n.get(0);
        if (atomicInteger == null) {
            return false;
        }
        return atomicInteger.get() == 0;
    }

    public synchronized void t() {
        this.ve.set(-1);
        this.uj.set(false);
        this.f15678c.clear();
        this.tt.clear();
        this.f15681n.clear();
        this.f15677a.set(0);
        this.f15680i.clear();
        this.f15679da.set(-1000);
    }

    public synchronized int tt() {
        return this.ve.get();
    }

    public synchronized void uj(int i10) {
        this.tt.put(Integer.valueOf(i10), Boolean.TRUE);
    }

    public synchronized boolean ve() {
        return tt() > 0;
    }

    public synchronized boolean x() {
        return this.f15677a.get() == 0;
    }

    public void c(List<Integer> list) {
        this.sl = list;
    }

    public synchronized void i(int i10) {
        this.f15682x.set(i10);
    }

    public synchronized void tt(int i10) {
        if (this.f15679da.get() < i10) {
            this.f15679da.set(i10);
        }
        this.f15678c.put(Integer.valueOf(i10), Boolean.TRUE);
    }

    public synchronized boolean ve(int i10) {
        Boolean bool = this.f15678c.get(Integer.valueOf(i10));
        return bool != null && bool.booleanValue();
    }

    public synchronized void x(int i10) {
        this.sp.set(i10);
    }

    public synchronized void c(int i10) {
        this.ve.set(i10);
    }

    public synchronized void uj() {
        this.uj.set(true);
    }

    public synchronized void c(int i10, int i11) {
        this.f15681n.put(Integer.valueOf(i10), new AtomicInteger(i11));
    }

    public synchronized boolean n() {
        return this.uj.get();
    }

    public synchronized int a(int i10) {
        AtomicInteger atomicInteger = this.f15681n.get(Integer.valueOf(i10));
        if (atomicInteger == null) {
            return 0;
        }
        return atomicInteger.get();
    }

    public synchronized void sp(int i10) {
        this.f15677a.set(i10);
    }

    public synchronized void c(int i10, String str) {
        AtomicInteger atomicInteger = this.f15681n.get(Integer.valueOf(i10));
        if (atomicInteger != null && atomicInteger.get() != 0) {
            atomicInteger.decrementAndGet();
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f15680i.add(str);
        if (i10 < -100 && this.sp.get() != 0) {
            this.sp.decrementAndGet();
        }
        if (i10 > 0 && this.f15682x.get() != 0) {
            this.f15682x.decrementAndGet();
        }
        if (this.f15677a.get() != 0) {
            this.f15677a.decrementAndGet();
        } else {
            com.byazt.eu.tt.uj(MediationConstant.TAG, "decrementTotalWaterFall--waterfall数量减少一个 ---不用再减了不然就变成-1了");
        }
    }

    public synchronized void c(List<da> list, List<da> list2, List<da> list3) {
        int size;
        if (list != null) {
            if (list.size() != 0) {
                List<da> listTt = sp.tt(list);
                int i10 = 0;
                if (!p.c(listTt)) {
                    size = listTt.size();
                    for (da daVar : listTt) {
                        for (String str : this.f15680i) {
                            if (!TextUtils.isEmpty(str) && daVar != null && str.equals(daVar.rh())) {
                                size--;
                                break;
                            }
                        }
                    }
                } else {
                    size = 0;
                }
                if (size < 0) {
                    size = 0;
                }
                this.f15682x.set(size);
                int size2 = list.size();
                if (list2 != null) {
                    size2 += list2.size();
                }
                if (list3 != null) {
                    size2 += list3.size();
                }
                for (da daVar2 : list) {
                    for (String str2 : this.f15680i) {
                        if (!TextUtils.isEmpty(str2) && daVar2 != null && str2.equals(daVar2.rh())) {
                            size2--;
                            break;
                        }
                    }
                }
                if (!p.c(list2)) {
                    for (da daVar3 : list2) {
                        for (String str3 : this.f15680i) {
                            if (!TextUtils.isEmpty(str3) && daVar3 != null && str3.equals(daVar3.rh())) {
                                size2--;
                                break;
                            }
                        }
                    }
                }
                if (!p.c(list3)) {
                    for (da daVar4 : list3) {
                        for (String str4 : this.f15680i) {
                            if (!TextUtils.isEmpty(str4) && daVar4 != null && str4.equals(daVar4.rh())) {
                                size2--;
                                break;
                            }
                        }
                    }
                }
                if (size2 >= 0) {
                    i10 = size2;
                }
                this.f15677a.set(i10);
            }
        }
    }
}

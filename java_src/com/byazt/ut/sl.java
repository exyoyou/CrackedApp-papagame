package com.byazt.ut;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 834, 158})
public class sl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f20975a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Class<Object> f20976c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public volatile int f20977da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f20978i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final boolean f20979n;
    public volatile Function sl;
    public final boolean sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public volatile Map<com.byazt.dna.c, Object> f20980t;
    public final Class<Object> tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public volatile Object f20981u;
    public final int uj;
    public final int ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final int[] f20982x;
    public volatile int yp;

    public sl(Class cls, Class cls2, boolean z10, int i10, int i11, String str, boolean z11, int[] iArr, boolean z12) {
        this.f20976c = cls;
        this.tt = cls2;
        this.ve = i10;
        this.f20979n = z10;
        this.uj = i11;
        this.f20975a = str;
        this.sp = z11;
        if (i10 < 0) {
            this.yp = i10;
        }
        if (z11) {
            this.f20980t = new ConcurrentHashMap();
        }
        this.f20982x = iArr;
        this.f20978i = z12;
    }

    public boolean a() {
        return this.yp > this.f20977da && this.yp > this.ve;
    }

    public int c() {
        return this.f20977da;
    }

    public int n() {
        return this.yp;
    }

    public Function tt() {
        return this.sl;
    }

    public Object uj() {
        return this.f20981u;
    }

    public Map<com.byazt.dna.c, Object> ve() {
        return this.f20980t;
    }

    public void c(int i10) {
        this.f20977da = i10;
    }

    public void tt(int i10) {
        this.yp = i10;
    }

    public void c(Function function) {
        this.sl = function;
    }

    public synchronized Object c(com.byazt.dna.c cVar) {
        if (this.sp && cVar != null && this.f20980t != null) {
            return this.f20980t.get(cVar);
        }
        return this.f20981u;
    }

    public synchronized void c(Object obj, com.byazt.dna.c cVar) {
        if (this.sp && cVar != null && this.f20980t != null) {
            this.f20980t.put(cVar, obj);
            return;
        }
        this.f20981u = obj;
    }
}

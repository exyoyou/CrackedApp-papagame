package com.byazt.me;

import androidx.annotation.NonNull;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1419, 72})
public class da {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f16884a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f16885c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final int f16886da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f16887i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f16888n;
    public final int sl;
    public final int sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final int f16889t;
    public final int tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final int f16890u;
    public final int uj;
    public final int ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final int f16891x;

    @NonNull
    public final Map<String, Integer> yp;

    @com.byazt.zqa.c(c = {0, 1, 1419, 45})
    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f16892a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f16893c;

        /* JADX INFO: renamed from: da, reason: collision with root package name */
        public int f16894da;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f16895i;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public int f16896n;
        public int sl;
        public int sp;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public int f16897t;
        public int tt;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public int f16898u;
        public int uj;
        public int ve;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public int f16899x;

        @NonNull
        public Map<String, Integer> yp;

        public c(int i10) {
            this.yp = Collections.emptyMap();
            this.f16893c = i10;
            this.yp = new HashMap();
        }

        @NonNull
        public c a(int i10) {
            this.f16892a = i10;
            return this;
        }

        @NonNull
        public c c(int i10) {
            this.tt = i10;
            return this;
        }

        @NonNull
        public c da(int i10) {
            this.uj = i10;
            return this;
        }

        @NonNull
        public c i(int i10) {
            this.ve = i10;
            return this;
        }

        @NonNull
        public c n(int i10) {
            this.f16897t = i10;
            return this;
        }

        @NonNull
        public c sl(int i10) {
            this.f16896n = i10;
            return this;
        }

        @NonNull
        public c sp(int i10) {
            this.f16899x = i10;
            return this;
        }

        @NonNull
        public c tt(int i10) {
            this.f16895i = i10;
            return this;
        }

        @NonNull
        public c uj(int i10) {
            this.sl = i10;
            return this;
        }

        @NonNull
        public c ve(int i10) {
            this.f16894da = i10;
            return this;
        }

        @NonNull
        public c x(int i10) {
            this.sp = i10;
            return this;
        }

        @NonNull
        public c c(Map<String, Integer> map) {
            if (map != null) {
                this.yp = new HashMap(map);
            }
            return this;
        }

        @NonNull
        public da c() {
            return new da(this);
        }
    }

    public da(@NonNull c cVar) {
        this.f16885c = cVar.f16893c;
        this.tt = cVar.tt;
        this.ve = cVar.ve;
        this.uj = cVar.uj;
        this.f16888n = cVar.f16896n;
        this.f16884a = cVar.f16892a;
        this.sp = cVar.sp;
        this.f16891x = cVar.f16899x;
        this.yp = cVar.yp;
        this.f16887i = cVar.f16894da;
        this.f16886da = cVar.sl;
        this.sl = cVar.f16897t;
        this.f16889t = cVar.f16895i;
        this.f16890u = cVar.f16898u;
    }

    public static da c(com.byazt.am.uj ujVar) {
        if (ujVar == null) {
            return null;
        }
        c cVar = new c(ujVar.c());
        cVar.c(ujVar.tt()).da(ujVar.uj()).i(ujVar.ve()).ve(ujVar.i()).uj(ujVar.da()).n(ujVar.sl()).a(ujVar.a()).x(ujVar.sp()).sl(ujVar.n()).tt(ujVar.t()).sp(ujVar.x()).c(ujVar.u());
        return cVar.c();
    }

    public static com.byazt.sn.c c(da daVar) {
        if (daVar != null) {
            return new com.byazt.sn.c(daVar);
        }
        return null;
    }
}

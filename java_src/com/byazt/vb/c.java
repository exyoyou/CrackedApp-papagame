package com.byazt.vb;

import android.content.Context;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1891, 20})
public class c implements n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public com.byazt.rz.c f21145a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f21146c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public com.byazt.rz.c f21147da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public com.byazt.rz.c f21148i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f21149m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Context f21150n;
    public boolean sl;
    public com.byazt.rz.c sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public uj f21151t;
    public a tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public AtomicBoolean f21152u;
    public String uj;
    public sl ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public com.byazt.rz.c f21153x;
    public int yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f21154z;

    /* JADX INFO: renamed from: com.byazt.vb.c$c, reason: collision with other inner class name */
    @com.byazt.zqa.c(c = {0, 1, 1891, 44})
    public static class C0461c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f21155a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public sl f21156c;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public com.byazt.rz.c f21159n;
        public uj sp;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public String f21160t;
        public com.byazt.rz.c tt;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public Context f21161u;
        public com.byazt.rz.c uj;
        public com.byazt.rz.c ve;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public a f21162x;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final AtomicBoolean f21158i = new AtomicBoolean(false);

        /* JADX INFO: renamed from: da, reason: collision with root package name */
        public int f21157da = 5000;
        public int sl = 10;
        public int yp = -1;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        public int f21163z = -1;

        public C0461c c(Context context) {
            this.f21161u = context;
            return this;
        }

        public C0461c tt(boolean z10) {
            this.f21155a = z10;
            return this;
        }

        public C0461c ve(com.byazt.rz.c cVar) {
            this.uj = cVar;
            return this;
        }

        public C0461c c(String str) {
            this.f21160t = str;
            return this;
        }

        public C0461c tt(com.byazt.rz.c cVar) {
            this.ve = cVar;
            return this;
        }

        public C0461c c(int i10) {
            this.yp = i10;
            return this;
        }

        public C0461c tt(int i10) {
            this.f21163z = i10;
            return this;
        }

        public C0461c c(boolean z10) {
            this.f21158i.set(z10);
            return this;
        }

        public C0461c c(a aVar) {
            this.f21162x = aVar;
            return this;
        }

        public C0461c c(uj ujVar) {
            this.sp = ujVar;
            return this;
        }

        public C0461c c(com.byazt.rz.c cVar) {
            this.tt = cVar;
            return this;
        }

        public C0461c c(sl slVar) {
            this.f21156c = slVar;
            return this;
        }

        public c c() {
            c cVar = new c();
            cVar.ve = this.f21156c;
            cVar.f21145a = this.tt;
            cVar.sp = this.ve;
            cVar.f21153x = this.uj;
            cVar.f21148i = this.f21159n;
            cVar.sl = this.f21155a;
            cVar.f21151t = this.sp;
            cVar.tt = this.f21162x;
            cVar.f21152u = this.f21158i;
            cVar.uj = this.f21160t;
            cVar.f21150n = this.f21161u;
            cVar.f21154z = this.sl;
            cVar.yp = this.f21157da;
            cVar.f21149m = this.yp;
            cVar.f21146c = this.f21163z;
            return cVar;
        }
    }

    @Override // com.byazt.vb.n
    public com.byazt.rz.c a() {
        return this.f21147da;
    }

    @Override // com.byazt.vb.n
    public sl da() {
        return this.ve;
    }

    @Override // com.byazt.vb.n
    public Context getContext() {
        return this.f21150n;
    }

    @Override // com.byazt.vb.n
    public com.byazt.rz.c i() {
        return this.f21153x;
    }

    @Override // com.byazt.vb.n
    public String n() {
        return this.uj;
    }

    @Override // com.byazt.vb.n
    public boolean sl() {
        return this.sl;
    }

    @Override // com.byazt.vb.n
    public com.byazt.rz.c sp() {
        return this.f21145a;
    }

    @Override // com.byazt.vb.n
    public int t() {
        return this.f21149m;
    }

    @Override // com.byazt.vb.n
    public int u() {
        return this.f21146c;
    }

    @Override // com.byazt.vb.n
    public com.byazt.rz.c x() {
        return this.sp;
    }

    private c() {
        this.f21152u = new AtomicBoolean(false);
        this.yp = 200;
        this.f21154z = 10;
        this.f21149m = -1;
        this.f21146c = -1;
    }

    @Override // com.byazt.vb.n
    public uj uj() {
        return this.f21151t;
    }

    @Override // com.byazt.vb.n
    public a tt() {
        return this.tt;
    }

    @Override // com.byazt.vb.n
    public boolean ve() {
        return this.f21152u.get();
    }

    @Override // com.byazt.vb.n
    public com.byazt.rz.c c() {
        return this.f21148i;
    }

    @Override // com.byazt.vb.n
    public void c(a aVar) {
        this.tt = aVar;
    }

    @Override // com.byazt.vb.n
    public void c(boolean z10) {
        this.f21152u.set(z10);
    }
}

package com.byazt.hu;

import java.lang.ref.SoftReference;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1381, 54})
public class ve<P, R> implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ve<R, ?> f15115a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public P f15116c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public ve<?, P> f15117n;
    public R tt;
    public SoftReference<c<P, R>> uj;
    public int ve;

    public interface c<PARAM, RESULT> {
        RESULT c(PARAM param);
    }

    private ve(int i10, c<P, R> cVar, P p10) {
        this.ve = i10;
        this.uj = new SoftReference<>(cVar);
        this.f15116c = p10;
    }

    public static <P, R> ve<P, R> c(c<P, R> cVar, P p10) {
        return new ve<>(2, cVar, p10);
    }

    private R tt() {
        return this.tt;
    }

    @Override // java.lang.Runnable
    public void run() {
        ve<?, P> veVar;
        if (this.ve == 0 && !u.tt()) {
            com.byazt.di.x.c().tt().post(this);
            return;
        }
        if (this.ve == 1 && u.tt()) {
            com.byazt.di.n.c().c(this);
            return;
        }
        if (this.ve == 2 && u.tt()) {
            com.byazt.di.n.c().tt(this);
            return;
        }
        if (this.f15116c == null && (veVar = this.f15117n) != null) {
            this.f15116c = veVar.tt();
        }
        c<P, R> cVar = this.uj.get();
        if (cVar == null) {
            return;
        }
        this.tt = cVar.c(this.f15116c);
        ve<R, ?> veVar2 = this.f15115a;
        if (veVar2 != null) {
            veVar2.run();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <NR> ve<R, NR> c(int i10, c<R, NR> cVar) {
        ve veVar = (ve<R, ?>) new ve(i10, cVar, null);
        this.f15115a = veVar;
        veVar.f15117n = this;
        return veVar;
    }

    public <NR> ve<R, NR> c(c<R, NR> cVar) {
        return c(0, cVar);
    }

    public void c() {
        ve<?, P> veVar = this.f15117n;
        if (veVar != null) {
            veVar.c();
        } else {
            run();
        }
    }
}

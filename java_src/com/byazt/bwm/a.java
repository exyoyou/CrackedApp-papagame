package com.byazt.bwm;

import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 33, 34})
public class a<V> extends FutureTask<V> implements Comparable<a<V>> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12114c;
    public int tt;

    public a(Callable<V> callable, int i10, int i11) {
        super(callable);
        this.f12114c = i10 == -1 ? 5 : i10;
        this.tt = i11;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public int compareTo(a aVar) {
        if (c() < aVar.c()) {
            return 1;
        }
        return c() > aVar.c() ? -1 : 0;
    }

    public int c() {
        return this.f12114c;
    }
}

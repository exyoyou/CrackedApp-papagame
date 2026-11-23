package com.byazt.iu;

import com.byazt.bzd.x;
import com.byazt.ete.ic;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 127, 34})
public class a<T> implements n<T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final n<T> f15520c;

    public a(n<T> nVar) {
        this.f15520c = nVar;
    }

    @Override // com.byazt.iu.n
    public void c(final T t10, final boolean z10, final ic icVar) {
        x.c(new Runnable() { // from class: com.byazt.iu.a.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                if (a.this.f15520c != null) {
                    a.this.f15520c.c(t10, z10, icVar);
                }
            }
        });
    }

    @Override // com.byazt.iu.n
    public void c(final T t10) {
        x.c(new Runnable() { // from class: com.byazt.iu.a.2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                if (a.this.f15520c != null) {
                    a.this.f15520c.c(t10);
                }
            }
        });
    }

    @Override // com.byazt.iu.n
    public void c(final int i10, final String str) {
        x.c(new Runnable() { // from class: com.byazt.iu.a.3
            @Override // java.lang.Runnable
            public void run() {
                if (a.this.f15520c != null) {
                    a.this.f15520c.c(i10, str);
                }
            }
        });
    }
}

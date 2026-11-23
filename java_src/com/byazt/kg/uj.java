package com.byazt.kg;

import java.io.File;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 428, 15})
public class uj implements Runnable {
    public final ve tt;
    public volatile boolean ve = false;
    public Runnable uj = new Runnable() { // from class: com.byazt.kg.uj.1
        @Override // java.lang.Runnable
        public void run() {
            uj.this.ve = false;
        }
    };

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f16256c = c();

    public uj(ve veVar) {
        this.tt = veVar;
        com.byazt.rx.a.c(2L);
        com.byazt.rx.n.c().c(4500L, this.uj);
        com.byazt.rx.n.c().c(5000L, this, 40, 5000L);
    }

    private boolean tt() {
        File file = new File("/data/anr/traces.txt");
        return file.exists() && file.canRead();
    }

    @Override // java.lang.Runnable
    public void run() {
        String str;
        int i10;
        if (this.ve) {
            return;
        }
        if (tt()) {
            i10 = 200;
            str = "/data/anr/traces.txt";
        } else {
            str = null;
            i10 = 100;
        }
        if (this.tt.c(i10, str, 25)) {
            this.ve = true;
        }
    }

    private long c() {
        File file = new File("/data/anr/traces.txt");
        if (file.exists()) {
            return file.lastModified();
        }
        return 0L;
    }
}

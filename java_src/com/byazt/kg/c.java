package com.byazt.kg;

import android.os.FileObserver;
import android.os.SystemClock;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 428, 20})
public class c extends FileObserver {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ve f16254c;
    public final int tt;
    public volatile boolean ve;

    /* JADX INFO: renamed from: com.byazt.kg.c$c, reason: collision with other inner class name */
    @com.byazt.zqa.c(c = {0, 1, 428, 44})
    private final class C0360c extends com.byazt.jtc.ve {
        public int tt;

        public C0360c(int i10) {
            super("ANRFileObserver$RestartMonitorThread");
            this.tt = i10;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            SystemClock.sleep(this.tt);
            c.this.ve = true;
        }
    }

    public c(ve veVar, String str, int i10) {
        super(str, i10);
        this.tt = 5000;
        this.ve = true;
        if (veVar == null || TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("params is not right path is null or ANRManager is null");
        }
        this.f16254c = veVar;
    }

    @Override // android.os.FileObserver
    public void onEvent(int i10, String str) {
        if (this.ve && i10 == 8 && !TextUtils.isEmpty(str) && str.contains("trace") && this.f16254c != null) {
            this.ve = false;
            this.f16254c.c(200, "/data/anr/".concat(str), 80);
            new C0360c(5000).start();
        }
    }
}

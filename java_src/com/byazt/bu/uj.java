package com.byazt.bu;

import com.byazt.bu.ve;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 68, 15})
public class uj<T extends ve> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12091c;
    public BlockingQueue<T> tt = new LinkedBlockingQueue();

    private uj(int i10) {
        this.f12091c = i10;
    }

    public static uj c(int i10) {
        return new uj(i10);
    }

    public int tt() {
        return this.tt.size();
    }

    public T c() {
        return this.tt.poll();
    }

    public boolean c(T t10) {
        if (t10 == null) {
            return false;
        }
        t10.c();
        if (this.tt.size() >= this.f12091c) {
            return false;
        }
        return this.tt.offer(t10);
    }
}

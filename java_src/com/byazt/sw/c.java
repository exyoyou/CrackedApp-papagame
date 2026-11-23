package com.byazt.sw;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 868, 20})
public class c {
    public int tt = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Map<Integer, Long> f19913c = new ConcurrentHashMap();

    public void c() {
        this.tt = 0;
        try {
            this.f19913c.clear();
        } catch (Exception unused) {
        }
    }

    public Long tt(int i10) {
        try {
            if (c(i10)) {
                return this.f19913c.get(Integer.valueOf(i10));
            }
        } catch (Exception unused) {
        }
        return -1L;
    }

    public boolean uj(int i10) {
        return i10 == this.tt;
    }

    public void ve(int i10) {
        if (c(i10)) {
            return;
        }
        this.tt |= i10;
        try {
            this.f19913c.put(Integer.valueOf(i10), Long.valueOf(System.currentTimeMillis()));
        } catch (Exception unused) {
        }
    }

    public boolean c(int i10) {
        return (this.tt & i10) == i10;
    }
}

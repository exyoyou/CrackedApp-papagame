package com.byazt.ke;

import java.util.UUID;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 723, 13})
public abstract class tt implements Comparable<tt>, Runnable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f16181c = 5;
    public String tt = UUID.randomUUID().toString() + "-" + String.valueOf(System.nanoTime());
    public String ve;

    public tt(String str) {
        this.ve = str;
    }

    public void c(int i10) {
        this.f16181c = i10;
    }

    public int c() {
        return this.f16181c;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public int compareTo(tt ttVar) {
        if (c() < ttVar.c()) {
            return 1;
        }
        return c() >= ttVar.c() ? -1 : 0;
    }
}

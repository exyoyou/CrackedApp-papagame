package com.byazt.ga;

import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 256, 66})
public final class t<V> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final V f14418c;
    public final Throwable tt;

    public t(V v10) {
        this.f14418c = v10;
        this.tt = null;
    }

    public V c() {
        return this.f14418c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof t)) {
            return false;
        }
        t tVar = (t) obj;
        if (c() != null && c().equals(tVar.c())) {
            return true;
        }
        if (tt() == null || tVar.tt() == null) {
            return false;
        }
        return tt().toString().equals(tt().toString());
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{c(), tt()});
    }

    public Throwable tt() {
        return this.tt;
    }

    public t(Throwable th) {
        this.tt = th;
        this.f14418c = null;
    }
}

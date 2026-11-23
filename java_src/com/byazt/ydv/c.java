package com.byazt.ydv;

import java.io.InputStream;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 842, 20})
public abstract class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List<com.byazt.utw.a.tt> f22166c;
    public n tt;

    public abstract int c();

    public com.byazt.utw.a.tt c(String str) {
        List<com.byazt.utw.a.tt> list;
        if (str != null && (list = this.f22166c) != null && list.size() > 0) {
            for (com.byazt.utw.a.tt ttVar : this.f22166c) {
                if (str.equals(ttVar.f20999c)) {
                    return ttVar;
                }
            }
        }
        return null;
    }

    public abstract String c(String str, String str2);

    public n n() {
        return this.tt;
    }

    public abstract boolean tt();

    public abstract InputStream uj();

    public abstract List<com.byazt.utw.a.tt> ve();
}

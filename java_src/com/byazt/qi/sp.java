package com.byazt.qi;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 527, 91})
public class sp {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Context f19170c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public x f19171n;
    public String tt;
    public boolean uj;
    public String ve;

    @com.byazt.zqa.c(c = {0, 1, 527, 180})
    public static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Context f19172c;
        public final String tt;
        public final String ve;
        public boolean uj = false;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public x f19173n = null;

        public c(Context context, String str, String str2) {
            this.f19172c = context;
            this.ve = str2;
            this.tt = str;
        }

        public void c(x xVar) {
            this.f19173n = xVar;
        }

        public c c(boolean z10) {
            this.uj = z10;
            return this;
        }

        public sp c() {
            sp spVar = new sp();
            spVar.f19170c = this.f19172c;
            spVar.tt = this.tt;
            spVar.ve = this.ve;
            spVar.f19171n = this.f19173n;
            spVar.uj = this.uj;
            return spVar;
        }
    }

    public x uj() {
        return this.f19171n;
    }

    public boolean ve() {
        return this.uj;
    }

    public String tt() {
        return this.tt;
    }

    public Context c() {
        return this.f19170c;
    }
}

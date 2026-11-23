package com.byazt.yy;

import android.content.Context;
import com.byazt.dna.nu;
import com.byazt.iy.n;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 122, 15})
public class uj {

    @com.byazt.zqa.c(c = {0, 1, 122, 123})
    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public volatile int f22489a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public volatile Context f22490c;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public volatile boolean f22491n;
        public volatile String tt;
        public volatile boolean uj;
        public volatile int ve;

        private n ve() {
            n nVarC = com.byazt.fu.c.c(this.f22490c, this.tt, this.uj, this.f22489a);
            this.f22491n = true;
            if (nVarC != null) {
                return nVarC;
            }
            this.f22491n = false;
            return tt();
        }

        public c c(Context context) {
            if (context == null) {
                return this;
            }
            this.f22490c = context.getApplicationContext();
            ve.c(this.f22490c);
            return this;
        }

        public c tt(int i10) {
            this.f22489a = i10;
            return this;
        }

        private n tt() {
            return this.uj ? com.byazt.ti.c.c(this.tt) : ((nu) com.byazt.ut.uj.getService("kv_store_factory")).get(this.tt);
        }

        public c c(String str) {
            this.tt = str;
            return this;
        }

        public c c(int i10) {
            this.ve = i10;
            return this;
        }

        public c c(boolean z10) {
            this.uj = z10;
            return this;
        }

        public n c() {
            if (this.ve != 2) {
                return tt();
            }
            return ve();
        }
    }
}

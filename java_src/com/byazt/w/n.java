package com.byazt.w;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1017, 46})
public class n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public c f21432c;
    public c tt;
    public int uj = 10;
    public int ve;

    @com.byazt.zqa.c(c = {0, 1, 1017, 151})
    private static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f21433c;
        public long tt;
        public c uj;
        public c ve;

        private c() {
        }
    }

    public boolean c(long j10, long j11) {
        synchronized (this) {
            c cVar = this.f21432c;
            if (cVar != null) {
                if (j10 >= cVar.f21433c && j11 >= cVar.tt) {
                    c cVar2 = cVar.ve;
                    if (cVar2 != null && j11 - cVar2.tt < 1000) {
                        cVar.f21433c = j10;
                        cVar.tt = j11;
                        return true;
                    }
                }
                return false;
            }
            c cVarC = c();
            cVarC.f21433c = j10;
            cVarC.tt = j11;
            if (cVar != null) {
                cVarC.ve = cVar;
                cVar.uj = cVarC;
            }
            this.f21432c = cVarC;
            return true;
        }
    }

    public long tt(long j10, long j11) {
        synchronized (this) {
            c cVar = this.f21432c;
            if (cVar == null) {
                return -1L;
            }
            c cVarC = c(j10);
            if (cVarC == null) {
                return -1L;
            }
            long j12 = cVar.f21433c - cVarC.f21433c;
            long j13 = j11 - cVarC.tt;
            if (j12 < 0 || j13 <= 0) {
                return -1L;
            }
            return j12 / j13;
        }
    }

    private c c() {
        c cVar;
        int i10 = this.ve;
        if (i10 >= this.uj && (cVar = this.tt) != null) {
            c cVar2 = cVar.uj;
            cVar.uj = null;
            this.tt = cVar2;
            if (cVar2 != null) {
                cVar2.ve = null;
            }
            return cVar;
        }
        this.ve = i10 + 1;
        return new c();
    }

    private c c(long j10) {
        c cVar = this.f21432c;
        c cVar2 = null;
        while (cVar != null && cVar.tt > j10) {
            cVar2 = cVar;
            cVar = cVar.ve;
        }
        return (cVar == null || cVar2 == null || cVar == cVar2 || j10 - cVar.tt >= cVar2.tt - j10) ? cVar2 : cVar;
    }
}

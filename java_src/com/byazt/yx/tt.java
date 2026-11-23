package com.byazt.yx;

import com.byazt.eg.gt;
import com.byazt.eg.h;
import com.byazt.eg.md;
import com.byazt.eg.yv;
import com.byazt.mk.rh;
import java.io.IOException;
import java.net.ProtocolException;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 252, 13})
public final class tt implements gt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f22477c;

    @com.byazt.zqa.c(c = {0, 1, 252, 194})
    static final class c extends com.byazt.mk.sp {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f22478c;

        public c(rh rhVar) {
            super(rhVar);
        }

        @Override // com.byazt.mk.sp, com.byazt.mk.rh
        public void a_(com.byazt.mk.ve veVar, long j10) throws IOException {
            super.a_(veVar, j10);
            this.f22478c += j10;
        }
    }

    public tt(boolean z10) {
        this.f22477c = z10;
    }

    @Override // com.byazt.eg.gt
    public h c(gt.c cVar) throws IOException {
        md mdVar;
        sp spVar = (sp) cVar;
        ve veVarSp = spVar.sp();
        com.byazt.iq.sp spVarA = spVar.a();
        com.byazt.iq.ve veVar = (com.byazt.iq.ve) spVar.n();
        yv yvVarC = spVar.c();
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (yvVarC != null && (mdVar = yvVarC.f13438a) != null) {
            mdVar.c(jCurrentTimeMillis);
        }
        spVar.call();
        veVarSp.c(yvVarC);
        spVar.call();
        h.c cVarC = null;
        if (a.ve(yvVarC.tt()) && yvVarC.uj() != null) {
            if ("100-continue".equalsIgnoreCase(yvVarC.c("Expect"))) {
                veVarSp.c();
                spVar.call();
                cVarC = veVarSp.c(true);
            }
            if (cVarC == null) {
                spVar.call();
                com.byazt.mk.uj ujVarC = com.byazt.mk.t.c(new c(veVarSp.c(yvVarC, yvVarC.uj().tt())));
                yvVarC.uj().c(ujVarC);
                ujVarC.close();
                spVar.call();
            } else if (!veVar.n()) {
                spVarA.uj();
            }
        }
        veVarSp.tt();
        if (cVarC == null) {
            spVar.call();
            cVarC = veVarSp.c(false);
        }
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        md mdVar2 = yvVarC.f13438a;
        if (mdVar2 != null) {
            mdVar2.tt(jCurrentTimeMillis2);
        }
        h hVarC = cVarC.c(yvVarC).c(spVarA.tt().uj()).c(jCurrentTimeMillis).tt(jCurrentTimeMillis2).c();
        spVar.call();
        int iVe = hVarC.ve();
        h hVarC2 = (this.f22477c && iVe == 101) ? hVarC.i().c(com.byazt.kh.ve.ve).c() : hVarC.i().c(veVarSp.c(hVarC)).c();
        if ("close".equalsIgnoreCase(hVarC2.c().c("Connection")) || "close".equalsIgnoreCase(hVarC2.c("Connection"))) {
            spVarA.uj();
        }
        if ((iVe != 204 && iVe != 205) || hVarC2.x().tt() <= 0) {
            return hVarC2;
        }
        throw new ProtocolException("HTTP " + iVe + " had non-zero Content-Length: " + hVarC2.x().tt());
    }
}

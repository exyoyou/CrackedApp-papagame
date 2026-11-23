package com.byazt.yx;

import com.byazt.eg.gt;
import com.byazt.eg.h;
import com.byazt.eg.p;
import com.byazt.eg.rl;
import com.byazt.eg.u;
import com.byazt.eg.yv;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 252, 20})
public final class c implements gt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final u f22465c;

    public c(u uVar) {
        this.f22465c = uVar;
    }

    @Override // com.byazt.eg.gt
    public h c(gt.c cVar) throws IOException {
        yv yvVarC = cVar.c();
        yv.c cVarA = yvVarC.a();
        p pVarUj = yvVarC.uj();
        if (pVarUj != null) {
            rl rlVarC = pVarUj.c();
            if (rlVarC != null) {
                cVarA.c("Content-Type", rlVarC.toString());
            }
            long jTt = pVarUj.tt();
            if (jTt != -1) {
                cVarA.c("Content-Length", Long.toString(jTt));
                cVarA.tt("Transfer-Encoding");
            } else {
                cVarA.c("Transfer-Encoding", "chunked");
                cVarA.tt("Content-Length");
            }
        }
        boolean z10 = false;
        if (yvVarC.c("Host") == null) {
            cVarA.c("Host", com.byazt.kh.ve.c(yvVarC.c(), false));
        }
        if (yvVarC.c("Connection") == null) {
            cVarA.c("Connection", "Keep-Alive");
        }
        if (yvVarC.c("Accept-Encoding") == null && yvVarC.c("Range") == null) {
            cVarA.c("Accept-Encoding", "gzip");
            z10 = true;
        }
        List<com.byazt.eg.t> listC = this.f22465c.c(yvVarC.c());
        if (!listC.isEmpty()) {
            cVarA.c("Cookie", c(listC));
        }
        if (yvVarC.c("User-Agent") == null) {
            cVarA.c("User-Agent", com.byazt.kh.uj.c());
        }
        h hVarC = cVar.c(cVarA.c());
        n.c(this.f22465c, yvVarC.c(), hVarC.sp());
        h.c cVarC = hVarC.i().c(yvVarC);
        if (z10 && "gzip".equalsIgnoreCase(hVarC.c("Content-Encoding")) && n.ve(hVarC)) {
            com.byazt.mk.da daVar = new com.byazt.mk.da(hVarC.x().ve());
            cVarC.c(hVarC.sp().tt().tt("Content-Encoding").tt("Content-Length").c());
            cVarC.c(new x(hVarC.c("Content-Type"), -1L, com.byazt.mk.t.c(daVar)));
        }
        return cVarC.c();
    }

    private String c(List<com.byazt.eg.t> list) {
        StringBuilder sb2 = new StringBuilder();
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (i10 > 0) {
                sb2.append("; ");
            }
            com.byazt.eg.t tVar = list.get(i10);
            sb2.append(tVar.c());
            sb2.append('=');
            sb2.append(tVar.tt());
        }
        return sb2.toString();
    }
}

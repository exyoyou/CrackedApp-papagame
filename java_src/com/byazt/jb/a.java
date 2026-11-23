package com.byazt.jb;

import com.byazt.eg.d;
import com.byazt.eg.gr;
import com.byazt.eg.gt;
import com.byazt.eg.gu;
import com.byazt.eg.h;
import com.byazt.eg.yv;
import com.byazt.mk.my;
import com.byazt.mk.rh;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 63, 34})
public final class a implements com.byazt.yx.ve {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final com.byazt.mk.a f15721a;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public static final List<com.byazt.mk.a> f15722da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final com.byazt.mk.a f15723i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final com.byazt.mk.a f15724n;
    public static final List<com.byazt.mk.a> sl;
    public static final com.byazt.mk.a sp;
    public static final com.byazt.mk.a tt;
    public static final com.byazt.mk.a uj;
    public static final com.byazt.mk.a ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final com.byazt.mk.a f15725x;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final com.byazt.iq.sp f15726c;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final gu f15727t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final gt.c f15728u;
    public final sp yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public i f15729z;

    static {
        com.byazt.mk.a aVarC = com.byazt.mk.a.c("connection");
        tt = aVarC;
        com.byazt.mk.a aVarC2 = com.byazt.mk.a.c(u.c.f97430f);
        ve = aVarC2;
        com.byazt.mk.a aVarC3 = com.byazt.mk.a.c("keep-alive");
        uj = aVarC3;
        com.byazt.mk.a aVarC4 = com.byazt.mk.a.c("proxy-connection");
        f15724n = aVarC4;
        com.byazt.mk.a aVarC5 = com.byazt.mk.a.c("transfer-encoding");
        f15721a = aVarC5;
        com.byazt.mk.a aVarC6 = com.byazt.mk.a.c("te");
        sp = aVarC6;
        com.byazt.mk.a aVarC7 = com.byazt.mk.a.c("encoding");
        f15725x = aVarC7;
        com.byazt.mk.a aVarC8 = com.byazt.mk.a.c("upgrade");
        f15723i = aVarC8;
        f15722da = com.byazt.kh.ve.c(aVarC, aVarC2, aVarC3, aVarC4, aVarC6, aVarC5, aVarC7, aVarC8, ve.ve, ve.uj, ve.f15799n, ve.f15797a);
        sl = com.byazt.kh.ve.c(aVarC, aVarC2, aVarC3, aVarC4, aVarC6, aVarC5, aVarC7, aVarC8);
    }

    public a(gu guVar, gt.c cVar, com.byazt.iq.sp spVar, sp spVar2) {
        this.f15727t = guVar;
        this.f15728u = cVar;
        this.f15726c = spVar;
        this.yp = spVar2;
    }

    @Override // com.byazt.yx.ve
    public rh c(yv yvVar, long j10) {
        return this.f15729z.x();
    }

    @Override // com.byazt.yx.ve
    public void tt() throws IOException {
        this.f15729z.x().close();
    }

    @Override // com.byazt.yx.ve
    public void ve() {
        i iVar = this.f15729z;
        if (iVar != null) {
            iVar.tt(tt.CANCEL);
        }
    }

    public static List<ve> tt(yv yvVar) {
        com.byazt.eg.rh rhVarVe = yvVar.ve();
        ArrayList arrayList = new ArrayList(rhVarVe.c() + 4);
        arrayList.add(new ve(ve.ve, yvVar.tt()));
        arrayList.add(new ve(ve.uj, com.byazt.yx.i.c(yvVar.c())));
        String strC = yvVar.c("Host");
        if (strC != null) {
            arrayList.add(new ve(ve.f15797a, strC));
        }
        arrayList.add(new ve(ve.f15799n, yvVar.c().ve()));
        int iC = rhVarVe.c();
        for (int i10 = 0; i10 < iC; i10++) {
            com.byazt.mk.a aVarC = com.byazt.mk.a.c(rhVarVe.c(i10).toLowerCase(Locale.US));
            if (!f15722da.contains(aVarC)) {
                arrayList.add(new ve(aVarC, rhVarVe.tt(i10)));
            }
        }
        return arrayList;
    }

    @Override // com.byazt.yx.ve
    public void c(yv yvVar) throws IOException {
        if (this.f15729z != null) {
            return;
        }
        i iVarC = this.yp.c(tt(yvVar), yvVar.uj() != null);
        this.f15729z = iVarC;
        com.byazt.mk.gt gtVarN = iVarC.n();
        long jVe = this.f15728u.ve();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        gtVarN.c(jVe, timeUnit);
        this.f15729z.a().c(this.f15728u.uj(), timeUnit);
    }

    @com.byazt.zqa.c(c = {0, 1, 63, 464})
    class c extends com.byazt.mk.x {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f15730c;
        public long tt;

        public c(my myVar) {
            super(myVar);
            this.f15730c = false;
            this.tt = 0L;
        }

        @Override // com.byazt.mk.x, com.byazt.mk.my
        public long c(com.byazt.mk.ve veVar, long j10) throws IOException {
            try {
                long jC = tt().c(veVar, j10);
                if (jC > 0) {
                    this.tt += jC;
                }
                return jC;
            } catch (IOException e10) {
                c(e10);
                throw e10;
            }
        }

        @Override // com.byazt.mk.x, com.byazt.mk.my, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            super.close();
            c(null);
        }

        private void c(IOException iOException) {
            if (this.f15730c) {
                return;
            }
            this.f15730c = true;
            a aVar = a.this;
            aVar.f15726c.c(false, (com.byazt.yx.ve) aVar, this.tt, iOException);
        }
    }

    @Override // com.byazt.yx.ve
    public void c() throws IOException {
        this.yp.tt();
    }

    @Override // com.byazt.yx.ve
    public h.c c(boolean z10) throws IOException {
        h.c cVarC = c(this.f15729z.uj());
        if (z10 && com.byazt.kh.c.f16261c.c(cVarC) == 100) {
            return null;
        }
        return cVarC;
    }

    public static h.c c(List<ve> list) throws IOException {
        com.byazt.eg.rh.c cVar = new com.byazt.eg.rh.c();
        int size = list.size();
        com.byazt.yx.sl slVarC = null;
        for (int i10 = 0; i10 < size; i10++) {
            ve veVar = list.get(i10);
            if (veVar == null) {
                if (slVarC != null && slVarC.tt == 100) {
                    cVar = new com.byazt.eg.rh.c();
                    slVarC = null;
                }
            } else {
                com.byazt.mk.a aVar = veVar.sp;
                String strC = veVar.f15801x.c();
                if (aVar.equals(ve.tt)) {
                    slVarC = com.byazt.yx.sl.c("HTTP/1.1 ".concat(String.valueOf(strC)));
                } else if (!sl.contains(aVar)) {
                    com.byazt.kh.c.f16261c.c(cVar, aVar.c(), strC);
                }
            }
        }
        if (slVarC != null) {
            return new h.c().c(gr.HTTP_2).c(slVarC.tt).c(slVarC.ve).c(cVar.c());
        }
        throw new ProtocolException("Expected ':status' header not present");
    }

    @Override // com.byazt.yx.ve
    public d c(h hVar) throws IOException {
        return new com.byazt.yx.x(hVar.c("Content-Type"), com.byazt.yx.n.c(hVar), com.byazt.mk.t.c(new c(this.f15729z.sp())));
    }
}

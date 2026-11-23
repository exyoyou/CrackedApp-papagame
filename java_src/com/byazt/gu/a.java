package com.byazt.gu;

import android.text.TextUtils;
import com.byazt.eg.gt;
import com.byazt.eg.gu;
import com.byazt.eg.h;
import com.byazt.eg.p;
import com.byazt.eg.qy;
import com.byazt.eg.rl;
import com.byazt.eg.yv;
import com.byazt.gqp.t;
import com.byazt.gqp.yp;
import com.byazt.gqp.z;
import io.netty.handler.codec.http.HttpHeaders;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 17, 34})
public class a extends t {

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public gu f14751t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public com.byazt.gqp.uj f14752u;

    public a(t.c cVar) {
        super(cVar);
        c(cVar);
        this.f14752u = new sp(this.f14751t);
    }

    private void c(t.c cVar) {
        gu.c cVar2 = new gu.c();
        cVar2.gr = (int) cVar.ve;
        cVar2.f13322d = cVar.uj;
        cVar2.zm = (int) cVar.f14713n;
        cVar2.eo = cVar.f14709a;
        cVar2.yv = (int) cVar.sp;
        cVar2.f13333zb = cVar.f14714x;
        cVar2.f13324h = cVar.f14711da;
        cVar2.md = cVar.sl;
        cVar2.c(new ve(cVar.tt));
        List<com.byazt.gqp.i> list = cVar.f14710c;
        if (list != null && !list.isEmpty()) {
            for (final com.byazt.gqp.i iVar : list) {
                cVar2.c(new gt() { // from class: com.byazt.gu.a.1
                    @Override // com.byazt.eg.gt
                    public h c(gt.c cVar3) throws IOException {
                        return ((i) iVar.c(new n(cVar3))).f14755c;
                    }
                });
            }
        }
        this.f14751t = cVar2.c();
    }

    private boolean tt(z zVar) {
        byte[] bArr;
        return zVar != null && zVar.f14722a == z.c.BYTE_ARRAY_TYPE && (bArr = zVar.f14724n) != null && bArr.length > 0;
    }

    private boolean ve(z zVar) {
        return (zVar == null || zVar.f14722a != z.c.STRING_TYPE || TextUtils.isEmpty(zVar.uj)) ? false : true;
    }

    @Override // com.byazt.gqp.t
    public com.byazt.gqp.uj c() {
        return this.f14752u;
    }

    @Override // com.byazt.gqp.t
    public com.byazt.gqp.tt c(yp ypVar) {
        if (ypVar == null) {
            return null;
        }
        yv.c cVar = new yv.c();
        cVar.c(ypVar.c());
        if (ypVar.tt() != null) {
            cVar.c(ypVar.tt().c());
        }
        if (ypVar.a() != null) {
            if (ve(ypVar.a())) {
                cVar.c(ypVar.ve(), p.c(rl.c(ypVar.a().ve.toString()), ypVar.a().uj));
            } else if (c(ypVar.a())) {
                cVar.c(ypVar.ve(), new qy.c().c(qy.f13371n).c(ypVar.a().tt(), ypVar.a().c(), p.c(rl.c(HttpHeaders.Values.MULTIPART_FORM_DATA), ypVar.a().f14724n)).c());
            } else if (tt(ypVar.a())) {
                cVar.c(ypVar.ve(), p.c(rl.c(ypVar.a().ve.toString()), ypVar.a().f14724n));
            }
        }
        if (ypVar.n() != null && ypVar.n().f14680c) {
            cVar.c(new com.byazt.eg.uj.c().c().ve());
        }
        if (ypVar.uj() != null && ypVar.uj().size() > 0) {
            for (Map.Entry<String, List<String>> entry : ypVar.uj().entrySet()) {
                Iterator<String> it2 = entry.getValue().iterator();
                while (it2.hasNext()) {
                    cVar.c(entry.getKey(), it2.next());
                }
            }
        }
        return new uj(this.f14751t.c(cVar.c()));
    }

    private boolean c(z zVar) {
        byte[] bArr;
        return zVar != null && zVar.f14722a == z.c.FILE_TYPE && (bArr = zVar.f14724n) != null && bArr.length > 0;
    }
}

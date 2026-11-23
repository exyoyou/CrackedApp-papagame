package com.byazt.gu;

import com.byazt.eg.h;
import com.byazt.gqp.m;
import com.byazt.gqp.yp;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 17, 15})
public class uj implements com.byazt.gqp.tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.eg.n f14758c;

    public uj(com.byazt.eg.n nVar) {
        this.f14758c = nVar;
    }

    @Override // com.byazt.gqp.tt
    public yp c() {
        return new x(this.f14758c.c());
    }

    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public com.byazt.gqp.tt clone() {
        return new uj(this.f14758c.n());
    }

    @Override // com.byazt.gqp.tt
    public m tt() throws IOException {
        return new i(this.f14758c.tt());
    }

    @Override // com.byazt.gqp.tt
    public boolean uj() {
        return this.f14758c.uj();
    }

    @Override // com.byazt.gqp.tt
    public void ve() {
        this.f14758c.ve();
    }

    @Override // com.byazt.gqp.tt
    public void c(final com.byazt.gqp.ve veVar) {
        this.f14758c.c(new com.byazt.eg.a() { // from class: com.byazt.gu.uj.1
            @Override // com.byazt.eg.a
            public void c(com.byazt.eg.n nVar, IOException iOException) {
                veVar.onFailure(new uj(nVar), iOException);
            }

            @Override // com.byazt.eg.a
            public void c(com.byazt.eg.n nVar, h hVar) throws IOException {
                veVar.onResponse(new uj(nVar), new i(hVar));
            }
        });
    }
}

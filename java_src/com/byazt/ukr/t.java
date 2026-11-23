package com.byazt.ukr;

import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1081, 66})
public class t implements com.byazt.gs.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.va.n f20620c;

    public t(com.byazt.va.n nVar) {
        this.f20620c = nVar;
    }

    @Override // com.byazt.gs.a
    public void c(String str) {
        com.byazt.va.n nVar = this.f20620c;
        if (nVar != null) {
            nVar.c(str);
        }
    }

    @Override // com.byazt.gs.a
    public void tt(String str) {
        com.byazt.va.n nVar = this.f20620c;
        if (nVar != null) {
            nVar.ve(str);
        }
    }

    @Override // com.byazt.gs.a
    public void c(String str, byte[] bArr) {
        com.byazt.va.n nVar = this.f20620c;
        if (nVar != null) {
            nVar.c(str, bArr);
        }
    }

    @Override // com.byazt.gs.a
    public void c(String str, String str2) {
        com.byazt.va.n nVar = this.f20620c;
        if (nVar != null) {
            nVar.tt(str, str2);
        }
    }

    @Override // com.byazt.gs.a
    public com.byazt.gs.n c() {
        com.byazt.va.n nVar = this.f20620c;
        if (nVar == null) {
            return null;
        }
        return new sl(nVar.c());
    }

    @Override // com.byazt.gs.a
    public void c(final com.byazt.gs.ve veVar) {
        com.byazt.va.n nVar = this.f20620c;
        if (nVar != null) {
            nVar.c(new com.byazt.mh.c() { // from class: com.byazt.ukr.t.1
                @Override // com.byazt.mh.c
                public void c(com.byazt.va.uj ujVar, com.byazt.hm.tt ttVar) {
                    if (veVar != null) {
                        veVar.c(new a(ujVar), new sp(ttVar));
                    }
                }

                @Override // com.byazt.mh.c
                public void c(com.byazt.va.uj ujVar, IOException iOException) {
                    if (veVar != null) {
                        veVar.c(new a(ujVar), iOException);
                    }
                }
            });
        }
    }
}

package com.byazt.ukr;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1081, 72})
public class da implements com.byazt.gs.tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.va.ve f20617c;

    public da(com.byazt.va.ve veVar) {
        this.f20617c = veVar;
    }

    @Override // com.byazt.gs.tt
    public void c(String str) {
        com.byazt.va.ve veVar = this.f20617c;
        if (veVar != null) {
            veVar.c(str);
        }
    }

    @Override // com.byazt.gs.tt
    public void c(String str, String str2) {
        com.byazt.va.ve veVar = this.f20617c;
        if (veVar != null) {
            veVar.tt(str, str2);
        }
    }

    @Override // com.byazt.gs.tt
    public com.byazt.gs.n c() {
        com.byazt.va.ve veVar = this.f20617c;
        if (veVar == null) {
            return null;
        }
        return new sl(veVar.c());
    }
}

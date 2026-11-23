package com.byazt.ydv;

import com.byazt.gqp.m;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 842, 34})
public class a extends c {
    public m ve;

    public a(m mVar, n nVar) {
        com.byazt.gqp.a aVarSp;
        this.ve = mVar;
        this.f22166c = new ArrayList();
        if (mVar != null && (aVarSp = mVar.sp()) != null) {
            for (int i10 = 0; i10 < aVarSp.c(); i10++) {
                this.f22166c.add(new com.byazt.utw.a.tt(aVarSp.c(i10), aVarSp.tt(i10)));
            }
        }
        this.tt = nVar;
    }

    @Override // com.byazt.ydv.c
    public int c() {
        return this.ve.ve();
    }

    @Override // com.byazt.ydv.c
    public boolean tt() {
        return this.ve.ve() >= 200 && this.ve.ve() < 300;
    }

    @Override // com.byazt.ydv.c
    public InputStream uj() {
        return this.ve.a().ve();
    }

    @Override // com.byazt.ydv.c
    public List<com.byazt.utw.a.tt> ve() {
        return this.f22166c;
    }

    @Override // com.byazt.ydv.c
    public String c(String str, String str2) {
        return c(str) != null ? c(str).tt : str2;
    }
}

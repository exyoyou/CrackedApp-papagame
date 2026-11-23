package com.byazt.hw;

import com.byazt.gqp.i;
import com.byazt.gqp.m;
import com.byazt.gqp.yp;
import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 77, 34})
public class a implements i {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f15127c;

    public void c(int i10) {
        this.f15127c = i10;
    }

    @Override // com.byazt.gqp.i
    public m c(i.c cVar) throws IOException {
        IOException iOException;
        yp ypVarC = cVar.c();
        if (sp.c().c(this.f15127c).tt() != null) {
            sp.c().c(this.f15127c).tt().n();
        }
        String string = ypVarC.tt().toString();
        String strC = sp.c().c(this.f15127c).c(string);
        if (!string.equals(strC)) {
            ypVarC = ypVarC.sp().c(strC).tt();
        }
        m mVarC = null;
        try {
            iOException = null;
            mVarC = cVar.c(ypVarC);
        } catch (Exception e10) {
            iOException = new IOException(e10.getMessage());
            sp.c().c(this.f15127c).c(ypVarC, e10);
        }
        sp.c().c(this.f15127c).c(ypVarC, mVarC);
        if (iOException == null) {
            return mVarC == null ? cVar.c(ypVarC) : mVarC;
        }
        throw iOException;
    }
}

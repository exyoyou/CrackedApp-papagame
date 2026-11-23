package com.byazt.er;

import android.os.RemoteException;
import com.byazt.uk.uj;
import com.byazt.uk.yp;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 964, 13})
public class tt extends uj.c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final yp f13567c;

    public tt(yp ypVar) {
        this.f13567c = ypVar;
    }

    @Override // com.byazt.uk.uj
    public void c(String str, int i10, String str2) throws RemoteException {
        yp ypVar = this.f13567c;
        if (ypVar != null) {
            ypVar.c(str, i10, str2);
        }
    }
}

package com.byazt.vm;

import android.os.Bundle;
import android.os.RemoteException;
import com.umeng.analytics.pro.bb;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 165, 72})
public class da extends com.byazt.kbg.c.AbstractBinderC0353c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile String f21228c = "";

    @Override // com.byazt.kbg.c
    public void c(int i10, long j10, boolean z10, float f10, double d10, String str) throws RemoteException {
    }

    @Override // com.byazt.kbg.c
    public void c(int i10, Bundle bundle) throws RemoteException {
        if (i10 != 0 || bundle == null) {
            return;
        }
        this.f21228c = bundle.getString(bb.c.f84371b);
    }

    public String c() {
        return this.f21228c;
    }
}

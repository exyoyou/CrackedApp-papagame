package com.byazt.vm;

import android.os.Bundle;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 165, 158})
public class sl extends com.byazt.kbg.c.AbstractBinderC0353c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile boolean f21252c = false;

    @Override // com.byazt.kbg.c
    public void c(int i10, long j10, boolean z10, float f10, double d10, String str) throws RemoteException {
    }

    @Override // com.byazt.kbg.c
    public void c(int i10, Bundle bundle) throws RemoteException {
        if (i10 != 0 || bundle == null) {
            return;
        }
        this.f21252c = bundle.getBoolean("oa_id_limit_state");
    }

    public boolean c() {
        return this.f21252c;
    }
}

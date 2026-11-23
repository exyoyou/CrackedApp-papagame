package com.byazt.zz;

import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 189, 190})
public class CSJIndependentProcessDownloadService extends CSJDownloadService {
    @Override // com.byazt.zz.CSJDownloadService, android.app.Service
    public void onCreate() {
        super.onCreate();
        ve.c(this);
        if (ve.pu() == null) {
            ve.c(new qy());
        }
        z zVarP = ve.p();
        this.f23077c = zVarP;
        zVarP.c(new WeakReference(this));
    }
}

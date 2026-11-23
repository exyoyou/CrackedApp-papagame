package com.byazt.ymw;

import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import com.byazt.omf.sl;
import com.switfpass.pay.thread.f;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, f.f82695o, 20})
public class c extends sl.c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Handler f22347c = new Handler(Looper.getMainLooper());
    public com.byazt.aas.n.c tt;

    public c(com.byazt.aas.n.c cVar) {
        this.tt = cVar;
    }

    @Override // com.byazt.omf.sl
    public void tt() throws RemoteException {
        c(new Runnable() { // from class: com.byazt.ymw.c.2
            @Override // java.lang.Runnable
            public void run() {
                if (c.this.tt != null) {
                    c.this.tt.tt();
                }
            }
        });
    }

    @Override // com.byazt.omf.sl
    public void ve() throws RemoteException {
        c(new Runnable() { // from class: com.byazt.ymw.c.3
            @Override // java.lang.Runnable
            public void run() {
                if (c.this.tt != null) {
                    c.this.tt.ve();
                }
            }
        });
    }

    @Override // com.byazt.omf.sl
    public void c() throws RemoteException {
        c(new Runnable() { // from class: com.byazt.ymw.c.1
            @Override // java.lang.Runnable
            public void run() {
                if (c.this.tt != null) {
                    c.this.tt.c();
                }
            }
        });
    }

    private void c(Runnable runnable) {
        this.f22347c.post(runnable);
    }
}

package com.byazt.ymw;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import com.byazt.omf.u;
import com.switfpass.pay.thread.f;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, f.f82695o, 54})
public class ve extends u.c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.byazt.gl.c f22367c;
    public Handler tt = new Handler(Looper.getMainLooper());

    public ve(com.byazt.gl.c cVar) {
        this.f22367c = cVar;
    }

    private void sp() {
        this.f22367c = null;
        this.tt = null;
    }

    private Handler x() {
        Handler handler = this.tt;
        if (handler != null) {
            return handler;
        }
        Handler handler2 = new Handler(Looper.getMainLooper());
        this.tt = handler2;
        return handler2;
    }

    @Override // com.byazt.omf.u
    public void n() throws RemoteException {
        x().post(new Runnable() { // from class: com.byazt.ymw.ve.5
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.gl.c cVar = ve.this.f22367c;
                if (cVar != null) {
                    cVar.uj();
                }
            }
        });
    }

    @Override // com.byazt.omf.u
    public void tt() throws RemoteException {
        x().post(new Runnable() { // from class: com.byazt.ymw.ve.2
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.gl.c cVar = ve.this.f22367c;
                if (cVar != null) {
                    cVar.c();
                }
            }
        });
    }

    @Override // com.byazt.omf.u
    public void uj() throws RemoteException {
        x().post(new Runnable() { // from class: com.byazt.ymw.ve.4
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.gl.c cVar = ve.this.f22367c;
                if (cVar != null) {
                    cVar.ve();
                }
            }
        });
    }

    @Override // com.byazt.omf.u
    public void ve() throws RemoteException {
        x().post(new Runnable() { // from class: com.byazt.ymw.ve.3
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.gl.c cVar = ve.this.f22367c;
                if (cVar != null) {
                    cVar.tt();
                }
            }
        });
    }

    @Override // com.byazt.omf.u
    public void c() throws RemoteException {
        sp();
    }

    @Override // com.byazt.omf.u
    public void c(final Bundle bundle) throws RemoteException {
        x().post(new Runnable() { // from class: com.byazt.ymw.ve.1
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.gl.c cVar = ve.this.f22367c;
                if (cVar != null) {
                    cVar.c(bundle);
                }
            }
        });
    }
}

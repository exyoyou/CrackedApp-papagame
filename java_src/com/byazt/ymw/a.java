package com.byazt.ymw;

import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import com.byazt.omf.nu;
import com.switfpass.pay.thread.f;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, f.f82695o, 34})
public class a extends nu.c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile com.byazt.pop.c f22337c;
    public Handler tt = new Handler(Looper.getMainLooper());

    public a(com.byazt.pop.c cVar) {
        this.f22337c = cVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c(com.byazt.pop.c cVar) {
        return cVar != null;
    }

    private Handler uj() {
        Handler handler = this.tt;
        if (handler != null) {
            return handler;
        }
        Handler handler2 = new Handler(Looper.getMainLooper());
        this.tt = handler2;
        return handler2;
    }

    @Override // com.byazt.omf.nu
    public void tt(final long j10, final long j11, final String str, final String str2) throws RemoteException {
        if (this.f22337c != null) {
            uj().post(new Runnable() { // from class: com.byazt.ymw.a.3
                @Override // java.lang.Runnable
                public void run() {
                    com.byazt.pop.c cVar = a.this.f22337c;
                    if (a.this.c(cVar)) {
                        cVar.tt(j10, j11, str, str2);
                    }
                }
            });
        }
    }

    @Override // com.byazt.omf.nu
    public void ve(final long j10, final long j11, final String str, final String str2) throws RemoteException {
        if (this.f22337c != null) {
            uj().post(new Runnable() { // from class: com.byazt.ymw.a.4
                @Override // java.lang.Runnable
                public void run() {
                    com.byazt.pop.c cVar = a.this.f22337c;
                    if (a.this.c(cVar)) {
                        cVar.ve(j10, j11, str, str2);
                    }
                }
            });
        }
    }

    public void ve() {
        this.f22337c = null;
        this.tt = null;
    }

    @Override // com.byazt.omf.nu
    public void c() throws RemoteException {
        if (this.f22337c != null) {
            uj().post(new Runnable() { // from class: com.byazt.ymw.a.1
                @Override // java.lang.Runnable
                public void run() {
                    com.byazt.pop.c cVar = a.this.f22337c;
                    if (a.this.c(cVar)) {
                        cVar.c();
                    }
                }
            });
        }
    }

    @Override // com.byazt.omf.nu
    public void c(final long j10, final long j11, final String str, final String str2) throws RemoteException {
        if (this.f22337c != null) {
            uj().post(new Runnable() { // from class: com.byazt.ymw.a.2
                @Override // java.lang.Runnable
                public void run() {
                    com.byazt.pop.c cVar = a.this.f22337c;
                    if (a.this.c(cVar)) {
                        cVar.c(j10, j11, str, str2);
                    }
                }
            });
        }
    }

    @Override // com.byazt.omf.nu
    public void c(final long j10, final String str, final String str2) throws RemoteException {
        if (this.f22337c != null) {
            uj().post(new Runnable() { // from class: com.byazt.ymw.a.5
                @Override // java.lang.Runnable
                public void run() {
                    com.byazt.pop.c cVar = a.this.f22337c;
                    if (a.this.c(cVar)) {
                        cVar.c(j10, str, str2);
                    }
                }
            });
        }
    }

    @Override // com.byazt.omf.nu
    public void c(final String str, final String str2) throws RemoteException {
        if (this.f22337c != null) {
            uj().post(new Runnable() { // from class: com.byazt.ymw.a.6
                @Override // java.lang.Runnable
                public void run() {
                    com.byazt.pop.c cVar = a.this.f22337c;
                    if (a.this.c(cVar)) {
                        String str3 = str;
                        if (str3 == null) {
                            str3 = "";
                        }
                        String str4 = str2;
                        cVar.c(str3, str4 != null ? str4 : "");
                    }
                }
            });
        }
    }
}

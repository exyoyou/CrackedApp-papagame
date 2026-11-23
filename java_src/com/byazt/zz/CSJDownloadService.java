package com.byazt.zz;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import java.lang.ref.WeakReference;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 189, 913})
public class CSJDownloadService extends Service {
    public static final String tt = "CSJDownloadService";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public z f23077c;

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        String str = tt;
        StringBuilder sb2 = new StringBuilder("onBind downloadServiceHandler != null:");
        sb2.append(this.f23077c != null);
        com.byazt.x.c.tt(str, sb2.toString());
        z zVar = this.f23077c;
        if (zVar != null) {
            return zVar.c(intent);
        }
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        ve.c(this);
        z zVarYv = ve.yv();
        this.f23077c = zVarYv;
        zVarYv.c(new WeakReference(this));
    }

    @Override // android.app.Service
    public void onDestroy() {
        if (com.byazt.x.c.c()) {
            com.byazt.x.c.tt(tt, "Service onDestroy");
        }
        z zVar = this.f23077c;
        if (zVar != null) {
            zVar.uj();
            this.f23077c = null;
        }
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(final Intent intent, final int i10, final int i11) {
        if (com.byazt.x.c.c()) {
            com.byazt.x.c.tt(tt, "DownloadService onStartCommand");
        }
        this.f23077c.ve();
        ExecutorService executorServiceT = ve.t();
        if (executorServiceT != null) {
            executorServiceT.execute(new Runnable() { // from class: com.byazt.zz.CSJDownloadService.1
                @Override // java.lang.Runnable
                public void run() {
                    z zVar = CSJDownloadService.this.f23077c;
                    if (zVar != null) {
                        zVar.c(intent, i10, i11);
                    }
                }
            });
        }
        return ve.da() ? 2 : 3;
    }
}

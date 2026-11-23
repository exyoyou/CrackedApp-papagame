package com.byazt.zz;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Binder;
import android.os.IBinder;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 189, 1844})
public class SqlDownloadCacheService extends Service {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f23082c = "SqlDownloadCacheService";

    public static void c(Context context, ServiceConnection serviceConnection) {
        if (context != null) {
            try {
                Intent intent = new Intent(context, (Class<?>) SqlDownloadCacheService.class);
                if (serviceConnection != null) {
                    context.bindService(intent, serviceConnection, 1);
                }
                context.startService(intent);
            } catch (Throwable th) {
                com.byazt.nr.m.tt(f23082c, "startServiceAndBind fail", th);
            }
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        gt gtVarA;
        da daVarZm = ve.zm();
        if (daVarZm instanceof com.byazt.b.uj) {
            gtVarA = ((com.byazt.b.uj) daVarZm).a();
        } else {
            gtVarA = daVarZm instanceof gt ? (gt) daVarZm : null;
        }
        return gtVarA instanceof IBinder ? (IBinder) gtVarA : new Binder();
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        ve.c(getApplicationContext());
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i10, int i11) {
        int iOnStartCommand = super.onStartCommand(intent, i10, i11);
        if (ve.da()) {
            return 2;
        }
        return iOnStartCommand;
    }
}

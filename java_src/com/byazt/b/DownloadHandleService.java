package com.byazt.b;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 223, 2131})
public class DownloadHandleService extends Service {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f11800c = "DownloadHandleService";

    private void c(Intent intent) {
        final int intExtra;
        if (intent == null) {
            return;
        }
        String action = intent.getAction();
        if (TextUtils.isEmpty(action) || (intExtra = intent.getIntExtra("extra_download_id", 0)) == 0) {
            return;
        }
        if (action.equals("com.ss.android.downloader.action.DOWNLOAD_WAKEUP")) {
            com.byazt.zz.ve.t().execute(new Runnable() { // from class: com.byazt.b.DownloadHandleService.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        com.byazt.zz.uj.c().z(intExtra);
                    } catch (Exception e10) {
                        com.byazt.nr.m.c(e10);
                    }
                }
            });
        } else if (action.equals("com.ss.android.downloader.action.PROCESS_NOTIFY")) {
            com.byazt.zz.uj.c().nu(intExtra);
        } else if (action.equals("com.ss.android.downloader.action.MULTI_PROCESS_NOTIFY")) {
            com.byazt.zz.ve.tt();
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        com.byazt.zz.ve.c(this);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i10, int i11) {
        super.onStartCommand(intent, i10, i11);
        c(intent);
        return 2;
    }
}

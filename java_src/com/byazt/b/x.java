package com.byazt.b;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import com.byazt.zz.CSJDownloadService;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 223, 71})
public class x extends com.byazt.zz.c {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final String f11847n = "x";

    @Override // com.byazt.zz.c, com.byazt.zz.z
    public void c(Intent intent, int i10, int i11) {
        if (com.byazt.x.c.c()) {
            com.byazt.x.c.tt(f11847n, "onStartCommand");
        }
        if (!com.byazt.w.c.c(262144)) {
            this.tt = true;
        }
        n();
    }

    @Override // com.byazt.zz.c
    public void startService(Context context, ServiceConnection serviceConnection) {
        try {
            context.startService(new Intent(context, (Class<?>) CSJDownloadService.class));
        } catch (Throwable th) {
            com.byazt.nr.m.c(th);
        }
    }

    @Override // com.byazt.zz.c
    public void stopService(Context context, ServiceConnection serviceConnection) {
        context.stopService(new Intent(context, (Class<?>) CSJDownloadService.class));
        this.tt = false;
    }

    @Override // com.byazt.zz.c, com.byazt.zz.z
    public void ve() {
        if (com.byazt.w.c.c(262144)) {
            this.tt = true;
            this.uj = false;
            if (com.byazt.x.c.c()) {
                com.byazt.x.c.tt(f11847n, "onStartCommandOnMainThread");
            }
        }
    }
}

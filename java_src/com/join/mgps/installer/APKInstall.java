package com.join.mgps.installer;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageInstaller;
import android.os.Build;
import androidx.annotation.RequiresApi;
import com.bykv.vk.component.ttvideo.player.C;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes3.dex */
public final class APKInstall {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f71722a = "APKInstall";

    private static class InstallReceiver extends BroadcastReceiver {
        private InstallReceiver() {
        }

        private void a(Context context, Intent intent) {
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
            context.startActivity(intent);
        }

        @Override // android.content.BroadcastReceiver
        @RequiresApi(api = 21)
        public void onReceive(Context context, Intent i10) {
            PackageInstaller packageInstaller;
            PackageInstaller.SessionInfo sessionInfo;
            int intExtra = i10.getIntExtra("android.content.pm.extra.STATUS", 4);
            if (intExtra == -1) {
                a(context, (Intent) i10.getParcelableExtra("android.intent.extra.INTENT"));
                return;
            }
            if (intExtra != 0) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("onReceive: status=");
                sb2.append(intExtra);
                sb2.append(" message=");
                sb2.append(i10.getStringExtra("android.content.pm.extra.STATUS_MESSAGE"));
                int intExtra2 = i10.getIntExtra("android.content.pm.extra.SESSION_ID", 0);
                if (intExtra2 <= 0 || (sessionInfo = (packageInstaller = context.getPackageManager().getPackageInstaller()).getSessionInfo(intExtra2)) == null) {
                    return;
                }
                packageInstaller.abandonSession(sessionInfo.getSessionId());
            }
        }
    }

    @RequiresApi(api = 21)
    public static void a(Context context, File apk) {
        PendingIntent broadcast = PendingIntent.getBroadcast(context, 0, new Intent(f71722a).setPackage(context.getPackageName()), 167772160);
        PackageInstaller packageInstaller = context.getPackageManager().getPackageInstaller();
        PackageInstaller.SessionParams sessionParams = new PackageInstaller.SessionParams(1);
        if (Build.VERSION.SDK_INT >= 31) {
            sessionParams.setRequireUserAction(2);
        }
        try {
            PackageInstaller.Session sessionOpenSession = packageInstaller.openSession(packageInstaller.createSession(sessionParams));
            try {
                c(new FileInputStream(apk), sessionOpenSession.openWrite(apk.getName(), 0L, apk.length()));
                sessionOpenSession.commit(broadcast.getIntentSender());
                sessionOpenSession.close();
            } catch (Throwable th) {
                if (sessionOpenSession != null) {
                    try {
                        sessionOpenSession.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (IOException unused) {
        }
    }

    public static void b(Context context) {
        context.registerReceiver(new InstallReceiver(), new IntentFilter(f71722a));
    }

    private static void c(InputStream in2, OutputStream out) throws IOException {
        byte[] bArr = new byte[16384];
        while (true) {
            int i10 = in2.read(bArr, 0, 16384);
            if (i10 < 0) {
                return;
            } else {
                out.write(bArr, 0, i10);
            }
        }
    }
}

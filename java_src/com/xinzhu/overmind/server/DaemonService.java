package com.xinzhu.overmind.server;

import android.annotation.SuppressLint;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import androidx.core.app.NotificationCompat;
import androidx.core.internal.view.SupportMenu;
import com.aggmoread.sdk.z.a.j.u;
import com.xinzhu.overmind.Overmind;

/* JADX INFO: loaded from: classes8.dex */
public class DaemonService extends Service {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f89530b = "DaemonService";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f89531c = (int) (System.currentTimeMillis() / 1000);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f89532d = "daemon_overmind";

    public static class DaemonInnerService extends Service {
        @Override // android.app.Service
        public IBinder onBind(Intent intent) {
            return null;
        }

        @Override // android.app.Service
        public void onCreate() {
            super.onCreate();
        }

        @Override // android.app.Service
        public void onDestroy() {
            super.onDestroy();
        }

        @Override // android.app.Service
        public int onStartCommand(Intent intent, int i10, int i11) {
            ((NotificationManager) getSystemService("notification")).cancel(DaemonService.f89531c);
            stopSelf();
            return super.onStartCommand(intent, i10, i11);
        }
    }

    @SuppressLint({"NewApi"})
    private void b() {
        NotificationManager notificationManager = (NotificationManager) getSystemService("notification");
        if (com.xinzhu.overmind.utils.e.x()) {
            NotificationChannel notificationChannelA = u.a(f89532d, "overmind", 4);
            notificationChannelA.enableLights(true);
            notificationChannelA.setLightColor(SupportMenu.CATEGORY_MASK);
            notificationChannelA.setShowBadge(true);
            notificationChannelA.setLockscreenVisibility(1);
            notificationManager.createNotificationChannel(notificationChannelA);
        }
    }

    private void c() {
        NotificationCompat.Builder priority = new NotificationCompat.Builder(getApplicationContext(), f89532d).setPriority(2);
        if (Overmind.get().getNotificationSmallIcon() > 0) {
            priority.setSmallIcon(Overmind.get().getNotificationSmallIcon());
        }
        if (Overmind.get().getNotificationLargeIcon() != null) {
            priority.setLargeIcon(Overmind.get().getNotificationLargeIcon());
        }
        if (com.xinzhu.overmind.utils.e.f()) {
            startForeground(f89531c, priority.build(), 1);
        } else {
            startForeground(f89531c, priority.build());
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        b();
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i10, int i11) {
        startService(new Intent(this, (Class<?>) DaemonInnerService.class));
        if (!com.xinzhu.overmind.utils.e.x()) {
            return 1;
        }
        c();
        return 1;
    }
}

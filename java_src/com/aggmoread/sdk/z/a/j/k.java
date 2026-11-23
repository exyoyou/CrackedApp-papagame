package com.aggmoread.sdk.z.a.j;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;

/* JADX INFO: loaded from: classes7.dex */
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private NotificationCompat.Builder f3585a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private NotificationManager f3586b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f3587c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f3588d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f3589e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private PendingIntent f3590f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f3591g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f3592h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f3593i;

    public k(Context context, int i10, PendingIntent pendingIntent, String str, String str2, String str3, int i11) {
        this.f3586b = (NotificationManager) context.getSystemService("notification");
        this.f3591g = i10;
        this.f3587c = str2;
        this.f3588d = str3;
        this.f3589e = str;
        this.f3592h = i11;
        this.f3590f = pendingIntent;
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationChannel notificationChannelA = u.a(str, "下载通知", 2);
            try {
                notificationChannelA.setSound(null, null);
                notificationChannelA.enableVibration(false);
                notificationChannelA.enableLights(false);
            } catch (Exception unused) {
            }
            this.f3586b.createNotificationChannel(notificationChannelA);
        }
        this.f3585a = new NotificationCompat.Builder(context, str).setWhen(System.currentTimeMillis()).setAutoCancel(false).setOngoing(true).setOnlyAlertOnce(true).setPriority(2);
        f();
        c();
        d();
    }

    private void c() {
        if (TextUtils.isEmpty(this.f3588d)) {
            return;
        }
        this.f3585a.setContentText(this.f3588d);
    }

    private void e() {
        PendingIntent pendingIntent = this.f3590f;
        if (pendingIntent != null) {
            this.f3585a.setContentIntent(pendingIntent);
        }
    }

    private void f() {
        if (TextUtils.isEmpty(this.f3587c)) {
            return;
        }
        this.f3585a.setContentTitle(this.f3587c);
    }

    public void a() {
        this.f3586b.cancel(this.f3591g);
    }

    public boolean b() {
        return this.f3593i;
    }

    public void d() {
        int i10 = this.f3592h;
        if (i10 != 0) {
            this.f3585a.setSmallIcon(i10);
        }
    }

    public void g() {
        this.f3588d = "已经安装,点击启动!";
        this.f3585a.setAutoCancel(true);
        this.f3585a.setOngoing(false);
        e();
        c();
        this.f3586b.notify(this.f3591g, this.f3585a.build());
    }

    public String toString() {
        return "DownloadNotification{builder=" + this.f3585a + ", notificationManager=" + this.f3586b + ", title='" + this.f3587c + "', desc='" + this.f3588d + "', channelId='" + this.f3589e + "', pendingIntent=" + this.f3590f + ", id=" + this.f3591g + ", icon=" + this.f3592h + '}';
    }

    public void a(int i10) {
        com.aggmoread.sdk.z.a.d.d("DownloadNotification", "show#1 = " + i10);
        f();
        c();
        this.f3585a.setProgress(100, i10, false);
        this.f3586b.notify(this.f3591g, this.f3585a.build());
    }

    public void a(Bitmap bitmap) {
        if (bitmap != null) {
            this.f3585a.setLargeIcon(bitmap);
            this.f3586b.notify(this.f3591g, this.f3585a.build());
            this.f3593i = true;
        }
    }

    public void a(o oVar) {
        com.aggmoread.sdk.z.a.d.d("DownloadNotification", "show#2 enter,downloadState = " + oVar + " , id = " + this.f3591g);
        f();
        if (oVar == o.f3630d) {
            this.f3588d = "已经下载,点击安装!";
            e();
        } else if (oVar == o.f3631e) {
            this.f3585a.setAutoCancel(true);
            this.f3585a.setOngoing(false);
            this.f3588d = "下载失败";
        } else {
            this.f3585a.setProgress(100, 0, true);
        }
        c();
        this.f3586b.notify(this.f3591g, this.f3585a.build());
    }

    public void a(String str) {
        com.aggmoread.sdk.z.a.d.d("DownloadNotification", "show#3 enter");
        this.f3588d = str;
        f();
        c();
        this.f3586b.notify(this.f3591g, this.f3585a.build());
    }
}

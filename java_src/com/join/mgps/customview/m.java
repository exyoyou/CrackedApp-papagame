package com.join.mgps.customview;

import android.annotation.TargetApi;
import android.app.AppOpsManager;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.os.Bundle;
import android.widget.RemoteViews;
import androidx.annotation.RequiresApi;
import androidx.core.app.NotificationCompat;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.t2;

/* JADX INFO: loaded from: classes3.dex */
public class m {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static int f66681f = 1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static String f66682g = "BROADCAST_ACTION_CLICK";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static m f66683h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private NotificationManager f66684a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private RemoteViews f66685b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f66686c = "channelId_JPush";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f66687d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Notification f66688e;

    @TargetApi(26)
    private void c() {
        k1.d.a();
        this.f66684a.createNotificationChannel(com.aggmoread.sdk.z.a.j.u.a(this.f66686c, "channelName", 3));
    }

    public static m d() {
        if (f66683h == null) {
            f66683h = new m();
        }
        return f66683h;
    }

    public void a() {
        this.f66684a.cancel(f66681f);
    }

    public void b(Context context) {
        try {
            Object systemService = context.getSystemService("statusbar");
            systemService.getClass().getMethod("collapsePanels", new Class[0]).invoke(systemService, new Object[0]);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @RequiresApi(api = 19)
    public boolean e(Context context) {
        if (Build.VERSION.SDK_INT >= 26 && ((NotificationManager) context.getSystemService("notification")).getImportance() == 0) {
            return false;
        }
        AppOpsManager appOpsManager = (AppOpsManager) context.getSystemService("appops");
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        String packageName = context.getApplicationContext().getPackageName();
        int i10 = applicationInfo.uid;
        try {
            Class<?> cls = Class.forName(AppOpsManager.class.getName());
            Class<?> cls2 = Integer.TYPE;
            return ((Integer) cls.getMethod("checkOpNoThrow", cls2, cls2, String.class).invoke(appOpsManager, Integer.valueOf(((Integer) cls.getDeclaredField("OP_POST_NOTIFICATION").get(Integer.class)).intValue()), Integer.valueOf(i10), packageName)).intValue() == 0;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public void f(Context context, Bundle bundle) {
        String string = bundle.getString("JPushInterface.EXTRA_TITLE");
        String string2 = bundle.getString("JPushInterface.EXTRA_MESSAGE");
        if (t2.h(string)) {
            string = context.getResources().getString(R.string.app_name);
        }
        this.f66684a = (NotificationManager) context.getSystemService("notification");
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 26) {
            this.f66684a.createNotificationChannel(com.aggmoread.sdk.z.a.j.u.a("channel_1", "jpush通知", 4));
        }
        Intent intent = new Intent(f66682g);
        intent.putExtras(bundle);
        this.f66688e = new NotificationCompat.Builder(context, this.f66686c).setSmallIcon(R.drawable.icon).setContentTitle(string).setContentText(string2).setContentIntent(PendingIntent.getBroadcast(context, 1, intent, 134217728)).setAutoCancel(true).setOnlyAlertOnce(true).setWhen(System.currentTimeMillis()).setTicker(string).setLargeIcon(BitmapFactory.decodeResource(context.getResources(), R.drawable.icon)).setDefaults(7).setVibrate(new long[]{0}).setSound(null).setPriority(2).build();
        if (i10 >= 26) {
            c();
        }
        this.f66684a.notify(f66681f, this.f66688e);
    }
}

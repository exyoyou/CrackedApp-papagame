package com.join.mgps.Util;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.PowerManager;
import android.os.SystemClock;
import androidx.core.app.NotificationCompat;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.MGMainActivity_;
import com.join.mgps.db.tables.JPushRecordTable;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes4.dex */
public class c1 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f49526c = "JPUSH_APPKEY";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f49527d = 1001;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f49528e = 1002;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f49529a = "JPushUtils";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Handler f49530b = new a();

    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            int i10 = msg.what;
            if (i10 == 1001) {
                String unused = c1.this.f49529a;
                return;
            }
            if (i10 == 1002) {
                String unused2 = c1.this.f49529a;
                return;
            }
            String unused3 = c1.this.f49529a;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Unhandled msg - ");
            sb2.append(msg.what);
        }
    }

    public static void a(Context context, IntentDateBean intentDateBean, String title, String message) {
        Intent intent = new Intent(context, (Class<?>) MGMainActivity_.class);
        intent.setFlags(335544320);
        intent.putExtra("intentDateBean", intentDateBean);
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        if (Build.VERSION.SDK_INT >= 26) {
            notificationManager.createNotificationChannel(com.aggmoread.sdk.z.a.j.u.a("channel_1", "jpush通知", 4));
        }
        Resources resources = context.getResources();
        intent.setFlags(335544320);
        PendingIntent activity = PendingIntent.getActivity(context, (int) SystemClock.uptimeMillis(), intent, 134217728);
        notificationManager.notify(1, new NotificationCompat.Builder(context).setSmallIcon(R.drawable.icon).setContentText(message).setContentTitle(title).setAutoCancel(true).setContentIntent(activity).setChannelId("channel_1").setLargeIcon(BitmapFactory.decodeResource(resources, R.drawable.icon)).build());
        c(context);
    }

    public static void c(Context context) {
        PowerManager.WakeLock wakeLockNewWakeLock = ((PowerManager) context.getSystemService("power")).newWakeLock(805306394, "wf:lock");
        wakeLockNewWakeLock.setReferenceCounted(false);
        wakeLockNewWakeLock.acquire();
        if (wakeLockNewWakeLock.isHeld()) {
            try {
                wakeLockNewWakeLock.release();
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public static String d(Context context) {
        String string;
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            Bundle bundle = applicationInfo != null ? applicationInfo.metaData : null;
            if (bundle == null || (string = bundle.getString("JPUSH_APPKEY")) == null) {
                return null;
            }
            try {
                if (string.length() != 24) {
                    return null;
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
            return string;
        } catch (PackageManager.NameNotFoundException unused2) {
            return null;
        }
    }

    public static boolean e(String s10) {
        return s10 == null || s10.length() == 0 || s10.trim().length() == 0;
    }

    public static boolean f(String s10) {
        return Pattern.compile("^[一-龥0-9a-zA-Z_-]{0,}$").matcher(s10).matches();
    }

    public static void g(Context context, String packageName) {
        context.getPackageManager();
        new Intent("android.intent.action.MAIN");
        context.startActivity(context.getPackageManager().getLaunchIntentForPackage(packageName));
    }

    public static void h(JPushRecordTable myJPushRecordTable) {
        List<JPushRecordTable> listD = t6.z.n().d();
        if (listD == null && listD.size() == 0) {
            JPushRecordTable jPushRecordTable = new JPushRecordTable();
            jPushRecordTable.setContent(myJPushRecordTable.getContent());
            jPushRecordTable.setTitle(myJPushRecordTable.getTitle());
            jPushRecordTable.setPush_time(myJPushRecordTable.getPush_time());
            jPushRecordTable.setCreate_time(myJPushRecordTable.getCreate_time());
            jPushRecordTable.setRetention_time(myJPushRecordTable.getRetention_time());
            jPushRecordTable.setLink_type(myJPushRecordTable.getLink_type());
            jPushRecordTable.setCrc_link_type_val(myJPushRecordTable.getCrc_link_type_val());
            t6.z.n().m(jPushRecordTable);
            return;
        }
        for (JPushRecordTable jPushRecordTable2 : listD) {
            if (jPushRecordTable2.getContent().equals(myJPushRecordTable.getContent())) {
                t6.z.n().delete(jPushRecordTable2);
            }
        }
        JPushRecordTable jPushRecordTable3 = new JPushRecordTable();
        jPushRecordTable3.setContent(myJPushRecordTable.getContent());
        jPushRecordTable3.setTitle(myJPushRecordTable.getTitle());
        jPushRecordTable3.setPush_time(myJPushRecordTable.getPush_time());
        jPushRecordTable3.setCreate_time(myJPushRecordTable.getCreate_time());
        jPushRecordTable3.setRetention_time(myJPushRecordTable.getRetention_time());
        jPushRecordTable3.setLink_type(myJPushRecordTable.getLink_type());
        jPushRecordTable3.setCrc_link_type_val(myJPushRecordTable.getCrc_link_type_val());
        t6.z.n().m(jPushRecordTable3);
    }

    public static void i(Context context) {
        List<JPushRecordTable> listD = t6.z.n().d();
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (listD == null || listD.size() <= 0) {
            return;
        }
        for (JPushRecordTable jPushRecordTable : listD) {
            if (jCurrentTimeMillis > jPushRecordTable.getPush_time() && jCurrentTimeMillis < jPushRecordTable.getPush_time() + jPushRecordTable.getRetention_time()) {
                IntentDateBean intentDateBean = new IntentDateBean();
                intentDateBean.setTpl_type(jPushRecordTable.getTpl_type() + "");
                intentDateBean.setLink_type_val(jPushRecordTable.getLink_type_val());
                intentDateBean.setLink_type(jPushRecordTable.getLink_type());
                intentDateBean.setCrc_link_type_val(jPushRecordTable.getCrc_link_type_val());
                intentDateBean.setJump_type(jPushRecordTable.getJump_type());
                a(context, intentDateBean, jPushRecordTable.getTitle(), jPushRecordTable.getContent());
                t6.z.n().delete(jPushRecordTable);
            } else if (jCurrentTimeMillis > jPushRecordTable.getPush_time() + jPushRecordTable.getRetention_time()) {
                t6.z.n().delete(jPushRecordTable);
            }
        }
    }

    public static void j(Context context, int maxNum) {
    }

    private void k(Context context) {
    }

    public static void l(Context context) {
    }

    private void m() {
    }
}

package com.join.mgps.Util;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Handler;
import com.byazt.hv.TTDownloadField;
import com.join.mgps.pref.PrefDef_;

/* JADX INFO: loaded from: classes4.dex */
public class b1 {

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f49501b;

        a(final Context val$context) {
            this.f49501b = val$context;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (AccountUtil_.getInstance_(this.f49501b).isTourist()) {
                b1.e(this.f49501b);
            } else {
                b1.d(this.f49501b);
            }
        }
    }

    public static void a(final Context context) {
        if (new PrefDef_(context).firstShowUserPermiss().d().booleanValue()) {
            return;
        }
        new Handler().postDelayed(new a(context), 500L);
    }

    public static void b(Context context) {
        c(context);
    }

    public static boolean c(Context context) {
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : ((ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY)).getRunningAppProcesses()) {
            if (runningAppProcessInfo.processName.equals(context.getPackageName())) {
                context.getPackageName();
                StringBuilder sb2 = new StringBuilder();
                sb2.append("此appimportace =");
                sb2.append(runningAppProcessInfo.importance);
                sb2.append(",context.getClass().getName()=");
                sb2.append(context.getClass().getName());
                if (runningAppProcessInfo.importance == 100) {
                    context.getPackageName();
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("处于前台");
                    sb3.append(runningAppProcessInfo.processName);
                    break;
                }
                context.getPackageName();
                StringBuilder sb4 = new StringBuilder();
                sb4.append("处于后台");
                sb4.append(runningAppProcessInfo.processName);
                return true;
            }
        }
        return false;
    }

    public static void d(Context context) {
        new PrefDef_(context).firstShowUserPermiss().d().booleanValue();
    }

    public static void e(Context context) {
        new PrefDef_(context).firstShowUserPermiss().d().booleanValue();
    }
}

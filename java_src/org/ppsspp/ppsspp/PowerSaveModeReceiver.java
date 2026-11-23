package org.ppsspp.ppsspp;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.os.PowerManager;
import android.provider.Settings;

/* JADX INFO: loaded from: classes10.dex */
public class PowerSaveModeReceiver extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f95908a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f95909b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f95910c = "PowerSaveModeReceiver";

    class a extends ContentObserver {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Activity f95911a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Handler handler, Activity activity) {
            super(handler);
            this.f95911a = activity;
        }

        @Override // android.database.ContentObserver
        @TargetApi(16)
        public void onChange(boolean z10, Uri uri) {
            super.onChange(z10, uri);
            String path = uri.getPath();
            if (path == null) {
                return;
            }
            String strSubstring = path.substring(path.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1, path.length());
            if (strSubstring.equals("user_powersaver_enable") || strSubstring.equals("psm_switch") || strSubstring.equals("powersaving_switch")) {
                PowerSaveModeReceiver.f(this.f95911a);
            }
        }
    }

    private static boolean b(Context context, String str) {
        String string = Settings.System.getString(context.getContentResolver(), str);
        return string != null && string.equals("1");
    }

    private static boolean c(Context context) {
        if (b(context, "user_powersaver_enable")) {
            return true;
        }
        String string = Settings.System.getString(context.getContentResolver(), "powersaving_switch");
        return (!(string != null && !string.equals("")) && b(context, "psm_switch")) || b(context, "powersaving_switch");
    }

    @TargetApi(21)
    private static boolean d(Context context) {
        return ((PowerManager) context.getSystemService("power")).isPowerSaveMode();
    }

    public static void e(Activity activity) {
        f(activity);
        activity.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, new a(null, activity));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void f(Context context) {
        f95908a = d(context);
        if (PpssppActivity.libraryLoaded) {
            try {
                if (f95909b || f95908a) {
                    NativeApp.sendMessage("core_powerSaving", "true");
                } else {
                    NativeApp.sendMessage("core_powerSaving", "false");
                }
            } catch (Exception e10) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Exception in sendPowerSaving: ");
                sb2.append(e10.toString());
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if (action.equals("android.intent.action.BATTERY_LOW")) {
            f95909b = true;
        } else if (action.equals("android.intent.action.BATTERY_OKAY")) {
            f95909b = false;
        }
        f(context);
    }
}

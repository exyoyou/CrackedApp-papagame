package com.umeng.commonsdk.internal.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.internal.crash.UMCrashManager;

/* JADX INFO: loaded from: classes9.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f85254a = "BatteryUtils";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f85255b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Context f85256c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private BroadcastReceiver f85257d;

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final c f85259a = new c();

        private a() {
        }
    }

    public static c a(Context context) {
        if (f85256c == null && context != null) {
            f85256c = context.getApplicationContext();
        }
        return a.f85259a;
    }

    public synchronized void b() {
        try {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.BATTERY_CHANGED");
            f85256c.registerReceiver(this.f85257d, intentFilter);
            f85255b = true;
        } catch (Throwable th) {
            UMCrashManager.reportCrash(f85256c, th);
        }
    }

    public synchronized void c() {
        try {
            f85256c.unregisterReceiver(this.f85257d);
            f85255b = false;
        } catch (Throwable th) {
            UMCrashManager.reportCrash(f85256c, th);
        }
    }

    private c() {
        this.f85257d = new BroadcastReceiver() { // from class: com.umeng.commonsdk.internal.utils.c.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                try {
                    if (intent.getAction().equals("android.intent.action.BATTERY_CHANGED")) {
                        UMRTLog.i(UMRTLog.RTLOG_TAG, "ACTION_BATTERY_CHANGED：battery info cc.");
                        int i10 = 0;
                        int intExtra = intent.getIntExtra("level", 0);
                        int intExtra2 = intent.getIntExtra("voltage", 0);
                        int intExtra3 = intent.getIntExtra("temperature", 0);
                        int intExtra4 = intent.getIntExtra("status", 0);
                        int i11 = -1;
                        if (intExtra4 != 1) {
                            if (intExtra4 == 2) {
                                i11 = 1;
                            } else if (intExtra4 == 4) {
                                i11 = 0;
                            } else if (intExtra4 == 5) {
                                i11 = 2;
                            }
                        }
                        int intExtra5 = intent.getIntExtra("plugged", 0);
                        if (intExtra5 == 1) {
                            i10 = 1;
                        } else if (intExtra5 == 2) {
                            i10 = 2;
                        }
                        b bVar = new b();
                        bVar.f85248a = intExtra;
                        bVar.f85249b = intExtra2;
                        bVar.f85251d = i11;
                        bVar.f85250c = intExtra3;
                        bVar.f85252e = i10;
                        bVar.f85253f = System.currentTimeMillis();
                        UMWorkDispatch.sendEvent(context, com.umeng.commonsdk.internal.a.f85203h, com.umeng.commonsdk.internal.b.a(c.f85256c).a(), bVar);
                        c.this.c();
                    }
                } catch (Throwable th) {
                    UMCrashManager.reportCrash(c.f85256c, th);
                }
            }
        };
    }

    public synchronized boolean a() {
        return f85255b;
    }
}

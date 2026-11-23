package com.umeng.powersdk;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;

/* JADX INFO: loaded from: classes9.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Context f85671a;

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final b f85672a = new b(0);
    }

    private b() {
    }

    public final synchronized com.umeng.powersdk.a a() {
        com.umeng.powersdk.a aVar;
        com.umeng.powersdk.a aVar2 = null;
        try {
            Intent intentRegisterReceiver = f85671a.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            int i10 = 0;
            int intExtra = intentRegisterReceiver.getIntExtra("level", 0);
            int intExtra2 = intentRegisterReceiver.getIntExtra("voltage", 0);
            int intExtra3 = intentRegisterReceiver.getIntExtra("temperature", 0);
            int intExtra4 = intentRegisterReceiver.getIntExtra("status", 0);
            int i11 = -1;
            if (intExtra4 != 1) {
                if (intExtra4 == 2) {
                    i11 = 1;
                } else if (intExtra4 == 3 || intExtra4 == 4) {
                    i11 = 0;
                } else if (intExtra4 == 5) {
                    i11 = 2;
                }
            }
            int intExtra5 = intentRegisterReceiver.getIntExtra("plugged", 0);
            if (intExtra5 == 1) {
                i10 = 1;
            } else if (intExtra5 == 2) {
                i10 = 2;
            }
            aVar = new com.umeng.powersdk.a();
            try {
                aVar.f85665a = intExtra;
                aVar.f85666b = intExtra2;
                aVar.f85668d = i11;
                aVar.f85667c = intExtra3;
                aVar.f85669e = i10;
                aVar.f85670f = System.currentTimeMillis();
            } catch (Throwable unused) {
                aVar2 = aVar;
                aVar = aVar2;
            }
        } catch (Throwable unused2) {
        }
        return aVar;
    }

    /* synthetic */ b(byte b10) {
        this();
    }

    public static b a(Context context) {
        if (f85671a == null && context != null) {
            f85671a = context.getApplicationContext();
        }
        return a.f85672a;
    }
}

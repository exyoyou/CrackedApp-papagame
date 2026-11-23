package com.join.mgps.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: loaded from: classes3.dex */
public abstract class WifiAPBroadcastReceiver extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f72280a = "WifiAPBroadcastReceiver";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f72281b = "android.net.wifi.WIFI_AP_STATE_CHANGED";

    public abstract void a();

    public abstract void b();

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent.getAction().equals(f72281b)) {
            int intExtra = intent.getIntExtra("wifi_state", 0) % 10;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Wifi Ap state--->>>");
            sb2.append(intExtra);
            if (3 == intExtra) {
                b();
            } else if (2 != intExtra && 1 == intExtra) {
                a();
            }
        }
    }
}

package com.join.mgps.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.join.mgps.socket.entity.b;
import org.greenrobot.eventbus.c;

/* JADX INFO: loaded from: classes3.dex */
public class ApWifiConnectedReceiver extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f72253a = "ApWifiConnectedReceiver";

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if (!WifiAPBroadcastReceiver.f72281b.equals(action)) {
            "android.net.wifi.WIFI_HOTSPOT_CLIENTS_CHANGED".equals(action);
        } else if (intent.getIntExtra("wifi_state", 0) == 11) {
            c.f().q(b.f73006h);
        }
    }
}

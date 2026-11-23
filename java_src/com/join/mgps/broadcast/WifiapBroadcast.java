package com.join.mgps.broadcast;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.NetworkInfo;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class WifiapBroadcast extends BroadcastReceiver {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f64147c = "WifiapBroadcast";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ArrayList<a> f64148a = new ArrayList<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private NetworkInfo f64149b;

    public interface a {
        void handleConnectChange();

        void scanResultsAvailable();

        void wifiStatusNotification();
    }

    public void a(a paramEventHandler) {
        if (paramEventHandler != null) {
            this.f64148a.add(paramEventHandler);
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context paramContext, Intent paramIntent) {
        int i10 = 0;
        if (paramIntent.getAction().equals("android.net.wifi.SCAN_RESULTS")) {
            while (i10 < this.f64148a.size()) {
                this.f64148a.get(i10).scanResultsAvailable();
                i10++;
            }
            return;
        }
        if (paramIntent.getAction().equals("android.net.wifi.WIFI_STATE_CHANGED")) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("android.net.wifi.WIFI_STATE_CHANGED | ");
            sb2.append(paramIntent.getIntExtra("wifi_state", -1));
            sb2.append(" | ");
            sb2.append(paramIntent.getIntExtra("previous_wifi_state", -1));
            while (i10 < this.f64148a.size()) {
                this.f64148a.get(i10).wifiStatusNotification();
                i10++;
            }
            return;
        }
        if (paramIntent.getAction().equals("android.net.wifi.STATE_CHANGE")) {
            this.f64149b = (NetworkInfo) paramIntent.getParcelableExtra("networkInfo");
            StringBuilder sb3 = new StringBuilder();
            sb3.append("android.net.wifi.STATE_CHANGE | ");
            sb3.append(this.f64149b.getDetailedState());
            if (this.f64149b.getDetailedState() == NetworkInfo.DetailedState.CONNECTED) {
                while (i10 < this.f64148a.size()) {
                    this.f64148a.get(i10).handleConnectChange();
                    i10++;
                }
            }
        }
    }
}

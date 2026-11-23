package com.join.mgps.helper;

import android.content.Context;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Message;
import com.join.android.app.common.utils.m;
import com.join.mgps.Util.WifiUtils;
import com.join.mgps.broadcast.WifiapBroadcast;
import com.join.mgps.callbacks.g;
import com.join.mgps.socket.entity.b;
import r6.c;

/* JADX INFO: loaded from: classes3.dex */
public class MGWifiFightServerManger implements WifiapBroadcast.a {
    private g fightConnectListener;
    private Context mContext;
    private WifiUtils mWifiUtils;
    private WifiapBroadcast mWifiapBroadcast;
    private WifiServerThread wifiServerThread;

    class a extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ g f71627a;

        a(final g val$fightConnectListener) {
            this.f71627a = val$fightConnectListener;
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            int i10 = msg.what;
            if (i10 == 9001) {
                this.f71627a.g(msg.obj.toString());
            }
            if (i10 == 9002) {
                this.f71627a.b();
                return;
            }
            switch (i10) {
                case c.B /* 9007 */:
                    this.f71627a.onSuccess("");
                    break;
                case c.C /* 9008 */:
                    this.f71627a.a(c.C);
                    break;
                case c.D /* 9009 */:
                    this.f71627a.j();
                    break;
            }
        }
    }

    public MGWifiFightServerManger(Context context, final g fightConnectListener, String gameId, String gameName) {
        this.mContext = context;
        this.fightConnectListener = fightConnectListener;
        this.mWifiUtils = WifiUtils.getInstance(context);
        this.wifiServerThread = new WifiServerThread(context, new a(fightConnectListener), gameId, gameName);
        initBroadcast();
    }

    public void disConnect() {
        WifiServerThread wifiServerThread = this.wifiServerThread;
        if (wifiServerThread != null) {
            wifiServerThread.disConnect();
        }
    }

    @Override // com.join.mgps.broadcast.WifiapBroadcast.a
    public void handleConnectChange() {
    }

    public void initBroadcast() {
        this.mWifiapBroadcast = new WifiapBroadcast();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.wifi.SCAN_RESULTS");
        intentFilter.addAction("android.net.wifi.WIFI_STATE_CHANGED");
        intentFilter.addAction("android.net.wifi.STATE_CHANGE");
        intentFilter.setPriority(Integer.MAX_VALUE);
        try {
            this.mContext.registerReceiver(this.mWifiapBroadcast, intentFilter);
        } catch (Exception unused) {
        }
    }

    @Override // com.join.mgps.broadcast.WifiapBroadcast.a
    public void scanResultsAvailable() {
    }

    public void shutDown() {
        WifiServerThread wifiServerThread = this.wifiServerThread;
        if (wifiServerThread != null) {
            wifiServerThread.disConnect();
        }
    }

    public void shutDownServer() {
        WifiServerThread wifiServerThread = this.wifiServerThread;
        if (wifiServerThread != null) {
            wifiServerThread.disConnect();
        }
        this.wifiServerThread.shutDown();
    }

    public void startGame() {
        this.wifiServerThread.startGame();
    }

    public void startServer(String gId) {
        String strE = m.e(this.mContext);
        if (m.k(this.mContext) && !strE.equals(b.f73008j)) {
            this.wifiServerThread.run();
        } else {
            this.mWifiUtils.OpenWifi();
            this.fightConnectListener.a(0);
        }
    }

    public void unregisterBroadCast() {
        this.mContext.unregisterReceiver(this.mWifiapBroadcast);
    }

    @Override // com.join.mgps.broadcast.WifiapBroadcast.a
    public void wifiStatusNotification() {
    }
}

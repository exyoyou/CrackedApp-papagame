package com.join.mgps.helper;

import android.content.Context;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Message;
import com.join.mgps.broadcast.WifiapBroadcast;
import com.join.mgps.callbacks.g;

/* JADX INFO: loaded from: classes3.dex */
public class MGWifiFightClientManger implements WifiapBroadcast.a {
    private b enterRoomProcess;
    private long enteringStartTime;
    private g fightConnectListener;
    public Handler handler = new a();
    private Context mContext;
    private WifiapBroadcast mWifiapBroadcast;
    private WifiClientThread wifiClientThread;

    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            int i10 = msg.what;
            if (i10 == 9005) {
                MGWifiFightClientManger.this.fightConnectListener.f();
            }
            if (i10 == 20000) {
                MGWifiFightClientManger.this.enterRoomProcess.a();
                MGWifiFightClientManger.this.fightConnectListener.d();
                return;
            }
            if (i10 == 9009) {
                MGWifiFightClientManger.this.fightConnectListener.j();
                return;
            }
            if (i10 == 9010) {
                MGWifiFightClientManger.this.enterRoomProcess.a();
                MGWifiFightClientManger.this.fightConnectListener.k(msg.obj.toString());
                return;
            }
            switch (i10) {
                case 9001:
                    MGWifiFightClientManger.this.enterRoomProcess.a();
                    MGWifiFightClientManger.this.fightConnectListener.g(msg.obj.toString());
                    break;
                case 9002:
                    MGWifiFightClientManger.this.fightConnectListener.b();
                    break;
                case 9003:
                    MGWifiFightClientManger.this.enterRoomProcess.a();
                    MGWifiFightClientManger.this.fightConnectListener.i();
                    break;
            }
        }
    }

    public class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f71625b = true;

        public b() {
        }

        public void a() {
            this.f71625b = false;
        }

        @Override // java.lang.Runnable
        public void run() {
            while (this.f71625b) {
                if (System.currentTimeMillis() - MGWifiFightClientManger.this.enteringStartTime >= 20000) {
                    MGWifiFightClientManger.this.handler.sendMessage(MGWifiFightClientManger.this.handler.obtainMessage(20000));
                    return;
                }
                try {
                    Thread.sleep(100L);
                } catch (Exception unused) {
                }
            }
        }
    }

    public MGWifiFightClientManger(Context context, final g fightConnectListener) {
        this.mContext = context;
        this.fightConnectListener = fightConnectListener;
        initBroadcast();
    }

    private void startMonitorEnteringRoom() {
        this.enteringStartTime = System.currentTimeMillis();
        this.enterRoomProcess = new b();
        new Thread(this.enterRoomProcess).start();
    }

    public void connect(String ip, String gameId) {
        startMonitorEnteringRoom();
        WifiClientThread wifiClientThread = new WifiClientThread(this.mContext, this.handler);
        this.wifiClientThread = wifiClientThread;
        wifiClientThread.run(ip, gameId);
    }

    public void disConnect() {
        WifiClientThread wifiClientThread = this.wifiClientThread;
        if (wifiClientThread != null) {
            wifiClientThread.disConnect();
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

    public void unregisterBroadCast() {
        this.mContext.unregisterReceiver(this.mWifiapBroadcast);
    }

    @Override // com.join.mgps.broadcast.WifiapBroadcast.a
    public void wifiStatusNotification() {
    }
}

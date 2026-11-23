package com.join.mgps.helper;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import com.join.mgps.Util.WifiUtils;
import com.join.mgps.Util.y2;
import com.join.mgps.aidl.MGWifiServerThread;
import com.join.mgps.broadcast.WifiapBroadcast;
import com.join.mgps.callbacks.g;
import r6.c;

/* JADX INFO: loaded from: classes3.dex */
public class MGFightServerManager implements WifiapBroadcast.a {
    private String apName;
    private g fightConnectListener;
    private Context mContext;
    private String mGameName;
    private WifiUtils mWifiUtils;
    WifiapBroadcast mWifiapBroadcast;
    private b monitorAPProcess;
    private MGWifiServerThread wifiServerThread;
    private String TAG = getClass().getSimpleName();

    @SuppressLint({"HandlerLeak"})
    private Handler handler = new a();

    class a extends Handler {

        /* JADX INFO: renamed from: com.join.mgps.helper.MGFightServerManager$a$a, reason: collision with other inner class name */
        class HandlerC0733a extends Handler {
            HandlerC0733a() {
            }

            @Override // android.os.Handler
            public void handleMessage(Message msg) {
                super.handleMessage(msg);
                int i10 = msg.what;
                if (i10 == 9001) {
                    if (msg.obj != null) {
                        MGFightServerManager.this.fightConnectListener.g(msg.obj.toString());
                        return;
                    } else {
                        MGFightServerManager.this.fightConnectListener.g("客机");
                    }
                }
                if (i10 == 9002) {
                    MGFightServerManager.this.fightConnectListener.b();
                    return;
                }
                switch (i10) {
                    case c.B /* 9007 */:
                        MGFightServerManager.this.fightConnectListener.onSuccess(MGFightServerManager.this.apName);
                        break;
                    case c.C /* 9008 */:
                        MGFightServerManager.this.fightConnectListener.a(c.C);
                        break;
                    case c.D /* 9009 */:
                        MGFightServerManager.this.fightConnectListener.j();
                        break;
                }
            }
        }

        a() {
        }

        /* JADX WARN: Code duplicated, block: B:13:0x004f  */
        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            if (msg.what != 3) {
                return;
            }
            MGFightServerManager.this.monitorAPProcess.b();
            boolean z10 = true;
            if (Build.VERSION.SDK_INT < 26) {
                if (MGFightServerManager.this.mWifiUtils.getApSSID() != null) {
                    if (!MGFightServerManager.this.mWifiUtils.getApSSID().startsWith(c.f96776p + MGFightServerManager.this.mGameName)) {
                        z10 = false;
                    }
                } else {
                    z10 = false;
                }
            }
            if ((MGFightServerManager.this.mWifiUtils.getWifiApStateInt() != 3 && MGFightServerManager.this.mWifiUtils.getWifiApStateInt() != 13) || !z10) {
                MGFightServerManager.this.fightConnectListener.a(c.A);
                return;
            }
            try {
                if (MGFightServerManager.this.wifiServerThread != null) {
                    MGFightServerManager.this.wifiServerThread.shutDown();
                }
                MGFightServerManager mGFightServerManager = MGFightServerManager.this;
                mGFightServerManager.wifiServerThread = new MGWifiServerThread(mGFightServerManager.mContext, new HandlerC0733a());
                MGFightServerManager.this.wifiServerThread.run();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f71620b = false;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private long f71621c = 0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Thread f71622d = null;

        b() {
        }

        public void a() {
            this.f71622d = new Thread(this);
            this.f71620b = true;
            this.f71621c = System.currentTimeMillis();
            this.f71622d.start();
        }

        public void b() {
            this.f71620b = false;
            this.f71622d = null;
            this.f71621c = 0L;
        }

        @Override // java.lang.Runnable
        public void run() {
            while (this.f71620b) {
                if (MGFightServerManager.this.mWifiUtils.getWifiApStateInt() == 3 || MGFightServerManager.this.mWifiUtils.getWifiApStateInt() == 13 || System.currentTimeMillis() - this.f71621c >= 10000) {
                    MGFightServerManager.this.handler.sendMessage(MGFightServerManager.this.handler.obtainMessage(3));
                }
                try {
                    Thread.sleep(1000L);
                } catch (Exception unused) {
                }
            }
        }
    }

    public MGFightServerManager(Context context, g fightConnectListener) {
        this.fightConnectListener = fightConnectListener;
        this.mContext = context;
        this.mWifiUtils = WifiUtils.getInstance(context);
    }

    private void createAP(String gameName) {
        if (Build.VERSION.SDK_INT < 26) {
            this.mWifiUtils.closeWifi();
            if (gameName.replaceAll(" ", "").length() > 6) {
                gameName = gameName.replaceAll(" ", "").substring(0, 6);
            }
            this.mGameName = gameName;
            this.apName = c.f96776p + gameName + "_" + y2.b(3);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("method createAP() called. start create ap:[");
            sb2.append(this.apName);
            sb2.append("]");
            if (WifiUtils.getInstance(this.mContext).getWifiApStateInt() == 4) {
                this.fightConnectListener.a(c.A);
                return;
            } else {
                WifiUtils wifiUtils = this.mWifiUtils;
                wifiUtils.createWiFiAP(wifiUtils.createAPInfo(this.apName, c.f96777q), true);
            }
        }
        b bVar = this.monitorAPProcess;
        if (bVar == null) {
            this.monitorAPProcess = new b();
        } else {
            bVar.b();
        }
        this.monitorAPProcess.a();
    }

    public void disConnect() {
        MGWifiServerThread mGWifiServerThread = this.wifiServerThread;
        if (mGWifiServerThread != null) {
            mGWifiServerThread.disConnect();
        }
    }

    public WifiapBroadcast getmWifiapBroadcast() {
        return this.mWifiapBroadcast;
    }

    @Override // com.join.mgps.broadcast.WifiapBroadcast.a
    public void handleConnectChange() {
        this.handler.sendMessage(this.handler.obtainMessage(2));
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
        this.handler.sendMessage(this.handler.obtainMessage(1));
    }

    public void shutDown() {
        MGWifiServerThread mGWifiServerThread = this.wifiServerThread;
        if (mGWifiServerThread != null) {
            mGWifiServerThread.disConnect();
        }
    }

    public void shutDownServer() {
        MGWifiServerThread mGWifiServerThread = this.wifiServerThread;
        if (mGWifiServerThread != null) {
            mGWifiServerThread.disConnect();
        }
        this.wifiServerThread.shutDown();
    }

    public void startGame() {
        this.wifiServerThread.startGame();
    }

    public void startServer(String mGameName) {
        createAP(mGameName);
    }

    @Override // com.join.mgps.broadcast.WifiapBroadcast.a
    public void wifiStatusNotification() {
        this.handler.sendMessage(this.handler.obtainMessage(1));
    }
}

package com.join.mgps.helper;

import android.content.Context;
import android.content.IntentFilter;
import android.net.wifi.ScanResult;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import com.join.android.app.common.utils.m;
import com.join.mgps.Util.WifiUtils;
import com.join.mgps.Util.t2;
import com.join.mgps.activity.ApFightActivity;
import com.join.mgps.aidl.MGWifiClientThread;
import com.join.mgps.broadcast.WifiapBroadcast;
import com.join.mgps.callbacks.g;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class MGFightClientManager implements WifiapBroadcast.a {
    private d enterRoomProcess;
    private long enteringStartTime;
    private g fightConnectListener;
    private Context mContext;
    private String mGameName;
    private WifiUtils mWifiUtils;
    WifiapBroadcast mWifiapBroadcast;
    List<ScanResult> scanResults;
    private String specifiedSSID;
    private MGWifiClientThread wifiClientThread;
    private String TAG = getClass().getSimpleName();
    private e mSearchApProcess = new e();
    private ArrayList<String> mWifiApList = new ArrayList<>(0);
    private Map<String, String> mWifiApHistoryList = new HashMap(0);
    private boolean isEnteringRoom = false;
    private boolean isConnected = false;
    private boolean running = false;
    boolean isConnecting = false;
    public Handler handler = new a();
    boolean processingScan = false;
    long lasConnectToHostspot = 0;
    long lasScanTime = 0;

    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            int i10 = msg.what;
            if (i10 == 0) {
                MGFightClientManager.this.mSearchApProcess.b();
                MGFightClientManager.this.fightConnectListener.h();
                MGFightClientManager.this.unregisterReceiver();
                return;
            }
            if (i10 == 1) {
                if (MGFightClientManager.this.running && !MGFightClientManager.this.isConnected && !MGFightClientManager.this.isEnteringRoom && !t2.h(MGFightClientManager.this.mGameName)) {
                    MGFightClientManager.this.afterApScan();
                    return;
                }
                String unused = MGFightClientManager.this.TAG;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("interrupt ApScan.running=");
                sb2.append(MGFightClientManager.this.running);
                sb2.append(";isConnected=");
                sb2.append(MGFightClientManager.this.isConnected);
                sb2.append(";isEnteringRoom=");
                sb2.append(MGFightClientManager.this.isEnteringRoom);
                sb2.append(";mGameName=");
                sb2.append(MGFightClientManager.this.mGameName);
                return;
            }
            if (i10 != 2) {
                if (i10 == 9005) {
                    MGFightClientManager.this.fightConnectListener.f();
                    MGFightClientManager.this.unregisterReceiver();
                    return;
                }
                if (i10 == 9009) {
                    MGFightClientManager.this.fightConnectListener.j();
                    MGFightClientManager.this.running = false;
                    MGFightClientManager.this.unregisterReceiver();
                    return;
                }
                if (i10 == 20000) {
                    String unused2 = MGFightClientManager.this.TAG;
                    if (MGFightClientManager.this.isEnteringRoom) {
                        MGFightClientManager.this.fightConnectListener.d();
                    }
                    MGFightClientManager.this.unregisterReceiver();
                    return;
                }
                switch (i10) {
                    case 9001:
                        if (MGFightClientManager.this.enterRoomProcess != null) {
                            MGFightClientManager.this.enterRoomProcess.a();
                        }
                        MGFightClientManager.this.isConnected = true;
                        String ssid = MGFightClientManager.this.mWifiUtils.getSSID(MGFightClientManager.this.mContext);
                        String unused3 = MGFightClientManager.this.TAG;
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("store ssid in history:");
                        sb3.append(ssid);
                        MGFightClientManager.this.mWifiApHistoryList.put(ssid, ssid);
                        MGFightClientManager.this.fightConnectListener.g(msg.obj.toString());
                        MGFightClientManager.this.unregisterReceiver();
                        break;
                    case 9002:
                        MGFightClientManager.this.fightConnectListener.b();
                        MGFightClientManager.this.isEnteringRoom = false;
                        MGFightClientManager.this.mSearchApProcess.b();
                        MGFightClientManager.this.running = false;
                        MGFightClientManager.this.unregisterReceiver();
                        break;
                    case 9003:
                        MGFightClientManager.this.isEnteringRoom = false;
                        MGFightClientManager.this.mSearchApProcess.b();
                        MGFightClientManager.this.fightConnectListener.i();
                        MGFightClientManager.this.running = false;
                        MGFightClientManager.this.unregisterReceiver();
                        break;
                }
                return;
            }
            String ssid2 = MGFightClientManager.this.mWifiUtils.getSSID(MGFightClientManager.this.mContext);
            String unused4 = MGFightClientManager.this.TAG;
            StringBuilder sb4 = new StringBuilder();
            sb4.append("连接网络成功:");
            sb4.append(ssid2);
            sb4.append(";mGameName=");
            sb4.append(MGFightClientManager.this.mGameName);
            if (t2.h(MGFightClientManager.this.mGameName)) {
                return;
            }
            if (!ssid2.contains(MGFightClientManager.this.mGameName)) {
                MGFightClientManager mGFightClientManager = MGFightClientManager.this;
                mGFightClientManager.processingScan = false;
                mGFightClientManager.afterApScan();
                return;
            }
            if (MGFightClientManager.this.wifiClientThread != null && !MGFightClientManager.this.wifiClientThread.getSsid().equals(ssid2)) {
                String unused5 = MGFightClientManager.this.TAG;
                StringBuilder sb5 = new StringBuilder();
                sb5.append("wifiClientThread is not null.but ssid is different so destory.new=");
                sb5.append(ssid2);
                sb5.append(";old=");
                sb5.append(MGFightClientManager.this.wifiClientThread.getSsid());
                MGFightClientManager.this.wifiClientThread.destroy();
                MGFightClientManager.this.wifiClientThread = null;
            } else if (MGFightClientManager.this.wifiClientThread != null) {
                String unused6 = MGFightClientManager.this.TAG;
                StringBuilder sb6 = new StringBuilder();
                sb6.append("wifiClientThread is not null [");
                sb6.append(MGFightClientManager.this.wifiClientThread.getSsid());
                sb6.append("],so return.");
                return;
            }
            try {
                String unused7 = MGFightClientManager.this.TAG;
                StringBuilder sb7 = new StringBuilder();
                sb7.append("开始连接服务器...wifiClientThread=");
                sb7.append(MGFightClientManager.this.wifiClientThread);
                MGFightClientManager mGFightClientManager2 = MGFightClientManager.this;
                Context context = mGFightClientManager2.mContext;
                MGFightClientManager mGFightClientManager3 = MGFightClientManager.this;
                mGFightClientManager2.wifiClientThread = new MGWifiClientThread(context, mGFightClientManager3.handler, mGFightClientManager3.mWifiUtils.getSSID(MGFightClientManager.this.mContext));
                MGFightClientManager.this.wifiClientThread.run();
                MGFightClientManager.this.isConnecting = true;
            } catch (Exception e10) {
                e10.printStackTrace();
                MGFightClientManager.this.isConnecting = false;
            }
            MGFightClientManager.this.mSearchApProcess.b();
        }
    }

    class b extends Thread {
        b() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            String unused = MGFightClientManager.this.TAG;
            MGFightClientManager.this.mWifiUtils.connectToHotspot((String) MGFightClientManager.this.mWifiApList.get(0), r6.c.f96777q);
            MGFightClientManager.this.lasConnectToHostspot = System.currentTimeMillis();
        }
    }

    class c extends Thread {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f71610b;

        c(final String val$ssid) {
            this.f71610b = val$ssid;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            String unused = MGFightClientManager.this.TAG;
            MGFightClientManager.this.mWifiUtils.connectToHotspot(this.f71610b, r6.c.f96777q);
        }
    }

    public class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f71612b = true;

        public d() {
        }

        public void a() {
            this.f71612b = false;
        }

        @Override // java.lang.Runnable
        public void run() {
            while (this.f71612b) {
                if (System.currentTimeMillis() - MGFightClientManager.this.enteringStartTime >= 20000) {
                    MGFightClientManager.this.handler.sendMessage(MGFightClientManager.this.handler.obtainMessage(20000));
                    return;
                }
                try {
                    Thread.sleep(100L);
                } catch (Exception unused) {
                }
            }
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f71614b = false;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private long f71615c = 0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Thread f71616d = null;

        e() {
        }

        public void a() {
            this.f71616d = new Thread(this);
            this.f71614b = true;
            this.f71615c = System.currentTimeMillis();
            this.f71616d.start();
        }

        public void b() {
            this.f71614b = false;
            this.f71616d = null;
            this.f71615c = 0L;
        }

        @Override // java.lang.Runnable
        public void run() {
            while (this.f71614b) {
                if (System.currentTimeMillis() - this.f71615c >= 10000) {
                    MGFightClientManager.this.handler.sendMessage(MGFightClientManager.this.handler.obtainMessage(0));
                }
                try {
                    Thread.sleep(200L);
                } catch (Exception unused) {
                }
            }
        }
    }

    public MGFightClientManager(Context context, g fightConnectListener) {
        this.fightConnectListener = fightConnectListener;
        this.mContext = context;
        this.mWifiUtils = WifiUtils.getInstance(context);
        initBroadcast();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void afterApScan() {
        boolean z10;
        if (this.mWifiUtils.isConnectToHotSpotRunning || this.processingScan || TextUtils.isEmpty(this.mGameName)) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("afterApScan() called.processingScan=");
        sb2.append(this.processingScan);
        sb2.append(";step=");
        sb2.append(ApFightActivity.step);
        String ssid = this.mWifiUtils.getSSID(this.mContext);
        List<ScanResult> list = this.scanResults;
        if (list == null || list.size() <= 0) {
            z10 = false;
            break;
        }
        Iterator<ScanResult> it2 = this.scanResults.iterator();
        while (true) {
            if (it2.hasNext()) {
                if (it2.next().BSSID.equals(ssid)) {
                    z10 = true;
                    break;
                }
            } else {
                z10 = false;
                break;
            }
        }
        if (Build.VERSION.SDK_INT >= 26) {
            z10 = true;
        }
        StringBuilder sb3 = new StringBuilder();
        sb3.append("current ssid =");
        sb3.append(ssid);
        if (ssid != null && ssid.contains(this.mGameName) && z10) {
            this.fightConnectListener.c(ssid);
            startMonitorEnteringRoom();
            this.handler.sendMessage(this.handler.obtainMessage(2));
            return;
        }
        List<ScanResult> list2 = this.scanResults;
        if (list2 == null || list2.size() == 0) {
            return;
        }
        int size = this.scanResults.size();
        if (size > 0) {
            this.mWifiApList.clear();
            for (int i10 = 0; i10 < size; i10++) {
                ScanResult scanResult = this.scanResults.get(i10);
                String str = scanResult.SSID;
                int signalStrength = this.mWifiUtils.getSignalStrength();
                StringBuilder sb4 = new StringBuilder();
                sb4.append("apSSID=");
                sb4.append(str);
                sb4.append(";BSSID=");
                sb4.append(scanResult.BSSID);
                sb4.append(";capabilities=");
                sb4.append(scanResult.capabilities);
                sb4.append(";frequency=");
                sb4.append(scanResult.frequency);
                sb4.append(";level=");
                sb4.append(scanResult.level);
                sb4.append(";signal=");
                sb4.append(signalStrength);
                if (str != null && str.contains(this.mGameName) && !this.mWifiApHistoryList.containsKey(str)) {
                    StringBuilder sb5 = new StringBuilder();
                    sb5.append("连接网络成功=apSSID=");
                    sb5.append(str);
                    sb5.append(";BSSID=");
                    sb5.append(scanResult.BSSID);
                    sb5.append(";capabilities=");
                    sb5.append(scanResult.capabilities);
                    sb5.append(";frequency=");
                    sb5.append(scanResult.frequency);
                    sb5.append(";level=");
                    sb5.append(signalStrength);
                    this.mWifiApList.add(str);
                }
            }
            if (this.mWifiApList.size() > 1) {
                this.mSearchApProcess.b();
                this.isEnteringRoom = true;
                this.fightConnectListener.e(this.mWifiApList);
            } else if (this.mWifiApList.size() == 1 && !this.isEnteringRoom) {
                this.isEnteringRoom = true;
                if (this.mWifiApList.get(0).contains(this.mGameName)) {
                    this.fightConnectListener.c(this.mWifiApList.get(0));
                    startMonitorEnteringRoom();
                    if (System.currentTimeMillis() - this.lasConnectToHostspot > 5000) {
                        new b().start();
                    }
                }
            } else if (System.currentTimeMillis() - this.lasScanTime > 5000) {
                this.mWifiUtils.startScan(this.mContext);
                this.processingScan = true;
                this.lasScanTime = System.currentTimeMillis();
            }
        }
        this.processingScan = false;
    }

    private void searchAP() {
        try {
            registerBroadcast();
        } catch (Exception unused) {
        }
        this.isEnteringRoom = false;
        this.running = true;
        this.isConnected = false;
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 26 && !m.k(this.mContext)) {
            this.mWifiUtils.OpenWifi();
        }
        if (i10 < 26) {
            e eVar = this.mSearchApProcess;
            if (eVar.f71614b) {
                eVar.b();
            } else if (!this.mWifiUtils.mWifiManager.isWifiEnabled()) {
                this.mWifiUtils.OpenWifi();
            }
            this.mSearchApProcess.a();
        }
        afterApScan();
    }

    private void startMonitorEnteringRoom() {
        d dVar = this.enterRoomProcess;
        if (dVar != null) {
            dVar.a();
        }
        this.isEnteringRoom = true;
        this.enteringStartTime = System.currentTimeMillis();
        this.mSearchApProcess.b();
        this.enterRoomProcess = new d();
        new Thread(this.enterRoomProcess).start();
    }

    public void connect() {
        this.isConnecting = false;
        this.running = true;
        this.isConnected = false;
        searchAP();
    }

    public void connectToChosen() {
        this.isConnected = false;
        this.isEnteringRoom = false;
        this.running = false;
        if (this.mSearchApProcess == null) {
            this.mSearchApProcess = new e();
        }
        this.mSearchApProcess.a();
        try {
            Context context = this.mContext;
            MGWifiClientThread mGWifiClientThread = new MGWifiClientThread(context, this.handler, this.mWifiUtils.getSSID(context));
            this.wifiClientThread = mGWifiClientThread;
            mGWifiClientThread.run();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void disConnect() {
        MGWifiClientThread mGWifiClientThread = this.wifiClientThread;
        if (mGWifiClientThread != null) {
            mGWifiClientThread.disConnect();
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
        WifiapBroadcast wifiapBroadcast = new WifiapBroadcast();
        this.mWifiapBroadcast = wifiapBroadcast;
        wifiapBroadcast.a(this);
    }

    public void registerBroadcast() {
        try {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.net.wifi.SCAN_RESULTS");
            intentFilter.addAction("android.net.wifi.WIFI_STATE_CHANGED");
            intentFilter.addAction("android.net.wifi.STATE_CHANGE");
            intentFilter.setPriority(Integer.MAX_VALUE);
            this.mContext.registerReceiver(this.mWifiapBroadcast, intentFilter);
        } catch (Exception unused) {
        }
    }

    @Override // com.join.mgps.broadcast.WifiapBroadcast.a
    public void scanResultsAvailable() {
        this.processingScan = false;
        this.scanResults = this.mWifiUtils.mWifiManager.getScanResults();
        this.handler.sendMessage(this.handler.obtainMessage(1));
    }

    public void setGameName(String gameName) {
        this.mGameName = gameName;
    }

    public void unregisterReceiver() {
        try {
            this.mContext.unregisterReceiver(this.mWifiapBroadcast);
        } catch (Exception unused) {
        }
    }

    @Override // com.join.mgps.broadcast.WifiapBroadcast.a
    public void wifiStatusNotification() {
        this.scanResults = this.mWifiUtils.mWifiManager.getScanResults();
        this.handler.sendMessage(this.handler.obtainMessage(1));
        this.mWifiUtils.startScan(this.mContext);
        this.processingScan = true;
    }

    public void connect(String ssid) {
        registerBroadcast();
        this.isConnecting = false;
        this.running = true;
        this.isConnected = false;
        searchAP(ssid);
    }

    public void connectToChosen(String ssid) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("connect to specifiedSSID ::");
        sb2.append(ssid);
        if (ssid == null) {
            return;
        }
        if (this.mSearchApProcess == null) {
            this.mSearchApProcess = new e();
        }
        this.mSearchApProcess.a();
        this.specifiedSSID = ssid;
        this.isEnteringRoom = true;
        this.isConnected = false;
        this.mWifiUtils.addNetwork(this.mContext, this.mWifiUtils.createWifiInfo(ssid, r6.c.f96777q, 3, "wt"));
    }

    private void searchAP(String ssid) {
        this.isEnteringRoom = false;
        this.running = true;
        this.isConnected = false;
        if (!m.k(this.mContext)) {
            this.mWifiUtils.OpenWifi();
        }
        e eVar = this.mSearchApProcess;
        if (!eVar.f71614b) {
            if (!this.mWifiUtils.mWifiManager.isWifiEnabled()) {
                this.mWifiUtils.OpenWifi();
            }
        } else {
            eVar.b();
        }
        afterApScan(ssid);
        this.mSearchApProcess.a();
    }

    private void afterApScan(final String ssid) {
        boolean z10;
        if (this.processingScan) {
            return;
        }
        List<ScanResult> list = this.scanResults;
        if (list != null && list.size() > 0) {
            Iterator<ScanResult> it2 = this.scanResults.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    z10 = false;
                    break;
                } else if (it2.next().SSID.equals(ssid)) {
                    z10 = true;
                    break;
                }
            }
        } else {
            z10 = false;
            break;
        }
        if (!z10) {
            this.mWifiUtils.startScan(this.mContext);
            return;
        }
        this.processingScan = true;
        this.fightConnectListener.c(ssid);
        startMonitorEnteringRoom();
        new c(ssid).start();
        this.processingScan = false;
    }
}

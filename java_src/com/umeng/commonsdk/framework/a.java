package com.umeng.commonsdk.framework;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkRequest;
import android.os.Build;
import android.os.FileObserver;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.kuaishou.weapon.p0.g;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.internal.b;
import com.umeng.commonsdk.internal.crash.UMCrashManager;
import com.umeng.commonsdk.service.UMGlobalContext;
import com.umeng.commonsdk.statistics.c;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.common.ULog;
import com.umeng.commonsdk.statistics.idtracking.ImprintHandler;
import com.umeng.commonsdk.statistics.internal.UMImprintChangeCallback;
import java.io.File;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes9.dex */
public class a implements UMImprintChangeCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static HandlerThread f85170a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Handler f85171b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Handler f85172c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f85173d = 200;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f85174e = 273;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f85175f = 274;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int f85176g = 512;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int f85177h = 769;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static FileObserverC1057a f85178i = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static ConnectivityManager f85179j = null;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static IntentFilter f85180k = null;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static volatile boolean f85181l = false;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static ArrayList<UMSenderStateNotify> f85182m = null;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final String f85185p = "report_policy";

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final String f85186q = "report_interval";

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final int f85188s = 15;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final int f85189t = 3;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final int f85190u = 90;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static BroadcastReceiver f85193x;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static Object f85183n = new Object();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static ReentrantLock f85184o = new ReentrantLock();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static boolean f85187r = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static int f85191v = 15;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static Object f85192w = new Object();

    /* JADX INFO: renamed from: com.umeng.commonsdk.framework.a$a, reason: collision with other inner class name */
    static class FileObserverC1057a extends FileObserver {
        public FileObserverC1057a(String str) {
            super(str);
        }

        @Override // android.os.FileObserver
        public void onEvent(int i10, String str) {
            if ((i10 & 8) != 8) {
                return;
            }
            ULog.d("--->>> envelope file created >>> " + str);
            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> envelope file created >>> " + str);
            a.c(273);
        }
    }

    static {
        Context appContext = UMGlobalContext.getAppContext();
        if (appContext != null) {
            f85179j = (ConnectivityManager) appContext.getSystemService("connectivity");
        }
        f85193x = new BroadcastReceiver() { // from class: com.umeng.commonsdk.framework.a.2
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                if (intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                    UMWorkDispatch.sendEvent(context, com.umeng.commonsdk.internal.a.E, b.a(context).a(), null);
                }
            }
        };
    }

    public a(Context context, Handler handler) {
        if (f85179j == null) {
            Context appContext = UMGlobalContext.getAppContext();
            if (f85179j != null) {
                f85179j = (ConnectivityManager) appContext.getSystemService("connectivity");
            }
        }
        f85172c = handler;
        try {
            if (f85170a == null) {
                HandlerThread handlerThread = new HandlerThread("NetWorkSender");
                f85170a = handlerThread;
                handlerThread.start();
                if (f85178i == null) {
                    FileObserverC1057a fileObserverC1057a = new FileObserverC1057a(UMFrUtils.getEnvelopeDirPath(context));
                    f85178i = fileObserverC1057a;
                    fileObserverC1057a.startWatching();
                    ULog.d("--->>> FileMonitor has already started!");
                }
                j();
                if (f85171b == null) {
                    f85171b = new Handler(f85170a.getLooper()) { // from class: com.umeng.commonsdk.framework.a.3
                        @Override // android.os.Handler
                        public void handleMessage(Message message) {
                            int i10 = message.what;
                            if (i10 == 273) {
                                ULog.d("--->>> handleMessage: recv MSG_PROCESS_NEXT msg.");
                                try {
                                    a.f85184o.tryLock(1L, TimeUnit.SECONDS);
                                    try {
                                        a.n();
                                    } catch (Throwable unused) {
                                    }
                                    a.f85184o.unlock();
                                    return;
                                } catch (Throwable unused2) {
                                    return;
                                }
                            }
                            if (i10 == 274) {
                                a.l();
                            } else {
                                if (i10 != 512) {
                                    return;
                                }
                                a.m();
                            }
                        }
                    };
                }
                ImprintHandler.getImprintService(context).registImprintCallback(f85185p, this);
                ImprintHandler.getImprintService(context).registImprintCallback(f85186q, this);
            }
        } catch (Throwable th) {
            UMCrashManager.reportCrash(context, th);
        }
    }

    public static int b() {
        int i10;
        synchronized (f85192w) {
            i10 = f85191v;
        }
        return i10;
    }

    public static void c() {
    }

    public static void d() {
        if (f85184o.tryLock()) {
            try {
                b(273);
            } finally {
                f85184o.unlock();
            }
        }
    }

    public static void e() {
        a(274, 3000);
    }

    private void j() {
        synchronized (f85192w) {
            if ("11".equals(UMEnvelopeBuild.imprintProperty(UMModuleRegister.getAppContext(), f85185p, ""))) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> switch to report_policy 11");
                f85187r = true;
                f85191v = 15;
                int iIntValue = Integer.valueOf(UMEnvelopeBuild.imprintProperty(UMModuleRegister.getAppContext(), f85186q, "15")).intValue();
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> set report_interval value to: " + iIntValue);
                if (iIntValue < 3 || iIntValue > 90) {
                    f85191v = 15;
                } else {
                    f85191v = iIntValue * 1000;
                }
            } else {
                f85187r = false;
            }
        }
    }

    private static void k() {
        if (f85170a != null) {
            f85170a = null;
        }
        if (f85171b != null) {
            f85171b = null;
        }
        if (f85172c != null) {
            f85172c = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void l() {
        int size;
        synchronized (f85183n) {
            ArrayList<UMSenderStateNotify> arrayList = f85182m;
            if (arrayList != null && (size = arrayList.size()) > 0) {
                for (int i10 = 0; i10 < size; i10++) {
                    f85182m.get(i10).onSenderIdle();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void m() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void n() {
        ULog.d("--->>> handleProcessNext: Enter...");
        if (f85181l) {
            Context appContext = UMModuleRegister.getAppContext();
            try {
                if (UMFrUtils.envelopeFileNumber(appContext) > 0) {
                    ULog.d("--->>> The envelope file exists.");
                    if (UMFrUtils.envelopeFileNumber(appContext) > 200) {
                        ULog.d("--->>> Number of envelope files is greater than 200, remove old files first.");
                        UMFrUtils.removeRedundantEnvelopeFiles(appContext, 200);
                    }
                    File envelopeFile = UMFrUtils.getEnvelopeFile(appContext);
                    if (envelopeFile != null) {
                        String path = envelopeFile.getPath();
                        ULog.d("--->>> Ready to send envelope file [" + path + "].");
                        UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> send envelope file [ " + path + "].");
                        if (!new c(appContext).a(envelopeFile)) {
                            ULog.d("--->>> Send envelope file failed, abandon and wait next trigger!");
                            return;
                        }
                        ULog.d("--->>> Send envelope file success, delete it.");
                        if (!UMFrUtils.removeEnvelopeFile(envelopeFile)) {
                            ULog.d("--->>> Failed to delete already processed file. We try again after delete failed.");
                            UMFrUtils.removeEnvelopeFile(envelopeFile);
                        }
                        c(273);
                        return;
                    }
                }
                e();
            } catch (Throwable th) {
                UMCrashManager.reportCrash(appContext, th);
            }
        }
    }

    @Override // com.umeng.commonsdk.statistics.internal.UMImprintChangeCallback
    public void onImprintValueChanged(String str, String str2) {
        synchronized (f85192w) {
            if (f85185p.equals(str)) {
                if ("11".equals(str2)) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> switch to report_policy 11");
                    f85187r = true;
                } else {
                    f85187r = false;
                }
            }
            if (f85186q.equals(str)) {
                int iIntValue = Integer.valueOf(str2).intValue();
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> set report_interval value to: " + iIntValue);
                if (iIntValue < 3 || iIntValue > 90) {
                    f85191v = com.join.mgps.socket.entity.b.f73001c;
                } else {
                    f85191v = iIntValue * 1000;
                }
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> really set report_interval value to: " + f85191v);
            }
        }
    }

    public static void a(Context context) {
        if (f85179j != null || context == null) {
            return;
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        f85179j = connectivityManager;
        if (connectivityManager != null) {
            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> createCMIfNeeded:注册网络状态监听器。");
            b(context);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(int i10) {
        Handler handler;
        if (!f85181l || (handler = f85171b) == null) {
            return;
        }
        Message messageObtainMessage = handler.obtainMessage();
        messageObtainMessage.what = i10;
        f85171b.sendMessage(messageObtainMessage);
    }

    @SuppressLint({"NewApi", "MissingPermission"})
    public static void b(Context context) {
        if (context == null) {
            UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> registerNetReceiver: context is null, registerNetReceiver failed.");
            return;
        }
        if (Build.VERSION.SDK_INT >= 33) {
            if (DeviceConfig.checkPermission(context, g.f74778b)) {
                NetworkRequest networkRequestBuild = new NetworkRequest.Builder().addTransportType(0).addTransportType(1).build();
                if (f85179j != null) {
                    final Context applicationContext = context.getApplicationContext();
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> 注册网络状态监听器:registerNetworkCallback");
                    f85179j.registerNetworkCallback(networkRequestBuild, new ConnectivityManager.NetworkCallback() { // from class: com.umeng.commonsdk.framework.a.1
                        @Override // android.net.ConnectivityManager.NetworkCallback
                        public void onAvailable(Network network) {
                            Context context2 = applicationContext;
                            UMWorkDispatch.sendEvent(context2, com.umeng.commonsdk.internal.a.E, b.a(context2).a(), null);
                        }

                        @Override // android.net.ConnectivityManager.NetworkCallback
                        public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
                            super.onCapabilitiesChanged(network, networkCapabilities);
                        }

                        @Override // android.net.ConnectivityManager.NetworkCallback
                        public void onLost(Network network) {
                            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> onLost");
                            Context context2 = applicationContext;
                            UMWorkDispatch.sendEvent(context2, com.umeng.commonsdk.internal.a.E, b.a(context2).a(), null, 2000L);
                        }
                    });
                    return;
                }
                return;
            }
            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> ACCESS_NETWORK_STATE permission access denied.");
            return;
        }
        if (DeviceConfig.checkPermission(context, g.f74778b)) {
            if (f85179j == null || f85180k != null) {
                return;
            }
            IntentFilter intentFilter = new IntentFilter();
            f85180k = intentFilter;
            intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            if (f85193x != null) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> 注册网络状态监听器:registerReceiver");
                context.registerReceiver(f85193x, f85180k);
                return;
            }
            return;
        }
        UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> ACCESS_NETWORK_STATE permission access denied.");
    }

    public static void a(UMSenderStateNotify uMSenderStateNotify) {
        synchronized (f85183n) {
            try {
                if (f85182m == null) {
                    f85182m = new ArrayList<>();
                }
                if (uMSenderStateNotify != null) {
                    for (int i10 = 0; i10 < f85182m.size(); i10++) {
                        if (uMSenderStateNotify == f85182m.get(i10)) {
                            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> addConnStateObserver: input item has exist.");
                            return;
                        }
                    }
                    f85182m.add(uMSenderStateNotify);
                }
            } catch (Throwable th) {
                UMCrashManager.reportCrash(UMModuleRegister.getAppContext(), th);
            }
        }
    }

    public static boolean a() {
        boolean z10;
        synchronized (f85192w) {
            z10 = f85187r;
        }
        return z10;
    }

    public static void a(boolean z10) {
        int size;
        f85181l = z10;
        if (z10) {
            synchronized (f85183n) {
                ArrayList<UMSenderStateNotify> arrayList = f85182m;
                if (arrayList != null && (size = arrayList.size()) > 0) {
                    for (int i10 = 0; i10 < size; i10++) {
                        f85182m.get(i10).onConnectionAvailable();
                    }
                }
            }
            UMRTLog.e(UMRTLog.RTLOG_TAG, "网络状态通知：尝试发送 MSG_PROCESS_NEXT");
            d();
            return;
        }
        ULog.i("--->>> network disconnected.");
        f85181l = false;
    }

    private static void b(int i10) {
        Handler handler;
        if (!f85181l || (handler = f85171b) == null || handler.hasMessages(i10)) {
            return;
        }
        Message messageObtainMessage = f85171b.obtainMessage();
        messageObtainMessage.what = i10;
        f85171b.sendMessage(messageObtainMessage);
    }

    private static void a(int i10, long j10) {
        Handler handler;
        if (!f85181l || (handler = f85171b) == null) {
            return;
        }
        Message messageObtainMessage = handler.obtainMessage();
        messageObtainMessage.what = i10;
        UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> sendMsgDelayed: " + j10);
        f85171b.sendMessageDelayed(messageObtainMessage, j10);
    }

    private static void a(int i10, int i11) {
        Handler handler;
        if (!f85181l || (handler = f85171b) == null) {
            return;
        }
        handler.removeMessages(i10);
        Message messageObtainMessage = f85171b.obtainMessage();
        messageObtainMessage.what = i10;
        f85171b.sendMessageDelayed(messageObtainMessage, i11);
    }
}

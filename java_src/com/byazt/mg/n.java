package com.byazt.mg;

import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 170, 46})
public final class n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Set<String> f16906c;

    static {
        HashSet hashSet = new HashSet();
        f16906c = hashSet;
        hashSet.add("HeapTaskDaemon");
        hashSet.add("ThreadPlus");
        hashSet.add("ApiDispatcher");
        hashSet.add("ApiLocalDispatcher");
        hashSet.add("AsyncLoader");
        hashSet.add("AsyncTask");
        hashSet.add("Binder");
        hashSet.add("PackageProcessor");
        hashSet.add("SettingsObserver");
        hashSet.add("WifiManager");
        hashSet.add("JavaBridge");
        hashSet.add("Compiler");
        hashSet.add("Signal Catcher");
        hashSet.add("GC");
        hashSet.add("ReferenceQueueDaemon");
        hashSet.add("FinalizerDaemon");
        hashSet.add("FinalizerWatchdogDaemon");
        hashSet.add("CookieSyncManager");
        hashSet.add("RefQueueWorker");
        hashSet.add("CleanupReference");
        hashSet.add("VideoManager");
        hashSet.add("DBHelper-AsyncOp");
        hashSet.add("InstalledAppTracker2");
        hashSet.add("AppData-AsyncOp");
        hashSet.add("IdleConnectionMonitor");
        hashSet.add("LogReaper");
        hashSet.add("ActionReaper");
        hashSet.add("Okio Watchdog");
        hashSet.add("CheckWaitingQueue");
        hashSet.add("NPTH-CrashTimer");
        hashSet.add("NPTH-JavaCallback");
        hashSet.add("NPTH-LocalParser");
        hashSet.add("ANR_FILE_MODIFY");
    }

    public static Set<String> c() {
        return f16906c;
    }
}

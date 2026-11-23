package com.byazt.bt;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.SystemClock;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.byazt.dna.qp;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 274, 42})
public class i {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile long f12056c = 0;
    public static volatile int tt = -1;
    public static volatile int ve = 60000;
    public static final AtomicBoolean uj = new AtomicBoolean(false);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final Map<com.byazt.fn.ve, Object> f12057n = new ConcurrentHashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static AtomicBoolean f12055a = new AtomicBoolean(false);
    public static final Object sp = new Object();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static com.byazt.fn.n f12058x = null;

    @com.byazt.zqa.c(c = {0, 1, 274, 64})
    private static class c extends BroadcastReceiver {
        private c() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            boolean z10 = false;
            boolean booleanExtra = intent.getBooleanExtra("noConnectivity", false);
            if (i.f12057n != null && i.f12057n.size() > 0) {
                z10 = true;
            }
            i.tt(context, intent, z10, booleanExtra);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int tt(Context context) {
        tt = ve(context);
        f12056c = SystemClock.elapsedRealtime();
        return tt;
    }

    private static int ve(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isAvailable()) {
                int type = activeNetworkInfo.getType();
                if (type != 0) {
                    return type != 1 ? 1 : 4;
                }
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                switch (activeNetworkInfo.getSubtype()) {
                    case 1:
                    case 2:
                    case 4:
                    case 7:
                    case 11:
                    case 16:
                        return 2;
                    case 3:
                    case 5:
                    case 6:
                    case 8:
                    case 9:
                    case 10:
                    case 12:
                    case 14:
                    case 15:
                    case 17:
                        return 3;
                    case 13:
                    case 18:
                    case 19:
                        com.byazt.fn.n nVar = f12058x;
                        return (nVar == null || !nVar.c(context, telephonyManager)) ? 5 : 6;
                    case 20:
                        return 6;
                    default:
                        String subtypeName = activeNetworkInfo.getSubtypeName();
                        return (TextUtils.isEmpty(subtypeName) || !("TD-SCDMA".equalsIgnoreCase(subtypeName) || "WCDMA".equalsIgnoreCase(subtypeName) || "CDMA2000".equalsIgnoreCase(subtypeName))) ? 1 : 3;
                }
            }
            return 0;
        } catch (Throwable unused) {
            return 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void tt(final Context context, final Intent intent, final boolean z10, final boolean z11) {
        if (!z10 && z11) {
            tt = 0;
        } else if (uj.compareAndSet(false, true)) {
            ((qp) com.byazt.ut.uj.getService("thread_service")).executeFastTask(new Runnable() { // from class: com.byazt.bt.i.1
                @Override // java.lang.Runnable
                public void run() {
                    int unused = i.tt = z11 ? 0 : i.tt(context);
                    if (z10) {
                        i.tt(context, intent, i.tt, z11);
                    }
                    i.uj.set(false);
                }
            });
        }
    }

    public static void c(com.byazt.fn.n nVar) {
        f12058x = nVar;
    }

    public static void c(com.byazt.fn.ve veVar, Context context) {
        if (veVar == null) {
            return;
        }
        if (!f12055a.get()) {
            try {
                context.registerReceiver(new c(), new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                f12055a.set(true);
            } catch (Throwable unused) {
            }
        }
        f12057n.put(veVar, sp);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void tt(Context context, Intent intent, int i10, boolean z10) {
        Map<com.byazt.fn.ve, Object> map = f12057n;
        if (map == null || map.size() <= 0) {
            return;
        }
        for (com.byazt.fn.ve veVar : map.keySet()) {
            if (veVar != null) {
                veVar.onNetworkChanged(context, intent, !z10, i10);
            }
        }
    }

    public static void c(com.byazt.fn.ve veVar) {
        if (veVar == null) {
            return;
        }
        f12057n.remove(veVar);
    }

    public static int c(Context context, long j10) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (f12056c + j10 <= jElapsedRealtime) {
            return tt(context);
        }
        if (tt == -1) {
            return tt(context);
        }
        if (jElapsedRealtime - f12056c >= ve) {
            tt(context, (Intent) null, false, false);
        }
        return tt;
    }
}

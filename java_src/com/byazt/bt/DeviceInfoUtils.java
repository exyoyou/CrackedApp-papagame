package com.byazt.bt;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.net.wifi.WifiInfo;
import android.os.Build;
import android.os.PowerManager;
import android.os.SystemClock;
import android.provider.Settings;
import android.telephony.CellInfo;
import android.telephony.CellInfoCdma;
import android.telephony.CellInfoGsm;
import android.telephony.CellInfoLte;
import android.telephony.CellInfoWcdma;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.byazt.bv.BaseConstants;
import com.byazt.dna.qp;
import com.byazt.nr.m;
import com.byazt.nr.rh;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.List;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import q0.b;
import q0.d;
import q0.e;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 274, 2484})
public class DeviceInfoUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static volatile BroadcastReceiver f12025a = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile int f12026c = -1;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public static volatile String f12027da = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static volatile String f12028i = null;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static volatile boolean f12030n = true;
    public static volatile long nu;
    public static volatile long sl;
    public static volatile BroadcastReceiver sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static volatile long f12031t;
    public static volatile boolean tt;
    public static volatile boolean uj;
    public static volatile boolean ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static volatile ContentObserver f12033x;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static AtomicInteger f12032u = new AtomicInteger(-1);
    public static AtomicBoolean yp = new AtomicBoolean(false);

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static volatile long f12034z = System.currentTimeMillis();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static volatile float f12029m = -2.0f;
    public static long rh = 0;

    @com.byazt.zqa.c(c = {0, 1, 274, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_HTTP_RES_FINSIH_TIME})
    public static class ScreenStatusReceiver extends BroadcastReceiver {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public com.byazt.lz.ve f12035c;

        public ScreenStatusReceiver(com.byazt.lz.ve veVar) {
            this.f12035c = veVar;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, final Intent intent) {
            com.byazt.nr.da.tt().post(new Runnable() { // from class: com.byazt.bt.DeviceInfoUtils.ScreenStatusReceiver.1
                @Override // java.lang.Runnable
                public void run() {
                    ScreenStatusReceiver screenStatusReceiver = ScreenStatusReceiver.this;
                    screenStatusReceiver.c(intent, screenStatusReceiver.f12035c.uj());
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void c(final Intent intent, boolean z10) {
            if ("android.intent.action.SCREEN_ON".equals(intent.getAction())) {
                boolean unused = DeviceInfoUtils.f12030n = true;
                return;
            }
            if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
                boolean unused2 = DeviceInfoUtils.f12030n = false;
                if (z10) {
                    return;
                }
                ((qp) com.byazt.ut.uj.getService("thread_service")).getIoExecutor().execute(new com.byazt.bwm.sp("updateScreenStatus") { // from class: com.byazt.bt.DeviceInfoUtils.ScreenStatusReceiver.2
                    @Override // java.lang.Runnable
                    public void run() {
                        ((com.byazt.dna.n) com.byazt.ut.uj.getService("armor_service")).updateScreenStatus(intent.getAction());
                    }
                });
                return;
            }
            if ("android.intent.action.USER_PRESENT".equals(intent.getAction())) {
                long unused3 = DeviceInfoUtils.f12034z = System.currentTimeMillis();
            }
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 274, 1895})
    public static class c implements com.byazt.fn.ve {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public com.byazt.lz.ve f12038c;

        public c(com.byazt.lz.ve veVar) {
            this.f12038c = veVar;
        }

        @Override // com.byazt.fn.ve
        public void onNetworkChanged(Context context, Intent intent, boolean z10, int i10) {
            if (DeviceInfoUtils.f12032u.get() == i10) {
                return;
            }
            com.byazt.eq.c.mIsNeedUpdateIp.set(true);
            DeviceInfoUtils.f12032u.set(i10);
            tt.f12065c.set(true);
            DeviceInfoUtils.yp.set(true);
            com.byazt.dna.n nVar = (com.byazt.dna.n) com.byazt.ut.uj.getService("armor_service");
            if (this.f12038c.uj()) {
                return;
            }
            nVar.updateNetworkStatus(i10);
        }
    }

    public static boolean a(Context context) {
        if (!f12030n && SystemClock.elapsedRealtime() - rh >= 10000) {
            rh = SystemClock.elapsedRealtime();
            try {
                PowerManager powerManager = (PowerManager) context.getSystemService("power");
                if (powerManager != null) {
                    f12030n = powerManager.isInteractive();
                }
            } catch (Throwable th) {
                m.c(th);
            }
        }
        return f12030n;
    }

    public static void n(Context context) {
        if (uj && f12033x != null) {
            context.getContentResolver().unregisterContentObserver(f12033x);
        }
    }

    public static float sp(Context context) {
        if (f12029m != -2.0f && !c(nu, 30000L)) {
            return f12029m;
        }
        int i10 = -1;
        if (context != null) {
            try {
                i10 = Settings.System.getInt(context.getContentResolver(), "screen_brightness", -1);
            } catch (Throwable th) {
                m.uj("DeviceInfoUtils", th.getMessage());
            }
        }
        if (i10 < 0) {
            f12029m = -1.0f;
        } else {
            f12029m = Math.round((i10 / 255.0f) * 10.0f) / 10.0f;
        }
        nu = System.currentTimeMillis();
        return f12029m;
    }

    public static boolean tt(Context context) {
        try {
            return (context.getResources().getConfiguration().uiMode & 15) == 4;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static long tt() {
        return f12034z;
    }

    public static void uj(Context context) {
        try {
            if (ve && sp != null) {
                context.getApplicationContext().unregisterReceiver(sp);
            }
        } catch (Throwable th) {
            m.c(th);
        }
    }

    public static void ve(Context context) {
        try {
            if (tt && f12025a != null) {
                context.getApplicationContext().unregisterReceiver(f12025a);
            }
        } catch (Throwable th) {
            m.c(th);
        }
    }

    public static int c() {
        int rawOffset = TimeZone.getDefault().getRawOffset() / BaseConstants.Time.HOUR;
        if (rawOffset < -12) {
            rawOffset = -12;
        }
        if (rawOffset > 12) {
            return 12;
        }
        return rawOffset;
    }

    private static String tt(int i10, com.byazt.dna.c cVar, Context context) {
        List<CellInfo> allCellInfo;
        int dbm;
        WifiInfo wifiInfoC;
        int iVe = rh.ve(context);
        com.byazt.lz.c customController = cVar.getCustomController();
        if (iVe == 4) {
            if (i10 == 0) {
                try {
                    if (!customController.isCanUseWifiState() || (wifiInfoC = ve.c(cVar, context)) == null) {
                        return "unknown";
                    }
                    return wifiInfoC.getRssi() + "dBm";
                } catch (Throwable unused) {
                }
            }
            return "unknown";
        }
        if (customController.isCanUsePhoneState() && customController.isCanUseLocation() && i10 == 1) {
            try {
                if (ve.tt(context)) {
                    TelephonyManager telephonyManagerC = ve.c(context);
                    int i11 = Build.VERSION.SDK_INT;
                    if (telephonyManagerC == null || (allCellInfo = telephonyManagerC.getAllCellInfo()) == null) {
                        return "unknown";
                    }
                    CellInfo cellInfo = allCellInfo.get(0);
                    if (cellInfo instanceof CellInfoGsm) {
                        dbm = ((CellInfoGsm) cellInfo).getCellSignalStrength().getDbm();
                    } else if (cellInfo instanceof CellInfoCdma) {
                        dbm = ((CellInfoCdma) cellInfo).getCellSignalStrength().getDbm();
                    } else if (cellInfo instanceof CellInfoLte) {
                        dbm = ((CellInfoLte) cellInfo).getCellSignalStrength().getDbm();
                    } else if (cellInfo instanceof CellInfoWcdma) {
                        dbm = ((CellInfoWcdma) cellInfo).getCellSignalStrength().getDbm();
                    } else if (i11 >= 29 && q0.a.a(cellInfo)) {
                        dbm = b.a(cellInfo).getCellSignalStrength().getDbm();
                    } else if (i11 >= 29 && d.a(cellInfo)) {
                        dbm = e.a(cellInfo).getCellSignalStrength().getDbm();
                    }
                    if (Integer.MIN_VALUE == dbm) {
                        return "unknown";
                    }
                    return dbm + "dBm";
                }
            } catch (Throwable unused2) {
            }
        }
        return "unknown";
    }

    public static int c(Context context, boolean z10, com.byazt.dna.c cVar, int i10) {
        if (f12026c != -1) {
            return f12026c;
        }
        if (z10) {
            String strC = x.c("dev06", 2592000000L, cVar);
            try {
                if (!TextUtils.isEmpty(strC)) {
                    f12026c = Integer.parseInt(strC);
                }
            } catch (Exception unused) {
            }
            if (f12026c != -1) {
                return f12026c;
            }
        }
        if (tt(context)) {
            f12026c = 3;
        } else if (c(context)) {
            f12026c = 2;
        } else {
            f12026c = 1;
        }
        if (z10) {
            x.c("dev06", String.valueOf(f12026c), cVar, i10);
        }
        return f12026c;
    }

    public static boolean c(Context context) {
        try {
            return (context.getResources().getConfiguration().screenLayout & 15) >= 3;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static void c(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        if (tt) {
            return;
        }
        try {
            PowerManager powerManager = (PowerManager) context.getSystemService("power");
            if (powerManager != null) {
                f12030n = powerManager.isScreenOn();
            }
        } catch (Throwable th) {
            m.c(th);
        }
        try {
            f12025a = broadcastReceiver;
            context.getApplicationContext().registerReceiver(f12025a, intentFilter);
            tt = true;
        } catch (Throwable th2) {
            m.c(th2);
        }
    }

    public static boolean c(long j10, long j11) {
        return System.currentTimeMillis() - j10 > j11;
    }

    public static String c(int i10, com.byazt.dna.c cVar, Context context) {
        if (i10 == 0 && !TextUtils.isEmpty(f12028i) && !c(sl, 60000L)) {
            return f12028i;
        }
        if (i10 == 1 && !TextUtils.isEmpty(f12027da) && !c(f12031t, 60000L)) {
            return f12027da;
        }
        String strTt = tt(i10, cVar, context);
        if (i10 == 0) {
            f12028i = strTt;
            sl = System.currentTimeMillis();
        } else if (i10 == 1) {
            f12027da = strTt;
            f12031t = System.currentTimeMillis();
        }
        return strTt;
    }
}

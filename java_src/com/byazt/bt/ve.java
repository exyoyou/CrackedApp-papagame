package com.byazt.bt;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.provider.Settings;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.byazt.dna.qp;
import com.byazt.nr.m;
import com.efs.sdk.base.core.util.NetworkUtil;
import com.haima.hmcp.beans.HmInputMappingContent;
import com.kuaishou.weapon.p0.g;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
import q0.q;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 274, 54})
public class ve {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static volatile String f12067a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static String f12068c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static volatile WifiManager f12069d;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public static volatile String f12070da;
    public static volatile WifiInfo eo;
    public static volatile boolean gr;
    public static volatile boolean gt;
    public static volatile boolean gu;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static volatile TelephonyManager f12071h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static volatile String f12072i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static volatile boolean f12073m;
    public static volatile boolean md;
    public static volatile boolean my;
    public static volatile boolean nu;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static volatile long f12075p;
    public static volatile boolean qy;
    public static volatile boolean rh;
    public static volatile boolean rl;
    public static volatile String sl;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static volatile String f12076t;
    public static volatile String tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static volatile String f12077u;
    public static volatile String uj;
    public static volatile String ve;
    public static volatile String yp;
    public static volatile String yv;
    public static volatile boolean zm;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static AtomicBoolean f12074n = new AtomicBoolean(false);
    public static volatile String sp = "";

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static volatile boolean f12078x = true;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static volatile String f12079z = null;

    private static String a(Context context) {
        if (gt) {
            return f12067a;
        }
        synchronized (ve.class) {
            if (gt) {
                return f12067a;
            }
            if (nu) {
                return tt;
            }
            TelephonyManager telephonyManagerC = c(context);
            if (telephonyManagerC == null) {
                return f12067a;
            }
            try {
                f12067a = telephonyManagerC.getSubscriberId();
            } catch (Throwable unused) {
            }
            gt = true;
            return f12067a;
        }
    }

    private static String da(com.byazt.dna.c cVar, Context context) {
        if (rh) {
            return ve;
        }
        synchronized (ve.class) {
            if (rh) {
                return ve;
            }
            try {
                WifiInfo wifiInfoC = c(cVar, context);
                if (wifiInfoC == null) {
                    return ve;
                }
                ve = wifiInfoC.getSSID();
                rh = true;
                return ve;
            } catch (Throwable unused) {
            }
        }
    }

    public static String i(com.byazt.dna.c cVar, Context context) {
        t(cVar, context);
        return f12077u;
    }

    private static void n(Context context) {
        synchronized (ve.class) {
            if (f12073m) {
                return;
            }
            if (nu) {
                return;
            }
            if (uj.c(context, g.f74779c) == 0) {
                nu = true;
                TelephonyManager telephonyManagerC = c(context);
                if (telephonyManagerC == null) {
                    return;
                }
                try {
                    if (Build.VERSION.SDK_INT >= 26) {
                        tt = telephonyManagerC.getImei();
                    } else {
                        tt = telephonyManagerC.getDeviceId();
                    }
                } catch (Throwable unused) {
                }
                f12073m = true;
            }
        }
    }

    private static String sl(com.byazt.dna.c cVar, Context context) {
        if (my) {
            return uj;
        }
        synchronized (ve.class) {
            if (my) {
                return uj;
            }
            uj = ve(cVar, context);
            my = true;
            return uj;
        }
    }

    public static String sp(com.byazt.dna.c cVar, Context context) {
        t(cVar, context);
        return sl;
    }

    private static void t(com.byazt.dna.c cVar, Context context) {
        String strUj;
        String simOperatorName;
        String strSubstring;
        if (gu) {
            return;
        }
        synchronized (ve.class) {
            if (gu) {
                return;
            }
            TelephonyManager telephonyManagerC = c(context);
            String strSubstring2 = null;
            try {
                strUj = telephonyManagerC.getNetworkOperator();
            } catch (Throwable unused) {
                strUj = null;
            }
            if (TextUtils.isEmpty(strUj) || strUj.length() < 5) {
                strUj = uj(cVar, context);
            }
            try {
                simOperatorName = telephonyManagerC.getSimOperatorName();
            } catch (Throwable unused2) {
                simOperatorName = null;
            }
            if (TextUtils.isEmpty(strUj) || strUj.length() <= 4) {
                strSubstring = null;
            } else {
                strSubstring2 = strUj.substring(0, 3);
                strSubstring = strUj.substring(3);
            }
            if (!TextUtils.isEmpty(strSubstring2)) {
                f12072i = strSubstring2;
            }
            if (!TextUtils.isEmpty(strSubstring)) {
                sl = strSubstring;
            }
            if (!TextUtils.isEmpty(simOperatorName)) {
                f12077u = simOperatorName;
            }
            try {
                sp(context);
            } catch (Throwable th) {
                m.c(th);
            }
            gu = true;
        }
    }

    public static String tt(Boolean bool, com.byazt.dna.c cVar, Context context) {
        if (!TextUtils.isEmpty(f12067a)) {
            return f12067a;
        }
        if (bool == null) {
            com.byazt.lz.c customController = cVar.getCustomController();
            if (customController != null && !customController.isCanUsePhoneState()) {
                return null;
            }
        } else {
            if (gt || nu) {
                return f12067a;
            }
            if (!bool.booleanValue()) {
                return null;
            }
        }
        return a(context);
    }

    private static WifiManager uj(Context context) {
        if (f12069d != null) {
            return f12069d;
        }
        synchronized (ve.class) {
            if (f12069d != null) {
                return f12069d;
            }
            f12069d = (WifiManager) context.getApplicationContext().getSystemService(NetworkUtil.NETWORK_TYPE_WIFI);
            return f12069d;
        }
    }

    public static String ve(Boolean bool, com.byazt.dna.c cVar, Context context) {
        if (!TextUtils.isEmpty(ve)) {
            return ve;
        }
        if (bool == null) {
            com.byazt.lz.c customController = cVar.getCustomController();
            if (customController != null && (!customController.isCanUseWifiState() || !customController.isCanUseLocation())) {
                return null;
            }
        } else {
            if (rh) {
                return ve;
            }
            if (bool.booleanValue()) {
                return null;
            }
        }
        return da(cVar, context);
    }

    public static String x(com.byazt.dna.c cVar, Context context) {
        t(cVar, context);
        return f12076t;
    }

    public static TelephonyManager c(Context context) {
        if (f12071h != null) {
            return f12071h;
        }
        synchronized (ve.class) {
            if (f12071h != null) {
                return f12071h;
            }
            f12071h = (TelephonyManager) context.getSystemService("phone");
            return f12071h;
        }
    }

    private static synchronized void sp(Context context) {
        String strValueOf;
        String strValueOf2;
        if (md) {
            return;
        }
        if (Build.VERSION.SDK_INT < 22) {
            return;
        }
        synchronized (ve.class) {
            md = true;
            SubscriptionManager subscriptionManagerA = q0.n.a(context.getSystemService("telephony_subscription_service"));
            if (subscriptionManagerA.getActiveSubscriptionInfoCount() < 2) {
                return;
            }
            List activeSubscriptionInfoList = subscriptionManagerA.getActiveSubscriptionInfoList();
            if (activeSubscriptionInfoList.size() < 2) {
                return;
            }
            for (int i10 = 0; i10 < 2; i10++) {
                SubscriptionInfo subscriptionInfoA = q.a(activeSubscriptionInfoList.get(i10));
                if (Build.VERSION.SDK_INT >= 29) {
                    strValueOf = subscriptionInfoA.getMccString();
                    strValueOf2 = subscriptionInfoA.getMncString();
                } else {
                    strValueOf = String.valueOf(subscriptionInfoA.getMcc());
                    strValueOf2 = String.valueOf(subscriptionInfoA.getMnc());
                }
                if (i10 == 0) {
                    if (!TextUtils.isEmpty(strValueOf)) {
                        f12072i = strValueOf;
                    }
                    if (!TextUtils.isEmpty(strValueOf2)) {
                        sl = strValueOf2;
                    }
                } else {
                    if (!TextUtils.isEmpty(strValueOf)) {
                        f12070da = strValueOf;
                    }
                    if (!TextUtils.isEmpty(strValueOf2)) {
                        f12076t = strValueOf2;
                    }
                }
            }
        }
    }

    public static String tt(final com.byazt.dna.c cVar, final Context context) {
        if (TextUtils.isEmpty(uj) && !my) {
            if (f12074n.get()) {
                return null;
            }
            f12074n.set(true);
            ((qp) com.byazt.ut.uj.getService("thread_service")).getIoExecutor().execute(new com.byazt.bwm.sp("") { // from class: com.byazt.bt.ve.1
                @Override // java.lang.Runnable
                public void run() {
                    ve.uj(null, cVar, context);
                    ve.f12074n.set(false);
                }
            });
            return null;
        }
        return uj;
    }

    public static String ve(com.byazt.dna.c cVar, Context context) {
        try {
            WifiInfo wifiInfoC = c(cVar, context);
            if (wifiInfoC == null) {
                return "02:00:00:00:00:00";
            }
            String bssid = wifiInfoC.getBSSID();
            return TextUtils.isEmpty(bssid) ? "02:00:00:00:00:00" : bssid;
        } catch (Throwable unused) {
            return "02:00:00:00:00:00";
        }
    }

    public static String uj(Boolean bool, com.byazt.dna.c cVar, Context context) {
        if (!TextUtils.isEmpty(uj)) {
            return uj;
        }
        if (bool == null) {
            com.byazt.lz.c customController = cVar.getCustomController();
            if (customController != null && (!customController.isCanUseWifiState() || !customController.isCanUseLocation())) {
                return null;
            }
        } else {
            if (my) {
                return uj;
            }
            if (bool.booleanValue()) {
                return null;
            }
        }
        return sl(cVar, context);
    }

    public static WifiInfo c(com.byazt.dna.c cVar, Context context) {
        com.byazt.lz.c customController = cVar.getCustomController();
        if (customController != null && (!customController.isCanUseWifiState() || !customController.isCanUseLocation())) {
            return eo;
        }
        if (eo != null) {
            return eo;
        }
        synchronized (ve.class) {
            if (eo != null) {
                return eo;
            }
            WifiManager wifiManagerUj = uj(context);
            if (wifiManagerUj == null) {
                return eo;
            }
            eo = wifiManagerUj.getConnectionInfo();
            return eo;
        }
    }

    @SuppressLint({"TrulyRandom", "HardwareIds"})
    public static synchronized String ve(Context context) {
        String string = null;
        if (context == null) {
            return null;
        }
        try {
            string = Settings.Secure.getString(context.getContentResolver(), "android_id");
        } catch (Exception unused) {
        }
        if (TextUtils.isEmpty(string) || string.length() < 13) {
            string = "";
        }
        return string;
    }

    public static boolean tt(Context context) {
        if (qy) {
            return f12078x;
        }
        synchronized (ve.class) {
            if (qy) {
                return f12078x;
            }
            try {
                int simState = c(context).getSimState();
                if (1 == simState) {
                    f12078x = false;
                }
                if (simState == 0) {
                    f12078x = false;
                }
                qy = true;
            } catch (Throwable unused) {
            }
            return f12078x;
        }
    }

    public static String a(com.byazt.dna.c cVar, Context context) {
        t(cVar, context);
        return f12070da;
    }

    private static String ve(com.byazt.dna.c cVar, boolean z10, int i10, com.byazt.lz.ve veVar) {
        try {
            String strTt = x.tt("new_mac_address", "", cVar);
            if (!TextUtils.isEmpty(strTt)) {
                JSONObject jSONObject = new JSONObject(strTt);
                long j10 = jSONObject.getLong("time");
                String strDecryptAESWithCBC = ((com.byazt.dna.n) com.byazt.ut.uj.getService("armor_service")).decryptAESWithCBC(jSONObject.getString(HmInputMappingContent.FIELD_VALUE));
                if (System.currentTimeMillis() - j10 <= 864000000 && !TextUtils.isEmpty(strDecryptAESWithCBC)) {
                    return strDecryptAESWithCBC;
                }
            }
        } catch (Exception unused) {
        }
        c(cVar, z10, i10, veVar);
        return f12079z;
    }

    public static String n(com.byazt.dna.c cVar, Context context) {
        try {
            t(cVar, context);
            if (!TextUtils.isEmpty(f12072i)) {
                return f12072i;
            }
            if (!c(f12075p, 60000L)) {
                return yv;
            }
            if (!tt(context)) {
                return null;
            }
            int i10 = context.getResources().getConfiguration().mcc;
            String strValueOf = i10 != 0 ? String.valueOf(i10) : f12072i;
            yv = strValueOf;
            f12075p = System.currentTimeMillis();
            return strValueOf;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String uj(com.byazt.dna.c cVar, Context context) {
        com.byazt.lz.c customController = cVar.getCustomController();
        if (customController != null && !customController.isCanUsePhoneState()) {
            return "";
        }
        if (!TextUtils.isEmpty(sp)) {
            return sp;
        }
        if (rl) {
            return sp;
        }
        synchronized (ve.class) {
            if (rl) {
                return sp;
            }
            TelephonyManager telephonyManagerC = c(context);
            if (telephonyManagerC == null) {
                return sp;
            }
            try {
                sp = telephonyManagerC.getSimOperator();
            } catch (Throwable unused) {
            }
            rl = true;
            return sp;
        }
    }

    public static String c(Boolean bool, com.byazt.dna.c cVar, Context context) {
        if (!TextUtils.isEmpty(tt)) {
            return tt;
        }
        com.byazt.lz.c customController = cVar.getCustomController();
        if (bool == null) {
            return c(customController, customController != null && customController.isCanUsePhoneState(), context);
        }
        if (f12073m) {
            return tt;
        }
        return c(customController, bool.booleanValue(), context);
    }

    private static String tt(com.byazt.dna.c cVar, boolean z10, int i10, com.byazt.lz.ve veVar) {
        if (zm) {
            return f12079z;
        }
        synchronized (ve.class) {
            if (zm) {
                return f12079z;
            }
            f12079z = ve(cVar, z10, i10, veVar);
            zm = true;
            return f12079z;
        }
    }

    private static String c(com.byazt.lz.c cVar, boolean z10, Context context) {
        if (cVar != null && !z10) {
            String devImei = cVar.getDevImei();
            tt = devImei;
            return devImei;
        }
        if (f12073m) {
            return tt;
        }
        n(context);
        return tt;
    }

    public static String c(com.byazt.dna.c cVar) {
        com.byazt.lz.c customController = cVar.getCustomController();
        if (customController != null && !customController.isCanUsePhoneState()) {
            return null;
        }
        if (!TextUtils.isEmpty(yp)) {
            return yp;
        }
        if (gr) {
            return yp;
        }
        synchronized (ve.class) {
            if (gr) {
                return yp;
            }
            if (Build.VERSION.SDK_INT >= 28) {
                try {
                    yp = Build.getSerial();
                } catch (Throwable unused) {
                }
            } else {
                yp = Build.SERIAL;
            }
            gr = true;
            return yp;
        }
    }

    private static void c(com.byazt.dna.c cVar, boolean z10, int i10, com.byazt.lz.ve veVar) {
        String strC = tt.c(cVar, z10, i10, veVar);
        if (TextUtils.isEmpty(strC)) {
            strC = "DU:MM:YA:DD:RE:SS";
        }
        x.c("mac_address", strC, cVar, i10);
        x.c("new_mac_address", ((com.byazt.dna.n) com.byazt.ut.uj.getService("armor_service")).encryptAESWithCBC(strC), cVar, i10);
        f12079z = strC;
    }

    public static String c(Boolean bool, com.byazt.dna.c cVar, boolean z10, int i10, com.byazt.lz.ve veVar) {
        if (!TextUtils.isEmpty(f12079z)) {
            return f12079z;
        }
        com.byazt.lz.c customController = cVar.getCustomController();
        if (bool == null) {
            if (customController != null && !customController.isCanUseWifiState()) {
                return customController.getMacAddress();
            }
        } else {
            if (zm) {
                return f12079z;
            }
            if (customController != null && !bool.booleanValue()) {
                return customController.getMacAddress();
            }
        }
        return tt(cVar, z10, i10, veVar);
    }

    private static boolean c(long j10, long j11) {
        return System.currentTimeMillis() - j10 > j11;
    }

    public static String c(Context context, com.byazt.dna.c cVar) {
        TelephonyManager telephonyManagerC;
        try {
            com.byazt.lz.c customController = cVar.getCustomController();
            if ((customController == null || customController.isCanUsePhoneState()) && (telephonyManagerC = c(context)) != null && Build.VERSION.SDK_INT >= 22) {
                return telephonyManagerC.createForSubscriptionId(SubscriptionManager.getDefaultDataSubscriptionId()).getSimOperator();
            }
        } catch (Exception unused) {
        }
        return null;
    }
}

package com.tencent.stat;

import android.content.Context;
import com.tencent.stat.common.StatConstants;
import com.tencent.stat.common.StatLogger;
import java.util.Iterator;
import org.apache.http.HttpHost;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class StatConfig {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static String f83780n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static String f83781o;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static StatLogger f83771e = com.tencent.stat.common.k.b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static b f83767a = new b(2);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static b f83768b = new b(1);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static StatReportStrategy f83772f = StatReportStrategy.APP_LAUNCH;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f83773g = true;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static int f83774h = 30000;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static int f83775i = 1024;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static int f83776j = 30;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static int f83777k = 3;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static int f83778l = 30;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static String f83769c = "__HIBERNATE__";

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static String f83779m = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static String f83770d = "";

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static int f83782p = 1440;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static int f83783q = 1024;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static boolean f83784r = true;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static long f83785s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static long f83786t = e0.a.f90863b;
    public static boolean isAutoExceptionCaught = true;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static String f83787u = "http://pingma.qq.com:80/mstat/report";

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static int f83788v = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static volatile int f83789w = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static int f83790x = 20;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static int f83791y = 0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static boolean f83792z = false;
    private static int A = 4096;
    private static boolean B = false;
    private static String C = null;

    static int a() {
        return f83776j;
    }

    static HttpHost b() {
        int i10;
        String str = f83779m;
        if (str == null || str.length() <= 0) {
            return null;
        }
        String str2 = f83779m;
        String[] strArrSplit = str2.split(":");
        if (strArrSplit.length == 2) {
            str2 = strArrSplit[0];
            i10 = Integer.parseInt(strArrSplit[1]);
        } else {
            i10 = 80;
        }
        return new HttpHost(str2, i10);
    }

    static synchronized void c() {
        f83789w++;
    }

    static void d() {
        f83791y++;
    }

    static int e() {
        return f83791y;
    }

    public static synchronized String getAppKey(Context context) {
        String str = f83780n;
        if (str != null) {
            return str;
        }
        if (context != null && str == null) {
            f83780n = com.tencent.stat.common.k.i(context);
        }
        String str2 = f83780n;
        if (str2 == null || str2.trim().length() == 0) {
            f83771e.error("AppKey can not be null or empty, please read Developer's Guide first!");
        }
        return f83780n;
    }

    public static int getCurSessionStatReportCount() {
        return f83789w;
    }

    public static String getCustomProperty(String str) {
        try {
            return f83767a.f83866b.getString(str);
        } catch (Throwable th) {
            f83771e.e(th);
            return null;
        }
    }

    public static String getCustomUserId(Context context) {
        if (context == null) {
            f83771e.error("Context for getCustomUid is null.");
            return null;
        }
        if (C == null) {
            C = com.tencent.stat.common.p.a(context, "MTA_CUSTOM_UID", "");
        }
        return C;
    }

    public static DeviceInfo getDeviceInfo(Context context) {
        return StatMid.getDeviceInfo(context);
    }

    public static synchronized String getInstallChannel(Context context) {
        String str = f83781o;
        if (str != null) {
            return str;
        }
        String strJ = com.tencent.stat.common.k.j(context);
        f83781o = strJ;
        if (strJ == null || strJ.trim().length() == 0) {
            f83771e.w("installChannel can not be null or empty, please read Developer's Guide first!");
        }
        return f83781o;
    }

    public static int getMaxBatchReportCount() {
        return f83778l;
    }

    public static int getMaxDaySessionNumbers() {
        return f83790x;
    }

    public static int getMaxParallelTimmingEvents() {
        return f83783q;
    }

    public static int getMaxReportEventLength() {
        return A;
    }

    public static int getMaxSendRetryCount() {
        return f83777k;
    }

    public static int getMaxSessionStatReportCount() {
        return f83788v;
    }

    public static int getMaxStoreEventCount() {
        return f83775i;
    }

    public static String getMid(Context context) {
        return StatMid.getMid(context);
    }

    public static String getQQ() {
        return f83770d;
    }

    public static int getSendPeriodMinutes() {
        return f83782p;
    }

    public static int getSessionTimoutMillis() {
        return f83774h;
    }

    public static String getStatReportUrl() {
        return f83787u;
    }

    public static StatReportStrategy getStatSendStrategy() {
        return f83772f;
    }

    public static void initNativeCrashReport(Context context, String str) {
        if (isEnableStatService()) {
            if (context == null) {
                f83771e.error("The Context of StatConfig.initNativeCrashReport() can not be null!");
            } else {
                StatNativeCrashReport.initNativeCrash(context, str);
            }
        }
    }

    public static boolean isAutoExceptionCaught() {
        return isAutoExceptionCaught;
    }

    public static boolean isDebugEnable() {
        return com.tencent.stat.common.k.b().isDebugEnable();
    }

    public static boolean isEnableConcurrentProcess() {
        return B;
    }

    public static boolean isEnableSmartReporting() {
        return f83784r;
    }

    public static boolean isEnableStatService() {
        return f83773g;
    }

    public static void setAppKey(Context context, String str) {
        StatLogger statLogger;
        String str2;
        if (context == null) {
            statLogger = f83771e;
            str2 = "ctx in StatConfig.setAppKey() is null";
        } else {
            if (str != null && str.length() <= 256) {
                if (f83780n == null) {
                    f83780n = a(context);
                }
                if (a(str) || a(com.tencent.stat.common.k.i(context))) {
                    a(context, f83780n);
                    return;
                }
                return;
            }
            statLogger = f83771e;
            str2 = "appkey in StatConfig.setAppKey() is null or exceed 256 bytes";
        }
        statLogger.error(str2);
    }

    public static void setAutoExceptionCaught(boolean z10) {
        isAutoExceptionCaught = z10;
    }

    public static void setCustomUserId(Context context, String str) {
        if (context == null) {
            f83771e.error("Context for setCustomUid is null.");
        } else {
            com.tencent.stat.common.p.b(context, "MTA_CUSTOM_UID", str);
            C = str;
        }
    }

    public static void setDebugEnable(boolean z10) {
        com.tencent.stat.common.k.b().setDebugEnable(z10);
        a(z10);
    }

    public static void setEnableConcurrentProcess(boolean z10) {
        B = z10;
    }

    public static void setEnableSmartReporting(boolean z10) {
        f83784r = z10;
    }

    public static void setEnableStatService(boolean z10) {
        f83773g = z10;
        if (z10) {
            return;
        }
        f83771e.warn("!!!!!!MTA StatService has been disabled!!!!!!");
    }

    public static void setInstallChannel(String str) {
        if (str.length() > 128) {
            f83771e.error("the length of installChannel can not exceed the range of 128 bytes.");
        } else {
            f83781o = str;
        }
    }

    public static void setMaxBatchReportCount(int i10) {
        if (a(i10, 2, 1000)) {
            f83778l = i10;
        } else {
            f83771e.error("setMaxBatchReportCount can not exceed the range of [2,1000].");
        }
    }

    public static void setMaxDaySessionNumbers(int i10) {
        if (i10 <= 0) {
            f83771e.e("maxDaySessionNumbers must be greater than 0.");
        } else {
            f83790x = i10;
        }
    }

    public static void setMaxParallelTimmingEvents(int i10) {
        if (a(i10, 1, 4096)) {
            f83783q = i10;
        } else {
            f83771e.error("setMaxParallelTimmingEvents can not exceed the range of [1, 4096].");
        }
    }

    public static void setMaxReportEventLength(int i10) {
        if (i10 <= 0) {
            f83771e.error("maxReportEventLength on setMaxReportEventLength() must greater than 0.");
        } else {
            A = i10;
        }
    }

    public static void setMaxSendRetryCount(int i10) {
        if (a(i10, 1, 1000)) {
            f83777k = i10;
        } else {
            f83771e.error("setMaxSendRetryCount can not exceed the range of [1,1000].");
        }
    }

    public static void setMaxSessionStatReportCount(int i10) {
        if (i10 < 0) {
            f83771e.error("maxSessionStatReportCount cannot be less than 0.");
        } else {
            f83788v = i10;
        }
    }

    public static void setMaxStoreEventCount(int i10) {
        if (a(i10, 0, 500000)) {
            f83775i = i10;
        } else {
            f83771e.error("setMaxStoreEventCount can not exceed the range of [0, 500000].");
        }
    }

    public static void setQQ(Context context, String str) {
        StatService.reportQQ(context, str);
    }

    public static void setSendPeriodMinutes(int i10) {
        if (a(i10, 1, 10080)) {
            f83782p = i10;
        } else {
            f83771e.error("setSendPeriodMinutes can not exceed the range of [1, 7*24*60] minutes.");
        }
    }

    public static void setSessionTimoutMillis(int i10) {
        if (a(i10, 1000, 86400000)) {
            f83774h = i10;
        } else {
            f83771e.error("setSessionTimoutMillis can not exceed the range of [1000, 24 * 60 * 60 * 1000].");
        }
    }

    public static void setStatReportUrl(String str) {
        if (str == null || str.length() == 0) {
            f83771e.error("statReportUrl cannot be null or empty.");
        } else {
            f83787u = str;
        }
    }

    public static void setStatSendStrategy(StatReportStrategy statReportStrategy) {
        f83772f = statReportStrategy;
        f83771e.d("Change to statSendStrategy: " + statReportStrategy);
    }

    static String a(Context context) {
        return com.tencent.stat.common.k.d(com.tencent.stat.common.p.a(context, "_mta_ky_tag_", (String) null));
    }

    static void b(int i10) {
        if (i10 < 0) {
            return;
        }
        f83791y = i10;
    }

    static void c(JSONObject jSONObject) {
        try {
            String string = jSONObject.getString(f83769c);
            f83771e.d("hibernateVer:" + string + ", current version:" + StatConstants.VERSION);
            long jB = com.tencent.stat.common.k.b(string);
            if (com.tencent.stat.common.k.b(StatConstants.VERSION) <= jB) {
                com.tencent.stat.common.p.b(d.a(), f83769c, jB);
                setEnableStatService(false);
                f83771e.warn("MTA has disable for SDK version of " + string + " or lower.");
            }
        } catch (JSONException unused) {
            f83771e.d("__HIBERNATE__ not found.");
        }
    }

    public static String getCustomProperty(String str, String str2) {
        try {
            String string = f83767a.f83866b.getString(str);
            return string != null ? string : str2;
        } catch (Throwable th) {
            f83771e.e(th);
        }
    }

    public static void setAppKey(String str) {
        StatLogger statLogger;
        String str2;
        if (str == null) {
            statLogger = f83771e;
            str2 = "appkey in StatConfig.setAppKey() is null";
        } else if (str.length() <= 256) {
            f83780n = str;
            return;
        } else {
            statLogger = f83771e;
            str2 = "The length of appkey cann't exceed 256 bytes.";
        }
        statLogger.error(str2);
    }

    static String a(String str, String str2) {
        try {
            String string = f83768b.f83866b.getString(str);
            return string != null ? string : str2;
        } catch (Throwable th) {
            f83771e.w(th);
        }
    }

    static void b(JSONObject jSONObject) {
        try {
            StatReportStrategy statReportStrategy = StatReportStrategy.getStatReportStrategy(jSONObject.getInt("rs"));
            if (statReportStrategy != null) {
                setStatSendStrategy(statReportStrategy);
            }
        } catch (JSONException unused) {
            f83771e.d("rs not found.");
        }
    }

    static synchronized void a(int i10) {
        f83789w = i10;
    }

    static void a(Context context, String str) {
        if (str != null) {
            com.tencent.stat.common.p.b(context, "_mta_ky_tag_", com.tencent.stat.common.k.c(str));
        }
    }

    static void a(b bVar) {
        int i10 = bVar.f83865a;
        if (i10 == f83768b.f83865a) {
            f83768b = bVar;
            b(bVar.f83866b);
        } else if (i10 == f83767a.f83865a) {
            f83767a = bVar;
        }
    }

    static void a(b bVar, JSONObject jSONObject) {
        try {
            Iterator<String> itKeys = jSONObject.keys();
            boolean z10 = false;
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                if (next.equalsIgnoreCase("v")) {
                    int i10 = jSONObject.getInt(next);
                    if (bVar.f83868d != i10) {
                        z10 = true;
                    }
                    bVar.f83868d = i10;
                } else if (next.equalsIgnoreCase("c")) {
                    String string = jSONObject.getString("c");
                    if (string.length() > 0) {
                        bVar.f83866b = new JSONObject(string);
                    }
                } else if (next.equalsIgnoreCase(com.kuaishou.weapon.p0.t.f74888m)) {
                    bVar.f83867c = jSONObject.getString(com.kuaishou.weapon.p0.t.f74888m);
                }
            }
            if (z10) {
                n nVarA = n.a(d.a());
                if (nVarA != null) {
                    nVarA.a(bVar);
                }
                if (bVar.f83865a == f83768b.f83865a) {
                    b(bVar.f83866b);
                    c(bVar.f83866b);
                }
            }
        } catch (JSONException e10) {
            f83771e.e((Exception) e10);
        } catch (Throwable th) {
            f83771e.e(th);
        }
    }

    static void a(JSONObject jSONObject) {
        JSONObject jSONObject2;
        b bVar;
        try {
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                if (next.equalsIgnoreCase(Integer.toString(f83768b.f83865a))) {
                    jSONObject2 = jSONObject.getJSONObject(next);
                    bVar = f83768b;
                } else if (next.equalsIgnoreCase(Integer.toString(f83767a.f83865a))) {
                    jSONObject2 = jSONObject.getJSONObject(next);
                    bVar = f83767a;
                } else {
                    if (!next.equalsIgnoreCase("rs")) {
                        return;
                    }
                    StatReportStrategy statReportStrategy = StatReportStrategy.getStatReportStrategy(jSONObject.getInt(next));
                    if (statReportStrategy != null) {
                        f83772f = statReportStrategy;
                        f83771e.d("Change to ReportStrategy:" + statReportStrategy.name());
                    }
                }
                a(bVar, jSONObject2);
            }
        } catch (JSONException e10) {
            f83771e.e((Exception) e10);
        }
    }

    static void a(boolean z10) {
        StatNativeCrashReport.setNativeCrashDebugEnable(z10);
    }

    static boolean a(int i10, int i11, int i12) {
        return i10 >= i11 && i10 <= i12;
    }

    private static boolean a(String str) {
        if (str == null) {
            return false;
        }
        String str2 = f83780n;
        if (str2 == null) {
            f83780n = str;
            return true;
        }
        if (str2.contains(str)) {
            return false;
        }
        f83780n += "|" + str;
        return true;
    }
}

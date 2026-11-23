package com.efs.sdk.launch;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.efs.sdk.base.Constants;
import com.efs.sdk.base.EfsReporter;
import com.efs.sdk.base.integrationtesting.IntegrationTestingUtil;
import com.efs.sdk.base.protocol.record.EfsJSONLog;
import com.umeng.umcrash.UMCrash;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static long f26446a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static long f26447b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static long f26448c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static long f26449d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static long f26450e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static boolean f26451f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f26452g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static boolean f26453h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static long f26454i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static long f26455j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static int f26456k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static List<EfsJSONLog> f26457l = new ArrayList();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static Map<String, Long[]> f26458m = new HashMap();

    public static void a(Activity activity, String str, boolean z10) {
        long jCurrentTimeMillis;
        Context applicationContext;
        String name;
        int i10;
        long j10;
        long j11;
        long j12;
        long j13;
        long j14;
        long j15;
        long j16;
        long j17;
        long jCurrentTimeMillis2;
        if (TextUtils.equals(str, LaunchManager.PAGE_ON_CREATE)) {
            if (z10) {
                boolean z11 = LaunchManager.isDebug;
                f26449d = System.currentTimeMillis();
                return;
            }
            return;
        }
        if (TextUtils.equals(str, LaunchManager.PAGE_ON_RE_START)) {
            if (z10 && f26456k == 0) {
                boolean z12 = LaunchManager.isDebug;
                f26450e = System.currentTimeMillis();
                f26452g = true;
                return;
            }
            return;
        }
        if (TextUtils.equals(str, LaunchManager.PAGE_ON_START)) {
            if (z10) {
                boolean z13 = LaunchManager.isDebug;
                f26456k++;
                f26453h = true;
                return;
            }
            return;
        }
        if (!TextUtils.equals(str, LaunchManager.PAGE_ON_RESUME)) {
            if (TextUtils.equals(str, LaunchManager.PAGE_ON_STOP) && z10) {
                boolean z14 = LaunchManager.isDebug;
                f26456k--;
                return;
            }
            return;
        }
        if (z10) {
            return;
        }
        boolean z15 = LaunchManager.isDebug;
        if (f26451f) {
            f26451f = false;
            long jCurrentTimeMillis3 = System.currentTimeMillis();
            long j18 = jCurrentTimeMillis3 - f26448c;
            if (LaunchManager.isDebug) {
                "loadTime is ".concat(String.valueOf(j18));
            }
            long j19 = jCurrentTimeMillis3 - f26446a;
            if (LaunchManager.isDebug) {
                "======>>>>>> coldTime is ".concat(String.valueOf(j19));
            }
            int i11 = !c.d(activity.getApplicationContext()) ? 1 : 0;
            if (LaunchManager.isDebug) {
                "type is ".concat(String.valueOf(i11));
            }
            a(activity.getApplicationContext(), i11, activity.getClass().getName(), j19, f26446a, f26447b, f26454i, f26448c, f26455j, jCurrentTimeMillis3, j18, 0L, 0L, f26458m);
        } else if (f26456k == 1) {
            if (f26452g) {
                f26452g = false;
                jCurrentTimeMillis2 = System.currentTimeMillis() - f26450e;
                if (LaunchManager.isDebug) {
                    "======>>>>>> hotTime is ".concat(String.valueOf(jCurrentTimeMillis2));
                }
                applicationContext = activity.getApplicationContext();
                name = activity.getClass().getName();
                i10 = 2;
                j10 = 0;
                j11 = 0;
                j12 = 0;
                j13 = 0;
                j14 = 0;
                j15 = 0;
                j16 = 0;
                j17 = 0;
                jCurrentTimeMillis = 0;
            } else if (f26453h) {
                jCurrentTimeMillis = System.currentTimeMillis() - f26449d;
                if (LaunchManager.isDebug) {
                    "======>>>>>> warmTime is ".concat(String.valueOf(jCurrentTimeMillis));
                }
                applicationContext = activity.getApplicationContext();
                name = activity.getClass().getName();
                i10 = 3;
                j10 = 0;
                j11 = 0;
                j12 = 0;
                j13 = 0;
                j14 = 0;
                j15 = 0;
                j16 = 0;
                j17 = 0;
                jCurrentTimeMillis2 = 0;
            }
            a(applicationContext, i10, name, j10, j11, j12, j13, j14, j15, j16, j17, jCurrentTimeMillis2, jCurrentTimeMillis, f26458m);
        }
        f26453h = false;
    }

    public static void b(String str, long j10) {
        Map<String, Long[]> map = f26458m;
        if (map == null || !map.containsKey(str)) {
            boolean z10 = LaunchManager.isDebug;
            return;
        }
        Long[] lArr = f26458m.get(str);
        lArr[1] = Long.valueOf(j10);
        f26458m.put(str, lArr);
    }

    private static void a(Context context, int i10, String str, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, Map<String, Long[]> map) {
        int i11;
        List<EfsJSONLog> list;
        StringBuilder sb2;
        String strGenerateString;
        Object objValueOf;
        if (!LaunchManager.isInit()) {
            if (i10 == 0) {
                boolean z10 = LaunchManager.isDebug;
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("w_type", i10);
                    jSONObject.put("w_url", str);
                    jSONObject.put("l_version", "0.0.7.umeng");
                    jSONObject.put("wl_avgv", j10);
                    jSONObject.put("wd_init", j11);
                    jSONObject.put("wd_inittm", j12);
                    jSONObject.put("wl_init", j13);
                    jSONObject.put("wd_build", j12);
                    jSONObject.put("wd_buildtm", j14);
                    jSONObject.put("wl_build", j15);
                    jSONObject.put("wd_page", j14);
                    jSONObject.put("wd_pagetm", j16);
                    jSONObject.put("wl_page", j17);
                    if (map != null && !map.isEmpty()) {
                        JSONObject jSONObject2 = new JSONObject();
                        for (Map.Entry<String, Long[]> entry : map.entrySet()) {
                            String key = entry.getKey();
                            Long[] value = entry.getValue();
                            if (key != null && value != null) {
                                JSONArray jSONArray = new JSONArray();
                                jSONArray.put(value[0]);
                                jSONArray.put(value[1]);
                                jSONObject2.put(key, jSONArray);
                            }
                        }
                        jSONObject.put("userExtra", jSONObject2);
                    }
                    c.a(context, jSONObject.toString());
                    if (LaunchManager.isDebug) {
                        new StringBuilder("no init, cache first launch, content is ").append(jSONObject.toString());
                        return;
                    }
                    return;
                } catch (Throwable th) {
                    th.printStackTrace();
                    return;
                }
            }
            if (LaunchManager.isDebug) {
                "no init, cache launch, type is ".concat(String.valueOf(i10));
            }
            EfsJSONLog efsJSONLog = new EfsJSONLog(Constants.LOG_TYPE_STARTPERF);
            efsJSONLog.put("w_type", Integer.valueOf(i10));
            efsJSONLog.put("w_url", str);
            efsJSONLog.put("l_version", "0.0.7.umeng");
            if (i10 == 1) {
                efsJSONLog.put("wl_avgv", Long.valueOf(j10));
                efsJSONLog.put("wd_init", Long.valueOf(j11));
                efsJSONLog.put("wd_inittm", Long.valueOf(j12));
                efsJSONLog.put("wl_init", Long.valueOf(j13));
                efsJSONLog.put("wd_build", Long.valueOf(j12));
                efsJSONLog.put("wd_buildtm", Long.valueOf(j14));
                efsJSONLog.put("wl_build", Long.valueOf(j15));
                efsJSONLog.put("wd_page", Long.valueOf(j14));
                efsJSONLog.put("wd_pagetm", Long.valueOf(j16));
                efsJSONLog.put("wl_page", Long.valueOf(j17));
                if (map != null && !map.isEmpty()) {
                    JSONObject jSONObject3 = new JSONObject();
                    for (Map.Entry<String, Long[]> entry2 : map.entrySet()) {
                        String key2 = entry2.getKey();
                        Long[] value2 = entry2.getValue();
                        if (key2 != null && value2 != null) {
                            try {
                                JSONArray jSONArray2 = new JSONArray();
                                try {
                                    jSONArray2.put(value2[0]);
                                    try {
                                        jSONArray2.put(value2[1]);
                                        jSONObject3.put(key2, jSONArray2);
                                    } catch (Throwable unused) {
                                    }
                                } catch (Throwable unused2) {
                                }
                            } catch (Throwable unused3) {
                            }
                        }
                    }
                    efsJSONLog.put("userExtra", jSONObject3);
                }
            } else {
                if (i10 == 2) {
                    efsJSONLog.put("wl_avgv", Long.valueOf(j18));
                } else {
                    i11 = 3;
                    if (i10 == 3) {
                        efsJSONLog.put("wl_avgv", Long.valueOf(j19));
                    }
                }
                list = f26457l;
                if (list != null || list.size() >= i11) {
                    boolean z11 = LaunchManager.isDebug;
                    return;
                }
                f26457l.add(efsJSONLog);
                if (!LaunchManager.isDebug) {
                    return;
                }
                sb2 = new StringBuilder("cache launch report --->>> ");
                strGenerateString = efsJSONLog.generateString();
            }
            i11 = 3;
            list = f26457l;
            if (list != null) {
            }
            boolean z12 = LaunchManager.isDebug;
            return;
        }
        LaunchConfigManager launchConfigManager = LaunchManager.getLaunchConfigManager();
        if ((launchConfigManager == null || !launchConfigManager.enableTracer()) && !IntegrationTestingUtil.isIntegrationTestingInPeriod()) {
            boolean z13 = LaunchManager.isDebug;
            return;
        }
        EfsJSONLog efsJSONLog2 = new EfsJSONLog(Constants.LOG_TYPE_STARTPERF);
        efsJSONLog2.put("w_type", Integer.valueOf(i10));
        efsJSONLog2.put("w_url", str);
        efsJSONLog2.put("l_version", "0.0.7.umeng");
        if (i10 == 0 || i10 == 1) {
            efsJSONLog2.put("wl_avgv", Long.valueOf(j10));
            efsJSONLog2.put("wd_init", Long.valueOf(j11));
            efsJSONLog2.put("wd_inittm", Long.valueOf(j12));
            efsJSONLog2.put("wl_init", Long.valueOf(j13));
            efsJSONLog2.put("wd_build", Long.valueOf(j12));
            efsJSONLog2.put("wd_buildtm", Long.valueOf(j14));
            efsJSONLog2.put("wl_build", Long.valueOf(j15));
            efsJSONLog2.put("wd_page", Long.valueOf(j14));
            efsJSONLog2.put("wd_pagetm", Long.valueOf(j16));
            efsJSONLog2.put("wl_page", Long.valueOf(j17));
            if (map != null && !map.isEmpty()) {
                JSONObject jSONObject4 = new JSONObject();
                for (Map.Entry<String, Long[]> entry3 : map.entrySet()) {
                    String key3 = entry3.getKey();
                    Long[] value3 = entry3.getValue();
                    if (key3 != null && value3 != null) {
                        try {
                            JSONArray jSONArray3 = new JSONArray();
                            jSONArray3.put(value3[0]);
                            jSONArray3.put(value3[1]);
                            jSONObject4.put(key3, jSONArray3);
                        } catch (Throwable unused4) {
                        }
                    }
                }
                efsJSONLog2.put("userExtra", jSONObject4);
            }
        } else {
            if (i10 == 2) {
                objValueOf = Long.valueOf(j18);
            } else if (i10 == 3) {
                objValueOf = Long.valueOf(j19);
            }
            efsJSONLog2.put("wl_avgv", objValueOf);
        }
        String strA = c.a(context);
        if (LaunchManager.isDebug) {
            "umid is ".concat(String.valueOf(strA));
        }
        if (strA != null && !TextUtils.isEmpty(strA)) {
            if (LaunchManager.isDebug) {
                new StringBuilder("send current launch report --->>> ").append(efsJSONLog2.generateString());
            }
            EfsReporter reporter = LaunchManager.getReporter();
            if (reporter != null) {
                reporter.send(efsJSONLog2);
                return;
            }
            return;
        }
        List<EfsJSONLog> list2 = f26457l;
        if (list2 == null || list2.size() >= 3) {
            boolean z14 = LaunchManager.isDebug;
            return;
        }
        f26457l.add(efsJSONLog2);
        if (!LaunchManager.isDebug) {
            return;
        }
        sb2 = new StringBuilder("cache launch report --->>> ");
        strGenerateString = efsJSONLog2.generateString();
        sb2.append(strGenerateString);
    }

    public static void a(Context context, String str) {
        boolean z10 = LaunchManager.isDebug;
        if (str == null || TextUtils.isEmpty(str)) {
            str = c.a(context);
        }
        if (str == null || TextUtils.isEmpty(str)) {
            return;
        }
        HashMap map = new HashMap(1);
        map.put(UMCrash.KEY_HEADER_UMID, str);
        if (LaunchManager.getReporter() != null) {
            LaunchManager.getReporter().addPublicParams(map);
        }
        String strB = c.b(context);
        if (strB != null && !TextUtils.isEmpty(strB)) {
            try {
                JSONObject jSONObject = new JSONObject(strB);
                jSONObject.put(UMCrash.KEY_HEADER_UMID, str);
                if (a(jSONObject)) {
                    c.c(context);
                }
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
        }
        List<EfsJSONLog> list = f26457l;
        if (list == null || list.size() <= 0) {
            return;
        }
        for (EfsJSONLog efsJSONLog : f26457l) {
            if (efsJSONLog != null) {
                if (LaunchManager.isDebug) {
                    new StringBuilder("send cache launch report --->>> ").append(efsJSONLog.generateString());
                }
                EfsReporter reporter = LaunchManager.getReporter();
                if (reporter != null) {
                    reporter.send(efsJSONLog);
                }
            }
        }
        f26457l.clear();
        f26457l = null;
    }

    public static void a(String str, long j10) {
        Map<String, Long[]> map = f26458m;
        if (map == null || map.containsKey(str) || f26458m.size() >= 10) {
            boolean z10 = LaunchManager.isDebug;
            return;
        }
        Long[] lArr = new Long[2];
        lArr[0] = Long.valueOf(j10);
        f26458m.put(str, lArr);
    }

    public static void a(String str, boolean z10) {
        if (TextUtils.equals(str, LaunchManager.APP_CONSTRUCT)) {
            return;
        }
        if (!TextUtils.equals(str, LaunchManager.APP_ATTACH_BASE_CONTEXT)) {
            if (!TextUtils.equals(str, LaunchManager.APP_ON_CREATE) || z10) {
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            f26448c = jCurrentTimeMillis;
            f26455j = jCurrentTimeMillis - f26447b;
            if (LaunchManager.isDebug) {
                new StringBuilder("buildTime is ").append(f26455j);
                return;
            }
            return;
        }
        if (z10) {
            f26446a = System.currentTimeMillis();
            f26451f = true;
            return;
        }
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        f26447b = jCurrentTimeMillis2;
        f26454i = jCurrentTimeMillis2 - f26446a;
        if (LaunchManager.isDebug) {
            new StringBuilder("initTime is ").append(f26454i);
        }
    }

    private static boolean a(JSONObject jSONObject) {
        try {
            EfsJSONLog efsJSONLog = new EfsJSONLog(Constants.LOG_TYPE_STARTPERF);
            efsJSONLog.put("w_type", jSONObject.opt("w_type"));
            efsJSONLog.put("w_url", jSONObject.opt("w_url"));
            efsJSONLog.put("l_version", jSONObject.opt("l_version"));
            efsJSONLog.put("wl_avgv", jSONObject.opt("wl_avgv"));
            efsJSONLog.put("wd_init", jSONObject.opt("wd_init"));
            efsJSONLog.put("wd_inittm", jSONObject.opt("wd_inittm"));
            efsJSONLog.put("wl_init", jSONObject.opt("wl_init"));
            efsJSONLog.put("wd_build", jSONObject.opt("wd_build"));
            efsJSONLog.put("wd_buildtm", jSONObject.opt("wd_buildtm"));
            efsJSONLog.put("wl_build", jSONObject.opt("wl_build"));
            efsJSONLog.put("wd_page", jSONObject.opt("wd_page"));
            efsJSONLog.put("wd_pagetm", jSONObject.opt("wd_pagetm"));
            efsJSONLog.put("wl_page", jSONObject.opt("wl_page"));
            efsJSONLog.put("userExtra", jSONObject.opt("userExtra"));
            if (LaunchManager.isDebug) {
                new StringBuilder("send cache cold launch report --->>> ").append(efsJSONLog.generateString());
            }
            EfsReporter reporter = LaunchManager.getReporter();
            if (reporter == null) {
                return false;
            }
            reporter.send(efsJSONLog);
            return true;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }
}

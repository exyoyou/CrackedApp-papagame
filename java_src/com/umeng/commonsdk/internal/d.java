package com.umeng.commonsdk.internal;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import com.byazt.hv.TTDownloadField;
import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder;
import com.umeng.analytics.pro.aw;
import com.umeng.analytics.pro.bm;
import com.umeng.commonsdk.config.FieldManager;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.framework.UMLogDataProtocol;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.internal.crash.UMCrashManager;
import com.umeng.commonsdk.internal.utils.j;
import com.umeng.commonsdk.internal.utils.k;
import com.umeng.commonsdk.statistics.UMServerURL;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.statistics.common.ULog;
import com.xinzhu.overmind.server.os.f;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class d {
    public static void a(Context context) {
        try {
            ULog.i("walle", "[internal] workEvent send envelope");
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(bm.aR, "1.2.0");
            JSONObject jSONObjectBuildEnvelopeWithExtHeader = UMEnvelopeBuild.buildEnvelopeWithExtHeader(context, jSONObject, d(context), UMServerURL.PATH_ANALYTICS, "i", "1.2.0");
            if (jSONObjectBuildEnvelopeWithExtHeader == null || jSONObjectBuildEnvelopeWithExtHeader.has("exception")) {
                return;
            }
            ULog.i("walle", "[internal] workEvent send envelope back, result is ok");
        } catch (Exception e10) {
            UMCrashManager.reportCrash(context, e10);
        }
    }

    public static void b(Context context) {
        ULog.i("walle", "[internal] begin by stateful--->>>");
        if (context != null) {
            i(context);
        }
    }

    public static void c(Context context) {
        ULog.i("walle", "[internal] begin by stateful--->>>");
        if (context == null || !UMEnvelopeBuild.getTransmissionSendFlag()) {
            return;
        }
        i(context);
    }

    public static JSONObject d(Context context) {
        JSONObject jSONObjectB;
        JSONArray jSONArrayG;
        JSONObject jSONObjectA;
        JSONArray jSONArrayK;
        JSONArray jSONArrayJ;
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        if (context != null) {
            Context applicationContext = context.getApplicationContext();
            try {
                if (FieldManager.allow(com.umeng.commonsdk.utils.d.J) && (jSONArrayJ = j(applicationContext)) != null && jSONArrayJ.length() > 0) {
                    jSONObject2.put("rs", jSONArrayJ);
                }
            } catch (Exception e10) {
                UMCrashManager.reportCrash(applicationContext, e10);
            }
            try {
                if (FieldManager.allow(com.umeng.commonsdk.utils.d.ao) && (jSONArrayK = k(applicationContext)) != null && jSONArrayK.length() > 0) {
                    jSONObject2.put("by", jSONArrayK);
                }
            } catch (Exception e11) {
                UMCrashManager.reportCrash(applicationContext, e11);
            }
            try {
                a(applicationContext, jSONObject2);
            } catch (Exception e12) {
                UMCrashManager.reportCrash(applicationContext, e12);
            }
            try {
                b(applicationContext, jSONObject2);
            } catch (Exception e13) {
                UMCrashManager.reportCrash(applicationContext, e13);
            }
            try {
                if (FieldManager.allow(com.umeng.commonsdk.utils.d.ap) && (jSONObjectA = a()) != null && jSONObjectA.length() > 0) {
                    jSONObject2.put(JsonPOJOBuilder.DEFAULT_BUILD_METHOD, jSONObjectA);
                }
            } catch (Exception e14) {
                UMCrashManager.reportCrash(applicationContext, e14);
            }
            try {
                JSONObject jSONObjectE = e(applicationContext);
                if (jSONObjectE != null && jSONObjectE.length() > 0) {
                    jSONObject2.put("scr", jSONObjectE);
                }
            } catch (Exception e15) {
                UMCrashManager.reportCrash(applicationContext, e15);
            }
            try {
                JSONObject jSONObjectF = f(applicationContext);
                if (jSONObjectF != null && jSONObjectF.length() > 0) {
                    jSONObject2.put("sinfo", jSONObjectF);
                }
            } catch (Exception e16) {
                UMCrashManager.reportCrash(applicationContext, e16);
            }
            try {
                if (FieldManager.allow(com.umeng.commonsdk.utils.d.ag) && (jSONArrayG = g(applicationContext)) != null && jSONArrayG.length() > 0) {
                    jSONObject2.put("appls", jSONArrayG);
                }
            } catch (Exception e17) {
                UMCrashManager.reportCrash(applicationContext, e17);
            }
            try {
                JSONObject jSONObjectH = h(applicationContext);
                if (jSONObjectH != null && jSONObjectH.length() > 0) {
                    jSONObject2.put("mem", jSONObjectH);
                }
            } catch (Exception e18) {
                UMCrashManager.reportCrash(applicationContext, e18);
            }
            try {
                if (FieldManager.allow(com.umeng.commonsdk.utils.d.aq) && (jSONObjectB = b()) != null && jSONObjectB.length() > 0) {
                    jSONObject2.put("cpu", jSONObjectB);
                }
            } catch (Exception unused) {
            }
            try {
                jSONObject.put(bm.ay, jSONObject2);
            } catch (JSONException e19) {
                UMCrashManager.reportCrash(applicationContext, e19);
            }
        }
        return jSONObject;
    }

    public static JSONObject e(Context context) {
        DisplayMetrics displayMetrics;
        JSONObject jSONObject = new JSONObject();
        if (context != null) {
            try {
                jSONObject.put("a_st_h", com.umeng.commonsdk.internal.utils.a.c(context));
                jSONObject.put("a_nav_h", com.umeng.commonsdk.internal.utils.a.d(context));
                if (context.getResources() != null && (displayMetrics = context.getResources().getDisplayMetrics()) != null) {
                    jSONObject.put("a_den", displayMetrics.density);
                    jSONObject.put("a_dpi", displayMetrics.densityDpi);
                }
            } catch (Exception e10) {
                UMCrashManager.reportCrash(context, e10);
            }
        }
        return jSONObject;
    }

    public static JSONObject f(Context context) {
        JSONObject jSONObject = new JSONObject();
        if (context != null) {
            Context applicationContext = context.getApplicationContext();
            String packageName = applicationContext.getPackageName();
            try {
                jSONObject.put("a_fit", com.umeng.commonsdk.internal.utils.a.a(applicationContext, packageName));
                jSONObject.put("a_alut", com.umeng.commonsdk.internal.utils.a.b(applicationContext, packageName));
                jSONObject.put("a_c", com.umeng.commonsdk.internal.utils.a.c(applicationContext, packageName));
                jSONObject.put("a_uid", com.umeng.commonsdk.internal.utils.a.d(applicationContext, packageName));
                if (com.umeng.commonsdk.internal.utils.a.a()) {
                    jSONObject.put("a_root", 1);
                } else {
                    jSONObject.put("a_root", 0);
                }
                jSONObject.put("tf", com.umeng.commonsdk.internal.utils.a.b());
                jSONObject.put("s_fs", com.umeng.commonsdk.internal.utils.a.a(applicationContext));
                jSONObject.put("a_meid", DeviceConfig.getMeid(applicationContext));
                jSONObject.put("a_imsi", DeviceConfig.getImsi(applicationContext));
                jSONObject.put("st", com.umeng.commonsdk.internal.utils.a.c());
                String simICCID = DeviceConfig.getSimICCID(applicationContext);
                if (!TextUtils.isEmpty(simICCID)) {
                    try {
                        jSONObject.put("a_iccid", simICCID);
                    } catch (Exception unused) {
                    }
                }
                String secondSimIMEi = DeviceConfig.getSecondSimIMEi(applicationContext);
                if (!TextUtils.isEmpty(secondSimIMEi)) {
                    try {
                        jSONObject.put("a_simei", secondSimIMEi);
                    } catch (Exception unused2) {
                    }
                }
                jSONObject.put("hn", com.umeng.commonsdk.internal.utils.a.d());
                jSONObject.put("ts", System.currentTimeMillis());
            } catch (Exception e10) {
                UMCrashManager.reportCrash(applicationContext, e10);
            }
        }
        return jSONObject;
    }

    public static JSONArray g(Context context) {
        Context applicationContext;
        List<com.umeng.commonsdk.internal.utils.a.C1058a> listF;
        JSONArray jSONArray = new JSONArray();
        if (context != null && (listF = com.umeng.commonsdk.internal.utils.a.f((applicationContext = context.getApplicationContext()))) != null && !listF.isEmpty()) {
            for (com.umeng.commonsdk.internal.utils.a.C1058a c1058a : listF) {
                if (c1058a != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("a_pn", c1058a.f85246a);
                        jSONObject.put("a_la", c1058a.f85247b);
                        jSONObject.put("ts", System.currentTimeMillis());
                        jSONArray.put(jSONObject);
                    } catch (Exception e10) {
                        UMCrashManager.reportCrash(applicationContext, e10);
                    }
                }
            }
        }
        return jSONArray;
    }

    public static JSONObject h(Context context) {
        Context applicationContext;
        ActivityManager.MemoryInfo memoryInfoG;
        JSONObject jSONObject = new JSONObject();
        if (context != null && (memoryInfoG = com.umeng.commonsdk.internal.utils.a.g((applicationContext = context.getApplicationContext()))) != null) {
            try {
                jSONObject.put(bm.aM, memoryInfoG.totalMem);
                jSONObject.put(f.TAG, memoryInfoG.availMem);
                jSONObject.put("ts", System.currentTimeMillis());
            } catch (Exception e10) {
                UMCrashManager.reportCrash(applicationContext, e10);
            }
        }
        return jSONObject;
    }

    private static void i(Context context) {
        try {
            if (UMEnvelopeBuild.isReadyBuild(context, UMLogDataProtocol.UMBusinessType.U_INTERNAL)) {
                UMWorkDispatch.sendEvent(context, a.f85201f, b.a(context).a(), null, 5000L);
            }
            UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> 冷启动：5秒后触发2号数据仓遗留信封检查动作。");
            UMWorkDispatch.sendEvent(context, a.f85217v, b.a(context).a(), null, 5000L);
        } catch (Throwable th) {
            UMCrashManager.reportCrash(context, th);
        }
    }

    private static JSONArray j(Context context) {
        List<ActivityManager.RunningServiceInfo> runningServices;
        JSONArray jSONArray = null;
        jSONArray = null;
        if (context == null) {
            return null;
        }
        try {
            ActivityManager activityManager = (ActivityManager) context.getApplicationContext().getSystemService(TTDownloadField.TT_ACTIVITY);
            if (activityManager == null || (runningServices = activityManager.getRunningServices(Integer.MAX_VALUE)) == null || runningServices.isEmpty()) {
                return null;
            }
            int i10 = 0;
            while (i10 < runningServices.size()) {
                if (runningServices.get(i10) != null && runningServices.get(i10).service != null && runningServices.get(i10).service.getClassName() != null && runningServices.get(i10).service.getPackageName() != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("sn", runningServices.get(i10).service.getClassName().toString());
                        jSONObject.put("pn", runningServices.get(i10).service.getPackageName().toString());
                        jSONArray = jSONArray;
                        if (jSONArray == null) {
                            jSONArray = new JSONArray();
                        }
                        jSONArray.put(jSONObject);
                    } catch (JSONException unused) {
                    }
                }
                i10++;
                jSONArray = jSONArray;
            }
            if (jSONArray == null) {
                return jSONArray;
            }
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put("ts", System.currentTimeMillis());
                jSONObject2.put("ls", jSONArray);
            } catch (JSONException unused2) {
            }
            JSONObject jSONObject3 = new JSONObject();
            try {
                jSONObject3.put("sers", jSONObject2);
            } catch (JSONException unused3) {
            }
            JSONArray jSONArray2 = new JSONArray();
            try {
                jSONArray2.put(jSONObject3);
                return jSONArray2;
            } catch (Throwable th) {
                th = th;
                jSONArray = jSONArray2;
            }
        } catch (Throwable th2) {
            th = th2;
        }
        UMCrashManager.reportCrash(context, th);
        return jSONArray;
    }

    private static JSONArray k(Context context) {
        JSONArray jSONArray = new JSONArray();
        String strA = j.a(context);
        if (!TextUtils.isEmpty(strA)) {
            try {
                jSONArray.put(new JSONObject(strA));
            } catch (Exception unused) {
            }
        }
        return jSONArray;
    }

    private static JSONObject b() throws Throwable {
        try {
            com.umeng.commonsdk.internal.utils.d.a aVarA = com.umeng.commonsdk.internal.utils.d.a();
            if (aVarA == null) {
                return null;
            }
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("pro", aVarA.f85260a);
                jSONObject.put("pla", aVarA.f85261b);
                jSONObject.put("cpus", aVarA.f85262c);
                jSONObject.put("fea", aVarA.f85263d);
                jSONObject.put(aw.f84322c, aVarA.f85264e);
                jSONObject.put("arc", aVarA.f85265f);
                jSONObject.put("var", aVarA.f85266g);
                jSONObject.put("par", aVarA.f85267h);
                jSONObject.put("rev", aVarA.f85268i);
                jSONObject.put("har", aVarA.f85269j);
                jSONObject.put("rev", aVarA.f85270k);
                jSONObject.put("ser", aVarA.f85271l);
                jSONObject.put("cur_cpu", com.umeng.commonsdk.internal.utils.d.d());
                jSONObject.put("max_cpu", com.umeng.commonsdk.internal.utils.d.b());
                jSONObject.put("min_cpu", com.umeng.commonsdk.internal.utils.d.c());
                jSONObject.put("ts", System.currentTimeMillis());
            } catch (Exception unused) {
            }
            return jSONObject;
        } catch (Exception unused2) {
            return null;
        }
    }

    private static void a(Context context, JSONObject jSONObject) {
        PackageManager packageManager;
        if (context == null || (packageManager = context.getApplicationContext().getPackageManager()) == null) {
            return;
        }
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        a(jSONObject, "gp", packageManager.hasSystemFeature("android.hardware.location.gps"));
        a(jSONObject, "to", packageManager.hasSystemFeature("android.hardware.touchscreen"));
        a(jSONObject, "mo", packageManager.hasSystemFeature("android.hardware.telephony"));
        a(jSONObject, "ca", packageManager.hasSystemFeature("android.hardware.camera"));
        a(jSONObject, "fl", packageManager.hasSystemFeature("android.hardware.camera.flash"));
    }

    private static void a(JSONObject jSONObject, String str, boolean z10) {
        if (jSONObject == null || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            if (z10) {
                jSONObject.put(str, 1);
            } else {
                jSONObject.put(str, 0);
            }
        } catch (Exception unused) {
        }
    }

    public static JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("a_pr", Build.PRODUCT);
            jSONObject.put("a_bl", Build.BOOTLOADER);
            jSONObject.put("a_rv", Build.getRadioVersion());
            jSONObject.put("a_fp", Build.FINGERPRINT);
            jSONObject.put("a_hw", Build.HARDWARE);
            jSONObject.put("a_host", Build.HOST);
            JSONArray jSONArray = new JSONArray();
            int i10 = 0;
            int i11 = 0;
            while (true) {
                String[] strArr = Build.SUPPORTED_32_BIT_ABIS;
                if (i11 >= strArr.length) {
                    break;
                }
                jSONArray.put(strArr[i11]);
                i11++;
            }
            if (jSONArray.length() > 0) {
                jSONObject.put("a_s32", jSONArray);
            }
            JSONArray jSONArray2 = new JSONArray();
            int i12 = 0;
            while (true) {
                String[] strArr2 = Build.SUPPORTED_64_BIT_ABIS;
                if (i12 >= strArr2.length) {
                    break;
                }
                jSONArray2.put(strArr2[i12]);
                i12++;
            }
            if (jSONArray2.length() > 0) {
                jSONObject.put("a_s64", jSONArray2);
            }
            JSONArray jSONArray3 = new JSONArray();
            while (true) {
                String[] strArr3 = Build.SUPPORTED_ABIS;
                if (i10 >= strArr3.length) {
                    break;
                }
                jSONArray3.put(strArr3[i10]);
                i10++;
            }
            if (jSONArray3.length() > 0) {
                jSONObject.put("a_sa", jSONArray3);
            }
            jSONObject.put("a_ta", Build.TAGS);
            jSONObject.put("a_uk", "unknown");
            jSONObject.put("a_user", Build.USER);
            jSONObject.put("a_cpu1", Build.CPU_ABI);
            jSONObject.put("a_cpu2", Build.CPU_ABI2);
            jSONObject.put("a_ra", Build.RADIO);
            if (Build.VERSION.SDK_INT >= 23) {
                jSONObject.put("a_bos", Build.VERSION.BASE_OS);
                jSONObject.put("a_pre", Build.VERSION.PREVIEW_SDK_INT);
                jSONObject.put("a_sp", Build.VERSION.SECURITY_PATCH);
            }
            jSONObject.put("a_cn", Build.VERSION.CODENAME);
            jSONObject.put("a_intl", Build.VERSION.INCREMENTAL);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    private static void b(Context context, JSONObject jSONObject) {
        if (context != null) {
            String strA = k.a(context);
            if (TextUtils.isEmpty(strA)) {
                return;
            }
            try {
                JSONObject jSONObject2 = new JSONObject(strA);
                if (jSONObject == null) {
                    jSONObject = new JSONObject();
                }
                if (jSONObject2.has(k.f85283d)) {
                    jSONObject.put(k.f85283d, jSONObject2.opt(k.f85283d));
                }
                if (jSONObject2.has(k.f85282c)) {
                    jSONObject.put(k.f85282c, jSONObject2.opt(k.f85282c));
                }
                if (jSONObject2.has(k.f85281b)) {
                    jSONObject.put(k.f85281b, jSONObject2.opt(k.f85281b));
                }
            } catch (Exception unused) {
            }
        }
    }
}

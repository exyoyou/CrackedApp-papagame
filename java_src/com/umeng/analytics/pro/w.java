package com.umeng.analytics.pro;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.umeng.analytics.AnalyticsConfig;
import com.umeng.analytics.CoreProtocol;
import com.umeng.analytics.process.UMProcessDBDatasSender;
import com.umeng.commonsdk.config.FieldManager;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.service.UMGlobalContext;
import com.umeng.commonsdk.statistics.AnalyticsConstants;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import com.umeng.commonsdk.utils.UMUtils;
import java.lang.reflect.Method;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class w implements aa.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f84908a = "session_start_time";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f84909b = "session_end_time";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f84910c = "session_id";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f84911d = "pre_session_id";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f84912e = "a_start_time";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f84913f = "a_end_time";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f84914g = "fg_count";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static String f84915h = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static Context f84916i = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static boolean f84917j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static long f84918k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static boolean f84919l = true;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static long f84920m;

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final w f84921a = new w();

        private a() {
        }
    }

    public static w a() {
        return a.f84921a;
    }

    public static void b(Context context) {
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f84916i);
        if (sharedPreferences != null) {
            long j10 = sharedPreferences.getLong(f84914g, 0L);
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            if (editorEdit != null) {
                editorEdit.putLong(f84914g, j10 + 1);
                editorEdit.commit();
            }
        }
    }

    private void d(Context context) {
        try {
            SharedPreferences.Editor editorEdit = PreferenceWrapper.getDefault(context).edit();
            editorEdit.putLong(f84914g, 0L);
            editorEdit.commit();
        } catch (Throwable unused) {
        }
    }

    private String e(Context context) {
        if (f84916i == null && context != null) {
            f84916i = context.getApplicationContext();
        }
        String strD = aa.a().d(f84916i);
        try {
            f(context);
            q.a(f84916i).d((Object) null);
        } catch (Throwable unused) {
        }
        return strD;
    }

    private void f(Context context) {
        q.a(context).b(context);
        q.a(context).d();
    }

    public void c(Context context, Object obj) {
        try {
            if (f84916i == null && context != null) {
                f84916i = context.getApplicationContext();
            }
            long jLongValue = ((Long) obj).longValue();
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(context);
            if (sharedPreferences == null) {
                return;
            }
            if (sharedPreferences.getLong(f84912e, 0L) == 0) {
                MLog.e("onPause called before onResume");
                return;
            }
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> onEndSessionInternal: write activity end time = " + jLongValue);
            editorEdit.putLong(f84913f, jLongValue);
            editorEdit.putLong(f84909b, jLongValue);
            editorEdit.commit();
        } catch (Throwable unused) {
        }
    }

    private w() {
        aa.a().a(this);
    }

    public static long a(Context context) {
        try {
            return PreferenceWrapper.getDefault(context).getLong(f84914g, 0L);
        } catch (Throwable unused) {
            return 0L;
        }
    }

    public void a(Context context, long j10) {
        SharedPreferences.Editor editorEdit;
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f84916i);
        if (sharedPreferences == null || (editorEdit = sharedPreferences.edit()) == null) {
            return;
        }
        editorEdit.putLong(f84908a, j10);
        editorEdit.commit();
    }

    public void b(Context context, Object obj) {
        long jLongValue;
        try {
            if (f84916i == null) {
                f84916i = UMGlobalContext.getAppContext(context);
            }
            if (obj == null) {
                jLongValue = System.currentTimeMillis();
            } else {
                jLongValue = ((Long) obj).longValue();
            }
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f84916i);
            if (sharedPreferences == null) {
                return;
            }
            f84918k = sharedPreferences.getLong(f84913f, 0L);
            UMRTLog.i(UMRTLog.RTLOG_TAG, "------>>> lastActivityEndTime: " + f84918k);
            String string = sharedPreferences.getString(f.aF, "");
            String appVersionName = UMUtils.getAppVersionName(f84916i);
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            if (editorEdit == null) {
                return;
            }
            if (!TextUtils.isEmpty(string) && !string.equals(appVersionName)) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> requestNewInstantSessionIf: version upgrade");
                editorEdit.putLong(f84908a, jLongValue);
                editorEdit.commit();
                q.a(f84916i).a((Object) null, true);
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> force generate new session: session id = " + aa.a().c(f84916i));
                f84917j = true;
                a(f84916i, jLongValue, true);
                return;
            }
            if (aa.a().e(f84916i)) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> More then 30 sec from last session.");
                f84917j = true;
                editorEdit.putLong(f84908a, jLongValue);
                editorEdit.commit();
                a(f84916i, jLongValue, false);
                return;
            }
            UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> less then 30 sec from last session, do nothing.");
            f84917j = false;
        } catch (Throwable unused) {
        }
    }

    public void a(Context context, Object obj) {
        SharedPreferences.Editor editorEdit;
        try {
            if (f84916i == null && context != null) {
                f84916i = context.getApplicationContext();
            }
            long jLongValue = ((Long) obj).longValue();
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f84916i);
            if (sharedPreferences == null || (editorEdit = sharedPreferences.edit()) == null) {
                return;
            }
            String string = sharedPreferences.getString(f.aF, "");
            String appVersionName = UMUtils.getAppVersionName(f84916i);
            if (TextUtils.isEmpty(string)) {
                editorEdit.putInt("versioncode", Integer.parseInt(UMUtils.getAppVersionCode(context)));
                editorEdit.putString(f.aF, appVersionName);
                editorEdit.commit();
            } else if (!string.equals(appVersionName)) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> onStartSessionInternal: upgrade version: " + string + "-> " + appVersionName);
                int i10 = sharedPreferences.getInt("versioncode", 0);
                String string2 = sharedPreferences.getString("pre_date", "");
                String string3 = sharedPreferences.getString("pre_version", "");
                String string4 = sharedPreferences.getString(f.aF, "");
                editorEdit.putInt("versioncode", Integer.parseInt(UMUtils.getAppVersionCode(context)));
                editorEdit.putString(f.aF, appVersionName);
                editorEdit.putString("vers_date", string2);
                editorEdit.putString("vers_pre_version", string3);
                editorEdit.putString("cur_version", string4);
                editorEdit.putInt("vers_code", i10);
                editorEdit.putString("vers_name", string);
                editorEdit.commit();
                if (f84919l) {
                    f84919l = false;
                }
                if (f84917j) {
                    f84917j = false;
                    b(f84916i, jLongValue, true);
                    b(f84916i, jLongValue);
                    return;
                }
                return;
            }
            if (f84917j) {
                f84917j = false;
                if (f84919l) {
                    f84919l = false;
                }
                f84915h = e(context);
                MLog.d("创建新会话: " + f84915h);
                UMRTLog.i(UMRTLog.RTLOG_TAG, "mSessionChanged flag has been set, Start new session: " + f84915h);
                return;
            }
            f84915h = sharedPreferences.getString("session_id", null);
            editorEdit.putLong(f84912e, jLongValue);
            editorEdit.putLong(f84913f, 0L);
            editorEdit.commit();
            MLog.d("延续上一个会话: " + f84915h);
            UMRTLog.i(UMRTLog.RTLOG_TAG, "Extend current session: " + f84915h);
            if (f84919l) {
                f84919l = false;
                if (FieldManager.allow(com.umeng.commonsdk.utils.d.E)) {
                    Context context2 = f84916i;
                    UMWorkDispatch.sendEventEx(context2, q.a.E, CoreProtocol.getInstance(context2), null, 0L);
                }
            }
            f(context);
            q.a(f84916i).a(false);
        } catch (Throwable unused) {
        }
    }

    @Deprecated
    public String c(Context context) {
        try {
            if (f84915h == null) {
                return PreferenceWrapper.getDefault(context).getString("session_id", null);
            }
        } catch (Throwable unused) {
        }
        return f84915h;
    }

    @Deprecated
    public String c() {
        return c(f84916i);
    }

    public boolean b(Context context, long j10, boolean z10) {
        String strA;
        long j11;
        try {
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(context);
            if (sharedPreferences == null || (strA = aa.a().a(f84916i)) == null) {
                return false;
            }
            long j12 = sharedPreferences.getLong(f84912e, 0L);
            long j13 = sharedPreferences.getLong(f84913f, 0L);
            if (j12 <= 0 || j13 != 0) {
                return false;
            }
            try {
                if (z10) {
                    j11 = f84918k;
                    if (j11 == 0) {
                        UMRTLog.i(UMRTLog.RTLOG_TAG, "------>>> lastActivityEndTime = 0, In-app upgrade, use currentTime: = " + j10);
                        j11 = j10;
                    } else {
                        UMRTLog.i(UMRTLog.RTLOG_TAG, "------>>> lastActivityEndTime != 0, app upgrade, use lastActivityEndTime: = " + f84918k);
                    }
                    c(f84916i, Long.valueOf(j11));
                } else {
                    c(f84916i, Long.valueOf(j10));
                    j11 = j10;
                }
                JSONObject jSONObject = new JSONObject();
                if (z10) {
                    jSONObject.put(g.d.a.f84725g, j11);
                } else {
                    jSONObject.put(g.d.a.f84725g, j10);
                }
                JSONObject jSONObjectB = com.umeng.analytics.b.a().b();
                if (jSONObjectB != null && jSONObjectB.length() > 0) {
                    jSONObject.put("__sp", jSONObjectB);
                }
                JSONObject jSONObjectC = com.umeng.analytics.b.a().c();
                if (jSONObjectC != null && jSONObjectC.length() > 0) {
                    jSONObject.put("__pp", jSONObjectC);
                }
                if (FieldManager.allow(com.umeng.commonsdk.utils.d.E)) {
                    UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>>*** foregroundCount = " + f84920m);
                    jSONObject.put(g.d.a.f84726h, f84920m);
                    f84920m = 0L;
                } else {
                    jSONObject.put(g.d.a.f84726h, 0L);
                }
                k.a(context).a(strA, jSONObject, k.a.END);
                q.a(f84916i).e();
            } catch (Throwable unused) {
            }
            return true;
        } catch (Throwable unused2) {
            return false;
        }
    }

    public void b(Context context, long j10) {
        if (PreferenceWrapper.getDefault(context) == null) {
            return;
        }
        try {
            q.a(f84916i).c((Object) null);
        } catch (Throwable unused) {
        }
    }

    public String a(Context context, long j10, boolean z10) {
        String strB = aa.a().b(context);
        UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> onInstantSessionInternal: current session id = " + strB);
        if (TextUtils.isEmpty(strB)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("__e", j10);
            JSONObject jSONObjectB = com.umeng.analytics.b.a().b();
            if (jSONObjectB != null && jSONObjectB.length() > 0) {
                jSONObject.put("__sp", jSONObjectB);
            }
            JSONObject jSONObjectC = com.umeng.analytics.b.a().c();
            if (jSONObjectC != null && jSONObjectC.length() > 0) {
                jSONObject.put("__pp", jSONObjectC);
            }
            k.a(context).a(strB, jSONObject, k.a.INSTANTSESSIONBEGIN);
            q.a(context).a(jSONObject, z10);
        } catch (Throwable unused) {
        }
        return strB;
    }

    @Deprecated
    public String b() {
        return f84915h;
    }

    @Override // com.umeng.analytics.pro.aa.a
    public void a(String str, String str2, long j10, long j11, long j12) {
        a(f84916i, str2, j10, j11, j12);
        UMRTLog.i(UMRTLog.RTLOG_TAG, "saveSessionToDB: complete");
        if (AnalyticsConstants.SUB_PROCESS_EVENT) {
            Context context = f84916i;
            UMWorkDispatch.sendEvent(context, UMProcessDBDatasSender.UM_PROCESS_EVENT_KEY, UMProcessDBDatasSender.getInstance(context), Long.valueOf(System.currentTimeMillis()));
        }
    }

    @Override // com.umeng.analytics.pro.aa.a
    public void a(String str, long j10, long j11, long j12) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        a(str, j10);
    }

    private void a(Context context, String str, long j10, long j11, long j12) {
        if (TextUtils.isEmpty(f84915h)) {
            f84915h = aa.a().a(f84916i);
        }
        if (TextUtils.isEmpty(str) || str.equals(f84915h)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(g.d.a.f84725g, j11);
            jSONObject.put(g.d.a.f84726h, j12);
            JSONObject jSONObjectB = com.umeng.analytics.b.a().b();
            if (jSONObjectB != null && jSONObjectB.length() > 0) {
                jSONObject.put("__sp", jSONObjectB);
            }
            JSONObject jSONObjectC = com.umeng.analytics.b.a().c();
            if (jSONObjectC != null && jSONObjectC.length() > 0) {
                jSONObject.put("__pp", jSONObjectC);
            }
            k.a(context).a(f84915h, jSONObject, k.a.END);
        } catch (Exception unused) {
        }
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("__e", j10);
            k.a(context).a(str, jSONObject2, k.a.BEGIN);
            if (FieldManager.allow(com.umeng.commonsdk.utils.d.E)) {
                f84920m = j12;
                d(context);
                Context context2 = f84916i;
                UMWorkDispatch.sendEventEx(context2, q.a.E, CoreProtocol.getInstance(context2), null, 0L);
            }
        } catch (Exception unused2) {
        }
        f84915h = str;
    }

    private void a(String str, long j10) {
        SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(f84916i);
        if (sharedPreferences == null) {
            return;
        }
        long j11 = sharedPreferences.getLong(f84909b, 0L);
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("__ii", str);
            jSONObject.put("__e", j10);
            jSONObject.put(g.d.a.f84725g, j11);
            double[] location = AnalyticsConfig.getLocation();
            if (location != null) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put(f.C, location[0]);
                jSONObject2.put(f.D, location[1]);
                jSONObject2.put("ts", System.currentTimeMillis());
                jSONObject.put(g.d.a.f84723e, jSONObject2);
            }
            Class<?> cls = Class.forName("android.net.TrafficStats");
            Class<?> cls2 = Integer.TYPE;
            Method method = cls.getMethod("getUidRxBytes", cls2);
            Method method2 = cls.getMethod("getUidTxBytes", cls2);
            int i10 = f84916i.getApplicationInfo().uid;
            if (i10 == -1) {
                return;
            }
            long jLongValue = ((Long) method.invoke(null, Integer.valueOf(i10))).longValue();
            long jLongValue2 = ((Long) method2.invoke(null, Integer.valueOf(i10))).longValue();
            if (jLongValue > 0 && jLongValue2 > 0) {
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put(f.H, jLongValue);
                jSONObject3.put(f.G, jLongValue2);
                jSONObject.put(g.d.a.f84722d, jSONObject3);
            }
            k.a(f84916i).a(str, jSONObject, k.a.NEWSESSION);
            x.a(f84916i);
            n.c(f84916i);
        } catch (Throwable unused) {
        }
    }
}

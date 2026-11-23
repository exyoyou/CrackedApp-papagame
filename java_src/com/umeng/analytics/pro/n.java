package com.umeng.analytics.pro;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.os.Process;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.join.mgps.Util.o0;
import com.join.mgps.activity.ForumPostsTagSelectActivity_;
import com.papa91.common.BaseAppConfig;
import com.umeng.analytics.MobclickAgent;
import com.umeng.analytics.vshelper.PageNameMonitor;
import com.umeng.commonsdk.UMConfigure;
import com.umeng.commonsdk.config.FieldManager;
import com.umeng.commonsdk.debug.UMLog;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.statistics.common.DeviceConfig;
import com.umeng.commonsdk.utils.UMUtils;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@TargetApi(14)
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f84801a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    boolean f84810b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f84811c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    com.umeng.analytics.vshelper.a f84812f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    Application.ActivityLifecycleCallbacks f84813g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Map<String, Long> f84814h;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f84815l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f84816m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f84817n;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static JSONArray f84804i = new JSONArray();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static Object f84805j = new Object();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static Application f84806k = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static String f84802d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static int f84803e = -1;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static boolean f84807o = true;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static Object f84808p = new Object();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static br f84809q = new com.umeng.analytics.vshelper.b();

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final n f84819a = new n();

        private a() {
        }
    }

    static /* synthetic */ int a(n nVar) {
        int i10 = nVar.f84817n;
        nVar.f84817n = i10 - 1;
        return i10;
    }

    static /* synthetic */ int b(n nVar) {
        int i10 = nVar.f84816m;
        nVar.f84816m = i10 - 1;
        return i10;
    }

    static /* synthetic */ int e(n nVar) {
        int i10 = nVar.f84817n;
        nVar.f84817n = i10 + 1;
        return i10;
    }

    static /* synthetic */ int f(n nVar) {
        int i10 = nVar.f84816m;
        nVar.f84816m = i10 + 1;
        return i10;
    }

    private void g() {
        if (this.f84815l) {
            return;
        }
        this.f84815l = true;
        if (f84806k != null) {
            f84806k.registerActivityLifecycleCallbacks(this.f84813g);
        }
    }

    private n() {
        this.f84814h = new HashMap();
        this.f84815l = false;
        this.f84810b = false;
        this.f84811c = false;
        this.f84816m = 0;
        this.f84817n = 0;
        this.f84812f = PageNameMonitor.getInstance();
        this.f84813g = new Application.ActivityLifecycleCallbacks() { // from class: com.umeng.analytics.pro.n.1
            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityCreated(Activity activity, Bundle bundle) {
                n.f84809q.a(activity, bundle);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityDestroyed(Activity activity) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPaused(Activity activity) {
                if (FieldManager.allow(com.umeng.commonsdk.utils.d.F)) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> onActivityPaused: FirstResumeTrigger enabled.");
                    synchronized (n.f84808p) {
                        if (n.f84807o) {
                            return;
                        }
                    }
                } else {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> onActivityPaused: FirstResumeTrigger disabled.");
                }
                if (UMConfigure.AUTO_ACTIVITY_PAGE_COLLECTION != MobclickAgent.PageMode.AUTO) {
                    if (UMConfigure.AUTO_ACTIVITY_PAGE_COLLECTION == MobclickAgent.PageMode.MANUAL) {
                        com.umeng.analytics.b.a().i();
                    }
                } else {
                    n.this.c(activity);
                    com.umeng.analytics.b.a().i();
                    n.this.f84810b = false;
                    n.f84809q.d(activity);
                }
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityResumed(Activity activity) {
                if (FieldManager.allow(com.umeng.commonsdk.utils.d.F)) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> onActivityResumed: FirstResumeTrigger enabled.");
                    synchronized (n.f84808p) {
                        if (n.f84807o) {
                            boolean unused = n.f84807o = false;
                        }
                    }
                    n.this.a(activity);
                } else {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> onActivityResumed: FirstResumeTrigger disabled.");
                    n.this.a(activity);
                }
                n.f84809q.c(activity);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStarted(Activity activity) {
                if (activity != null) {
                    if (n.this.f84816m <= 0) {
                        if (n.f84802d == null) {
                            n.f84802d = UUID.randomUUID().toString();
                        }
                        if (n.f84803e == -1) {
                            n.f84803e = activity.isTaskRoot() ? 1 : 0;
                        }
                        if (n.f84803e == 0 && UMUtils.isMainProgress(activity)) {
                            HashMap map = new HashMap();
                            map.put(BaseAppConfig.KEY_ACTIVITY_NAME, activity.toString());
                            map.put(ForumPostsTagSelectActivity_.PID_EXTRA, Integer.valueOf(Process.myPid()));
                            map.put("isMainProcess", Integer.valueOf(UMUtils.isMainProgress(activity) ? 1 : 0));
                            com.umeng.analytics.b bVarA = com.umeng.analytics.b.a();
                            if (bVarA != null) {
                                bVarA.a((Context) activity, "$$_onUMengEnterForegroundInitError", (Map<String, Object>) map);
                            }
                            n.f84803e = -2;
                            if (UMConfigure.isDebugLog()) {
                                UMLog.mutlInfo(2, l.ar);
                            }
                        } else if (n.f84803e == 1 || !UMUtils.isMainProgress(activity)) {
                            HashMap map2 = new HashMap();
                            map2.put("pairUUID", n.f84802d);
                            map2.put(ForumPostsTagSelectActivity_.PID_EXTRA, Integer.valueOf(Process.myPid()));
                            map2.put("isMainProcess", Integer.valueOf(UMUtils.isMainProgress(activity) ? 1 : 0));
                            map2.put(BaseAppConfig.KEY_ACTIVITY_NAME, activity.toString());
                            if (com.umeng.analytics.b.a() != null) {
                                com.umeng.analytics.b.a().a((Context) activity, "$$_onUMengEnterForeground", (Map<String, Object>) map2);
                            }
                        }
                    }
                    if (n.this.f84817n < 0) {
                        n.e(n.this);
                    } else {
                        n.f(n.this);
                    }
                }
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStopped(Activity activity) {
                MobclickAgent.PageMode pageMode = UMConfigure.AUTO_ACTIVITY_PAGE_COLLECTION;
                MobclickAgent.PageMode pageMode2 = MobclickAgent.PageMode.AUTO;
                if (activity != null) {
                    if (activity.isChangingConfigurations()) {
                        n.a(n.this);
                        return;
                    }
                    n.b(n.this);
                    if (n.this.f84816m <= 0) {
                        if (n.f84803e == 0 && UMUtils.isMainProgress(activity)) {
                            return;
                        }
                        int i10 = n.f84803e;
                        if (i10 == 1 || (i10 == 0 && !UMUtils.isMainProgress(activity))) {
                            HashMap map = new HashMap();
                            map.put("pairUUID", n.f84802d);
                            map.put(MediationConstant.KEY_REASON, "Normal");
                            map.put(ForumPostsTagSelectActivity_.PID_EXTRA, Integer.valueOf(Process.myPid()));
                            map.put("isMainProcess", Integer.valueOf(UMUtils.isMainProgress(activity) ? 1 : 0));
                            map.put(BaseAppConfig.KEY_ACTIVITY_NAME, activity.toString());
                            com.umeng.analytics.b bVarA = com.umeng.analytics.b.a();
                            if (bVarA != null) {
                                bVarA.a((Context) activity, "$$_onUMengEnterBackground", (Map<String, Object>) map);
                            }
                            if (n.f84802d != null) {
                                n.f84802d = null;
                            }
                        }
                    }
                }
            }
        };
        synchronized (this) {
            if (f84806k != null) {
                g();
            }
        }
    }

    public void c() {
        c((Activity) null);
        b();
    }

    public void b(Context context) {
        synchronized (f84808p) {
            if (f84807o) {
                f84807o = false;
                Activity globleActivity = DeviceConfig.getGlobleActivity(context);
                if (globleActivity == null) {
                    UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> init触发onResume: 无前台Activity，直接退出。");
                    return;
                }
                UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> init触发onResume: 补救成功，前台Activity名：" + globleActivity.getLocalClassName());
                a(globleActivity);
                return;
            }
            UMRTLog.e(UMRTLog.RTLOG_TAG, "--->>> init触发onResume: firstResumeCall = false，直接返回。");
        }
    }

    public static void c(Context context) {
        String string;
        if (context != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                synchronized (f84805j) {
                    string = f84804i.toString();
                    f84804i = new JSONArray();
                }
                if (string.length() > 0) {
                    jSONObject.put(g.d.a.f84721c, new JSONArray(string));
                    k.a(context).a(w.a().c(), jSONObject, k.a.AUTOPAGE);
                }
            } catch (Throwable unused) {
            }
        }
    }

    public boolean a() {
        return this.f84815l;
    }

    public static synchronized n a(Context context) {
        if (f84806k == null && context != null) {
            if (context instanceof Activity) {
                f84806k = ((Activity) context).getApplication();
            } else if (context instanceof Application) {
                f84806k = (Application) context;
            }
        }
        return a.f84819a;
    }

    public static void a(Context context, String str) {
        if (f84803e == 1 && UMUtils.isMainProgress(context)) {
            HashMap map = new HashMap();
            map.put("pairUUID", f84802d);
            map.put(MediationConstant.KEY_REASON, str);
            if (f84802d != null) {
                f84802d = null;
            }
            if (context != null) {
                map.put(ForumPostsTagSelectActivity_.PID_EXTRA, Integer.valueOf(Process.myPid()));
                map.put("isMainProcess", Integer.valueOf(UMUtils.isMainProgress(context) ? 1 : 0));
                map.put("Context", context.toString());
                com.umeng.analytics.b.a().a(context, "$$_onUMengEnterBackground", (Map<String, Object>) map);
            }
        }
    }

    public void b() {
        this.f84815l = false;
        if (f84806k != null) {
            f84806k.unregisterActivityLifecycleCallbacks(this.f84813g);
            f84806k = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(Activity activity) {
        long jLongValue;
        long jCurrentTimeMillis;
        try {
            synchronized (this.f84814h) {
                if (f84801a == null && activity != null) {
                    f84801a = activity.getPackageName() + o0.f49827a + activity.getLocalClassName();
                }
                if (TextUtils.isEmpty(f84801a) || !this.f84814h.containsKey(f84801a)) {
                    jLongValue = 0;
                    jCurrentTimeMillis = 0;
                } else {
                    jLongValue = this.f84814h.get(f84801a).longValue();
                    jCurrentTimeMillis = System.currentTimeMillis() - jLongValue;
                    this.f84814h.remove(f84801a);
                }
            }
            synchronized (f84805j) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(f.f84671v, f84801a);
                    jSONObject.put("duration", jCurrentTimeMillis);
                    jSONObject.put(f.f84673x, jLongValue);
                    jSONObject.put("type", 0);
                    f84804i.put(jSONObject);
                } catch (Throwable unused) {
                }
            }
        } catch (Throwable unused2) {
        }
    }

    private void b(Activity activity) {
        f84801a = activity.getPackageName() + o0.f49827a + activity.getLocalClassName();
        synchronized (this.f84814h) {
            this.f84814h.put(f84801a, Long.valueOf(System.currentTimeMillis()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Activity activity) {
        if (UMConfigure.AUTO_ACTIVITY_PAGE_COLLECTION != MobclickAgent.PageMode.AUTO) {
            if (UMConfigure.AUTO_ACTIVITY_PAGE_COLLECTION == MobclickAgent.PageMode.MANUAL) {
                synchronized (f84808p) {
                    com.umeng.analytics.b.a().h();
                }
                return;
            }
            return;
        }
        if (activity != null) {
            String str = activity.getPackageName() + o0.f49827a + activity.getLocalClassName();
            this.f84812f.activityResume(str);
            if (this.f84810b) {
                this.f84810b = false;
                if (!TextUtils.isEmpty(f84801a)) {
                    if (f84801a.equals(str)) {
                        return;
                    }
                    b(activity);
                    synchronized (f84808p) {
                        com.umeng.analytics.b.a().h();
                    }
                    return;
                }
                f84801a = str;
                return;
            }
            b(activity);
            synchronized (f84808p) {
                com.umeng.analytics.b.a().h();
            }
        }
    }
}

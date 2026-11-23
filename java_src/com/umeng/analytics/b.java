package com.umeng.analytics;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.haima.hmcp.Constants;
import com.umeng.analytics.pro.aa;
import com.umeng.analytics.pro.f;
import com.umeng.analytics.pro.k;
import com.umeng.analytics.pro.l;
import com.umeng.analytics.pro.m;
import com.umeng.analytics.pro.n;
import com.umeng.analytics.pro.o;
import com.umeng.analytics.pro.p;
import com.umeng.analytics.pro.q;
import com.umeng.analytics.pro.r;
import com.umeng.analytics.pro.u;
import com.umeng.analytics.pro.v;
import com.umeng.analytics.pro.w;
import com.umeng.analytics.pro.x;
import com.umeng.common.ISysListener;
import com.umeng.commonsdk.UMConfigure;
import com.umeng.commonsdk.config.FieldManager;
import com.umeng.commonsdk.debug.UMLog;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.service.UMGlobalContext;
import com.umeng.commonsdk.statistics.common.DataHelper;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import com.umeng.commonsdk.statistics.common.MLog;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import com.umeng.commonsdk.utils.UMUtils;
import com.umeng.commonsdk.utils.d;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.microedition.khronos.opengles.GL10;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class b implements p, v {
    private static final String A = "umsp_2";
    private static final String B = "umsp_3";
    private static final String C = "umsp_4";
    private static final String D = "umsp_5";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Context f84181a = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f84182h = "sp_uapp";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final String f84183i = "prepp_uapp";

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final int f84184o = 128;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final int f84185p = 256;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static String f84186q = "";

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static String f84187r = "";

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final String f84189t = "ekv_bl_ver";

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final String f84191w = "ekv_wl_ver";

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final String f84192z = "umsp_1";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ISysListener f84193b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private r f84194c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private x f84195d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private m f84196e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private w f84197f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private n f84198g;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f84199j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private volatile JSONObject f84200k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private volatile JSONObject f84201l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private volatile JSONObject f84202m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f84203n;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private com.umeng.analytics.filter.a f84204u;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private com.umeng.analytics.filter.b f84205x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private o f84206y;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final String f84188s = f.ar;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final String f84190v = f.as;

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final b f84207a = new b();

        private a() {
        }
    }

    static {
        Context appContext = UMGlobalContext.getAppContext();
        if (appContext != null) {
            f84181a = appContext.getApplicationContext();
        }
    }

    public static b a() {
        return a.f84207a;
    }

    private void i(Context context) {
        try {
            if (context == null) {
                MLog.e("unexpected null context in getNativeSuperProperties");
                return;
            }
            if (f84181a == null) {
                f84181a = context.getApplicationContext();
            }
            SharedPreferences sharedPreferences = PreferenceWrapper.getDefault(context);
            if (this.f84200k == null) {
                this.f84200k = new JSONObject();
            }
            if (this.f84201l == null) {
                this.f84201l = new JSONObject();
            }
            String string = sharedPreferences.getString(f84183i, null);
            if (!TextUtils.isEmpty(string)) {
                try {
                    this.f84202m = new JSONObject(string);
                } catch (JSONException unused) {
                }
            }
            if (this.f84202m == null) {
                this.f84202m = new JSONObject();
            }
        } catch (Throwable unused2) {
        }
    }

    public JSONObject b() {
        return this.f84200k;
    }

    public JSONObject c() {
        return this.f84202m;
    }

    public JSONObject d() {
        return this.f84201l;
    }

    public void e() {
        this.f84201l = null;
    }

    public String f() {
        if (UMUtils.isMainProgress(f84181a)) {
            return f84186q;
        }
        MLog.e("getOnResumedActivityName can not be called in child process");
        return null;
    }

    public String g() {
        if (UMUtils.isMainProgress(f84181a)) {
            return f84187r;
        }
        MLog.e("getOnPausedActivityName can not be called in child process");
        return null;
    }

    public void h() {
        try {
            Context context = f84181a;
            if (context != null) {
                if (!UMUtils.isMainProgress(context)) {
                    MLog.e("onStartSessionInternal can not be called in child process");
                    return;
                }
                long jCurrentTimeMillis = System.currentTimeMillis();
                Context context2 = f84181a;
                UMWorkDispatch.sendEvent(context2, 4352, CoreProtocol.getInstance(context2), Long.valueOf(jCurrentTimeMillis));
                Context context3 = f84181a;
                UMWorkDispatch.sendEvent(context3, q.a.f84860g, CoreProtocol.getInstance(context3), Long.valueOf(jCurrentTimeMillis));
            }
            ISysListener iSysListener = this.f84193b;
            if (iSysListener != null) {
                iSysListener.onAppResume();
            }
        } catch (Throwable unused) {
        }
    }

    void j() {
        try {
            Context context = f84181a;
            if (context == null) {
                return;
            }
            if (!UMUtils.isMainProgress(context)) {
                MLog.e("onProfileSignOff can not be called in child process");
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("ts", jCurrentTimeMillis);
            Context context2 = f84181a;
            UMWorkDispatch.sendEvent(context2, q.a.f84859f, CoreProtocol.getInstance(context2), jSONObject);
            Context context3 = f84181a;
            UMWorkDispatch.sendEvent(context3, 4356, CoreProtocol.getInstance(context3), jSONObject);
        } catch (Throwable th) {
            if (MLog.DEBUG) {
                MLog.e(" Excepthon  in  onProfileSignOff", th);
            }
        }
    }

    public synchronized void k() {
        try {
            Context context = f84181a;
            if (context == null) {
                return;
            }
            if (!UMUtils.isMainProgress(context)) {
                MLog.e("unregisterSuperPropertyByCoreProtocol can not be called in child process");
                return;
            }
            if (this.f84200k != null) {
                SharedPreferences.Editor editorEdit = PreferenceWrapper.getDefault(f84181a).edit();
                editorEdit.putString(f84182h, this.f84200k.toString());
                editorEdit.commit();
            } else {
                this.f84200k = new JSONObject();
            }
        } catch (Throwable unused) {
        }
    }

    public synchronized JSONObject l() {
        Context context = f84181a;
        if (context == null) {
            return null;
        }
        if (!UMUtils.isMainProgress(context)) {
            MLog.e("getSuperPropertiesJSONObject can not be called in child process");
            return null;
        }
        if (this.f84200k == null) {
            this.f84200k = new JSONObject();
        }
        return this.f84200k;
    }

    public synchronized void m() {
        try {
            Context context = f84181a;
            if (context != null) {
                if (!UMUtils.isMainProgress(context)) {
                    MLog.e("clearSuperPropertiesByCoreProtocol can not be called in child process");
                } else {
                    SharedPreferences.Editor editorEdit = PreferenceWrapper.getDefault(f84181a).edit();
                    editorEdit.remove(f84182h);
                    editorEdit.commit();
                }
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.umeng.analytics.pro.p
    public void n() {
        UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> onIntoBackground triggered.");
        if (AnalyticsConfig.enable && FieldManager.b()) {
            if (!FieldManager.allow(d.D)) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> 退出发送策略: 云控控制字关闭。功能不生效");
            } else {
                if (UMWorkDispatch.eventHasExist(q.a.B)) {
                    return;
                }
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> 退出时发送策略 被触发！");
                Context context = f84181a;
                UMWorkDispatch.sendEvent(context, q.a.B, CoreProtocol.getInstance(context), null);
            }
        }
    }

    private b() {
        this.f84194c = new r();
        this.f84195d = new x();
        this.f84196e = new m();
        this.f84197f = w.a();
        this.f84198g = null;
        this.f84199j = false;
        this.f84200k = null;
        this.f84201l = null;
        this.f84202m = null;
        this.f84203n = false;
        this.f84204u = null;
        this.f84205x = null;
        this.f84206y = null;
        this.f84194c.a(this);
    }

    private boolean e(String str) {
        if (this.f84204u.enabled() && this.f84204u.matchHit(str)) {
            return true;
        }
        if (!this.f84205x.enabled()) {
            return false;
        }
        if (!this.f84205x.matchHit(str)) {
            return true;
        }
        UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> white list match! id = " + str);
        return false;
    }

    public void a(Context context) {
        if (context == null) {
            return;
        }
        try {
            if (f84181a == null) {
                f84181a = context.getApplicationContext();
            }
            if (this.f84204u == null) {
                com.umeng.analytics.filter.a aVar = new com.umeng.analytics.filter.a(f84188s, "ekv_bl_ver");
                this.f84204u = aVar;
                aVar.register(f84181a);
            }
            if (this.f84205x == null) {
                com.umeng.analytics.filter.b bVar = new com.umeng.analytics.filter.b(f84190v, "ekv_wl_ver");
                this.f84205x = bVar;
                bVar.register(f84181a);
            }
            if (UMUtils.isMainProgress(f84181a)) {
                if (!this.f84199j) {
                    this.f84199j = true;
                    i(f84181a);
                }
                synchronized (this) {
                    if (!this.f84203n) {
                        n nVarA = n.a(context);
                        this.f84198g = nVarA;
                        if (nVarA.a()) {
                            this.f84203n = true;
                        }
                        this.f84206y = o.a();
                        try {
                            o.a(context);
                            this.f84206y.a(this);
                        } catch (Throwable unused) {
                        }
                    }
                }
                if (UMConfigure.isDebugLog()) {
                    UMLog.mutlInfo(l.B, 3, "", null, null);
                }
                UMWorkDispatch.registerConnStateObserver(CoreProtocol.getInstance(f84181a));
            }
        } catch (Throwable unused2) {
        }
    }

    void b(String str) {
        if (!UMUtils.isMainProgress(f84181a)) {
            MLog.e("onPageEnd can not be called in child process");
            return;
        }
        try {
            if (UMConfigure.AUTO_ACTIVITY_PAGE_COLLECTION != MobclickAgent.PageMode.LEGACY_AUTO) {
                this.f84195d.b(str);
            }
        } catch (Throwable unused) {
        }
    }

    void c(Context context) {
        if (context == null) {
            UMLog.aq(l.f84790p, 0, Constants.TIPS_SPECIAL_TAG);
            return;
        }
        if (UMConfigure.AUTO_ACTIVITY_PAGE_COLLECTION == MobclickAgent.PageMode.AUTO) {
            return;
        }
        if (f84181a == null) {
            f84181a = context.getApplicationContext();
        }
        if (!UMUtils.isMainProgress(f84181a)) {
            MLog.e("onPause can not be called in child process");
            return;
        }
        if (UMConfigure.isDebugLog() && !(context instanceof Activity)) {
            UMLog.aq(l.f84791q, 2, Constants.TIPS_SPECIAL_TAG);
        }
        try {
            if (!this.f84199j || !this.f84203n) {
                a(context);
            }
            if (UMConfigure.AUTO_ACTIVITY_PAGE_COLLECTION != MobclickAgent.PageMode.LEGACY_MANUAL) {
                this.f84196e.b(context.getClass().getName());
            }
            i();
        } catch (Throwable th) {
            if (MLog.DEBUG) {
                MLog.e("Exception occurred in Mobclick.onRause(). ", th);
            }
        }
        if (UMConfigure.isDebugLog() && (context instanceof Activity)) {
            f84187r = context.getClass().getName();
        }
    }

    void d(Context context) {
        if (context == null) {
            return;
        }
        try {
            if (f84181a == null) {
                f84181a = context.getApplicationContext();
            }
            if (!UMUtils.isMainProgress(f84181a)) {
                MLog.e("onKillProcess can not be called in child process");
                return;
            }
            n nVar = this.f84198g;
            if (nVar != null) {
                nVar.c();
            }
            n.a(context, "onKillProcess");
            m mVar = this.f84196e;
            if (mVar != null) {
                mVar.b();
            }
            x xVar = this.f84195d;
            if (xVar != null) {
                xVar.b();
            }
            Context context2 = f84181a;
            if (context2 != null) {
                w wVar = this.f84197f;
                if (wVar != null) {
                    wVar.c(context2, Long.valueOf(System.currentTimeMillis()));
                }
                q.a(f84181a).d();
                x.a(f84181a);
                if (UMConfigure.AUTO_ACTIVITY_PAGE_COLLECTION == MobclickAgent.PageMode.AUTO) {
                    n.c(f84181a);
                }
                PreferenceWrapper.getDefault(f84181a).edit().commit();
            }
        } catch (Throwable unused) {
        }
    }

    public synchronized void f(Context context) {
        try {
            if (context == null) {
                UMLog.aq(l.ah, 0, Constants.TIPS_SPECIAL_TAG);
                return;
            }
            if (f84181a == null) {
                f84181a = context.getApplicationContext();
            }
            if (!UMUtils.isMainProgress(f84181a)) {
                MLog.e("clearSuperProperties can not be called in child process");
                return;
            }
            if (!this.f84199j || !this.f84203n) {
                a(f84181a);
            }
            this.f84200k = new JSONObject();
            Context context2 = f84181a;
            UMWorkDispatch.sendEvent(context2, q.a.f84874u, CoreProtocol.getInstance(context2), null);
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void g(Context context) {
        try {
            if (context == null) {
                UMLog.aq(l.ap, 0, Constants.TIPS_SPECIAL_TAG);
                return;
            }
            if (f84181a == null) {
                f84181a = context.getApplicationContext();
            }
            if (!UMUtils.isMainProgress(f84181a)) {
                MLog.e("clearPreProperties can not be called in child process");
                return;
            }
            if (!this.f84199j || !this.f84203n) {
                a(f84181a);
            }
            if (this.f84202m.length() > 0) {
                Context context2 = f84181a;
                UMWorkDispatch.sendEvent(context2, q.a.f84878y, CoreProtocol.getInstance(context2), null);
            }
            this.f84202m = new JSONObject();
        } catch (Throwable th) {
            throw th;
        }
    }

    void b(Context context) {
        if (context == null) {
            MLog.e("unexpected null context in onResume");
            return;
        }
        if (UMConfigure.AUTO_ACTIVITY_PAGE_COLLECTION == MobclickAgent.PageMode.AUTO) {
            return;
        }
        if (f84181a == null) {
            f84181a = context.getApplicationContext();
        }
        if (!UMUtils.isMainProgress(f84181a)) {
            MLog.e("onResume can not be called in child process");
            return;
        }
        if (UMConfigure.isDebugLog() && !(context instanceof Activity)) {
            UMLog.aq(l.f84789o, 2, Constants.TIPS_SPECIAL_TAG);
        }
        try {
            if (!this.f84199j || !this.f84203n) {
                a(context);
            }
            if (UMConfigure.AUTO_ACTIVITY_PAGE_COLLECTION != MobclickAgent.PageMode.LEGACY_MANUAL) {
                this.f84196e.a(context.getClass().getName());
            }
            h();
            if (UMConfigure.isDebugLog() && (context instanceof Activity)) {
                f84186q = context.getClass().getName();
            }
        } catch (Throwable th) {
            MLog.e("Exception occurred in Mobclick.onResume(). ", th);
        }
    }

    public synchronized Object e(Context context, String str) {
        try {
            if (context == null) {
                UMLog.aq(l.ai, 0, Constants.TIPS_SPECIAL_TAG);
                return null;
            }
            if (f84181a == null) {
                f84181a = context.getApplicationContext();
            }
            if (!UMUtils.isMainProgress(f84181a)) {
                MLog.e("getSuperProperty can not be called in child process");
                return null;
            }
            if (TextUtils.isEmpty(str)) {
                UMLog.aq(l.ag, 0, Constants.TIPS_SPECIAL_TAG);
                return null;
            }
            if (!str.equals(f84192z) && !str.equals(A) && !str.equals(B) && !str.equals(C) && !str.equals(D)) {
                MLog.e("please check key or value, must be correct!");
                return null;
            }
            if (this.f84200k != null) {
                if (this.f84200k.has(str)) {
                    return this.f84200k.opt(str);
                }
            } else {
                this.f84200k = new JSONObject();
            }
            return null;
        } catch (Throwable unused) {
        }
    }

    public synchronized JSONObject h(Context context) {
        try {
            if (context == null) {
                UMLog.aq(l.aq, 0, Constants.TIPS_SPECIAL_TAG);
                return null;
            }
            if (f84181a == null) {
                f84181a = context.getApplicationContext();
            }
            if (!UMUtils.isMainProgress(f84181a)) {
                MLog.e("getPreProperties can not be called in child process");
                return null;
            }
            if (!this.f84199j || !this.f84203n) {
                a(f84181a);
            }
            if (this.f84202m == null) {
                this.f84202m = new JSONObject();
            }
            JSONObject jSONObject = new JSONObject();
            if (this.f84202m.length() > 0) {
                try {
                    jSONObject = new JSONObject(this.f84202m.toString());
                } catch (JSONException unused) {
                }
            }
            return jSONObject;
        } catch (Throwable th) {
            throw th;
        }
    }

    public void i() {
        try {
            Context context = f84181a;
            if (context != null) {
                if (!UMUtils.isMainProgress(context)) {
                    MLog.e("onEndSessionInternal can not be called in child process");
                    return;
                }
                Context context2 = f84181a;
                UMWorkDispatch.sendEvent(context2, q.a.f84861h, CoreProtocol.getInstance(context2), Long.valueOf(System.currentTimeMillis()));
                Context context3 = f84181a;
                UMWorkDispatch.sendEvent(context3, 4100, CoreProtocol.getInstance(context3), null);
                Context context4 = f84181a;
                UMWorkDispatch.sendEvent(context4, 4099, CoreProtocol.getInstance(context4), null);
                Context context5 = f84181a;
                UMWorkDispatch.sendEvent(context5, q.a.f84862i, CoreProtocol.getInstance(context5), null);
            }
        } catch (Throwable unused) {
        }
        ISysListener iSysListener = this.f84193b;
        if (iSysListener != null) {
            iSysListener.onAppPause();
        }
    }

    public synchronized void f(Context context, String str) {
        try {
            if (context == null) {
                UMLog.aq(l.an, 0, Constants.TIPS_SPECIAL_TAG);
                return;
            }
            if (f84181a == null) {
                f84181a = context.getApplicationContext();
            }
            if (!UMUtils.isMainProgress(f84181a)) {
                MLog.e("unregisterPreProperty can not be called in child process");
                return;
            }
            if (!this.f84199j || !this.f84203n) {
                a(f84181a);
            }
            if (this.f84202m == null) {
                this.f84202m = new JSONObject();
            }
            if (str != null && str.length() > 0) {
                if (this.f84202m.has(str)) {
                    this.f84202m.remove(str);
                    Context context2 = f84181a;
                    UMWorkDispatch.sendEvent(context2, q.a.f84877x, CoreProtocol.getInstance(context2), this.f84202m.toString());
                } else if (UMConfigure.isDebugLog()) {
                    UMLog.aq(l.ao, 0, Constants.TIPS_SPECIAL_TAG);
                }
                return;
            }
            MLog.e("please check propertics, property is null!");
        } catch (Throwable th) {
            throw th;
        }
    }

    private boolean g(String str) {
        if (str != null) {
            try {
                int length = str.trim().getBytes().length;
                if (length >= 0 && length < 256) {
                    return true;
                }
            } catch (Throwable unused) {
            }
        }
        MLog.e("The length of profile value must be less than 256 bytes.");
        return false;
    }

    void c(Context context, String str) {
        if (context == null) {
            UMLog.aq(l.f84800z, 0, Constants.TIPS_SPECIAL_TAG);
            return;
        }
        if (f84181a == null) {
            f84181a = context.getApplicationContext();
        }
        if (!UMUtils.isMainProgress(f84181a)) {
            MLog.e("setSecret can not be called in child process");
            return;
        }
        if (!this.f84199j || !this.f84203n) {
            a(f84181a);
        }
        AnalyticsConfig.a(f84181a, str);
    }

    public synchronized void d(Context context, String str) {
        try {
            if (context == null) {
                UMLog.aq(l.ah, 0, Constants.TIPS_SPECIAL_TAG);
                return;
            }
            if (f84181a == null) {
                f84181a = context.getApplicationContext();
            }
            if (!UMUtils.isMainProgress(f84181a)) {
                MLog.e("unregisterSuperProperty can not be called in child process");
                return;
            }
            if (!this.f84199j || !this.f84203n) {
                a(f84181a);
            }
            if (TextUtils.isEmpty(str)) {
                UMLog.aq(l.ag, 0, Constants.TIPS_SPECIAL_TAG);
                return;
            }
            if (!str.equals(f84192z) && !str.equals(A) && !str.equals(B) && !str.equals(C) && !str.equals(D)) {
                MLog.e("please check key or value, must be correct!");
                return;
            }
            if (this.f84200k == null) {
                this.f84200k = new JSONObject();
            }
            if (this.f84200k.has(str)) {
                this.f84200k.remove(str);
                Context context2 = f84181a;
                UMWorkDispatch.sendEvent(context2, 8197, CoreProtocol.getInstance(context2), str);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void b(Context context, String str) {
        try {
            if (context == null) {
                UMLog.aq(l.N, 0, Constants.TIPS_SPECIAL_TAG);
                return;
            }
            if (f84181a == null) {
                f84181a = context.getApplicationContext();
            }
            if (!UMUtils.isMainProgress(f84181a)) {
                MLog.e("onDeepLinkReceived can not be called in child process");
                return;
            }
            if (!this.f84199j || !this.f84203n) {
                a(f84181a);
            }
            if (!TextUtils.isEmpty(str)) {
                HashMap map = new HashMap();
                map.put(f.aK, str);
                a(f84181a, f.aJ, (Map<String, Object>) map, -1L, false);
                return;
            }
            UMLog.aq(l.O, 0, Constants.TIPS_SPECIAL_TAG);
        } catch (Throwable th) {
            if (MLog.DEBUG) {
                MLog.e(th);
            }
        }
    }

    void a(String str) {
        if (!UMUtils.isMainProgress(f84181a)) {
            MLog.e("onPageStart can not be called in child process");
            return;
        }
        try {
            if (UMConfigure.AUTO_ACTIVITY_PAGE_COLLECTION != MobclickAgent.PageMode.LEGACY_AUTO) {
                this.f84195d.a(str);
            }
        } catch (Throwable unused) {
        }
    }

    private boolean c(String str, Object obj) {
        int length;
        try {
            if (TextUtils.isEmpty(str)) {
                MLog.e("key is " + str + ", please check key, illegal");
                return false;
            }
            try {
                length = str.getBytes("UTF-8").length;
            } catch (UnsupportedEncodingException unused) {
                length = 0;
            }
            if (length > 128) {
                MLog.e("key length is " + length + ", please check key, illegal");
                return false;
            }
            if (obj instanceof String) {
                if (((String) obj).getBytes("UTF-8").length <= 256) {
                    return true;
                }
                MLog.e("value length is " + ((String) obj).getBytes("UTF-8").length + ", please check value, illegal");
                return false;
            }
            if ((obj instanceof Integer) || (obj instanceof Long) || (obj instanceof Double) || (obj instanceof Float)) {
                return true;
            }
            MLog.e("value is " + obj + ", please check value, type illegal");
            return false;
        } catch (Throwable unused2) {
        }
    }

    public synchronized String e(Context context) {
        try {
            if (context == null) {
                UMLog.aq(l.ai, 0, Constants.TIPS_SPECIAL_TAG);
                return null;
            }
            if (f84181a == null) {
                f84181a = context.getApplicationContext();
            }
            if (!UMUtils.isMainProgress(f84181a)) {
                MLog.e("getSuperProperties can not be called in child process");
                return null;
            }
            if (this.f84200k != null) {
                return this.f84200k.toString();
            }
            this.f84200k = new JSONObject();
            return null;
        } catch (Throwable unused) {
        }
    }

    public void a(ISysListener iSysListener) {
        if (!UMUtils.isMainProgress(f84181a)) {
            MLog.e("setSysListener can not be called in child process");
        } else {
            this.f84193b = iSysListener;
        }
    }

    public void a(Context context, int i10) {
        if (context == null) {
            MLog.e("unexpected null context in setVerticalType");
            return;
        }
        if (f84181a == null) {
            f84181a = context.getApplicationContext();
        }
        if (!UMUtils.isMainProgress(f84181a)) {
            MLog.e("setVerticalType can not be called in child process");
            return;
        }
        if (!this.f84199j || !this.f84203n) {
            a(f84181a);
        }
        AnalyticsConfig.a(f84181a, i10);
    }

    private void b(String str, Object obj) {
        try {
            if (this.f84200k == null) {
                this.f84200k = new JSONObject();
            }
            int i10 = 0;
            if (obj.getClass().isArray()) {
                if (obj instanceof String[]) {
                    String[] strArr = (String[]) obj;
                    if (strArr.length > 10) {
                        return;
                    }
                    JSONArray jSONArray = new JSONArray();
                    while (i10 < strArr.length) {
                        String str2 = strArr[i10];
                        if (str2 != null && !HelperUtils.checkStrLen(str2, 256)) {
                            jSONArray.put(strArr[i10]);
                        }
                        i10++;
                    }
                    this.f84200k.put(str, jSONArray);
                    return;
                }
                if (obj instanceof long[]) {
                    long[] jArr = (long[]) obj;
                    JSONArray jSONArray2 = new JSONArray();
                    while (i10 < jArr.length) {
                        jSONArray2.put(jArr[i10]);
                        i10++;
                    }
                    this.f84200k.put(str, jSONArray2);
                    return;
                }
                if (obj instanceof int[]) {
                    int[] iArr = (int[]) obj;
                    JSONArray jSONArray3 = new JSONArray();
                    while (i10 < iArr.length) {
                        jSONArray3.put(iArr[i10]);
                        i10++;
                    }
                    this.f84200k.put(str, jSONArray3);
                    return;
                }
                if (obj instanceof float[]) {
                    float[] fArr = (float[]) obj;
                    JSONArray jSONArray4 = new JSONArray();
                    while (i10 < fArr.length) {
                        jSONArray4.put(fArr[i10]);
                        i10++;
                    }
                    this.f84200k.put(str, jSONArray4);
                    return;
                }
                if (obj instanceof double[]) {
                    double[] dArr = (double[]) obj;
                    JSONArray jSONArray5 = new JSONArray();
                    while (i10 < dArr.length) {
                        jSONArray5.put(dArr[i10]);
                        i10++;
                    }
                    this.f84200k.put(str, jSONArray5);
                    return;
                }
                if (obj instanceof short[]) {
                    short[] sArr = (short[]) obj;
                    JSONArray jSONArray6 = new JSONArray();
                    while (i10 < sArr.length) {
                        jSONArray6.put((int) sArr[i10]);
                        i10++;
                    }
                    this.f84200k.put(str, jSONArray6);
                    return;
                }
                return;
            }
            if (obj instanceof List) {
                List list = (List) obj;
                JSONArray jSONArray7 = new JSONArray();
                while (i10 < list.size()) {
                    Object obj2 = list.get(i10);
                    if ((obj2 instanceof String) || (obj2 instanceof Long) || (obj2 instanceof Integer) || (obj2 instanceof Float) || (obj2 instanceof Double) || (obj2 instanceof Short)) {
                        jSONArray7.put(list.get(i10));
                    }
                    i10++;
                }
                this.f84200k.put(str, jSONArray7);
                return;
            }
            if ((obj instanceof String) || (obj instanceof Long) || (obj instanceof Integer) || (obj instanceof Float) || (obj instanceof Double) || (obj instanceof Short)) {
                this.f84200k.put(str, obj);
            }
        } catch (Throwable unused) {
        }
    }

    private boolean f(String str) {
        if (str != null) {
            try {
                int length = str.trim().getBytes().length;
                if (length > 0 && length < 128) {
                    return true;
                }
            } catch (Throwable unused) {
            }
        }
        MLog.e("The length of profile key must be less than 128 bytes.");
        return false;
    }

    public void c(String str) {
        if (g(str)) {
            a(f.O, (Object) str);
        }
    }

    public void a(Context context, String str, HashMap<String, Object> map) {
        if (context == null) {
            return;
        }
        try {
            if (f84181a == null) {
                f84181a = context.getApplicationContext();
            }
            if (!UMUtils.isMainProgress(f84181a)) {
                MLog.e("onGKVEvent can not be called in child process");
                return;
            }
            if (!this.f84199j || !this.f84203n) {
                a(f84181a);
            }
            String string = "";
            if (this.f84200k == null) {
                this.f84200k = new JSONObject();
            } else {
                string = this.f84200k.toString();
            }
            u.a(f84181a).a(str, map, string);
        } catch (Throwable th) {
            if (MLog.DEBUG) {
                MLog.e(th);
            }
        }
    }

    public void d(String str) {
        if (g(str)) {
            a(f.P, (Object) str);
        }
    }

    void a(Context context, String str) {
        if (context == null) {
            UMLog.aq(l.f84797w, 0, Constants.TIPS_SPECIAL_TAG);
            return;
        }
        if (f84181a == null) {
            f84181a = context.getApplicationContext();
        }
        if (!UMUtils.isMainProgress(f84181a)) {
            MLog.e("reportError can not be called in child process");
            return;
        }
        if (TextUtils.isEmpty(str)) {
            if (UMConfigure.isDebugLog()) {
                UMLog.aq(l.f84798x, 0, Constants.TIPS_SPECIAL_TAG);
                return;
            }
            return;
        }
        try {
            if (!this.f84199j || !this.f84203n) {
                a(f84181a);
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("ts", System.currentTimeMillis());
            jSONObject.put(f.W, 2);
            jSONObject.put("context", str);
            jSONObject.put("__ii", this.f84197f.c());
            Context context2 = f84181a;
            UMWorkDispatch.sendEvent(context2, q.a.f84863j, CoreProtocol.getInstance(context2), jSONObject);
        } catch (Throwable th) {
            if (MLog.DEBUG) {
                MLog.e(th);
            }
        }
    }

    void a(Context context, Throwable th) {
        if (context != null && th != null) {
            if (f84181a == null) {
                f84181a = context.getApplicationContext();
            }
            if (!UMUtils.isMainProgress(f84181a)) {
                MLog.e("reportError can not be called in child process");
                return;
            }
            try {
                if (!this.f84199j || !this.f84203n) {
                    a(f84181a);
                }
                a(f84181a, DataHelper.convertExceptionToString(th));
                return;
            } catch (Exception e10) {
                if (MLog.DEBUG) {
                    MLog.e(e10);
                    return;
                }
                return;
            }
        }
        UMLog.aq(l.f84799y, 0, Constants.TIPS_SPECIAL_TAG);
    }

    public void a(Context context, String str, String str2, long j10, int i10) {
        if (context == null) {
            return;
        }
        try {
            if (f84181a == null) {
                f84181a = context.getApplicationContext();
            }
            if (!this.f84199j || !this.f84203n) {
                a(f84181a);
            }
            if (e(str)) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> filter ekv [" + str + "].");
                return;
            }
            String string = "";
            if (this.f84200k == null) {
                this.f84200k = new JSONObject();
            } else {
                string = this.f84200k.toString();
            }
            u.a(f84181a).a(str, str2, j10, i10, string);
        } catch (Throwable th) {
            if (MLog.DEBUG) {
                MLog.e(th);
            }
        }
    }

    public synchronized void b(Object obj) {
        try {
            Context context = f84181a;
            if (context == null) {
                return;
            }
            if (!UMUtils.isMainProgress(context)) {
                MLog.e("updateNativePrePropertiesByCoreProtocol can not be called in child process");
                return;
            }
            SharedPreferences.Editor editorEdit = PreferenceWrapper.getDefault(f84181a).edit();
            if (obj != null) {
                String str = (String) obj;
                if (editorEdit != null && !TextUtils.isEmpty(str)) {
                    editorEdit.putString(f84183i, str).commit();
                }
            } else if (editorEdit != null) {
                editorEdit.remove(f84183i).commit();
            }
        } catch (Throwable unused) {
        }
    }

    void a(Context context, String str, Map<String, Object> map, long j10) {
        try {
            if (!TextUtils.isEmpty(str)) {
                if (Arrays.asList(f.aL).contains(str)) {
                    UMLog.aq(l.f84776b, 0, Constants.TIPS_SPECIAL_TAG);
                    return;
                }
                if (map.isEmpty()) {
                    UMLog.aq(l.f84778d, 0, Constants.TIPS_SPECIAL_TAG);
                    return;
                }
                Iterator<Map.Entry<String, Object>> it2 = map.entrySet().iterator();
                while (it2.hasNext()) {
                    if (Arrays.asList(f.aL).contains(it2.next().getKey())) {
                        UMLog.aq(l.f84779e, 0, Constants.TIPS_SPECIAL_TAG);
                        return;
                    }
                }
                a(context, str, map, j10, false);
                return;
            }
            UMLog.aq(l.f84777c, 0, Constants.TIPS_SPECIAL_TAG);
        } catch (Throwable th) {
            if (MLog.DEBUG) {
                MLog.e(th);
            }
        }
    }

    public void a(Context context, String str, Map<String, Object> map) {
        a(context, str, map, -1L, true);
    }

    private void a(Context context, String str, Map<String, Object> map, long j10, boolean z10) {
        try {
            if (context == null) {
                MLog.e("context is null in onEventNoCheck, please check!");
                return;
            }
            if (f84181a == null) {
                f84181a = context.getApplicationContext();
            }
            if (!this.f84199j || !this.f84203n) {
                a(f84181a);
            }
            if (e(str)) {
                UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> filter ekv [" + str + "].");
                return;
            }
            String string = "";
            if (this.f84200k == null) {
                this.f84200k = new JSONObject();
            } else {
                string = this.f84200k.toString();
            }
            u.a(f84181a).a(str, map, j10, string, z10);
        } catch (Throwable th) {
            if (MLog.DEBUG) {
                MLog.e(th);
            }
        }
    }

    @Override // com.umeng.analytics.pro.v
    public void a(Throwable th) {
        try {
            Context context = f84181a;
            if (context == null) {
                return;
            }
            if (!UMUtils.isMainProgress(context)) {
                MLog.e("onAppCrash can not be called in child process");
                return;
            }
            if (AnalyticsConfig.enable) {
                x xVar = this.f84195d;
                if (xVar != null) {
                    xVar.b();
                }
                n.a(f84181a, "onAppCrash");
                m mVar = this.f84196e;
                if (mVar != null) {
                    mVar.b();
                }
                n nVar = this.f84198g;
                if (nVar != null) {
                    nVar.c();
                }
                w wVar = this.f84197f;
                if (wVar != null) {
                    wVar.c(f84181a, Long.valueOf(System.currentTimeMillis()));
                }
                if (th != null) {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("ts", System.currentTimeMillis());
                    jSONObject.put(f.W, 1);
                    jSONObject.put("context", DataHelper.convertExceptionToString(th));
                    k.a(f84181a).a(this.f84197f.c(), jSONObject.toString(), 1);
                }
                q.a(f84181a).d();
                x.a(f84181a);
                if (UMConfigure.AUTO_ACTIVITY_PAGE_COLLECTION == MobclickAgent.PageMode.AUTO) {
                    n.c(f84181a);
                }
                PreferenceWrapper.getDefault(f84181a).edit().commit();
            }
        } catch (Exception e10) {
            if (MLog.DEBUG) {
                MLog.e("Exception in onAppCrash", e10);
            }
        }
    }

    void a(String str, String str2) {
        try {
            Context context = f84181a;
            if (context == null) {
                return;
            }
            if (!UMUtils.isMainProgress(context)) {
                MLog.e("onProfileSignIn can not be called in child process");
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(f.M, str);
            jSONObject.put("uid", str2);
            jSONObject.put("ts", jCurrentTimeMillis);
            Context context2 = f84181a;
            UMWorkDispatch.sendEvent(context2, q.a.f84858e, CoreProtocol.getInstance(context2), jSONObject);
            Context context3 = f84181a;
            UMWorkDispatch.sendEvent(context3, 4356, CoreProtocol.getInstance(context3), jSONObject);
        } catch (Throwable th) {
            if (MLog.DEBUG) {
                MLog.e(" Excepthon  in  onProfileSignIn", th);
            }
        }
    }

    void a(boolean z10) {
        Context context = f84181a;
        if (context == null) {
            return;
        }
        if (!UMUtils.isMainProgress(context)) {
            MLog.e("setCatchUncaughtExceptions can not be called in child process");
        } else {
            if (AnalyticsConfig.CHANGE_CATCH_EXCEPTION_NOTALLOW) {
                return;
            }
            AnalyticsConfig.CATCH_EXCEPTION = z10;
        }
    }

    void a(GL10 gl10) {
        String[] gpu = UMUtils.getGPU(gl10);
        if (gpu.length == 2) {
            AnalyticsConfig.GPU_VENDER = gpu[0];
            AnalyticsConfig.GPU_RENDERER = gpu[1];
        }
    }

    void a(double d10, double d11) {
        Context context = f84181a;
        if (context == null) {
            return;
        }
        if (!UMUtils.isMainProgress(context)) {
            MLog.e("setLocation can not be called in child process");
            return;
        }
        if (AnalyticsConfig.f84158a == null) {
            AnalyticsConfig.f84158a = new double[2];
        }
        double[] dArr = AnalyticsConfig.f84158a;
        dArr[0] = d10;
        dArr[1] = d11;
    }

    void a(Context context, MobclickAgent.EScenarioType eScenarioType) {
        if (context == null) {
            MLog.e("unexpected null context in setScenarioType");
            return;
        }
        if (f84181a == null) {
            f84181a = context.getApplicationContext();
        }
        if (!UMUtils.isMainProgress(f84181a)) {
            MLog.e("setScenarioType can not be called in child process");
            return;
        }
        if (eScenarioType != null) {
            a(f84181a, eScenarioType.toValue());
        }
        if (this.f84199j && this.f84203n) {
            return;
        }
        a(f84181a);
    }

    void a(long j10) {
        Context context = f84181a;
        if (context == null) {
            return;
        }
        if (!UMUtils.isMainProgress(context)) {
            MLog.e("setSessionContinueMillis can not be called in child process");
        } else {
            AnalyticsConfig.kContinueSessionMillis = j10;
            aa.a().a(AnalyticsConfig.kContinueSessionMillis);
        }
    }

    public synchronized void a(Context context, String str, Object obj) {
        int i10 = 0;
        try {
            if (context == null) {
                UMLog.aq(l.af, 0, Constants.TIPS_SPECIAL_TAG);
                return;
            }
            if (f84181a == null) {
                f84181a = context.getApplicationContext();
            }
            if (!UMUtils.isMainProgress(f84181a)) {
                MLog.e("registerSuperProperty can not be called in child process");
                return;
            }
            if (!this.f84199j || !this.f84203n) {
                a(f84181a);
            }
            if (!TextUtils.isEmpty(str) && obj != null) {
                if (!str.equals(f84192z) && !str.equals(A) && !str.equals(B) && !str.equals(C) && !str.equals(D)) {
                    MLog.e("property name is " + str + ", please check key, must be correct!");
                    return;
                }
                if ((obj instanceof String) && !HelperUtils.checkStrLen(obj.toString(), 256)) {
                    MLog.e("property value is " + obj + ", please check value, lawless!");
                    return;
                }
                try {
                    if (this.f84200k == null) {
                        this.f84200k = new JSONObject();
                    }
                    if (obj.getClass().isArray()) {
                        if (obj instanceof String[]) {
                            String[] strArr = (String[]) obj;
                            if (strArr.length > 10) {
                                MLog.e("please check value, size is " + strArr.length + ", overstep 10!");
                                return;
                            }
                            JSONArray jSONArray = new JSONArray();
                            while (i10 < strArr.length) {
                                String str2 = strArr[i10];
                                if (str2 != null && HelperUtils.checkStrLen(str2, 256)) {
                                    jSONArray.put(strArr[i10]);
                                    i10++;
                                }
                                MLog.e("please check value, length is " + strArr[i10].length() + ", overlength 256!");
                                return;
                            }
                            this.f84200k.put(str, jSONArray);
                        } else if (obj instanceof long[]) {
                            long[] jArr = (long[]) obj;
                            if (jArr.length > 10) {
                                MLog.e("please check value, size is " + jArr.length + ", overstep 10!");
                                return;
                            }
                            JSONArray jSONArray2 = new JSONArray();
                            while (i10 < jArr.length) {
                                jSONArray2.put(jArr[i10]);
                                i10++;
                            }
                            this.f84200k.put(str, jSONArray2);
                        } else if (obj instanceof int[]) {
                            int[] iArr = (int[]) obj;
                            if (iArr.length > 10) {
                                MLog.e("please check value, size is " + iArr.length + ", overstep 10!");
                                return;
                            }
                            JSONArray jSONArray3 = new JSONArray();
                            while (i10 < iArr.length) {
                                jSONArray3.put(iArr[i10]);
                                i10++;
                            }
                            this.f84200k.put(str, jSONArray3);
                        } else if (obj instanceof float[]) {
                            float[] fArr = (float[]) obj;
                            if (fArr.length > 10) {
                                MLog.e("please check value, size is " + fArr.length + ", overstep 10!");
                                return;
                            }
                            JSONArray jSONArray4 = new JSONArray();
                            while (i10 < fArr.length) {
                                jSONArray4.put(fArr[i10]);
                                i10++;
                            }
                            this.f84200k.put(str, jSONArray4);
                        } else if (obj instanceof double[]) {
                            double[] dArr = (double[]) obj;
                            if (dArr.length > 10) {
                                MLog.e("please check value, size is " + dArr.length + ", overstep 10!");
                                return;
                            }
                            JSONArray jSONArray5 = new JSONArray();
                            while (i10 < dArr.length) {
                                jSONArray5.put(dArr[i10]);
                                i10++;
                            }
                            this.f84200k.put(str, jSONArray5);
                        } else if (obj instanceof short[]) {
                            short[] sArr = (short[]) obj;
                            if (sArr.length > 10) {
                                MLog.e("please check value, size is " + sArr.length + ", overstep 10!");
                                return;
                            }
                            JSONArray jSONArray6 = new JSONArray();
                            while (i10 < sArr.length) {
                                jSONArray6.put((int) sArr[i10]);
                                i10++;
                            }
                            this.f84200k.put(str, jSONArray6);
                        } else {
                            MLog.e("please check value, illegal type!");
                            return;
                        }
                    } else {
                        if (!(obj instanceof String) && !(obj instanceof Long) && !(obj instanceof Integer) && !(obj instanceof Float) && !(obj instanceof Double) && !(obj instanceof Short)) {
                            MLog.e("please check value, illegal type!");
                            return;
                        }
                        this.f84200k.put(str, obj);
                    }
                } catch (Throwable unused) {
                }
                Context context2 = f84181a;
                UMWorkDispatch.sendEvent(context2, q.a.f84873t, CoreProtocol.getInstance(context2), this.f84200k.toString());
                return;
            }
            UMLog.aq(l.ag, 0, Constants.TIPS_SPECIAL_TAG);
        } catch (Throwable unused2) {
        }
    }

    public synchronized void a(Object obj) {
        try {
            Context context = f84181a;
            if (context == null) {
                return;
            }
            if (!UMUtils.isMainProgress(context)) {
                MLog.e("registerSuperPropertyByCoreProtocol can not be called in child process");
                return;
            }
            if (obj != null) {
                String str = (String) obj;
                SharedPreferences.Editor editorEdit = PreferenceWrapper.getDefault(f84181a).edit();
                if (editorEdit != null && !TextUtils.isEmpty(str)) {
                    editorEdit.putString(f84182h, this.f84200k.toString()).commit();
                }
            }
        } catch (Throwable unused) {
        }
    }

    public synchronized void a(Context context, List<String> list) {
        try {
            if (context == null) {
                UMLog.aq(l.aj, 0, Constants.TIPS_SPECIAL_TAG);
                return;
            }
            if (f84181a == null) {
                f84181a = context.getApplicationContext();
            }
            if (!UMUtils.isMainProgress(f84181a)) {
                MLog.e("setFirstLaunchEvent can not be called in child process");
                return;
            }
            if (!this.f84199j || !this.f84203n) {
                a(f84181a);
            }
            u.a(f84181a).a(list);
        } catch (Throwable th) {
            MLog.e(th);
        }
    }

    public synchronized void a(Context context, JSONObject jSONObject) {
        JSONObject jSONObject2;
        try {
            if (context == null) {
                UMLog.aq(l.al, 0, Constants.TIPS_SPECIAL_TAG);
                return;
            }
            if (f84181a == null) {
                f84181a = context.getApplicationContext();
            }
            if (!UMUtils.isMainProgress(f84181a)) {
                MLog.e("registerPreProperties can not be called in child process");
                return;
            }
            if (!this.f84199j || !this.f84203n) {
                a(f84181a);
            }
            if (this.f84202m == null) {
                this.f84202m = new JSONObject();
            }
            if (jSONObject != null && jSONObject.length() > 0) {
                try {
                    jSONObject2 = new JSONObject(this.f84202m.toString());
                } catch (Exception unused) {
                    jSONObject2 = null;
                }
                if (jSONObject2 == null) {
                    jSONObject2 = new JSONObject();
                }
                Iterator<String> itKeys = jSONObject.keys();
                if (itKeys != null) {
                    while (itKeys.hasNext()) {
                        try {
                            String string = itKeys.next().toString();
                            Object obj = jSONObject.get(string);
                            if (c(string, obj)) {
                                jSONObject2.put(string, obj);
                                if (jSONObject2.length() > 10) {
                                    MLog.e("please check propertics, size overlength!");
                                    return;
                                }
                                continue;
                            } else {
                                return;
                            }
                        } catch (Exception unused2) {
                        }
                    }
                }
                this.f84202m = jSONObject2;
                if (this.f84202m.length() > 0) {
                    Context context2 = f84181a;
                    UMWorkDispatch.sendEvent(context2, q.a.f84876w, CoreProtocol.getInstance(context2), this.f84202m.toString());
                }
                return;
            }
            UMLog.aq(l.am, 0, Constants.TIPS_SPECIAL_TAG);
        } catch (Throwable th) {
            throw th;
        }
    }

    public void a(String str, Object obj) {
        if (f(str)) {
            if (!(obj instanceof String) && !(obj instanceof Integer) && !(obj instanceof Long) && !(obj instanceof Short) && !(obj instanceof Float) && !(obj instanceof Double)) {
                MLog.e("userProfile: Invalid value type, please check!");
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(f.S, str);
                if (obj instanceof String) {
                    String strTrim = (String) obj;
                    if (strTrim.length() > 0) {
                        strTrim = strTrim.trim();
                    }
                    if (!g(strTrim)) {
                        return;
                    } else {
                        jSONObject.put(f.T, strTrim);
                    }
                } else {
                    jSONObject.put(f.T, obj);
                }
                Context context = f84181a;
                UMWorkDispatch.sendEvent(context, q.a.f84870q, CoreProtocol.getInstance(context), jSONObject);
            } catch (Throwable unused) {
            }
        }
    }
}

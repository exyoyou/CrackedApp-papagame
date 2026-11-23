package com.umeng.analytics.pro;

import android.content.Context;
import android.text.TextUtils;
import com.haima.hmcp.Constants;
import com.umeng.analytics.CoreProtocol;
import com.umeng.analytics.vshelper.PageNameMonitor;
import com.umeng.commonsdk.UMConfigure;
import com.umeng.commonsdk.debug.UMLog;
import com.umeng.commonsdk.framework.UMWorkDispatch;
import com.umeng.commonsdk.service.UMGlobalContext;
import java.util.HashMap;
import java.util.Map;
import java.util.Stack;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class x {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f84922c = 5;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static JSONArray f84923d = new JSONArray();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Object f84924e = new Object();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Map<String, Long> f84927f = new HashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Stack<String> f84925a = new Stack<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    com.umeng.analytics.vshelper.a f84926b = PageNameMonitor.getInstance();

    protected int a() {
        return 2;
    }

    public void b(String str) {
        Long l10;
        Context appContext;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (!this.f84927f.containsKey(str)) {
            if (UMConfigure.isDebugLog() && this.f84925a.size() == 0) {
                UMLog.aq(l.G, 0, Constants.TIPS_SPECIAL_TAG, new String[]{"@"}, new String[]{str}, null, null);
                return;
            }
            return;
        }
        synchronized (this.f84927f) {
            l10 = this.f84927f.get(str);
            this.f84927f.remove(str);
        }
        if (l10 == null) {
            return;
        }
        if (UMConfigure.isDebugLog() && this.f84925a.size() > 0 && str.equals(this.f84925a.peek())) {
            this.f84925a.pop();
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - l10.longValue();
        synchronized (f84924e) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(f.f84671v, str);
                jSONObject.put("duration", jCurrentTimeMillis);
                jSONObject.put(f.f84673x, l10);
                jSONObject.put("type", a());
                f84923d.put(jSONObject);
                if (f84923d.length() >= 5 && (appContext = UMGlobalContext.getAppContext(null)) != null) {
                    UMWorkDispatch.sendEvent(appContext, 4099, CoreProtocol.getInstance(appContext), null);
                }
            } catch (Throwable unused) {
            }
        }
        if (!UMConfigure.isDebugLog() || this.f84925a.size() == 0) {
            return;
        }
        UMLog.aq(l.E, 0, Constants.TIPS_SPECIAL_TAG, new String[]{"@"}, new String[]{str}, null, null);
    }

    public static void a(Context context) {
        String string;
        if (context != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                synchronized (f84924e) {
                    string = f84923d.toString();
                    f84923d = new JSONArray();
                }
                if (string.length() > 0) {
                    jSONObject.put("__a", new JSONArray(string));
                    if (jSONObject.length() > 0) {
                        k.a(context).a(w.a().c(), jSONObject, k.a.PAGE);
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (UMConfigure.isDebugLog() && this.f84925a.size() != 0) {
            String[] strArr = {this.f84925a.peek()};
            UMLog.aq(l.F, 0, Constants.TIPS_SPECIAL_TAG, new String[]{"@"}, strArr, null, null);
        }
        this.f84926b.customPageBegin(str);
        synchronized (this.f84927f) {
            this.f84927f.put(str, Long.valueOf(System.currentTimeMillis()));
            if (UMConfigure.isDebugLog()) {
                this.f84925a.push(str);
            }
        }
    }

    public void b() {
        String key;
        synchronized (this.f84927f) {
            key = null;
            long j10 = 0;
            for (Map.Entry<String, Long> entry : this.f84927f.entrySet()) {
                if (entry.getValue().longValue() > j10) {
                    long jLongValue = entry.getValue().longValue();
                    key = entry.getKey();
                    j10 = jLongValue;
                }
            }
        }
        if (key != null) {
            b(key);
        }
    }
}

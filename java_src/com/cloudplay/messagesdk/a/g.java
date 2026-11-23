package com.cloudplay.messagesdk.a;

import android.text.TextUtils;
import android.util.Base64;
import com.cloudplay.messagesdk.network.HttpResultListener;
import com.haima.hmcp.countly.CountlyDbPolicy;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class g {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile g f23701d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f23702a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f23703b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map<String, String> f23704c = new HashMap();

    class a implements HttpResultListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ JSONObject f23705a;

        /* JADX INFO: renamed from: com.cloudplay.messagesdk.a.g$a$a, reason: collision with other inner class name */
        class C0518a implements HttpResultListener {
            C0518a(a aVar) {
            }

            @Override // com.cloudplay.messagesdk.network.HttpResultListener
            public void onError(String str) {
                e.a("ReportManager", "reportEvent()->postJson()->onError()->postJson()->onError() response error:" + str);
            }

            @Override // com.cloudplay.messagesdk.network.HttpResultListener
            public void onResult(String str) {
                e.a("ReportManager", "reportEvent()->postJson()->onError()->postJson()->onResult() response:" + str);
            }
        }

        a(JSONObject jSONObject) {
            this.f23705a = jSONObject;
        }

        @Override // com.cloudplay.messagesdk.network.HttpResultListener
        public void onError(String str) {
            e.a("ReportManager", "reportEvent()->postJson()->onError() response error:" + str);
            try {
                JSONObject jSONObject = new JSONObject(g.this.f23704c);
                jSONObject.put(CountlyDbPolicy.FIELD_COUNTLY_EVENT_ID, "4020");
                JSONObject jSONObject2 = this.f23705a;
                jSONObject.put("eventInfo", Base64.encodeToString((jSONObject2 == null ? "" : jSONObject2.toString()).getBytes(), 2));
                com.cloudplay.messagesdk.network.b.a().postJson(g.this.f23703b, jSONObject, new C0518a(this));
            } catch (Exception e10) {
                e.b("ReportManager", "reportEvent()->postJson()->onError() e:" + e10);
            }
        }

        @Override // com.cloudplay.messagesdk.network.HttpResultListener
        public void onResult(String str) {
            e.a("ReportManager", "reportEvent()->postJson()->onResult() event:" + this.f23705a + "response:" + str);
        }
    }

    private g() {
    }

    public void c(String str, String str2) {
        if (this.f23702a) {
            JSONObject jSONObject = new JSONObject(this.f23704c);
            try {
                jSONObject.put(CountlyDbPolicy.FIELD_COUNTLY_EVENT_ID, str);
                jSONObject.put(CountlyDbPolicy.FIELD_COUNTLY_TIME_STAMP, System.currentTimeMillis());
                HashMap map = new HashMap();
                map.put("data", str2);
                jSONObject.put("eventInfo", new JSONObject(map));
                a(jSONObject);
            } catch (JSONException e10) {
                e.b("ReportManager", "reportDataEvent() e:" + e10);
            }
        }
    }

    public static g a() {
        if (f23701d == null) {
            synchronized (g.class) {
                if (f23701d == null) {
                    f23701d = new g();
                }
            }
        }
        return f23701d;
    }

    public void b(String str, String str2) {
        e.b("ReportManager", "init() cId:" + str2 + ",instanceId:" + str);
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        this.f23703b = b.f23687d + String.format("?id=%s&cid=%s", str, str2);
        this.f23702a = true;
        this.f23704c.put("sdk_version", "master-2.4.0-cdfca6c7");
        this.f23704c.put("instanceId", str);
        this.f23704c.put("cid", str2);
    }

    public void a(String str, String str2) {
        e.a("ReportManager", "addCommItem() ˚key:" + str + ",value:" + str2 + ",mCommReport:" + this.f23704c);
        this.f23704c.put(str, str2);
    }

    public void a(String str, Map<String, Object> map) {
        if (this.f23702a) {
            JSONObject jSONObject = new JSONObject(this.f23704c);
            try {
                j.a(map);
                jSONObject.put(CountlyDbPolicy.FIELD_COUNTLY_EVENT_ID, str);
                jSONObject.put("eventInfo", map == null ? new JSONObject() : new JSONObject(map));
                jSONObject.put(CountlyDbPolicy.FIELD_COUNTLY_TIME_STAMP, System.currentTimeMillis());
                a(jSONObject);
            } catch (JSONException e10) {
                e.b("ReportManager", "reportEvent() e:" + e10);
            }
        }
    }

    public void a(String str) {
        c("4018", str);
    }

    public void a(JSONObject jSONObject) {
        if (this.f23702a) {
            com.cloudplay.messagesdk.network.b.a().postJson(this.f23703b, jSONObject, new a(jSONObject));
        }
    }
}

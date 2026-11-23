package com.cloudplay.messagesdk.network;

import android.content.Context;
import com.cloudplay.messagesdk.a.e;
import com.cloudplay.messagesdk.network.c;
import com.cloudplay.messagesdk.network.volley.Request;
import com.cloudplay.messagesdk.network.volley.RequestQueue;
import com.cloudplay.messagesdk.network.volley.Response;
import com.cloudplay.messagesdk.network.volley.RetryPolicy;
import com.cloudplay.messagesdk.network.volley.VolleyError;
import com.cloudplay.messagesdk.network.volley.toolbox.i;
import com.cloudplay.messagesdk.network.volley.toolbox.m;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public class c implements INetwork {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile c f23969b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile RequestQueue f23970c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f23971a;

    private c() {
    }

    public RequestQueue a() {
        if (f23970c == null) {
            synchronized (RequestQueue.class) {
                if (f23970c == null) {
                    f23970c = m.a(this.f23971a);
                }
            }
        }
        return f23970c;
    }

    @Override // com.cloudplay.messagesdk.network.INetwork
    public void cancel(String str) {
        a().a("hm_volley");
    }

    @Override // com.cloudplay.messagesdk.network.INetwork
    public void init(Context context) {
        this.f23971a = context.getApplicationContext();
        a();
    }

    @Override // com.cloudplay.messagesdk.network.INetwork
    public void postJson(String str, JSONObject jSONObject, final HttpResultListener httpResultListener) {
        e.a("VolleyManager", "postJson() url:" + str + ",body:" + jSONObject);
        i iVar = new i(str, jSONObject, new Response.Listener() { // from class: x2.a
            @Override // com.cloudplay.messagesdk.network.volley.Response.Listener
            public final void onResponse(Object obj) {
                c.a(httpResultListener, (JSONObject) obj);
            }
        }, new Response.ErrorListener() { // from class: x2.b
            @Override // com.cloudplay.messagesdk.network.volley.Response.ErrorListener
            public final void onErrorResponse(VolleyError volleyError) {
                c.a(httpResultListener, volleyError);
            }
        });
        iVar.a((RetryPolicy) new a());
        iVar.b((Object) "hm_volley");
        a().a((Request) iVar);
    }

    public static c b() {
        if (f23969b == null) {
            synchronized (c.class) {
                if (f23969b == null) {
                    f23969b = new c();
                }
            }
        }
        return f23969b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(HttpResultListener httpResultListener, JSONObject jSONObject) {
        e.a("VolleyManager", "postJson() JsonObjectRequest.onResponse() " + jSONObject.toString());
        if (httpResultListener != null) {
            httpResultListener.onResult(jSONObject.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(HttpResultListener httpResultListener, VolleyError volleyError) {
        e.b("VolleyManager", "postJson() JsonObjectRequest.onError() " + volleyError.toString());
        if (httpResultListener != null) {
            httpResultListener.onError(volleyError.getMessage());
        }
    }
}

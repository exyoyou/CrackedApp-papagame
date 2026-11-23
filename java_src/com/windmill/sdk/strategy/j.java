package com.windmill.sdk.strategy;

import android.util.Base64;
import com.czhj.sdk.common.network.Networking;
import com.czhj.sdk.common.network.SigmobRequest;
import com.czhj.sdk.common.utils.AESUtil;
import com.czhj.sdk.logger.SigmobLog;
import com.czhj.volley.DefaultRetryPolicy;
import com.czhj.volley.NetworkResponse;
import com.czhj.volley.Response;
import com.czhj.volley.VolleyError;
import com.windmill.sdk.WindMillAdRequest;
import com.windmill.sdk.base.WMLogUtil;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes8.dex */
public class j extends SigmobRequest<NetworkResponse> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f87183a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f87184b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private WindMillAdRequest f87185c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f87186d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f87187e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private byte[] f87188f;

    public interface a {
        void a();

        void a(VolleyError error);
    }

    private j(final String url, final String body, a mListener) {
        super(url, 1, null);
        this.f87186d = 1;
        this.f87183a = mListener;
        this.f87184b = body;
        setShouldRetryServerErrors(true);
        setRetryPolicy(new DefaultRetryPolicy(5000, 5, 0.0f));
        setShouldCache(false);
    }

    public static void a(String url, String body, int sendType, String requestM, WindMillAdRequest millAdRequest, a requestListener) {
        if ((body == null || body.length() == 0) && requestListener != null) {
            requestListener.a(new VolleyError("body is empty"));
        }
        if (Networking.getRequestQueue() == null) {
            if (requestListener != null) {
                requestListener.a(new VolleyError("BuriedPointRequestQueue is empty"));
                return;
            }
            return;
        }
        try {
            j jVar = new j(url, body, requestListener);
            jVar.f87185c = millAdRequest;
            jVar.f87186d = sendType;
            jVar.f87187e = requestM;
            jVar.a(jVar);
            Networking.getRequestQueue().add(jVar);
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
            if (requestListener != null) {
                requestListener.a(new VolleyError("network is disconnect "));
            }
        }
    }

    @Override // com.czhj.volley.Request
    public void deliverError(VolleyError error) {
        a aVar;
        synchronized (this.mLock) {
            aVar = this.f87183a;
        }
        if (aVar != null) {
            aVar.a(error);
        }
    }

    @Override // com.czhj.sdk.common.network.SigmobRequest, com.czhj.volley.Request
    public byte[] getBody() {
        try {
            return AESUtil.Encrypt(this.f87184b.getBytes(), "KGpfzbYsn4T9Jyuq");
        } catch (Exception e10) {
            e10.printStackTrace();
            return this.f87184b.getBytes();
        }
    }

    @Override // com.czhj.sdk.common.network.SigmobRequest, com.czhj.volley.Request
    public String getBodyContentType() {
        return "application/json";
    }

    @Override // com.czhj.sdk.common.network.SigmobRequest, com.czhj.volley.Request
    public Map<String, String> getHeaders() {
        Map<String, String> headers = super.getHeaders();
        if (headers != null) {
            try {
                headers.put("agn", Base64.encodeToString(AESUtil.generateNonce(), 2));
            } catch (Exception unused) {
            }
        }
        return headers;
    }

    @Override // com.czhj.sdk.common.network.SigmobRequest, com.czhj.volley.Request
    public Response<NetworkResponse> parseNetworkResponse(NetworkResponse response) {
        return Response.success(response, null);
    }

    private void a(j jsonRequest) {
        try {
            new JSONObject(jsonRequest.f87184b).get("loadId").toString();
            jsonRequest.f87188f = AESUtil.Encrypt(jsonRequest.f87184b.getBytes(), "KGpfzbYsn4T9Jyuq");
        } catch (Exception e10) {
            WMLogUtil.i("-------getBody Exception " + e10.getMessage());
        }
    }

    @Override // com.czhj.volley.Request
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void deliverResponse(NetworkResponse response) {
        a aVar;
        synchronized (this.mLock) {
            aVar = this.f87183a;
        }
        if (aVar != null) {
            aVar.a();
        }
    }
}

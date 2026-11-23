package com.czhj.sdk.common.network;

import android.util.Base64;
import com.czhj.sdk.common.models.Config;
import com.czhj.sdk.common.utils.AESUtil;
import com.czhj.sdk.logger.SigmobLog;
import com.czhj.volley.DefaultRetryPolicy;
import com.czhj.volley.NetworkResponse;
import com.czhj.volley.Response;
import com.czhj.volley.VolleyError;
import java.util.Map;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes9.dex */
public class BuriedPointRequest extends SigmobRequest<NetworkResponse> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RequestListener f25530a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private byte[] f25531b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f25532c;

    public interface RequestListener {
        void onErrorResponse(VolleyError volleyError);

        void onSuccess();
    }

    private BuriedPointRequest(String str, String str2, RequestListener requestListener) {
        super(str, 1, null);
        this.f25531b = null;
        this.f25530a = requestListener;
        setRetryPolicy(new DefaultRetryPolicy(5000, 2, 0.0f));
        setShouldCache(false);
        try {
            if (Config.sharedInstance().isEnc()) {
                this.f25531b = AESUtil.Encrypt(str2.getBytes(), "KGpfzbYsn4T9Jyuq");
                this.f25532c = true;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        } finally {
            if (!this.f25532c) {
                this.f25531b = str2.getBytes();
            }
        }
    }

    public static void BuriedPointSend(String str, RequestListener requestListener) {
        if ((str == null || str.isEmpty()) && requestListener != null) {
            requestListener.onErrorResponse(new VolleyError("body is empty"));
        }
        if (Networking.getBuriedPointRequestQueue() == null) {
            if (requestListener != null) {
                requestListener.onErrorResponse(new VolleyError("BuriedPointRequestQueue is empty"));
                return;
            }
            return;
        }
        try {
            Networking.getBuriedPointRequestQueue().add(new BuriedPointRequest(Config.sharedInstance().getLogUrl(), str, requestListener));
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
            if (requestListener != null) {
                requestListener.onErrorResponse(new VolleyError("network is disconnect "));
            }
        }
    }

    @Override // com.czhj.volley.Request
    public void deliverError(VolleyError volleyError) {
        RequestListener requestListener;
        synchronized (this.mLock) {
            requestListener = this.f25530a;
        }
        SigmobLog.i("send dclog: " + getUrl() + " onErrorResponse");
        if (requestListener != null) {
            requestListener.onErrorResponse(volleyError);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.czhj.volley.Request
    public void deliverResponse(NetworkResponse networkResponse) {
        RequestListener requestListener;
        synchronized (this.mLock) {
            requestListener = this.f25530a;
        }
        SigmobLog.d("send dclog: " + getUrl() + " success");
        if (requestListener != null) {
            requestListener.onSuccess();
        }
    }

    @Override // com.czhj.sdk.common.network.SigmobRequest, com.czhj.volley.Request
    public byte[] getBody() {
        return this.f25531b;
    }

    @Override // com.czhj.sdk.common.network.SigmobRequest, com.czhj.volley.Request
    public Map<String, String> getHeaders() {
        Map<String, String> headers = super.getHeaders();
        if (this.f25532c) {
            headers.put("agn", Base64.encodeToString(AESUtil.generateNonce(), 2));
        }
        headers.put("gz", n0.f93598d);
        return headers;
    }

    @Override // com.czhj.volley.Request
    public int getMaxLength() {
        return 100;
    }

    @Override // com.czhj.sdk.common.network.SigmobRequest, com.czhj.volley.Request
    protected Response<NetworkResponse> parseNetworkResponse(NetworkResponse networkResponse) {
        return Response.success(networkResponse, null);
    }
}

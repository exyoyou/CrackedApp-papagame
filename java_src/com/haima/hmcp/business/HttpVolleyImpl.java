package com.haima.hmcp.business;

import android.content.Context;
import android.text.TextUtils;
import com.haima.hmcp.volley.AuthFailureError;
import com.haima.hmcp.volley.NetworkResponse;
import com.haima.hmcp.volley.ParseError;
import com.haima.hmcp.volley.RequestQueue;
import com.haima.hmcp.volley.Response;
import com.haima.hmcp.volley.RetryPolicy;
import com.haima.hmcp.volley.ServerError;
import com.haima.hmcp.volley.TimeoutError;
import com.haima.hmcp.volley.VolleyError;
import com.haima.hmcp.volley.toolbox.HurlStack;
import com.haima.hmcp.volley.toolbox.StringRequest;
import com.haima.hmcp.volley.toolbox.Volley;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import javax.net.ssl.SSLSocketFactory;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public class HttpVolleyImpl implements IHttp {
    public static final int ERROR_CODE_IO = 1003;
    public static final int ERROR_CODE_NETWORK = 1004;
    public static final int ERROR_CODE_OTHER = 1006;
    public static final int ERROR_DATA_EMPTY_CODE = -1001;
    public static final int ERROR_JSON_CODE = -1000;
    public static final int ERROR_NETWORK_UNAVAILABLE_CODE = -1002;
    public static final int ERROR_SERVER_CODE = -1004;
    public static final int ERROR_TIMEOUT_CODE = -1003;
    private static final String REQUEST_TAG = "VolleyManager";
    private final RequestQueue mRequestQueue;
    private final ConcurrentHashMap<String, CharsetJsonRequest> mRequestTagMap;

    public HttpVolleyImpl(Context context, int i10, SSLSocketFactory sSLSocketFactory) {
        this.mRequestQueue = Volley.newRequestQueue(context.getApplicationContext(), new HurlStack(null, sSLSocketFactory), i10);
        this.mRequestTagMap = new ConcurrentHashMap<>();
    }

    private void callJsonRequest(final IHttp.RequestWrapper requestWrapper, String str, final IHttp.OnResponseListener onResponseListener) {
        CharsetJsonRequest charsetJsonRequest = new CharsetJsonRequest(1, str, (JSONObject) requestWrapper.getParams(), new Response.Listener<JSONObject>() { // from class: com.haima.hmcp.business.HttpVolleyImpl.1
            @Override // com.haima.hmcp.volley.Response.Listener
            public void onResponse(JSONObject jSONObject) {
                if (requestWrapper.getRequestPolicy() != null) {
                    requestWrapper.getRequestPolicy().onGetResponse(HttpVolleyImpl.this.mRequestTagMap, HttpVolleyImpl.this.mRequestQueue, requestWrapper.getRequestTag());
                }
                onResponseListener.onSuccess(jSONObject);
            }
        }, new Response.ErrorListener() { // from class: com.haima.hmcp.business.HttpVolleyImpl.2
            @Override // com.haima.hmcp.volley.Response.ErrorListener
            public void onErrorResponse(VolleyError volleyError) {
                if (requestWrapper.getRequestPolicy() != null) {
                    requestWrapper.getRequestPolicy().onGetResponse(HttpVolleyImpl.this.mRequestTagMap, HttpVolleyImpl.this.mRequestQueue, requestWrapper.getRequestTag());
                }
                HttpVolleyImpl.this.parseError(onResponseListener, volleyError);
            }
        }) { // from class: com.haima.hmcp.business.HttpVolleyImpl.3
            @Override // com.haima.hmcp.volley.Request
            public Map<String, String> getHeaders() throws AuthFailureError {
                HashMap map = new HashMap();
                map.put("Charset", "UTF-8");
                map.put("Accept", "application/json");
                map.put("Content-Type", "text/plain");
                return map;
            }
        };
        charsetJsonRequest.setTag(REQUEST_TAG);
        if (requestWrapper.getRetryPolicy() != null) {
            charsetJsonRequest.setRetryPolicy((RetryPolicy) requestWrapper.getRetryPolicy());
        }
        if (requestWrapper.getRequestPolicy() != null) {
            requestWrapper.getRequestPolicy().onPostRequest(this.mRequestTagMap, this.mRequestQueue, charsetJsonRequest, requestWrapper.getRequestTag());
            return;
        }
        RequestQueue requestQueue = this.mRequestQueue;
        if (requestQueue != null) {
            requestQueue.add(charsetJsonRequest);
        }
    }

    private void callStringRequest(IHttp.RequestWrapper requestWrapper, String str, final IHttp.OnResponseListener onResponseListener) {
        CustomStringRequest customStringRequest = new CustomStringRequest(1, str, (String) requestWrapper.getParams(), new Response.Listener<String>() { // from class: com.haima.hmcp.business.HttpVolleyImpl.4
            @Override // com.haima.hmcp.volley.Response.Listener
            public void onResponse(String str2) {
                onResponseListener.onSuccess(str2);
            }
        }, new Response.ErrorListener() { // from class: com.haima.hmcp.business.HttpVolleyImpl.5
            @Override // com.haima.hmcp.volley.Response.ErrorListener
            public void onErrorResponse(VolleyError volleyError) {
                HttpVolleyImpl.this.parseError(onResponseListener, volleyError);
            }
        });
        customStringRequest.setTag(REQUEST_TAG);
        RequestQueue requestQueue = this.mRequestQueue;
        if (requestQueue != null) {
            requestQueue.add(customStringRequest);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:17:0x0037  */
    public void parseError(IHttp.OnResponseListener onResponseListener, VolleyError volleyError) {
        if (onResponseListener == null || volleyError == null) {
            return;
        }
        NetworkResponse networkResponse = volleyError.networkResponse;
        String string = volleyError.toString();
        int i10 = networkResponse != null ? networkResponse.statusCode : -1;
        int i11 = -1004;
        if (i10 > 0) {
            string = string + " responseCode = " + i10;
        } else if (volleyError instanceof ParseError) {
            i11 = -1000;
        } else if (volleyError instanceof TimeoutError) {
            i11 = -1003;
        } else if (!(volleyError instanceof ServerError)) {
            if (string.contains("UnknownHostException") || string.contains("SSLHandshakeException")) {
                i11 = -1002;
            } else if (!string.contains("ServerError") && string.contains("TimeoutError")) {
                i11 = -1003;
            }
        }
        onResponseListener.onError(i10, i11, string);
    }

    @Override // com.haima.hmcp.business.IHttp
    public void clear() {
        RequestQueue requestQueue = this.mRequestQueue;
        if (requestQueue != null) {
            requestQueue.cancelAll(REQUEST_TAG);
        }
        ConcurrentHashMap<String, CharsetJsonRequest> concurrentHashMap = this.mRequestTagMap;
        if (concurrentHashMap != null) {
            concurrentHashMap.clear();
        }
    }

    @Override // com.haima.hmcp.business.IHttp
    public void download(DownloadFileInfo downloadFileInfo, final DownloadResponseListener downloadResponseListener) {
        if (downloadFileInfo == null || TextUtils.isEmpty(downloadFileInfo.getUrl()) || downloadResponseListener == null) {
            return;
        }
        DownloadRequest downloadRequest = new DownloadRequest(downloadFileInfo, downloadFileInfo.getUrl(), new Response.ErrorListener() { // from class: com.haima.hmcp.business.HttpVolleyImpl.6
            @Override // com.haima.hmcp.volley.Response.ErrorListener
            public void onErrorResponse(VolleyError volleyError) {
                downloadResponseListener.onError(1004, volleyError.getMessage(), "volley error:" + volleyError.getMessage());
            }
        });
        downloadRequest.setListener(downloadResponseListener);
        downloadRequest.setConfig(downloadFileInfo.getContentTypeList());
        downloadRequest.setTag(REQUEST_TAG);
        downloadRequest.setShouldCache(false);
        RequestQueue requestQueue = this.mRequestQueue;
        if (requestQueue != null) {
            requestQueue.add(downloadRequest);
        }
    }

    @Override // com.haima.hmcp.business.IHttp
    public void get(IHttp.RequestWrapper requestWrapper, final IHttp.OnResponseListener onResponseListener) {
        if (TextUtils.isEmpty(requestWrapper.getUrl())) {
            return;
        }
        StringRequest stringRequest = new StringRequest(0, requestWrapper.getUrl(), new Response.Listener<String>() { // from class: com.haima.hmcp.business.HttpVolleyImpl.7
            @Override // com.haima.hmcp.volley.Response.Listener
            public void onResponse(String str) {
                onResponseListener.onSuccess(str);
            }
        }, new Response.ErrorListener() { // from class: com.haima.hmcp.business.HttpVolleyImpl.8
            @Override // com.haima.hmcp.volley.Response.ErrorListener
            public void onErrorResponse(VolleyError volleyError) {
                HttpVolleyImpl.this.parseError(onResponseListener, volleyError);
            }
        });
        stringRequest.setTag(REQUEST_TAG);
        RequestQueue requestQueue = this.mRequestQueue;
        if (requestQueue != null) {
            requestQueue.add(stringRequest);
        }
    }

    @Override // com.haima.hmcp.business.IHttp
    public void post(IHttp.RequestWrapper requestWrapper, IHttp.OnResponseListener onResponseListener) {
        if (requestWrapper == null || requestWrapper.getParams() == null || TextUtils.isEmpty(requestWrapper.getUrl())) {
            return;
        }
        if (requestWrapper.getParams() instanceof JSONObject) {
            callJsonRequest(requestWrapper, requestWrapper.getUrl(), onResponseListener);
        } else {
            callStringRequest(requestWrapper, requestWrapper.getUrl(), onResponseListener);
        }
    }

    public HttpVolleyImpl(Context context, int i10) {
        this(context, i10, null);
    }
}

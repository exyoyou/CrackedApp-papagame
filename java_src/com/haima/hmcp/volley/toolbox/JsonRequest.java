package com.haima.hmcp.volley.toolbox;

import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.haima.hmcp.volley.NetworkResponse;
import com.haima.hmcp.volley.Request;
import com.haima.hmcp.volley.Response;
import com.haima.hmcp.volley.VolleyLog;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes5.dex */
public abstract class JsonRequest<T> extends Request<T> {
    protected static final String PROTOCOL_CHARSET = "utf-8";
    private static final String PROTOCOL_CONTENT_TYPE = String.format("application/json; charset=%s", PROTOCOL_CHARSET);

    @Nullable
    @GuardedBy("mLock")
    private Response.Listener<T> mListener;
    private final Object mLock;

    @Nullable
    private final String mRequestBody;

    @Deprecated
    public JsonRequest(String str, String str2, Response.Listener<T> listener, Response.ErrorListener errorListener) {
        this(-1, str, str2, listener, errorListener);
    }

    @Override // com.haima.hmcp.volley.Request
    public void cancel() {
        super.cancel();
        synchronized (this.mLock) {
            this.mListener = null;
        }
    }

    @Override // com.haima.hmcp.volley.Request
    protected void deliverResponse(T t10) {
        Response.Listener<T> listener;
        synchronized (this.mLock) {
            listener = this.mListener;
        }
        if (listener != null) {
            listener.onResponse(t10);
        }
    }

    @Override // com.haima.hmcp.volley.Request
    public byte[] getBody() {
        try {
            String str = this.mRequestBody;
            if (str == null) {
                return null;
            }
            return str.getBytes(PROTOCOL_CHARSET);
        } catch (UnsupportedEncodingException unused) {
            VolleyLog.wtf("Unsupported Encoding while trying to get the bytes of %s using %s", this.mRequestBody, PROTOCOL_CHARSET);
            return null;
        }
    }

    @Override // com.haima.hmcp.volley.Request
    public String getBodyContentType() {
        return PROTOCOL_CONTENT_TYPE;
    }

    @Override // com.haima.hmcp.volley.Request
    @Deprecated
    public byte[] getPostBody() {
        return getBody();
    }

    @Override // com.haima.hmcp.volley.Request
    @Deprecated
    public String getPostBodyContentType() {
        return getBodyContentType();
    }

    @Override // com.haima.hmcp.volley.Request
    protected abstract Response<T> parseNetworkResponse(NetworkResponse networkResponse);

    public JsonRequest(int i10, String str, @Nullable String str2, Response.Listener<T> listener, @Nullable Response.ErrorListener errorListener) {
        super(i10, str, errorListener);
        this.mLock = new Object();
        this.mListener = listener;
        this.mRequestBody = str2;
    }
}

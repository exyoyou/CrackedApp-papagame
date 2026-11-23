package com.haima.hmcp.volley.toolbox;

import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.haima.hmcp.volley.NetworkResponse;
import com.haima.hmcp.volley.Request;
import com.haima.hmcp.volley.Response;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes5.dex */
public class StringRequest extends Request<String> {

    @Nullable
    @GuardedBy("mLock")
    private Response.Listener<String> mListener;
    private final Object mLock;

    public StringRequest(int i10, String str, Response.Listener<String> listener, @Nullable Response.ErrorListener errorListener) {
        super(i10, str, errorListener);
        this.mLock = new Object();
        this.mListener = listener;
    }

    @Override // com.haima.hmcp.volley.Request
    public void cancel() {
        super.cancel();
        synchronized (this.mLock) {
            this.mListener = null;
        }
    }

    @Override // com.haima.hmcp.volley.Request
    protected Response<String> parseNetworkResponse(NetworkResponse networkResponse) {
        String str;
        try {
            str = new String(networkResponse.data, HttpHeaderParser.parseCharset(networkResponse.headers));
        } catch (UnsupportedEncodingException unused) {
            str = new String(networkResponse.data);
        }
        return Response.success(str, HttpHeaderParser.parseCacheHeaders(networkResponse));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.haima.hmcp.volley.Request
    public void deliverResponse(String str) {
        Response.Listener<String> listener;
        synchronized (this.mLock) {
            listener = this.mListener;
        }
        if (listener != null) {
            listener.onResponse(str);
        }
    }

    public StringRequest(String str, Response.Listener<String> listener, @Nullable Response.ErrorListener errorListener) {
        this(0, str, listener, errorListener);
    }
}

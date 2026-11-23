package com.haima.hmcp.volley.toolbox;

import android.os.Handler;
import android.os.Looper;
import com.haima.hmcp.volley.Cache;
import com.haima.hmcp.volley.NetworkResponse;
import com.haima.hmcp.volley.Request;
import com.haima.hmcp.volley.Response;

/* JADX INFO: loaded from: classes5.dex */
public class ClearCacheRequest extends Request<Object> {
    private final Cache mCache;
    private final Runnable mCallback;

    public ClearCacheRequest(Cache cache, Runnable runnable) {
        super(0, null, null);
        this.mCache = cache;
        this.mCallback = runnable;
    }

    @Override // com.haima.hmcp.volley.Request
    protected void deliverResponse(Object obj) {
    }

    @Override // com.haima.hmcp.volley.Request
    public Request.Priority getPriority() {
        return Request.Priority.IMMEDIATE;
    }

    @Override // com.haima.hmcp.volley.Request
    public boolean isCanceled() {
        this.mCache.clear();
        if (this.mCallback == null) {
            return true;
        }
        new Handler(Looper.getMainLooper()).postAtFrontOfQueue(this.mCallback);
        return true;
    }

    @Override // com.haima.hmcp.volley.Request
    protected Response<Object> parseNetworkResponse(NetworkResponse networkResponse) {
        return null;
    }
}

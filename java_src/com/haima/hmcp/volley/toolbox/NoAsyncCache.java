package com.haima.hmcp.volley.toolbox;

import com.haima.hmcp.volley.AsyncCache;
import com.haima.hmcp.volley.Cache;

/* JADX INFO: loaded from: classes5.dex */
public class NoAsyncCache extends AsyncCache {
    @Override // com.haima.hmcp.volley.AsyncCache
    public void clear(AsyncCache.OnWriteCompleteCallback onWriteCompleteCallback) {
        onWriteCompleteCallback.onWriteComplete();
    }

    @Override // com.haima.hmcp.volley.AsyncCache
    public void get(String str, AsyncCache.OnGetCompleteCallback onGetCompleteCallback) {
        onGetCompleteCallback.onGetComplete(null);
    }

    @Override // com.haima.hmcp.volley.AsyncCache
    public void initialize(AsyncCache.OnWriteCompleteCallback onWriteCompleteCallback) {
        onWriteCompleteCallback.onWriteComplete();
    }

    @Override // com.haima.hmcp.volley.AsyncCache
    public void invalidate(String str, boolean z10, AsyncCache.OnWriteCompleteCallback onWriteCompleteCallback) {
        onWriteCompleteCallback.onWriteComplete();
    }

    @Override // com.haima.hmcp.volley.AsyncCache
    public void put(String str, Cache.Entry entry, AsyncCache.OnWriteCompleteCallback onWriteCompleteCallback) {
        onWriteCompleteCallback.onWriteComplete();
    }

    @Override // com.haima.hmcp.volley.AsyncCache
    public void remove(String str, AsyncCache.OnWriteCompleteCallback onWriteCompleteCallback) {
        onWriteCompleteCallback.onWriteComplete();
    }
}

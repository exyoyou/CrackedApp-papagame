package com.czhj.volley;

import android.os.Process;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.BlockingQueue;

/* JADX INFO: loaded from: classes9.dex */
public class CacheDispatcher extends Thread {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final boolean f25716a = VolleyLog.DEBUG;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final BlockingQueue<Request<?>> f25717b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final BlockingQueue<Request<?>> f25718c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Cache f25719d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ResponseDelivery f25720e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private volatile boolean f25722g = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final WaitingRequestManager f25721f = new WaitingRequestManager(this);

    private static class WaitingRequestManager implements Request.NetworkRequestCompleteListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Map<String, List<Request<?>>> f25725a = new HashMap();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final CacheDispatcher f25726b;

        WaitingRequestManager(CacheDispatcher cacheDispatcher) {
            this.f25726b = cacheDispatcher;
        }

        @Override // com.czhj.volley.Request.NetworkRequestCompleteListener
        public synchronized void onNoUsableResponseReceived(Request<?> request) {
            try {
                String cacheKey = request.getCacheKey();
                List<Request<?>> listRemove = this.f25725a.remove(cacheKey);
                if (listRemove != null && !listRemove.isEmpty()) {
                    if (VolleyLog.DEBUG) {
                        VolleyLog.v("%d waiting requests for cacheKey=%s; resend to network", Integer.valueOf(listRemove.size()), cacheKey);
                    }
                    Request<?> requestRemove = listRemove.remove(0);
                    this.f25725a.put(cacheKey, listRemove);
                    requestRemove.setNetworkRequestCompleteListener(this);
                    try {
                        this.f25726b.f25718c.put(requestRemove);
                    } catch (InterruptedException e10) {
                        VolleyLog.e("Couldn't add request to queue. %s", e10.toString());
                        Thread.currentThread().interrupt();
                        this.f25726b.quit();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }

        @Override // com.czhj.volley.Request.NetworkRequestCompleteListener
        public void onResponseReceived(Request<?> request, Response<?> response) {
            List<Request<?>> listRemove;
            Cache.Entry entry = response.cacheEntry;
            if (entry == null || entry.isExpired()) {
                onNoUsableResponseReceived(request);
                return;
            }
            String cacheKey = request.getCacheKey();
            synchronized (this) {
                listRemove = this.f25725a.remove(cacheKey);
            }
            if (listRemove != null) {
                if (VolleyLog.DEBUG) {
                    VolleyLog.v("Releasing %d waiting requests for cacheKey=%s.", Integer.valueOf(listRemove.size()), cacheKey);
                }
                Iterator<Request<?>> it2 = listRemove.iterator();
                while (it2.hasNext()) {
                    this.f25726b.f25720e.postResponse(it2.next(), response);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public synchronized boolean a(Request<?> request) {
            String cacheKey = request.getCacheKey();
            if (!this.f25725a.containsKey(cacheKey)) {
                this.f25725a.put(cacheKey, null);
                request.setNetworkRequestCompleteListener(this);
                if (VolleyLog.DEBUG) {
                    VolleyLog.d("new request, sending to network %s", cacheKey);
                }
                return false;
            }
            List<Request<?>> arrayList = this.f25725a.get(cacheKey);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
            }
            request.addMarker("waiting-for-response");
            arrayList.add(request);
            this.f25725a.put(cacheKey, arrayList);
            if (VolleyLog.DEBUG) {
                VolleyLog.d("Request for cacheKey=%s is in flight, putting on hold.", cacheKey);
            }
            return true;
        }
    }

    public CacheDispatcher(BlockingQueue<Request<?>> blockingQueue, BlockingQueue<Request<?>> blockingQueue2, Cache cache, ResponseDelivery responseDelivery) {
        this.f25717b = blockingQueue;
        this.f25718c = blockingQueue2;
        this.f25719d = cache;
        this.f25720e = responseDelivery;
    }

    public void processRequest(final Request<?> request) throws InterruptedException {
        request.addMarker("cache-queue-take");
        if (request.isCanceled()) {
            request.finish("cache-discard-canceled");
            return;
        }
        Cache.Entry entry = this.f25719d.get(request.getCacheKey());
        if (entry == null) {
            request.addMarker("cache-miss");
            if (this.f25721f.a(request)) {
                return;
            }
            this.f25718c.put(request);
            return;
        }
        if (entry.isExpired()) {
            request.addMarker("cache-hit-expired");
            request.setCacheEntry(entry);
            if (this.f25721f.a(request)) {
                return;
            }
            this.f25718c.put(request);
            return;
        }
        request.addMarker("cache-hit");
        Response<?> networkResponse = request.parseNetworkResponse(new NetworkResponse(entry.data, entry.responseHeaders));
        request.addMarker("cache-hit-parsed");
        if (entry.refreshNeeded()) {
            request.addMarker("cache-hit-refresh-needed");
            request.setCacheEntry(entry);
            networkResponse.intermediate = true;
            if (!this.f25721f.a(request)) {
                this.f25720e.postResponse(request, networkResponse, new Runnable() { // from class: com.czhj.volley.CacheDispatcher.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            CacheDispatcher.this.f25718c.put(request);
                        } catch (InterruptedException unused) {
                            Thread.currentThread().interrupt();
                        }
                    }
                });
                return;
            }
        }
        this.f25720e.postResponse(request, networkResponse);
    }

    public void quit() {
        this.f25722g = true;
        interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        if (f25716a) {
            VolleyLog.v("start new dispatcher", new Object[0]);
        }
        Process.setThreadPriority(10);
        this.f25719d.initialize();
        while (true) {
            try {
                a();
            } catch (InterruptedException unused) {
                if (this.f25722g) {
                    Thread.currentThread().interrupt();
                    return;
                }
                VolleyLog.e("Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }

    private void a() throws InterruptedException {
        processRequest(this.f25717b.take());
    }
}

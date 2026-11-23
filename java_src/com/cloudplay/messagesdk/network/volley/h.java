package com.cloudplay.messagesdk.network.volley;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.BlockingQueue;

/* JADX INFO: loaded from: classes9.dex */
class h implements Request.NetworkRequestCompleteListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ResponseDelivery f24060b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a f24062d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final BlockingQueue<Request<?>> f24063e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<String, List<Request<?>>> f24059a = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final RequestQueue f24061c = null;

    h(a aVar, BlockingQueue<Request<?>> blockingQueue, ResponseDelivery responseDelivery) {
        this.f24060b = responseDelivery;
        this.f24062d = aVar;
        this.f24063e = blockingQueue;
    }

    synchronized boolean a(Request<?> request) {
        String strE = request.e();
        if (!this.f24059a.containsKey(strE)) {
            this.f24059a.put(strE, null);
            request.a((Request.NetworkRequestCompleteListener) this);
            if (g.f24051b) {
                g.b("new request, sending to network %s", strE);
            }
            return false;
        }
        List<Request<?>> arrayList = this.f24059a.get(strE);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
        }
        request.a("waiting-for-response");
        arrayList.add(request);
        this.f24059a.put(strE, arrayList);
        if (g.f24051b) {
            g.b("Request for cacheKey=%s is in flight, putting on hold.", strE);
        }
        return true;
    }

    @Override // com.cloudplay.messagesdk.network.volley.Request.NetworkRequestCompleteListener
    public synchronized void onNoUsableResponseReceived(Request<?> request) {
        BlockingQueue<Request<?>> blockingQueue;
        try {
            String strE = request.e();
            List<Request<?>> listRemove = this.f24059a.remove(strE);
            if (listRemove != null && !listRemove.isEmpty()) {
                if (g.f24051b) {
                    g.d("%d waiting requests for cacheKey=%s; resend to network", Integer.valueOf(listRemove.size()), strE);
                }
                Request<?> requestRemove = listRemove.remove(0);
                this.f24059a.put(strE, listRemove);
                requestRemove.a((Request.NetworkRequestCompleteListener) this);
                RequestQueue requestQueue = this.f24061c;
                if (requestQueue != null) {
                    requestQueue.d(requestRemove);
                } else if (this.f24062d != null && (blockingQueue = this.f24063e) != null) {
                    try {
                        blockingQueue.put(requestRemove);
                    } catch (InterruptedException e10) {
                        g.c("Couldn't add request to queue. %s", e10.toString());
                        Thread.currentThread().interrupt();
                        this.f24062d.a();
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.cloudplay.messagesdk.network.volley.Request.NetworkRequestCompleteListener
    public void onResponseReceived(Request<?> request, Response<?> response) {
        List<Request<?>> listRemove;
        Cache.a aVar = response.f24018b;
        if (aVar == null || aVar.a()) {
            onNoUsableResponseReceived(request);
            return;
        }
        String strE = request.e();
        synchronized (this) {
            listRemove = this.f24059a.remove(strE);
        }
        if (listRemove != null) {
            if (g.f24051b) {
                g.d("Releasing %d waiting requests for cacheKey=%s.", Integer.valueOf(listRemove.size()), strE);
            }
            Iterator<Request<?>> it2 = listRemove.iterator();
            while (it2.hasNext()) {
                this.f24060b.postResponse(it2.next(), response);
            }
        }
    }
}

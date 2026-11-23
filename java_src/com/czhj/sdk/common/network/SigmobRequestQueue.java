package com.czhj.sdk.common.network;

import android.os.Handler;
import com.czhj.sdk.common.ThreadPool.ThreadPoolFactory;
import com.czhj.volley.ExecutorsDelivery;
import com.czhj.volley.Network;
import com.czhj.volley.Request;
import com.czhj.volley.RequestQueue;
import com.czhj.volley.ResponseDelivery;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public class SigmobRequestQueue extends RequestQueue {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f25559a = 10;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<Request<?>, DelayedRequestHelper> f25560b;

    class DelayedRequestHelper {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final int f25566a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Handler f25567b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final Runnable f25568c;

        DelayedRequestHelper(SigmobRequestQueue sigmobRequestQueue, Request<?> request, int i10) {
            this(request, i10, new Handler());
        }

        void a() {
            this.f25567b.postDelayed(this.f25568c, this.f25566a);
        }

        void b() {
            this.f25567b.removeCallbacks(this.f25568c);
        }

        DelayedRequestHelper(final Request<?> request, int i10, Handler handler) {
            this.f25566a = i10;
            this.f25567b = handler;
            this.f25568c = new Runnable() { // from class: com.czhj.sdk.common.network.SigmobRequestQueue.DelayedRequestHelper.1
                @Override // java.lang.Runnable
                public void run() {
                    SigmobRequestQueue.this.f25560b.remove(request);
                    SigmobRequestQueue.this.add(request);
                }
            };
        }
    }

    SigmobRequestQueue(Network network) {
        super(network);
        this.f25560b = new HashMap(10);
    }

    private void b(final Request<?> request) {
        cancelAll(new RequestQueue.RequestFilter() { // from class: com.czhj.sdk.common.network.SigmobRequestQueue.3
            @Override // com.czhj.volley.RequestQueue.RequestFilter
            public boolean apply(Request<?> request2) {
                return request == request2;
            }
        });
    }

    @Deprecated
    Map<Request<?>, DelayedRequestHelper> a() {
        return this.f25560b;
    }

    public void addDelayedRequest(Request<?> request, int i10) {
        a(request, new DelayedRequestHelper(this, request, i10));
    }

    public void cancelAll() {
        cancelAll(new RequestQueue.RequestFilter() { // from class: com.czhj.sdk.common.network.SigmobRequestQueue.1
            @Override // com.czhj.volley.RequestQueue.RequestFilter
            public boolean apply(Request<?> request) {
                return true;
            }
        });
    }

    SigmobRequestQueue(Network network, int i10, int i11) {
        this(network, i10, i11, new ExecutorsDelivery(ThreadPoolFactory.getFixIOExecutor()));
    }

    @Override // com.czhj.volley.RequestQueue
    public void cancelAll(RequestQueue.RequestFilter requestFilter) {
        super.cancelAll(requestFilter);
        Iterator<Map.Entry<Request<?>, DelayedRequestHelper>> it2 = this.f25560b.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry<Request<?>, DelayedRequestHelper> next = it2.next();
            if (requestFilter.apply(next.getKey())) {
                next.getKey().cancel();
                next.getValue().b();
                it2.remove();
            }
        }
    }

    SigmobRequestQueue(Network network, int i10, int i11, ResponseDelivery responseDelivery) {
        super(network, i10, i11, responseDelivery);
        this.f25560b = new HashMap(10);
    }

    private void a(Request<?> request, DelayedRequestHelper delayedRequestHelper) {
        if (this.f25560b.containsKey(request)) {
            b(request);
        }
        delayedRequestHelper.a();
        this.f25560b.put(request, delayedRequestHelper);
    }

    @Override // com.czhj.volley.RequestQueue
    public void cancelAll(final Object obj) {
        super.cancelAll(obj);
        cancelAll(new RequestQueue.RequestFilter() { // from class: com.czhj.sdk.common.network.SigmobRequestQueue.2
            @Override // com.czhj.volley.RequestQueue.RequestFilter
            public boolean apply(Request<?> request) {
                return request.getTag() == obj;
            }
        });
    }
}

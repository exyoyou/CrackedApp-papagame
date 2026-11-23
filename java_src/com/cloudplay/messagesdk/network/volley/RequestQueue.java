package com.cloudplay.messagesdk.network.volley;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes9.dex */
public class RequestQueue {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicInteger f24005a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Set<Request<?>> f24006b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final PriorityBlockingQueue<Request<?>> f24007c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final PriorityBlockingQueue<Request<?>> f24008d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Cache f24009e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Network f24010f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ResponseDelivery f24011g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final e[] f24012h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private com.cloudplay.messagesdk.network.volley.a f24013i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final List<RequestFinishedListener> f24014j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final List<RequestEventListener> f24015k;

    public interface RequestEventListener {
        void onRequestEvent(Request<?> request, int i10);
    }

    public interface RequestFilter {
        boolean apply(Request<?> request);
    }

    @Deprecated
    public interface RequestFinishedListener<T> {
        void onRequestFinished(Request<T> request);
    }

    class a implements RequestFilter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Object f24016a;

        a(RequestQueue requestQueue, Object obj) {
            this.f24016a = obj;
        }

        @Override // com.cloudplay.messagesdk.network.volley.RequestQueue.RequestFilter
        public boolean apply(Request<?> request) {
            return request.p() == this.f24016a;
        }
    }

    public RequestQueue(Cache cache, Network network, int i10, ResponseDelivery responseDelivery) {
        this.f24005a = new AtomicInteger();
        this.f24006b = new HashSet();
        this.f24007c = new PriorityBlockingQueue<>();
        this.f24008d = new PriorityBlockingQueue<>();
        this.f24014j = new ArrayList();
        this.f24015k = new ArrayList();
        this.f24009e = cache;
        this.f24010f = network;
        this.f24012h = new e[i10];
        this.f24011g = responseDelivery;
    }

    public int a() {
        return this.f24005a.incrementAndGet();
    }

    public void b() {
        c();
        com.cloudplay.messagesdk.network.volley.a aVar = new com.cloudplay.messagesdk.network.volley.a(this.f24007c, this.f24008d, this.f24009e, this.f24011g);
        this.f24013i = aVar;
        aVar.start();
        for (int i10 = 0; i10 < this.f24012h.length; i10++) {
            e eVar = new e(this.f24008d, this.f24010f, this.f24009e, this.f24011g);
            this.f24012h[i10] = eVar;
            eVar.start();
        }
    }

    public void c() {
        com.cloudplay.messagesdk.network.volley.a aVar = this.f24013i;
        if (aVar != null) {
            aVar.a();
        }
        for (e eVar : this.f24012h) {
            if (eVar != null) {
                eVar.a();
            }
        }
    }

    <T> void d(Request<T> request) {
        this.f24008d.add(request);
    }

    public void a(RequestFilter requestFilter) {
        synchronized (this.f24006b) {
            for (Request<?> request : this.f24006b) {
                if (requestFilter.apply(request)) {
                    request.a();
                }
            }
        }
    }

    <T> void c(Request<T> request) {
        synchronized (this.f24006b) {
            this.f24006b.remove(request);
        }
        synchronized (this.f24014j) {
            Iterator<RequestFinishedListener> it2 = this.f24014j.iterator();
            while (it2.hasNext()) {
                it2.next().onRequestFinished(request);
            }
        }
        a(request, 5);
    }

    public void a(Object obj) {
        if (obj != null) {
            a((RequestFilter) new a(this, obj));
            return;
        }
        throw new IllegalArgumentException("Cannot cancelAll with a null tag");
    }

    <T> void b(Request<T> request) {
        if (!request.x()) {
            d(request);
        } else {
            this.f24007c.add(request);
        }
    }

    public <T> Request<T> a(Request<T> request) {
        request.a(this);
        synchronized (this.f24006b) {
            this.f24006b.add(request);
        }
        request.b(a());
        request.a("add-to-queue");
        a(request, 0);
        b(request);
        return request;
    }

    public RequestQueue(Cache cache, Network network, int i10) {
        this(cache, network, i10, new c(new Handler(Looper.getMainLooper())));
    }

    public RequestQueue(Cache cache, Network network) {
        this(cache, network, 4);
    }

    void a(Request<?> request, int i10) {
        synchronized (this.f24015k) {
            Iterator<RequestEventListener> it2 = this.f24015k.iterator();
            while (it2.hasNext()) {
                it2.next().onRequestEvent(request, i10);
            }
        }
    }
}

package com.czhj.volley;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes9.dex */
public class RequestQueue {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f25746a = 4;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AtomicInteger f25747b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Set<Request<?>> f25748c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private CustomLinkedBlockingQueue f25749d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Network f25750e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ResponseDelivery f25751f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final List<RequestFinishedListener> f25752g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ThreadPoolExecutor f25753h;

    static class CustomLinkedBlockingQueue extends LinkedBlockingQueue<Runnable> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private ThreadPoolExecutor f25756a;

        public void setExecutor(ThreadPoolExecutor threadPoolExecutor) {
            this.f25756a = threadPoolExecutor;
        }

        @Override // java.util.concurrent.LinkedBlockingQueue, java.util.Queue, java.util.concurrent.BlockingQueue
        public boolean offer(Runnable runnable) {
            ThreadPoolExecutor threadPoolExecutor = this.f25756a;
            if (threadPoolExecutor == null || threadPoolExecutor.getActiveCount() < this.f25756a.getPoolSize() || this.f25756a.getPoolSize() >= this.f25756a.getMaximumPoolSize()) {
                return super.offer(runnable);
            }
            return false;
        }
    }

    public interface RequestFilter {
        boolean apply(Request<?> request);
    }

    public interface RequestFinishedListener<T> {
        void onRequestFinished(Request<T> request);
    }

    public RequestQueue(Network network) {
        this(network, 4, Integer.MAX_VALUE);
    }

    <T> void a(Request<T> request) {
        synchronized (this.f25748c) {
            this.f25748c.remove(request);
        }
        synchronized (this.f25752g) {
            Iterator<RequestFinishedListener> it2 = this.f25752g.iterator();
            while (it2.hasNext()) {
                it2.next().onRequestFinished(request);
            }
        }
    }

    public <T> Request<T> add(Request<T> request) {
        if (request == null || TextUtils.isEmpty(request.getUrl())) {
            return null;
        }
        try {
            this.f25753h.submit(new NetworkDispatcher(this.f25750e, request, this.f25751f));
        } catch (Exception e10) {
            VolleyLog.e(e10, "add request error", new Object[0]);
        }
        return request;
    }

    public <T> void addRequestFinishedListener(RequestFinishedListener<T> requestFinishedListener) {
        synchronized (this.f25752g) {
            this.f25752g.add(requestFinishedListener);
        }
    }

    public void cancelAll(RequestFilter requestFilter) {
        synchronized (this.f25748c) {
            for (Request<?> request : this.f25748c) {
                if (requestFilter.apply(request)) {
                    request.cancel();
                }
            }
        }
    }

    public int getSequenceNumber() {
        return this.f25747b.incrementAndGet();
    }

    public <T> void removeRequestFinishedListener(RequestFinishedListener<T> requestFinishedListener) {
        synchronized (this.f25752g) {
            this.f25752g.remove(requestFinishedListener);
        }
    }

    public void start() {
        stop();
    }

    public void stop() {
    }

    public RequestQueue(Network network, int i10, int i11) {
        this(network, i10, i11, new ExecutorDelivery(new Handler(Looper.getMainLooper())));
    }

    public void cancelAll(final Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException("Cannot cancelAll with a null tag");
        }
        cancelAll(new RequestFilter() { // from class: com.czhj.volley.RequestQueue.1
            @Override // com.czhj.volley.RequestQueue.RequestFilter
            public boolean apply(Request<?> request) {
                return request.getTag() == obj;
            }
        });
    }

    public RequestQueue(Network network, int i10, int i11, ResponseDelivery responseDelivery) {
        this.f25747b = new AtomicInteger();
        this.f25748c = new HashSet();
        this.f25749d = new CustomLinkedBlockingQueue();
        this.f25752g = new ArrayList();
        this.f25753h = null;
        this.f25750e = network;
        this.f25751f = responseDelivery;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(i10, i11, 60L, TimeUnit.SECONDS, this.f25749d, new VolleyThreadFactory());
        this.f25753h = threadPoolExecutor;
        this.f25749d.setExecutor(threadPoolExecutor);
    }
}

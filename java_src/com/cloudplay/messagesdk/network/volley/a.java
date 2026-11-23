package com.cloudplay.messagesdk.network.volley;

import android.os.Process;
import java.util.concurrent.BlockingQueue;

/* JADX INFO: loaded from: classes9.dex */
public class a extends Thread {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final boolean f24021g = g.f24051b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final BlockingQueue<Request<?>> f24022a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final BlockingQueue<Request<?>> f24023b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Cache f24024c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ResponseDelivery f24025d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile boolean f24026e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final h f24027f;

    /* JADX INFO: renamed from: com.cloudplay.messagesdk.network.volley.a$a, reason: collision with other inner class name */
    class RunnableC0526a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Request f24028a;

        RunnableC0526a(Request request) {
            this.f24028a = request;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                a.this.f24023b.put(this.f24028a);
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        }
    }

    public a(BlockingQueue<Request<?>> blockingQueue, BlockingQueue<Request<?>> blockingQueue2, Cache cache, ResponseDelivery responseDelivery) {
        this.f24022a = blockingQueue;
        this.f24023b = blockingQueue2;
        this.f24024c = cache;
        this.f24025d = responseDelivery;
        this.f24027f = new h(this, blockingQueue2, responseDelivery);
    }

    private void b() throws InterruptedException {
        a(this.f24022a.take());
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        if (f24021g) {
            g.d("start new dispatcher", new Object[0]);
        }
        Process.setThreadPriority(10);
        this.f24024c.initialize();
        while (true) {
            try {
                b();
            } catch (InterruptedException unused) {
                if (this.f24026e) {
                    Thread.currentThread().interrupt();
                    return;
                }
                g.c("Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }

    public void a() {
        this.f24026e = true;
        interrupt();
    }

    void a(Request<?> request) throws InterruptedException {
        request.a("cache-queue-take");
        request.a(1);
        try {
            if (request.u()) {
                request.b("cache-discard-canceled");
                return;
            }
            Cache.a aVar = this.f24024c.get(request.e());
            if (aVar == null) {
                request.a("cache-miss");
                if (!this.f24027f.a(request)) {
                    this.f24023b.put(request);
                }
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (aVar.a(jCurrentTimeMillis)) {
                request.a("cache-hit-expired");
                request.a(aVar);
                if (!this.f24027f.a(request)) {
                    this.f24023b.put(request);
                }
                return;
            }
            request.a("cache-hit");
            Response<?> responseA = request.a(new f(aVar.f23972a, aVar.f23978g));
            request.a("cache-hit-parsed");
            if (!responseA.a()) {
                request.a("cache-parsing-failed");
                this.f24024c.invalidate(request.e(), true);
                request.a((Cache.a) null);
                if (!this.f24027f.a(request)) {
                    this.f24023b.put(request);
                }
                return;
            }
            if (!aVar.b(jCurrentTimeMillis)) {
                this.f24025d.postResponse(request, responseA);
            } else {
                request.a("cache-hit-refresh-needed");
                request.a(aVar);
                responseA.f24020d = true;
                if (!this.f24027f.a(request)) {
                    this.f24025d.postResponse(request, responseA, new RunnableC0526a(request));
                } else {
                    this.f24025d.postResponse(request, responseA);
                }
            }
        } finally {
            request.a(2);
        }
    }
}

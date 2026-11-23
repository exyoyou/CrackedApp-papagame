package com.cloudplay.messagesdk.network.volley;

import android.annotation.TargetApi;
import android.net.TrafficStats;
import android.os.Process;
import android.os.SystemClock;
import java.util.concurrent.BlockingQueue;

/* JADX INFO: loaded from: classes9.dex */
public class e extends Thread {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final BlockingQueue<Request<?>> f24041a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Network f24042b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Cache f24043c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ResponseDelivery f24044d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile boolean f24045e = false;

    public e(BlockingQueue<Request<?>> blockingQueue, Network network, Cache cache, ResponseDelivery responseDelivery) {
        this.f24041a = blockingQueue;
        this.f24042b = network;
        this.f24043c = cache;
        this.f24044d = responseDelivery;
    }

    @TargetApi(14)
    private void b(Request<?> request) {
        TrafficStats.setThreadStatsTag(request.r());
    }

    public void a() {
        this.f24045e = true;
        interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Process.setThreadPriority(10);
        while (true) {
            try {
                b();
            } catch (InterruptedException unused) {
                if (this.f24045e) {
                    Thread.currentThread().interrupt();
                    return;
                }
                g.c("Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }

    private void b() throws InterruptedException {
        a(this.f24041a.take());
    }

    void a(Request<?> request) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        request.a(3);
        try {
            try {
                try {
                    request.a("network-queue-take");
                    if (request.u()) {
                        request.b("network-discard-cancelled");
                        request.w();
                        return;
                    }
                    b(request);
                    f fVarPerformRequest = this.f24042b.performRequest(request);
                    request.a("network-http-complete");
                    if (fVarPerformRequest.f24049d && request.t()) {
                        request.b("not-modified");
                        request.w();
                        return;
                    }
                    Response<?> responseA = request.a(fVarPerformRequest);
                    request.a("network-parse-complete");
                    if (request.x() && responseA.f24018b != null) {
                        this.f24043c.put(request.e(), responseA.f24018b);
                        request.a("network-cache-written");
                    }
                    request.v();
                    this.f24044d.postResponse(request, responseA);
                    request.a(responseA);
                } catch (VolleyError e10) {
                    e10.a(SystemClock.elapsedRealtime() - jElapsedRealtime);
                    a(request, e10);
                    request.w();
                }
            } catch (Exception e11) {
                g.a(e11, "Unhandled exception %s", e11.toString());
                VolleyError volleyError = new VolleyError(e11);
                volleyError.a(SystemClock.elapsedRealtime() - jElapsedRealtime);
                this.f24044d.postError(request, volleyError);
                request.w();
            }
        } finally {
            request.a(4);
        }
    }

    private void a(Request<?> request, VolleyError volleyError) {
        this.f24044d.postError(request, request.b(volleyError));
    }
}

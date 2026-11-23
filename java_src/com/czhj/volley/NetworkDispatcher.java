package com.czhj.volley;

import android.net.TrafficStats;
import android.os.SystemClock;

/* JADX INFO: loaded from: classes9.dex */
public class NetworkDispatcher implements Comparable, Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Network f25739a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ResponseDelivery f25740b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Request f25741c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile boolean f25742d = false;

    public NetworkDispatcher(Network network, Request request, ResponseDelivery responseDelivery) {
        this.f25741c = request;
        this.f25739a = network;
        this.f25740b = responseDelivery;
    }

    private void a(Request<?> request) {
        TrafficStats.setThreadStatsTag(request.getTrafficStatsTag());
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        return (obj == null && hashCode() == obj.hashCode()) ? 0 : 1;
    }

    public void processRequest(Request<?> request) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        try {
            request.addMarker("network-queue-take");
            if (request.isCanceled()) {
                request.finish("network-discard-cancelled");
                request.notifyListenerResponseNotUsable();
                return;
            }
            a(request);
            NetworkResponse networkResponsePerformRequest = this.f25739a.performRequest(request);
            request.addMarker("network-http-complete");
            if (networkResponsePerformRequest.notModified && request.hasHadResponseDelivered()) {
                request.finish("not-modified");
                request.notifyListenerResponseNotUsable();
                return;
            }
            Response<?> networkResponse = request.parseNetworkResponse(networkResponsePerformRequest);
            request.addMarker("network-parse-complete");
            request.markDelivered();
            this.f25740b.postResponse(request, networkResponse);
            request.notifyListenerResponseReceived(networkResponse);
        } catch (VolleyError e10) {
            e10.a(SystemClock.elapsedRealtime() - jElapsedRealtime);
            a(request, e10);
            request.notifyListenerResponseNotUsable();
        } catch (Throwable th) {
            VolleyLog.e(th, "Unhandled exception %s", th.toString());
            VolleyError volleyError = new VolleyError(th);
            volleyError.a(SystemClock.elapsedRealtime() - jElapsedRealtime);
            this.f25740b.postError(request, volleyError);
            request.notifyListenerResponseNotUsable();
        }
    }

    public void quit() {
        this.f25742d = true;
    }

    @Override // java.lang.Runnable
    public void run() {
        processRequest(this.f25741c);
    }

    private void a(Request<?> request, VolleyError volleyError) {
        this.f25740b.postError(request, request.parseNetworkError(volleyError));
    }
}

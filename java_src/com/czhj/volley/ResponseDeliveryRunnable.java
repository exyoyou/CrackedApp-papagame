package com.czhj.volley;

/* JADX INFO: loaded from: classes9.dex */
class ResponseDeliveryRunnable implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Request f25757a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Response f25758b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Runnable f25759c;

    public ResponseDeliveryRunnable(Request request, Response response, Runnable runnable) {
        this.f25757a = request;
        this.f25758b = response;
        this.f25759c = runnable;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f25757a.isCanceled()) {
            this.f25757a.finish("canceled-at-delivery");
            return;
        }
        if (this.f25758b.isSuccess()) {
            this.f25757a.deliverResponse(this.f25758b.result);
        } else {
            this.f25757a.deliverError(this.f25758b.error);
        }
        if (this.f25758b.intermediate) {
            this.f25757a.addMarker("intermediate-response");
        } else {
            this.f25757a.finish("done");
        }
        Runnable runnable = this.f25759c;
        if (runnable != null) {
            runnable.run();
        }
    }
}

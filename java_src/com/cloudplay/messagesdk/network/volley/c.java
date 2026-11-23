package com.cloudplay.messagesdk.network.volley;

import android.os.Handler;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes9.dex */
public class c implements ResponseDelivery {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f24034a;

    class a implements Executor {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Handler f24035a;

        a(c cVar, Handler handler) {
            this.f24035a = handler;
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            this.f24035a.post(runnable);
        }
    }

    private static class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Request f24036a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Response f24037b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Runnable f24038c;

        public b(Request request, Response response, Runnable runnable) {
            this.f24036a = request;
            this.f24037b = response;
            this.f24038c = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f24036a.u()) {
                this.f24036a.b("canceled-at-delivery");
                return;
            }
            if (this.f24037b.a()) {
                this.f24036a.a(this.f24037b.f24017a);
            } else {
                this.f24036a.a(this.f24037b.f24019c);
            }
            if (this.f24037b.f24020d) {
                this.f24036a.a("intermediate-response");
            } else {
                this.f24036a.b("done");
            }
            Runnable runnable = this.f24038c;
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    public c(Handler handler) {
        this.f24034a = new a(this, handler);
    }

    @Override // com.cloudplay.messagesdk.network.volley.ResponseDelivery
    public void postError(Request<?> request, VolleyError volleyError) {
        request.a("post-error");
        this.f24034a.execute(new b(request, Response.a(volleyError), null));
    }

    @Override // com.cloudplay.messagesdk.network.volley.ResponseDelivery
    public void postResponse(Request<?> request, Response<?> response) {
        postResponse(request, response, null);
    }

    @Override // com.cloudplay.messagesdk.network.volley.ResponseDelivery
    public void postResponse(Request<?> request, Response<?> response, Runnable runnable) {
        request.v();
        request.a("post-response");
        this.f24034a.execute(new b(request, response, runnable));
    }
}

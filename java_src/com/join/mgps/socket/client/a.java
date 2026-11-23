package com.join.mgps.socket.client;

import android.content.Context;
import com.join.mgps.socket.c;
import com.join.mgps.socket.d;
import java.io.IOException;
import java.net.Socket;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes3.dex */
public class a {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final String f72954i = "a";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f72955a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    c f72957c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    d f72958d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    Socket f72959e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    com.join.mgps.socket.b f72962h;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    ExecutorService f72956b = Executors.newCachedThreadPool();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    b f72960f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    Future f72961g = null;

    /* JADX INFO: renamed from: com.join.mgps.socket.client.a$a, reason: collision with other inner class name */
    class RunnableC0746a implements Runnable {
        RunnableC0746a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.f();
            a.this.c();
            a.this.d();
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        volatile boolean f72964b = true;

        b() {
        }

        public void a(boolean monitor) {
            this.f72964b = monitor;
        }

        @Override // java.lang.Runnable
        public void run() {
            while (this.f72964b) {
                try {
                    a.this.f72962h.k();
                    Thread.sleep(1000L);
                } catch (InterruptedException e10) {
                    Thread.currentThread().interrupt();
                    e10.printStackTrace();
                }
            }
        }
    }

    public a(Context mContext, Socket socket) {
        this.f72955a = mContext;
        this.f72959e = socket;
        a(socket);
        this.f72962h = com.join.mgps.socket.b.d();
    }

    void a(Socket socket) {
        if (socket == null || !socket.isConnected()) {
            return;
        }
        this.f72957c = new c(socket, this.f72955a);
        this.f72958d = new d(socket, this.f72955a);
        this.f72956b.execute(this.f72957c);
        this.f72956b.execute(this.f72958d);
    }

    public void b() {
        new Thread(new RunnableC0746a()).start();
    }

    void c() {
        c cVar = this.f72957c;
        if (cVar != null) {
            cVar.i(false);
            this.f72957c.a();
        }
        d dVar = this.f72958d;
        if (dVar != null) {
            dVar.h(false);
            this.f72958d.a();
        }
        ExecutorService executorService = this.f72956b;
        if (executorService != null) {
            executorService.shutdownNow();
        }
    }

    void d() {
        Socket socket = this.f72959e;
        if (socket == null || socket.isClosed()) {
            return;
        }
        try {
            this.f72959e.close();
        } catch (IOException e10) {
            e10.printStackTrace();
        }
    }

    public void e() {
        b bVar = new b();
        this.f72960f = bVar;
        this.f72961g = this.f72956b.submit(bVar);
    }

    public void f() {
        if (this.f72961g == null || this.f72960f == null) {
            return;
        }
        this.f72960f.a(false);
        this.f72961g.cancel(true);
    }
}

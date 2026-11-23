package com.join.mgps.socket.server;

import android.content.Context;
import com.join.mgps.socket.c;
import com.join.mgps.socket.d;
import java.io.IOException;
import java.net.Socket;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes3.dex */
public class a {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f73180f = "a";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ExecutorService f73181a = Executors.newCachedThreadPool();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f73182b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Socket f73183c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    c f73184d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    d f73185e;

    /* JADX INFO: renamed from: com.join.mgps.socket.server.a$a, reason: collision with other inner class name */
    class RunnableC0750a implements Runnable {
        RunnableC0750a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.c();
            a.this.d();
        }
    }

    public a(Context context, Socket socket) {
        this.f73182b = context;
        this.f73183c = socket;
        a(socket);
    }

    void a(Socket socket) {
        if (socket == null || !socket.isConnected()) {
            return;
        }
        this.f73184d = new c(socket, this.f73182b);
        this.f73185e = new d(socket, this.f73182b);
        this.f73181a.execute(this.f73184d);
        this.f73181a.execute(this.f73185e);
    }

    public void b() {
        new Thread(new RunnableC0750a()).start();
    }

    void c() {
        c cVar = this.f73184d;
        if (cVar != null) {
            cVar.i(false);
            this.f73184d.a();
        }
        d dVar = this.f73185e;
        if (dVar != null) {
            dVar.h(false);
            this.f73185e.a();
        }
        ExecutorService executorService = this.f73181a;
        if (executorService == null || executorService.isShutdown()) {
            return;
        }
        this.f73181a.shutdownNow();
    }

    void d() {
        Socket socket = this.f73183c;
        if (socket == null || socket.isClosed()) {
            return;
        }
        try {
            this.f73183c.close();
        } catch (IOException e10) {
            e10.printStackTrace();
        }
    }
}

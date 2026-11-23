package com.danikula.videocache;

import android.content.Context;
import android.net.Uri;
import java.io.File;
import java.io.IOException;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.SocketException;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes9.dex */
public class i {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final String f26042i = "127.0.0.1";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f26043a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ExecutorService f26044b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map<String, j> f26045c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ServerSocket f26046d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f26047e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Thread f26048f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final e f26049g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final m f26050h;

    public static final class b {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final long f26051f = 536870912;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private File f26052a;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private com.danikula.videocache.sourcestorage.c f26055d;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private com.danikula.videocache.file.a f26054c = new com.danikula.videocache.file.h(536870912);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private com.danikula.videocache.file.c f26053b = new com.danikula.videocache.file.f();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private y2.b f26056e = new y2.a();

        public b(Context context) {
            this.f26055d = com.danikula.videocache.sourcestorage.d.b(context);
            this.f26052a = s.c(context);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public e c() {
            return new e(this.f26052a, this.f26053b, this.f26054c, this.f26055d, this.f26056e);
        }

        public i b() {
            return new i(c());
        }

        public b d(File file) {
            this.f26052a = (File) n.d(file);
            return this;
        }

        public b e(com.danikula.videocache.file.a aVar) {
            this.f26054c = (com.danikula.videocache.file.a) n.d(aVar);
            return this;
        }

        public b f(com.danikula.videocache.file.c cVar) {
            this.f26053b = (com.danikula.videocache.file.c) n.d(cVar);
            return this;
        }

        public b g(y2.b bVar) {
            this.f26056e = (y2.b) n.d(bVar);
            return this;
        }

        public b h(int i10) {
            this.f26054c = new com.danikula.videocache.file.g(i10);
            return this;
        }

        public b i(long j10) {
            this.f26054c = new com.danikula.videocache.file.h(j10);
            return this;
        }
    }

    private final class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Socket f26057b;

        public c(Socket socket) {
            this.f26057b = socket;
        }

        @Override // java.lang.Runnable
        public void run() {
            i.this.o(this.f26057b);
        }
    }

    private final class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final CountDownLatch f26059b;

        public d(CountDownLatch countDownLatch) {
            this.f26059b = countDownLatch;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f26059b.countDown();
            i.this.w();
        }
    }

    private String c(String str) {
        return String.format(Locale.US, "http://%s:%d/%s", f26042i, Integer.valueOf(this.f26047e), p.f(str));
    }

    private void d(Socket socket) {
        try {
            if (socket.isClosed()) {
                return;
            }
            socket.close();
        } catch (IOException unused) {
        }
    }

    private void e(Socket socket) {
        try {
            if (socket.isInputShutdown()) {
                return;
            }
            socket.shutdownInput();
        } catch (SocketException | IOException unused) {
        }
    }

    private void f(Socket socket) {
        try {
            if (socket.isOutputShutdown()) {
                return;
            }
            socket.shutdownOutput();
        } catch (IOException e10) {
            h.k("Failed to close socket on proxy side: {}. It seems client have already closed connection.", e10.getMessage());
        }
    }

    private File g(String str) {
        e eVar = this.f26049g;
        return new File(eVar.f26016a, eVar.f26017b.generate(str));
    }

    private j h(String str) throws ProxyCacheException {
        j jVar;
        synchronized (this.f26043a) {
            jVar = this.f26045c.get(str);
            if (jVar == null) {
                jVar = new j(str, this.f26049g);
                this.f26045c.put(str, jVar);
            }
        }
        return jVar;
    }

    private int i() {
        int iB;
        synchronized (this.f26043a) {
            Iterator<j> it2 = this.f26045c.values().iterator();
            iB = 0;
            while (it2.hasNext()) {
                iB += it2.next().b();
            }
        }
        return iB;
    }

    private boolean l() {
        return this.f26050h.e(3, 70);
    }

    private void n(Throwable th) {
        h.g("HttpProxyCacheServer error", th.getMessage());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o(Socket socket) {
        StringBuilder sb2;
        try {
            try {
                f fVarC = f.c(socket.getInputStream());
                String strE = p.e(fVarC.f26023a);
                if (this.f26050h.d(strE)) {
                    this.f26050h.g(socket);
                } else {
                    h(strE).d(fVarC, socket);
                }
                q(socket);
                sb2 = new StringBuilder();
            } catch (Throwable th) {
                q(socket);
                h.h("Opened connections: " + i());
                throw th;
            }
        } catch (ProxyCacheException e10) {
            e = e10;
            n(new ProxyCacheException("Error processing request", e));
            q(socket);
            sb2 = new StringBuilder();
        } catch (SocketException unused) {
            q(socket);
            sb2 = new StringBuilder();
        } catch (IOException e11) {
            e = e11;
            n(new ProxyCacheException("Error processing request", e));
            q(socket);
            sb2 = new StringBuilder();
        }
        sb2.append("Opened connections: ");
        sb2.append(i());
        h.h(sb2.toString());
    }

    private void q(Socket socket) {
        e(socket);
        f(socket);
        d(socket);
    }

    private void s() {
        synchronized (this.f26043a) {
            Iterator<j> it2 = this.f26045c.values().iterator();
            while (it2.hasNext()) {
                it2.next().f();
            }
            this.f26045c.clear();
        }
    }

    private void t(File file) {
        try {
            this.f26049g.f26018c.a(file);
        } catch (IOException e10) {
            h.f("Error touching file " + file, e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        while (!Thread.currentThread().isInterrupted()) {
            try {
                this.f26044b.submit(new c(this.f26046d.accept()));
            } catch (IOException e10) {
                n(new ProxyCacheException("Error during waiting connection", e10));
                return;
            }
        }
    }

    public String j(String str) {
        return k(str, true);
    }

    public String k(String str, boolean z10) {
        if (!z10 || !m(str)) {
            return l() ? c(str) : str;
        }
        File fileG = g(str);
        t(fileG);
        return Uri.fromFile(fileG).toString();
    }

    public boolean m(String str) {
        n.e(str, "Url can't be null!");
        return g(str).exists();
    }

    public void p(com.danikula.videocache.d dVar, String str) {
        n.a(dVar, str);
        synchronized (this.f26043a) {
            try {
                h(str).e(dVar);
            } catch (ProxyCacheException e10) {
                h.k("Error registering cache listener", e10.getMessage());
            }
        }
    }

    public void r() {
        h.h("Shutdown proxy server");
        s();
        this.f26049g.f26019d.release();
        this.f26048f.interrupt();
        try {
            if (this.f26046d.isClosed()) {
                return;
            }
            this.f26046d.close();
        } catch (IOException e10) {
            n(new ProxyCacheException("Error shutting down proxy server", e10));
        }
    }

    public void u(com.danikula.videocache.d dVar) {
        n.d(dVar);
        synchronized (this.f26043a) {
            Iterator<j> it2 = this.f26045c.values().iterator();
            while (it2.hasNext()) {
                it2.next().h(dVar);
            }
        }
    }

    public void v(com.danikula.videocache.d dVar, String str) {
        n.a(dVar, str);
        synchronized (this.f26043a) {
            try {
                h(str).h(dVar);
            } catch (ProxyCacheException e10) {
                h.k("Error registering cache listener", e10.getMessage());
            }
        }
    }

    public i(Context context) {
        this(new b(context).c());
    }

    private i(e eVar) {
        this.f26043a = new Object();
        this.f26044b = Executors.newFixedThreadPool(8);
        this.f26045c = new ConcurrentHashMap();
        this.f26049g = (e) n.d(eVar);
        try {
            ServerSocket serverSocket = new ServerSocket(0, 8, InetAddress.getByName(f26042i));
            this.f26046d = serverSocket;
            int localPort = serverSocket.getLocalPort();
            this.f26047e = localPort;
            l.a(f26042i, localPort);
            CountDownLatch countDownLatch = new CountDownLatch(1);
            Thread thread = new Thread(new d(countDownLatch));
            this.f26048f = thread;
            thread.start();
            countDownLatch.await();
            this.f26050h = new m(f26042i, localPort);
            h.h("Proxy cache server started. Is it alive? " + l());
        } catch (IOException | InterruptedException e10) {
            this.f26044b.shutdown();
            throw new IllegalStateException("Error starting local proxy server", e10);
        }
    }
}

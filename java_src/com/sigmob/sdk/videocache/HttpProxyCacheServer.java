package com.sigmob.sdk.videocache;

import android.content.Context;
import android.net.Uri;
import com.czhj.sdk.common.ThreadPool.ThreadPoolFactory;
import com.czhj.sdk.logger.SigmobLog;
import com.czhj.volley.toolbox.StringUtil;
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

/* JADX INFO: loaded from: classes3.dex */
public class HttpProxyCacheServer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f81882a = "127.0.0.1";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f81883b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ExecutorService f81884c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map<String, h> f81885d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ServerSocket f81886e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f81887f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Thread f81888g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final e f81889h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final m f81890i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private InetAddress f81891j;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final long f81892a = 536870912;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private File f81893b;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private com.sigmob.sdk.videocache.sourcestorage.c f81896e;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private com.sigmob.sdk.videocache.file.a f81895d = new com.sigmob.sdk.videocache.file.h(536870912);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private com.sigmob.sdk.videocache.file.c f81894c = new com.sigmob.sdk.videocache.file.f();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private com.sigmob.sdk.videocache.headers.b f81897f = new com.sigmob.sdk.videocache.headers.a();

        public Builder(Context context) {
            this.f81896e = com.sigmob.sdk.videocache.sourcestorage.d.a(context);
            this.f81893b = v.a(context);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public e a() {
            return new e(this.f81893b, this.f81894c, this.f81895d, this.f81896e, this.f81897f);
        }

        public HttpProxyCacheServer build() {
            return new HttpProxyCacheServer(a());
        }

        public Builder cacheDirectory(File file) {
            this.f81893b = (File) n.a(file);
            return this;
        }

        public Builder diskUsage(com.sigmob.sdk.videocache.file.a diskUsage) {
            this.f81895d = (com.sigmob.sdk.videocache.file.a) n.a(diskUsage);
            return this;
        }

        public Builder fileNameGenerator(com.sigmob.sdk.videocache.file.c fileNameGenerator) {
            this.f81894c = (com.sigmob.sdk.videocache.file.c) n.a(fileNameGenerator);
            return this;
        }

        public Builder headerInjector(com.sigmob.sdk.videocache.headers.b headerInjector) {
            this.f81897f = (com.sigmob.sdk.videocache.headers.b) n.a(headerInjector);
            return this;
        }

        public Builder maxCacheFilesCount(int count) {
            this.f81895d = new com.sigmob.sdk.videocache.file.g(count);
            return this;
        }

        public Builder maxCacheSize(long maxSize) {
            this.f81895d = new com.sigmob.sdk.videocache.file.h(maxSize);
            return this;
        }
    }

    private final class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Socket f81899b;

        public a(Socket socket) {
            this.f81899b = socket;
        }

        @Override // java.lang.Runnable
        public void run() {
            HttpProxyCacheServer.this.a(this.f81899b);
        }
    }

    private final class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final CountDownLatch f81901b;

        public b(CountDownLatch startSignal) {
            this.f81901b = startSignal;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f81901b.countDown();
            HttpProxyCacheServer.this.c();
        }
    }

    public HttpProxyCacheServer(Context context) {
        this(new Builder(context).a());
    }

    private String a(String url) {
        return String.format(Locale.US, "http://%s:%d/%s", f81882a, Integer.valueOf(this.f81887f), q.b(url));
    }

    private h b(String url) throws p {
        h hVar;
        synchronized (this.f81883b) {
            hVar = this.f81885d.get(url);
            if (hVar == null) {
                hVar = new h(url, this.f81889h);
                this.f81885d.put(url, hVar);
            }
        }
        return hVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        while (!Thread.currentThread().isInterrupted()) {
            try {
                this.f81884c.submit(new a(this.f81886e.accept()));
            } catch (IOException e10) {
                a(new p("Error during waiting connection", e10));
                return;
            }
        }
    }

    private int d() {
        int iB;
        synchronized (this.f81883b) {
            Iterator<h> it2 = this.f81885d.values().iterator();
            iB = 0;
            while (it2.hasNext()) {
                iB += it2.next().b();
            }
        }
        return iB;
    }

    private void e(Socket socket) {
        try {
            if (socket.isClosed()) {
                return;
            }
            socket.close();
        } catch (IOException unused) {
        }
    }

    public File getCacheFile(String url) {
        e eVar = this.f81889h;
        return new File(eVar.f81906a, eVar.f81907b.a(url));
    }

    public String getProxyUrl(String url) {
        return getProxyUrl(StringUtil.getUrl(url), true);
    }

    public boolean isCached(String url) {
        n.a(url, "Url can't be null!");
        return getCacheFile(url).exists();
    }

    public void registerCacheListener(d cacheListener, String url) {
        n.a(cacheListener, url);
        synchronized (this.f81883b) {
            try {
                b(url).a(cacheListener);
            } catch (p e10) {
                SigmobLog.w("Error registering cache listener", e10);
            }
        }
    }

    public void shutdown() {
        SigmobLog.i("Shutdown proxy server");
        b();
        this.f81889h.f81909d.a();
        this.f81888g.interrupt();
        try {
            if (this.f81886e.isClosed()) {
                return;
            }
            this.f81886e.close();
        } catch (IOException e10) {
            a(new p("Error shutting down proxy server", e10));
        }
    }

    public void stopCacheAndShutdown(String url) {
        synchronized (this.f81883b) {
            h hVar = this.f81885d.get(url);
            if (hVar != null) {
                hVar.a();
            }
        }
    }

    public void unregisterCacheListener(d cacheListener) {
        n.a(cacheListener);
        synchronized (this.f81883b) {
            Iterator<h> it2 = this.f81885d.values().iterator();
            while (it2.hasNext()) {
                it2.next().b(cacheListener);
            }
        }
    }

    private HttpProxyCacheServer(e config) {
        this.f81883b = new Object();
        this.f81884c = ThreadPoolFactory.getFixIOExecutor();
        this.f81885d = new ConcurrentHashMap();
        this.f81889h = (e) n.a(config);
        try {
            this.f81891j = InetAddress.getByName(f81882a);
            ServerSocket serverSocket = new ServerSocket(0, 8, this.f81891j);
            this.f81886e = serverSocket;
            int localPort = serverSocket.getLocalPort();
            this.f81887f = localPort;
            j.a(f81882a, localPort);
            CountDownLatch countDownLatch = new CountDownLatch(1);
            SigmobLog.d("Thread create ,current thread num :" + Thread.activeCount());
            Thread thread = new Thread(new b(countDownLatch));
            this.f81888g = thread;
            thread.start();
            countDownLatch.await();
            this.f81890i = new m(f81882a, localPort);
        } catch (IOException | InterruptedException e10) {
            this.f81884c.shutdown();
            throw new IllegalStateException("Error starting local proxy server", e10);
        }
    }

    private void b() {
        synchronized (this.f81883b) {
            Iterator<h> it2 = this.f81885d.values().iterator();
            while (it2.hasNext()) {
                it2.next().a();
            }
            this.f81885d.clear();
        }
    }

    private void c(Socket socket) {
        try {
            if (socket.isInputShutdown()) {
                return;
            }
            socket.shutdownInput();
        } catch (SocketException unused) {
            SigmobLog.d("Releasing input stream… Socket is closed by client.");
        } catch (IOException unused2) {
        }
    }

    private void d(Socket socket) {
        try {
            if (socket.isOutputShutdown()) {
                return;
            }
            socket.shutdownOutput();
        } catch (IOException unused) {
        }
    }

    public String getProxyUrl(String url, boolean allowCachedFileUri) {
        if (!allowCachedFileUri || !isCached(url)) {
            return a() ? a(url) : url;
        }
        File cacheFile = getCacheFile(url);
        a(cacheFile);
        return Uri.fromFile(cacheFile).toString();
    }

    public void unregisterCacheListener(d cacheListener, String url) {
        n.a(cacheListener, url);
        synchronized (this.f81883b) {
            try {
                b(url).b(cacheListener);
            } catch (p e10) {
                SigmobLog.w("Error registering cache listener", e10);
            }
        }
    }

    private void b(Socket socket) {
        c(socket);
        d(socket);
        e(socket);
    }

    private void a(File cacheFile) {
        try {
            this.f81889h.f81908c.a(cacheFile);
        } catch (IOException e10) {
            SigmobLog.e("Error touching file " + cacheFile, e10);
        }
    }

    private void a(Throwable e10) {
        SigmobLog.e("HttpProxyCacheServer error", e10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Socket socket) {
        StringBuilder sb2;
        try {
            try {
                f fVarA = f.a(socket.getInputStream());
                SigmobLog.d("Request to cache proxy:" + fVarA);
                String strC = q.c(fVarA.f81913a);
                if (this.f81890i.a(strC)) {
                    this.f81890i.a(socket);
                } else {
                    b(strC).a(fVarA, socket);
                }
                b(socket);
                sb2 = new StringBuilder();
            } catch (p e10) {
                e = e10;
                a(new p("Error processing request", e));
                b(socket);
                sb2 = new StringBuilder();
            } catch (SocketException unused) {
                SigmobLog.d("Closing socket… Socket is closed by client.");
                b(socket);
                sb2 = new StringBuilder();
            } catch (IOException e11) {
                e = e11;
                a(new p("Error processing request", e));
                b(socket);
                sb2 = new StringBuilder();
            }
            sb2.append("Opened connections: ");
            sb2.append(d());
            SigmobLog.d(sb2.toString());
        } catch (Throwable th) {
            b(socket);
            SigmobLog.d("Opened connections: " + d());
            throw th;
        }
    }

    private boolean a() {
        return this.f81890i.a(1, 70);
    }
}

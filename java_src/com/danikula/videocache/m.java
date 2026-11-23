package com.danikula.videocache;

import java.io.IOException;
import java.io.OutputStream;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.Socket;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes9.dex */
class m {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f26082d = "ping";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f26083e = "ping ok";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ExecutorService f26084a = Executors.newSingleThreadExecutor();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f26085b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f26086c;

    private class b implements Callable<Boolean> {
        private b() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Boolean call() throws Exception {
            return Boolean.valueOf(m.this.f());
        }
    }

    m(String str, int i10) {
        this.f26085b = (String) n.d(str);
        this.f26086c = i10;
    }

    private List<Proxy> b() {
        try {
            return ProxySelector.getDefault().select(new URI(c()));
        } catch (URISyntaxException e10) {
            throw new IllegalStateException(e10);
        }
    }

    private String c() {
        return String.format(Locale.US, "http://%s:%d/%s", this.f26085b, Integer.valueOf(this.f26086c), "ping");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean f() throws ProxyCacheException {
        k kVar = new k(c());
        try {
            byte[] bytes = f26083e.getBytes();
            kVar.a(0L);
            byte[] bArr = new byte[bytes.length];
            kVar.read(bArr);
            boolean zEquals = Arrays.equals(bytes, bArr);
            h.h("Ping response: `" + new String(bArr) + "`, pinged? " + zEquals);
            return zEquals;
        } catch (ProxyCacheException e10) {
            h.f("Error reading ping response", e10);
            return false;
        } finally {
            kVar.close();
        }
    }

    boolean d(String str) {
        return "ping".equals(str);
    }

    boolean e(int i10, int i11) {
        n.b(i10 >= 1);
        n.b(i11 > 0);
        int i12 = 0;
        while (i12 < i10) {
            try {
                if (((Boolean) this.f26084a.submit(new b()).get(i11, TimeUnit.MILLISECONDS)).booleanValue()) {
                    return true;
                }
                i12++;
                i11 *= 2;
            } catch (InterruptedException e10) {
                e = e10;
                h.f("Error pinging server due to unexpected error", e);
            } catch (ExecutionException e11) {
                e = e11;
                h.f("Error pinging server due to unexpected error", e);
            } catch (TimeoutException unused) {
                h.j("Error pinging server (attempt: " + i12 + ", timeout: " + i11 + "). ");
            }
        }
        String str = String.format(Locale.US, "Error pinging server (attempts: %d, max timeout: %d). If you see this message, please, report at https://github.com/danikula/AndroidVideoCache/issues/134. Default proxies are: %s", Integer.valueOf(i12), Integer.valueOf(i11 / 2), b());
        h.f(str, new ProxyCacheException(str));
        return false;
    }

    void g(Socket socket) throws IOException {
        OutputStream outputStream = socket.getOutputStream();
        outputStream.write("HTTP/1.1 200 OK\n\n".getBytes());
        outputStream.write(f26083e.getBytes());
    }
}

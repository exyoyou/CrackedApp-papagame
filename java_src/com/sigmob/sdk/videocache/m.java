package com.sigmob.sdk.videocache;

import com.czhj.sdk.logger.SigmobLog;
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

/* JADX INFO: loaded from: classes3.dex */
class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f81959a = "ping";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f81960b = "ping ok";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ExecutorService f81961c = Executors.newSingleThreadExecutor();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f81962d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f81963e;

    private class a implements Callable<Boolean> {
        private a() {
        }

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Boolean call() throws Exception {
            return Boolean.valueOf(m.this.b());
        }
    }

    m(String host, int port) {
        this.f81962d = (String) n.a(host);
        this.f81963e = port;
    }

    private List<Proxy> a() {
        try {
            return ProxySelector.getDefault().select(new URI(c()));
        } catch (URISyntaxException e10) {
            throw new IllegalStateException(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b() throws p {
        t tVarA = s.a(c());
        try {
            byte[] bytes = f81960b.getBytes();
            tVarA.a(0L);
            byte[] bArr = new byte[bytes.length];
            tVarA.a(bArr);
            boolean zEquals = Arrays.equals(bytes, bArr);
            SigmobLog.i("Ping response: `" + new String(bArr) + "`, pinged? " + zEquals);
            return zEquals;
        } catch (p e10) {
            SigmobLog.e("Error reading ping response", e10);
            return false;
        } finally {
            tVarA.b();
        }
    }

    private String c() {
        return String.format(Locale.US, "http://%s:%d/%s", this.f81962d, Integer.valueOf(this.f81963e), "ping");
    }

    void a(Socket socket) throws IOException {
        OutputStream outputStream = socket.getOutputStream();
        outputStream.write("HTTP/1.1 200 OK\n\n".getBytes());
        outputStream.write(f81960b.getBytes());
    }

    boolean a(int maxAttempts, int startTimeout) {
        int i10 = 0;
        while (i10 < maxAttempts) {
            try {
                if (((Boolean) this.f81961c.submit(new a()).get(startTimeout, TimeUnit.MILLISECONDS)).booleanValue()) {
                    return true;
                }
                i10++;
                startTimeout *= 2;
            } catch (InterruptedException e10) {
                e = e10;
                SigmobLog.w("Error pinging server due to unexpected error", e);
            } catch (ExecutionException e11) {
                e = e11;
                SigmobLog.w("Error pinging server due to unexpected error", e);
            } catch (TimeoutException unused) {
                SigmobLog.w("Error pinging server (attempt: " + i10 + ", timeout: " + startTimeout + "). ");
            }
        }
        SigmobLog.e(String.format(Locale.US, "Error pinging server (attempts: %d, max timeout: %d). Default proxies are: %s", Integer.valueOf(i10), Integer.valueOf(startTimeout / 2), a()));
        return false;
    }

    boolean a(String request) {
        return "ping".equals(request);
    }
}

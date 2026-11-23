package com.facebook.imagepipeline.producers;

import android.net.Uri;
import androidx.annotation.VisibleForTesting;
import com.facebook.common.time.RealtimeSinceBootClock;
import com.facebook.infer.annotation.Nullsafe;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class w extends com.facebook.imagepipeline.producers.c<c> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f28651f = "queue_time";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f28652g = "fetch_time";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f28653h = "total_time";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final String f28654i = "image_size";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final int f28655j = 3;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final int f28656k = 5;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int f28657l = 307;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int f28658m = 308;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int f28659n = 30000;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f28660a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private String f28661b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private final Map<String, String> f28662c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ExecutorService f28663d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final l3.c f28664e;

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ c f28665b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ l0.a f28666c;

        a(final c val$callback, final l0.a val$fetchState) {
            this.f28665b = val$callback;
            this.f28666c = val$fetchState;
        }

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            w.this.j(this.f28665b, this.f28666c);
        }
    }

    class b extends e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Future f28668a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ l0.a f28669b;

        b(final Future val$callback, final l0.a val$future) {
            this.f28668a = val$callback;
            this.f28669b = val$future;
        }

        @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.s0
        public void b() {
            if (this.f28668a.cancel(false)) {
                this.f28669b.a();
            }
        }
    }

    public static class c extends v {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private long f28671f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private long f28672g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private long f28673h;

        public c(Consumer<com.facebook.imagepipeline.image.e> consumer, ProducerContext producerContext) {
            super(consumer, producerContext);
        }
    }

    public w() {
        this((String) null, (Map<String, String>) null, RealtimeSinceBootClock.get());
    }

    private HttpURLConnection g(Uri uri, int maxRedirects) throws IOException {
        HttpURLConnection httpURLConnectionO = o(uri);
        String str = this.f28661b;
        if (str != null) {
            httpURLConnectionO.setRequestProperty("User-Agent", str);
        }
        Map<String, String> map = this.f28662c;
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                httpURLConnectionO.setRequestProperty(entry.getKey(), entry.getValue());
            }
        }
        httpURLConnectionO.setConnectTimeout(this.f28660a);
        int responseCode = httpURLConnectionO.getResponseCode();
        if (m(responseCode)) {
            return httpURLConnectionO;
        }
        if (!l(responseCode)) {
            httpURLConnectionO.disconnect();
            throw new IOException(String.format("Image URL %s returned HTTP code %d", uri.toString(), Integer.valueOf(responseCode)));
        }
        String headerField = httpURLConnectionO.getHeaderField("Location");
        httpURLConnectionO.disconnect();
        Uri uri2 = headerField == null ? null : Uri.parse(headerField);
        String scheme = uri.getScheme();
        if (maxRedirects <= 0 || uri2 == null || com.facebook.common.internal.h.a(uri2.getScheme(), scheme)) {
            throw new IOException(maxRedirects == 0 ? h("URL %s follows too many redirects", uri.toString()) : h("URL %s returned %d without a valid redirect", uri.toString(), Integer.valueOf(responseCode)));
        }
        return g(uri2, maxRedirects - 1);
    }

    private static String h(String format, Object... args) {
        return String.format(Locale.getDefault(), format, args);
    }

    private static boolean l(int responseCode) {
        if (responseCode == 307 || responseCode == 308) {
            return true;
        }
        switch (responseCode) {
            case 300:
            case 301:
            case 302:
            case 303:
                return true;
            default:
                return false;
        }
    }

    private static boolean m(int responseCode) {
        return responseCode >= 200 && responseCode < 300;
    }

    @VisibleForTesting
    static HttpURLConnection o(Uri uri) throws IOException {
        return (HttpURLConnection) com.facebook.common.util.f.q(uri).openConnection();
    }

    @Override // com.facebook.imagepipeline.producers.l0
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public c b(Consumer<com.facebook.imagepipeline.image.e> consumer, ProducerContext context) {
        return new c(consumer, context);
    }

    @Override // com.facebook.imagepipeline.producers.l0
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public void c(final c fetchState, final l0.a callback) {
        fetchState.f28671f = this.f28664e.now();
        fetchState.getContext().i(new b(this.f28663d.submit(new a(fetchState, callback)), callback));
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0048  */
    /* JADX WARN: Code duplicated, block: B:39:0x0041 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:48:? A[SYNTHETIC] */
    @VisibleForTesting
    void j(c fetchState, l0.a callback) throws Throwable {
        HttpURLConnection httpURLConnectionG;
        InputStream inputStream = null;
        try {
            httpURLConnectionG = g(fetchState.g(), 5);
            try {
                try {
                    fetchState.f28672g = this.f28664e.now();
                    if (httpURLConnectionG != null) {
                        inputStream = httpURLConnectionG.getInputStream();
                        callback.b(inputStream, -1);
                    }
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException unused) {
                        }
                    }
                    if (httpURLConnectionG == null) {
                        return;
                    }
                } catch (IOException e10) {
                    e = e10;
                    callback.onFailure(e);
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException unused2) {
                        }
                    }
                    if (httpURLConnectionG == null) {
                        return;
                    }
                }
            } catch (Throwable th) {
                th = th;
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException unused3) {
                    }
                }
                if (httpURLConnectionG != null) {
                    throw th;
                }
                httpURLConnectionG.disconnect();
                throw th;
            }
        } catch (IOException e11) {
            e = e11;
            httpURLConnectionG = null;
        } catch (Throwable th2) {
            th = th2;
            httpURLConnectionG = null;
            if (inputStream != null) {
                inputStream.close();
            }
            if (httpURLConnectionG != null) {
                throw th;
            }
            httpURLConnectionG.disconnect();
            throw th;
        }
        httpURLConnectionG.disconnect();
    }

    @Override // com.facebook.imagepipeline.producers.c, com.facebook.imagepipeline.producers.l0
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public Map<String, String> e(c fetchState, int byteSize) {
        HashMap map = new HashMap(4);
        map.put(f28651f, Long.toString(fetchState.f28672g - fetchState.f28671f));
        map.put(f28652g, Long.toString(fetchState.f28673h - fetchState.f28672g));
        map.put(f28653h, Long.toString(fetchState.f28673h - fetchState.f28671f));
        map.put(f28654i, Integer.toString(byteSize));
        return map;
    }

    @Override // com.facebook.imagepipeline.producers.c, com.facebook.imagepipeline.producers.l0
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public void a(c fetchState, int byteSize) {
        fetchState.f28673h = this.f28664e.now();
    }

    public w(int httpConnectionTimeout) {
        this((String) null, (Map<String, String>) null, RealtimeSinceBootClock.get());
        this.f28660a = httpConnectionTimeout;
    }

    public w(String userAgent, int httpConnectionTimeout) {
        this(userAgent, (Map<String, String>) null, RealtimeSinceBootClock.get());
        this.f28660a = httpConnectionTimeout;
    }

    public w(String userAgent, @Nullable Map<String, String> requestHeaders, int httpConnectionTimeout) {
        this(userAgent, requestHeaders, RealtimeSinceBootClock.get());
        this.f28660a = httpConnectionTimeout;
    }

    @VisibleForTesting
    w(@Nullable String userAgent, @Nullable Map<String, String> requestHeaders, l3.c monotonicClock) {
        this.f28663d = Executors.newFixedThreadPool(3);
        this.f28664e = monotonicClock;
        this.f28662c = requestHeaders;
        this.f28661b = userAgent;
    }
}

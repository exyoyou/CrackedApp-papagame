package com.join.android.app.common.http;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.google.gson.JsonObject;
import com.papa.sim.statistic.JsonMapper;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.net.URLConnection;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.UnrecoverableKeyException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.KeyManager;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Cookie;
import okhttp3.CookieJar;
import okhttp3.Dispatcher;
import okhttp3.FormBody;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import org.apache.http.conn.ssl.SSLConnectionSocketFactory;

/* JADX INFO: loaded from: classes5.dex */
public class d {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final String f34548k = "OkHttpClientManager";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static d f34549l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private OkHttpClient f34550a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Handler f34551b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private JsonMapper f34552c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private l f34553d = new l();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private j f34554e = new j();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private i f34555f = new i();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private k f34556g = new k();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private q f34557h = new q();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private o f34558i = new o();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final p<String> f34559j = new h();

    class a implements HostnameVerifier {
        a() {
        }

        @Override // javax.net.ssl.HostnameVerifier
        public boolean verify(String hostname, SSLSession session) {
            return true;
        }
    }

    class b implements X509TrustManager {
        b() {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkClientTrusted(X509Certificate[] chain, String authType) throws CertificateException {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkServerTrusted(X509Certificate[] chain, String authType) throws CertificateException {
        }

        @Override // javax.net.ssl.X509TrustManager
        public X509Certificate[] getAcceptedIssuers() {
            return new X509Certificate[0];
        }
    }

    class c implements HostnameVerifier {
        c() {
        }

        @Override // javax.net.ssl.HostnameVerifier
        public boolean verify(String hostname, SSLSession session) {
            return true;
        }
    }

    /* JADX INFO: renamed from: com.join.android.app.common.http.d$d, reason: collision with other inner class name */
    class C0637d implements CookieJar {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final HashMap<HttpUrl, List<Cookie>> f34561a = new HashMap<>();

        C0637d() {
        }

        @Override // okhttp3.CookieJar
        public List<Cookie> loadForRequest(HttpUrl url) {
            List<Cookie> list = this.f34561a.get(url);
            return list != null ? list : new ArrayList();
        }

        @Override // okhttp3.CookieJar
        public void saveFromResponse(HttpUrl url, List<Cookie> cookies) {
            this.f34561a.put(url, cookies);
        }
    }

    class e implements Callback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ p f34563a;

        e(final p val$resCallBack) {
            this.f34563a = val$resCallBack;
        }

        public void a(final Request request, final IOException e10) {
            d.this.T(request, e10, this.f34563a);
        }

        public void b(final Response response) {
            try {
                String strString = response.body().string();
                p pVar = this.f34563a;
                Type type = pVar.f34601a;
                if (type == String.class) {
                    d.this.U(strString, pVar);
                } else if (type instanceof ParameterizedType) {
                    Class<?>[] clsArrC = d.this.C(type);
                    int length = clsArrC.length - 1;
                    Class<?>[] clsArr = new Class[length];
                    System.arraycopy(clsArrC, 1, clsArr, 0, length);
                    d.this.U(d.this.f34552c.fromJson(strString, d.this.f34552c.createCollectionType(clsArrC[0], clsArr)), this.f34563a);
                } else {
                    d.this.U(d.this.f34552c.fromJson(strString, Class.forName(type.toString().replace("class ", ""))), this.f34563a);
                }
            } catch (Exception e10) {
                d.this.T(response.request(), e10, this.f34563a);
            }
        }

        @Override // okhttp3.Callback
        public void onFailure(Call call, IOException e10) {
            a(call.request(), e10);
        }

        @Override // okhttp3.Callback
        public void onResponse(Call call, Response response) throws IOException {
            b(response);
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ p f34565b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Request f34566c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ Exception f34567d;

        f(final p val$callback, final Request val$request, final Exception val$e) {
            this.f34565b = val$callback;
            this.f34566c = val$request;
            this.f34567d = val$e;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f34565b.d(this.f34566c, this.f34567d);
            this.f34565b.b();
        }
    }

    class g implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ p f34569b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Object f34570c;

        g(final p val$callback, final Object val$object) {
            this.f34569b = val$callback;
            this.f34570c = val$object;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f34569b.e(this.f34570c);
            this.f34569b.b();
        }
    }

    class h extends p<String> {
        h() {
        }

        @Override // com.join.android.app.common.http.d.p
        public void d(Request request, Exception e10) {
        }

        @Override // com.join.android.app.common.http.d.p
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void e(String response) {
        }
    }

    public class i {

        class a implements Callback {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ ImageView f34574a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ int f34575b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ String f34576c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ Object f34577d;

            /* JADX INFO: renamed from: com.join.android.app.common.http.d$i$a$a, reason: collision with other inner class name */
            class RunnableC0638a implements Runnable {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                final /* synthetic */ Bitmap f34579b;

                RunnableC0638a(final Bitmap val$bm) {
                    this.f34579b = val$bm;
                }

                @Override // java.lang.Runnable
                public void run() {
                    a.this.f34574a.setImageBitmap(this.f34579b);
                }
            }

            a(final ImageView val$view, final int val$errorResId, final String val$url, final Object val$tag) {
                this.f34574a = val$view;
                this.f34575b = val$errorResId;
                this.f34576c = val$url;
                this.f34577d = val$tag;
            }

            public void a(Request request, IOException e10) {
                i.this.e(this.f34574a, this.f34575b);
            }

            public void b(Response response) throws Throwable {
                Throwable th;
                InputStream inputStreamByteStream;
                InputStream inputStream = null;
                try {
                    try {
                        try {
                            inputStreamByteStream = response.body().byteStream();
                            try {
                                int iA = m.a(m.d(inputStreamByteStream), m.f(this.f34574a));
                                try {
                                    inputStreamByteStream.reset();
                                } catch (IOException unused) {
                                    inputStreamByteStream = d.this.f34556g.c(this.f34576c, this.f34577d).body().byteStream();
                                }
                                BitmapFactory.Options options = new BitmapFactory.Options();
                                options.inJustDecodeBounds = false;
                                options.inSampleSize = iA;
                                d.this.f34551b.post(new RunnableC0638a(BitmapFactory.decodeStream(inputStreamByteStream, null, options)));
                                if (inputStreamByteStream != null) {
                                    inputStreamByteStream.close();
                                }
                            } catch (Exception unused2) {
                                inputStream = inputStreamByteStream;
                                i.this.e(this.f34574a, this.f34575b);
                                if (inputStream == null) {
                                } else {
                                    inputStream.close();
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                if (inputStreamByteStream != null) {
                                    try {
                                        inputStreamByteStream.close();
                                    } catch (IOException e10) {
                                        e10.printStackTrace();
                                    }
                                }
                                throw th;
                            }
                        } catch (Exception unused3) {
                        }
                    } catch (Throwable th3) {
                        InputStream inputStream2 = inputStream;
                        th = th3;
                        inputStreamByteStream = inputStream2;
                    }
                } catch (IOException e11) {
                    e11.printStackTrace();
                }
            }

            @Override // okhttp3.Callback
            public void onFailure(Call call, IOException e10) {
                a(call.request(), e10);
            }

            @Override // okhttp3.Callback
            public void onResponse(Call call, Response response) throws Throwable {
                b(response);
            }
        }

        class b implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ ImageView f34581b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ int f34582c;

            b(final ImageView val$view, final int val$errorResId) {
                this.f34581b = val$view;
                this.f34582c = val$errorResId;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f34581b.setImageResource(this.f34582c);
            }
        }

        public i() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void e(final ImageView view, final int errorResId) {
            d.this.f34551b.post(new b(view, errorResId));
        }

        public void b(final ImageView view, String url) {
            c(view, url, -1, null);
        }

        public void c(final ImageView view, final String url, final int errorResId, final Object tag) {
            d.this.f34550a.newCall(new Request.Builder().url(url).build()).enqueue(new a(view, errorResId, url, tag));
        }

        public void d(final ImageView view, String url, Object tag) {
            c(view, url, -1, tag);
        }
    }

    public class j {

        class a implements Callback {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ p f34585a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f34586b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ String f34587c;

            a(final p val$callback, final String val$destFileDir, final String val$url) {
                this.f34585a = val$callback;
                this.f34586b = val$destFileDir;
                this.f34587c = val$url;
            }

            public void a(final Request request, final IOException e10) {
                d.this.T(request, e10, this.f34585a);
            }

            /* JADX WARN: Code duplicated, block: B:48:0x0087 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            /* JADX WARN: Code duplicated, block: B:52:0x0080 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            /* JADX WARN: Code duplicated, block: B:69:? A[SYNTHETIC] */
            public void b(Response response) throws Throwable {
                FileOutputStream fileOutputStream;
                byte[] bArr = new byte[2048];
                InputStream inputStream = null;
                try {
                    InputStream inputStreamByteStream = response.body().byteStream();
                    try {
                        File file = new File(this.f34586b);
                        if (!file.exists()) {
                            file.mkdirs();
                        }
                        File file2 = new File(file, d.this.D(this.f34587c));
                        fileOutputStream = new FileOutputStream(file2);
                        while (true) {
                            try {
                                int i10 = inputStreamByteStream.read(bArr);
                                if (i10 == -1) {
                                    break;
                                } else {
                                    fileOutputStream.write(bArr, 0, i10);
                                }
                            } catch (IOException e10) {
                                e = e10;
                                inputStream = inputStreamByteStream;
                                try {
                                    d.this.T(response.request(), e, this.f34585a);
                                    if (inputStream != null) {
                                        try {
                                            inputStream.close();
                                        } catch (IOException unused) {
                                        }
                                    }
                                    if (fileOutputStream == null) {
                                        return;
                                    }
                                } catch (Throwable th) {
                                    th = th;
                                    if (inputStream != null) {
                                        try {
                                            inputStream.close();
                                        } catch (IOException unused2) {
                                        }
                                    }
                                    if (fileOutputStream != null) {
                                        throw th;
                                    }
                                    try {
                                        fileOutputStream.close();
                                        throw th;
                                    } catch (IOException unused3) {
                                        throw th;
                                    }
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                inputStream = inputStreamByteStream;
                                if (inputStream != null) {
                                    inputStream.close();
                                }
                                if (fileOutputStream != null) {
                                    throw th;
                                }
                                fileOutputStream.close();
                                throw th;
                            }
                        }
                        fileOutputStream.flush();
                        d.this.U(file2.getAbsolutePath(), this.f34585a);
                        try {
                            inputStreamByteStream.close();
                        } catch (IOException unused4) {
                        }
                    } catch (IOException e11) {
                        e = e11;
                        fileOutputStream = null;
                    } catch (Throwable th3) {
                        th = th3;
                        fileOutputStream = null;
                    }
                } catch (IOException e12) {
                    e = e12;
                    fileOutputStream = null;
                } catch (Throwable th4) {
                    th = th4;
                    fileOutputStream = null;
                }
                try {
                    fileOutputStream.close();
                } catch (IOException unused5) {
                }
            }

            @Override // okhttp3.Callback
            public void onFailure(Call call, IOException e10) {
                a(call.request(), e10);
            }

            @Override // okhttp3.Callback
            public void onResponse(Call call, Response response) throws Throwable {
                b(response);
            }
        }

        public j() {
        }

        public void a(final String url, final String destFileDir, final p callback) {
            b(url, destFileDir, callback, null);
        }

        public void b(final String url, final String destFileDir, final p callback, Object tag) {
            d.this.f34550a.newCall(new Request.Builder().url(url).tag(tag).build()).enqueue(new a(callback, destFileDir, url));
        }
    }

    public class k {
        public k() {
        }

        private Request a(String url, Object tag) {
            Request.Builder builderUrl = new Request.Builder().url(url);
            if (tag != null) {
                builderUrl.tag(tag);
            }
            return builderUrl.build();
        }

        public Response b(String url) throws IOException {
            return c(url, null);
        }

        public Response c(String url, Object tag) throws IOException {
            return d(a(url, tag));
        }

        public Response d(Request request) throws IOException {
            return d.this.f34550a.newCall(request).execute();
        }

        public String e(String url) throws IOException {
            return f(url, null);
        }

        public String f(String url, Object tag) throws IOException {
            return c(url, tag).body().string();
        }

        public void g(String url, final p callback) {
            h(url, callback, null);
        }

        public void h(String url, final p callback, Object tag) {
            i(a(url, tag), callback);
        }

        public void i(Request request, p callback) {
            d.this.w(callback, request);
        }
    }

    public class l {

        public class a implements X509TrustManager {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private X509TrustManager f34591a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private X509TrustManager f34592b;

            public a(X509TrustManager localTrustManager) throws NoSuchAlgorithmException, KeyStoreException {
                TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
                trustManagerFactory.init((KeyStore) null);
                this.f34591a = l.this.b(trustManagerFactory.getTrustManagers());
                this.f34592b = localTrustManager;
            }

            @Override // javax.net.ssl.X509TrustManager
            public void checkClientTrusted(X509Certificate[] chain, String authType) throws CertificateException {
            }

            @Override // javax.net.ssl.X509TrustManager
            public void checkServerTrusted(X509Certificate[] chain, String authType) throws CertificateException {
                try {
                    this.f34591a.checkServerTrusted(chain, authType);
                } catch (CertificateException unused) {
                    this.f34592b.checkServerTrusted(chain, authType);
                }
            }

            @Override // javax.net.ssl.X509TrustManager
            public X509Certificate[] getAcceptedIssuers() {
                return new X509Certificate[0];
            }
        }

        public l() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public X509TrustManager b(TrustManager[] trustManagers) {
            for (TrustManager trustManager : trustManagers) {
                if (trustManager instanceof X509TrustManager) {
                    return (X509TrustManager) trustManager;
                }
            }
            return null;
        }

        public KeyManager[] c(InputStream bksFile, String password) {
            if (bksFile != null && password != null) {
                try {
                    KeyStore keyStore = KeyStore.getInstance("BKS");
                    keyStore.load(bksFile, password.toCharArray());
                    KeyManagerFactory keyManagerFactory = KeyManagerFactory.getInstance(KeyManagerFactory.getDefaultAlgorithm());
                    keyManagerFactory.init(keyStore, password.toCharArray());
                    return keyManagerFactory.getKeyManagers();
                } catch (IOException e10) {
                    e10.printStackTrace();
                } catch (KeyStoreException e11) {
                    e11.printStackTrace();
                } catch (NoSuchAlgorithmException e12) {
                    e12.printStackTrace();
                } catch (UnrecoverableKeyException e13) {
                    e13.printStackTrace();
                } catch (CertificateException e14) {
                    e14.printStackTrace();
                } catch (Exception e15) {
                    e15.printStackTrace();
                }
            }
            return null;
        }

        public TrustManager[] d(InputStream... certificates) {
            if (certificates != null && certificates.length > 0) {
                try {
                    CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
                    KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
                    keyStore.load(null);
                    int length = certificates.length;
                    int i10 = 0;
                    int i11 = 0;
                    while (i10 < length) {
                        InputStream inputStream = certificates[i10];
                        int i12 = i11 + 1;
                        keyStore.setCertificateEntry(Integer.toString(i11), certificateFactory.generateCertificate(inputStream));
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (IOException unused) {
                            }
                        }
                        i10++;
                        i11 = i12;
                    }
                    TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
                    trustManagerFactory.init(keyStore);
                    return trustManagerFactory.getTrustManagers();
                } catch (KeyStoreException e10) {
                    e10.printStackTrace();
                } catch (NoSuchAlgorithmException e11) {
                    e11.printStackTrace();
                } catch (CertificateException e12) {
                    e12.printStackTrace();
                } catch (Exception e13) {
                    e13.printStackTrace();
                }
            }
            return null;
        }

        public void e(InputStream... certificates) {
            f(certificates, null, null);
        }

        public void f(InputStream[] certificates, InputStream bksFile, String password) {
            try {
                TrustManager[] trustManagerArrD = d(certificates);
                KeyManager[] keyManagerArrC = c(bksFile, password);
                SSLContext sSLContext = SSLContext.getInstance(SSLConnectionSocketFactory.TLS);
                sSLContext.init(keyManagerArrC, new TrustManager[]{new a(b(trustManagerArrD))}, new SecureRandom());
                d.this.f34550a.newBuilder().sslSocketFactory(sSLContext.getSocketFactory());
            } catch (KeyManagementException e10) {
                e10.printStackTrace();
            } catch (KeyStoreException e11) {
                e11.printStackTrace();
            } catch (NoSuchAlgorithmException e12) {
                e12.printStackTrace();
            }
        }
    }

    public static class m {

        public static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            int f34594a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            int f34595b;

            public a() {
            }

            public String toString() {
                return "ImageSize{width=" + this.f34594a + ", height=" + this.f34595b + '}';
            }

            public a(int width, int height) {
                this.f34594a = width;
                this.f34595b = height;
            }
        }

        public static int a(a srcSize, a targetSize) {
            int i10 = srcSize.f34594a;
            int i11 = srcSize.f34595b;
            int i12 = targetSize.f34594a;
            int i13 = targetSize.f34595b;
            if (i10 <= i12 || i11 <= i13) {
                return 1;
            }
            return Math.max(Math.round(i10 / i12), Math.round(i11 / i13));
        }

        private static int b(View view) {
            int iE = 0;
            if (view == null) {
                return 0;
            }
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams != null && layoutParams.height != -2) {
                iE = view.getWidth();
            }
            if (iE <= 0 && layoutParams != null) {
                iE = layoutParams.height;
            }
            if (iE <= 0) {
                iE = e(view, "mMaxHeight");
            }
            return iE <= 0 ? view.getContext().getResources().getDisplayMetrics().heightPixels : iE;
        }

        private static int c(View view) {
            int iE = 0;
            if (view == null) {
                return 0;
            }
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams != null && layoutParams.width != -2) {
                iE = view.getWidth();
            }
            if (iE <= 0 && layoutParams != null) {
                iE = layoutParams.width;
            }
            if (iE <= 0) {
                iE = e(view, "mMaxWidth");
            }
            return iE <= 0 ? view.getContext().getResources().getDisplayMetrics().widthPixels : iE;
        }

        public static a d(InputStream imageStream) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeStream(imageStream, null, options);
            return new a(options.outWidth, options.outHeight);
        }

        private static int e(Object object, String fieldName) {
            try {
                Field declaredField = ImageView.class.getDeclaredField(fieldName);
                declaredField.setAccessible(true);
                int i10 = declaredField.getInt(object);
                if (i10 <= 0 || i10 >= Integer.MAX_VALUE) {
                    return 0;
                }
                return i10;
            } catch (Exception unused) {
                return 0;
            }
        }

        public static a f(View view) {
            a aVar = new a();
            aVar.f34594a = c(view);
            aVar.f34595b = b(view);
            return aVar;
        }
    }

    public static class n {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f34596a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f34597b;

        public n() {
        }

        public n(String key, String value) {
            this.f34596a = key;
            this.f34597b = value;
        }
    }

    public class o {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final MediaType f34598a = MediaType.parse("application/octet-stream;charset=utf-8");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final MediaType f34599b = MediaType.parse("text/plain;charset=utf-8");

        public o() {
        }

        private Request a(String url, RequestBody body, Object tag) {
            Request.Builder builderPost = new Request.Builder().url(url).post(body);
            if (tag != null) {
                builderPost.tag(tag);
            }
            return builderPost.build();
        }

        public Response b(String url, File bodyFile) throws IOException {
            return c(url, bodyFile, null);
        }

        public Response c(String url, File bodyFile, Object tag) throws IOException {
            return d.this.f34550a.newCall(a(url, RequestBody.create(this.f34598a, bodyFile), tag)).execute();
        }

        public Response d(String url, String bodyStr) throws IOException {
            return e(url, bodyStr, null);
        }

        public Response e(String url, String bodyStr, Object tag) throws IOException {
            return d.this.f34550a.newCall(a(url, RequestBody.create(this.f34599b, bodyStr), tag)).execute();
        }

        public Response f(String url, byte[] bodyBytes) throws IOException {
            return g(url, bodyBytes, null);
        }

        public Response g(String url, byte[] bodyBytes, Object tag) throws IOException {
            return d.this.f34550a.newCall(a(url, RequestBody.create(this.f34598a, bodyBytes), tag)).execute();
        }

        public Response h(String url, n[] params) throws IOException {
            return i(url, params, null);
        }

        public Response i(String url, n[] params, Object tag) throws IOException {
            return d.this.f34550a.newCall(d.this.s(url, params, tag)).execute();
        }

        public String j(String url, n[] params) throws IOException {
            return k(url, params, null);
        }

        public String k(String url, n[] params, Object tag) throws IOException {
            return i(url, params, tag).body().string();
        }

        public void l(String url, File bodyFile, final p callback) {
            m(url, bodyFile, callback, null);
        }

        public void m(String url, File bodyFile, final p callback, Object tag) {
            w(url, bodyFile, MediaType.parse("application/octet-stream;charset=utf-8"), callback, tag);
        }

        public void n(String url, String bodyStr, final p callback) {
            o(url, bodyStr, callback, null);
        }

        public void o(String url, String bodyStr, final p callback, Object tag) {
            x(url, bodyStr, MediaType.parse("application/json;charset=utf-8"), callback, tag);
        }

        public void p(String url, Map<String, String> params, final p callback) {
            q(url, params, callback, null);
        }

        public void q(String url, Map<String, String> params, final p callback, Object tag) {
            u(url, d.this.M(params), callback, tag);
        }

        public void r(String url, byte[] bodyBytes, final p callback) {
            s(url, bodyBytes, callback, null);
        }

        public void s(String url, byte[] bodyBytes, final p callback, Object tag) {
            y(url, bodyBytes, MediaType.parse("application/octet-stream;charset=utf-8"), callback, tag);
        }

        public void t(String url, n[] params, final p callback) {
            u(url, params, callback, null);
        }

        public void u(String url, n[] params, final p callback, Object tag) {
            d.this.w(callback, d.this.s(url, params, tag));
        }

        public void v(String url, JsonObject bodyStr, final p callback, Object tag) {
            MultipartBody.Builder type = new MultipartBody.Builder().setType(MultipartBody.FORM);
            Iterator<String> it2 = bodyStr.keySet().iterator();
            while (it2.hasNext()) {
                String string = it2.next().toString();
                type.addFormDataPart(string, bodyStr.get(string).getAsString());
            }
            d.this.w(callback, a(url, type.build(), tag));
        }

        public void w(String url, File bodyFile, MediaType type, final p callback, Object tag) {
            d.this.w(callback, a(url, RequestBody.create(type, bodyFile), tag));
        }

        public void x(String url, String bodyStr, MediaType type, final p callback, Object tag) {
            d.this.w(callback, a(url, RequestBody.create(type, bodyStr), tag));
        }

        public void y(String url, byte[] bodyBytes, MediaType type, final p callback, Object tag) {
            d.this.w(callback, a(url, RequestBody.create(type, bodyBytes), tag));
        }
    }

    public static abstract class p<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Type f34601a = a(getClass());

        static Type a(Class<?> subclass) {
            Type genericSuperclass = subclass.getGenericSuperclass();
            if (genericSuperclass instanceof Class) {
                throw new RuntimeException("Missing type parameter.");
            }
            return ((ParameterizedType) genericSuperclass).getActualTypeArguments()[0];
        }

        public void b() {
        }

        public void c(Request request) {
        }

        public abstract void d(Request request, Exception e10);

        public abstract void e(T response);
    }

    public class q {
        public q() {
        }

        private Request a(String url, File[] files, String[] fileKeys, n[] params, Object tag) {
            n[] nVarArrX = d.this.X(params);
            MultipartBody.Builder type = new MultipartBody.Builder().setType(MultipartBody.FORM);
            for (n nVar : nVarArrX) {
                type.addPart(Headers.of(com.sigmob.sdk.downloader.core.c.f80446j, "form-data; name=\"" + nVar.f34596a + x.a.f97579g), RequestBody.create((MediaType) null, nVar.f34597b));
            }
            if (files != null) {
                for (int i10 = 0; i10 < files.length; i10++) {
                    File file = files[i10];
                    String name = file.getName();
                    type.addPart(Headers.of(com.sigmob.sdk.downloader.core.c.f80446j, "form-data; name=\"" + fileKeys[i10] + "\"; filename=\"" + name + x.a.f97579g), RequestBody.create(MediaType.parse(d.this.J(name)), file));
                }
            }
            return new Request.Builder().url(url).post(type.build()).tag(tag).build();
        }

        public Response b(String url, String fileKey, File file, Object tag) throws IOException {
            return d(url, new String[]{fileKey}, new File[]{file}, null, tag);
        }

        public Response c(String url, String fileKey, File file, n[] params, Object tag) throws IOException {
            return d(url, new String[]{fileKey}, new File[]{file}, params, tag);
        }

        public Response d(String url, String[] fileKeys, File[] files, n[] params, Object tag) throws IOException {
            return d.this.f34550a.newCall(a(url, files, fileKeys, params, tag)).execute();
        }

        public void e(String url, String fileKey, File file, p callback, Object tag) throws IOException {
            g(url, new String[]{fileKey}, new File[]{file}, null, callback, tag);
        }

        public void f(String url, String fileKey, File file, n[] params, p callback, Object tag) {
            g(url, new String[]{fileKey}, new File[]{file}, params, callback, tag);
        }

        public void g(String url, String[] fileKeys, File[] files, n[] params, p callback, Object tag) {
            d.this.w(callback, a(url, files, fileKeys, params, tag));
        }
    }

    private d() {
        L();
        this.f34551b = new Handler(Looper.getMainLooper());
        this.f34552c = JsonMapper.getInstance();
    }

    public static i A() {
        return G().b();
    }

    public static j B() {
        return G().c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Class<?>[] C(Type type) {
        Class<?>[] clsArr = new Class[1];
        try {
            if (!(type instanceof ParameterizedType)) {
                String string = type.toString();
                if (string.startsWith("class ")) {
                    string = string.replace("class ", "");
                } else if (string.startsWith("interface ")) {
                    string = string.replace("interface ", "");
                }
                clsArr[0] = Class.forName(string);
                return clsArr;
            }
            ParameterizedType parameterizedType = (ParameterizedType) type;
            Type type2 = parameterizedType.getActualTypeArguments()[0];
            String string2 = parameterizedType.getRawType().toString();
            if (string2.startsWith("class ")) {
                string2 = string2.replace("class ", "");
            } else if (string2.startsWith("interface ")) {
                string2 = string2.replace("interface ", "");
            }
            clsArr[0] = Class.forName(string2);
            return v(clsArr, C(type2));
        } catch (ClassNotFoundException e10) {
            e10.printStackTrace();
            return clsArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String D(String path) {
        int iLastIndexOf = path.lastIndexOf(net.lingala.zip4j.util.e.F0);
        return iLastIndexOf < 0 ? path : path.substring(iLastIndexOf + 1, path.length());
    }

    public static l F() {
        return G().d();
    }

    public static d G() {
        if (f34549l == null) {
            synchronized (d.class) {
                if (f34549l == null) {
                    f34549l = new d();
                }
            }
        }
        return f34549l;
    }

    public static q I() {
        return G().e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String J(String path) {
        String contentTypeFor = URLConnection.getFileNameMap().getContentTypeFor(path);
        return contentTypeFor == null ? "application/octet-stream" : contentTypeFor;
    }

    private void K() {
    }

    private void L() {
        OkHttpClient.Builder builderV = V(new OkHttpClient.Builder());
        builderV.hostnameVerifier(new a());
        this.f34550a = builderV.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public n[] M(Map<String, String> params) {
        int i10 = 0;
        if (params == null) {
            return new n[0];
        }
        n[] nVarArr = new n[params.size()];
        for (Map.Entry<String, String> entry : params.entrySet()) {
            nVarArr[i10] = new n(entry.getKey(), entry.getValue());
            i10++;
        }
        return nVarArr;
    }

    public static void N(String url, String bodyStr, final p callback) {
        G().H().o(url, bodyStr, callback, null);
    }

    public static void O(String url, String bodyStr, final p callback, Object tag) {
        G().H().o(url, bodyStr, callback, tag);
    }

    public static void P(String url, Map<String, String> params, final p callback) {
        G().H().q(url, params, callback, null);
    }

    public static void Q(String url, Map<String, String> params, final p callback, Object tag) {
        G().H().q(url, params, callback, tag);
    }

    public static void R(String url, n[] params, final p callback) {
        G().H().u(url, params, callback, null);
    }

    public static void S(String url, n[] params, final p callback, Object tag) {
        G().H().u(url, params, callback, tag);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void T(final Request request, final Exception e10, final p callback) {
        this.f34551b.post(new f(callback, request, e10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void U(final Object object, final p callback) {
        this.f34551b.post(new g(callback, object));
    }

    private OkHttpClient.Builder V(OkHttpClient.Builder builder) {
        return builder.cookieJar(new C0637d());
    }

    public static OkHttpClient W() throws Exception {
        b bVar = new b();
        SSLContext sSLContext = SSLContext.getInstance(SSLConnectionSocketFactory.SSL);
        sSLContext.init(null, new TrustManager[]{bVar}, new SecureRandom());
        return new OkHttpClient.Builder().sslSocketFactory(sSLContext.getSocketFactory(), bVar).hostnameVerifier(new c()).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public n[] X(n[] params) {
        return params == null ? new n[0] : params;
    }

    private void a(Object tag) {
        Dispatcher dispatcher = this.f34550a.dispatcher();
        synchronized (dispatcher) {
            for (Call call : dispatcher.queuedCalls()) {
                if (tag.equals(call.request().tag())) {
                    call.cancel();
                }
            }
            for (Call call2 : dispatcher.runningCalls()) {
                if (tag.equals(call2.request().tag())) {
                    call2.cancel();
                }
            }
        }
    }

    private i b() {
        return this.f34555f;
    }

    private j c() {
        return this.f34554e;
    }

    private l d() {
        return this.f34553d;
    }

    private q e() {
        return this.f34557h;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Request s(String url, n[] params, Object tag) {
        if (params == null) {
            params = new n[0];
        }
        FormBody.Builder builder = new FormBody.Builder();
        for (n nVar : params) {
            try {
                builder.add(nVar.f34596a, nVar.f34597b);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        FormBody formBodyBuild = builder.build();
        Request.Builder builder2 = new Request.Builder();
        builder2.url(url).post(formBodyBuild);
        if (tag != null) {
            builder2.tag(tag);
        }
        return builder2.build();
    }

    public static void t(Object tag) {
        G().a(tag);
    }

    private Class<?>[] v(Class<?>[] a10, Class<?>[] b10) {
        Class<?>[] clsArr = new Class[a10.length + b10.length];
        System.arraycopy(a10, 0, clsArr, 0, a10.length);
        System.arraycopy(b10, 0, clsArr, a10.length, b10.length);
        return clsArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w(p callback, Request request) {
        if (callback == null) {
            callback = this.f34559j;
        }
        callback.c(request);
        this.f34550a.newCall(request).enqueue(new e(callback));
    }

    public static void x(String url, p callback) {
        G().E().h(url, callback, null);
    }

    public static void y(String url, p callback, Object tag) {
        G().E().h(url, callback, tag);
    }

    public static OkHttpClient z() {
        return G().u();
    }

    public k E() {
        return this.f34556g;
    }

    public o H() {
        return this.f34558i;
    }

    public OkHttpClient u() {
        return this.f34550a;
    }
}

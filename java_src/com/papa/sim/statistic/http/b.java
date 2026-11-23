package com.papa.sim.statistic.http;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.join.mgps.Util.q2;
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

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final String f77220r = "OkHttpClientManager";

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static b f77221s;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private OkHttpClient f77222a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Handler f77223b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private JsonMapper f77224c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private l f77225d = new l();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private j f77226e = new j();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private i f77227f = new i();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private k f77228g = new k();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private q f77229h = new q();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private o f77230i = new o();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    String f77231j = "";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    String f77232k = "";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    String f77233l = "";

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    String f77234m = "";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    String f77235n = "";

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    String f77236o = "";

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    String f77237p = "";

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final p<String> f77238q = new h();

    class a implements HostnameVerifier {
        a() {
        }

        @Override // javax.net.ssl.HostnameVerifier
        public boolean verify(String str, SSLSession sSLSession) {
            return true;
        }
    }

    /* JADX INFO: renamed from: com.papa.sim.statistic.http.b$b, reason: collision with other inner class name */
    class C0996b implements X509TrustManager {
        C0996b() {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
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
        public boolean verify(String str, SSLSession sSLSession) {
            return true;
        }
    }

    class d implements CookieJar {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final HashMap<HttpUrl, List<Cookie>> f77240a = new HashMap<>();

        d() {
        }

        @Override // okhttp3.CookieJar
        public List<Cookie> loadForRequest(HttpUrl httpUrl) {
            List<Cookie> list = this.f77240a.get(httpUrl);
            return list != null ? list : new ArrayList();
        }

        @Override // okhttp3.CookieJar
        public void saveFromResponse(HttpUrl httpUrl, List<Cookie> list) {
            this.f77240a.put(httpUrl, list);
        }
    }

    class e implements Callback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ p f77242a;

        e(p pVar) {
            this.f77242a = pVar;
        }

        public void a(Request request, IOException iOException) {
            b.this.a0(request, iOException, this.f77242a);
        }

        public void b(Response response) {
            try {
                String strString = response.body().string();
                p pVar = this.f77242a;
                Type type = pVar.f77280a;
                if (type == String.class) {
                    b.this.b0(strString, pVar);
                } else if (type instanceof ParameterizedType) {
                    Class<?>[] clsArrC = b.this.C(type);
                    int length = clsArrC.length - 1;
                    Class<?>[] clsArr = new Class[length];
                    System.arraycopy(clsArrC, 1, clsArr, 0, length);
                    b.this.b0(b.this.f77224c.fromJson(strString, b.this.f77224c.createCollectionType(clsArrC[0], clsArr)), this.f77242a);
                } else {
                    b.this.b0(b.this.f77224c.fromJson(strString, Class.forName(type.toString().replace("class ", ""))), this.f77242a);
                }
            } catch (Exception e10) {
                b.this.a0(response.request(), e10, this.f77242a);
            }
        }

        @Override // okhttp3.Callback
        public void onFailure(Call call, IOException iOException) {
            a(call.request(), iOException);
        }

        @Override // okhttp3.Callback
        public void onResponse(Call call, Response response) throws IOException {
            b(response);
        }
    }

    class f implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ p f77244b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Request f77245c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ Exception f77246d;

        f(p pVar, Request request, Exception exc) {
            this.f77244b = pVar;
            this.f77245c = request;
            this.f77246d = exc;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f77244b.d(this.f77245c, this.f77246d);
            this.f77244b.b();
        }
    }

    class g implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ p f77248b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Object f77249c;

        g(p pVar, Object obj) {
            this.f77248b = pVar;
            this.f77249c = obj;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f77248b.e(this.f77249c);
            this.f77248b.b();
        }
    }

    class h extends p<String> {
        h() {
        }

        @Override // com.papa.sim.statistic.http.b.p
        public void d(Request request, Exception exc) {
        }

        @Override // com.papa.sim.statistic.http.b.p
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void e(String str) {
        }
    }

    public class i {

        class a implements Callback {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ ImageView f77253a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ int f77254b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ String f77255c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ Object f77256d;

            /* JADX INFO: renamed from: com.papa.sim.statistic.http.b$i$a$a, reason: collision with other inner class name */
            class RunnableC0997a implements Runnable {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                final /* synthetic */ Bitmap f77258b;

                RunnableC0997a(Bitmap bitmap) {
                    this.f77258b = bitmap;
                }

                @Override // java.lang.Runnable
                public void run() {
                    a.this.f77253a.setImageBitmap(this.f77258b);
                }
            }

            a(ImageView imageView, int i10, String str, Object obj) {
                this.f77253a = imageView;
                this.f77254b = i10;
                this.f77255c = str;
                this.f77256d = obj;
            }

            public void a(Request request, IOException iOException) {
                i.this.e(this.f77253a, this.f77254b);
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
                                int iA = m.a(m.d(inputStreamByteStream), m.f(this.f77253a));
                                try {
                                    inputStreamByteStream.reset();
                                } catch (IOException unused) {
                                    inputStreamByteStream = b.this.f77228g.c(this.f77255c, this.f77256d).body().byteStream();
                                }
                                BitmapFactory.Options options = new BitmapFactory.Options();
                                options.inJustDecodeBounds = false;
                                options.inSampleSize = iA;
                                b.this.f77223b.post(new RunnableC0997a(BitmapFactory.decodeStream(inputStreamByteStream, null, options)));
                                if (inputStreamByteStream != null) {
                                    inputStreamByteStream.close();
                                }
                            } catch (Exception unused2) {
                                inputStream = inputStreamByteStream;
                                i.this.e(this.f77253a, this.f77254b);
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
            public void onFailure(Call call, IOException iOException) {
                a(call.request(), iOException);
            }

            @Override // okhttp3.Callback
            public void onResponse(Call call, Response response) throws Throwable {
                b(response);
            }
        }

        /* JADX INFO: renamed from: com.papa.sim.statistic.http.b$i$b, reason: collision with other inner class name */
        class RunnableC0998b implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ ImageView f77260b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ int f77261c;

            RunnableC0998b(ImageView imageView, int i10) {
                this.f77260b = imageView;
                this.f77261c = i10;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f77260b.setImageResource(this.f77261c);
            }
        }

        public i() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void e(ImageView imageView, int i10) {
            b.this.f77223b.post(new RunnableC0998b(imageView, i10));
        }

        public void b(ImageView imageView, String str) {
            c(imageView, str, -1, null);
        }

        public void c(ImageView imageView, String str, int i10, Object obj) {
            b.this.f77222a.newCall(new Request.Builder().url(str).build()).enqueue(new a(imageView, i10, str, obj));
        }

        public void d(ImageView imageView, String str, Object obj) {
            c(imageView, str, -1, obj);
        }
    }

    public class j {

        class a implements Callback {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ p f77264a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ String f77265b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ String f77266c;

            a(p pVar, String str, String str2) {
                this.f77264a = pVar;
                this.f77265b = str;
                this.f77266c = str2;
            }

            public void a(Request request, IOException iOException) {
                b.this.a0(request, iOException, this.f77264a);
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
                        File file = new File(this.f77265b);
                        if (!file.exists()) {
                            file.mkdirs();
                        }
                        File file2 = new File(file, b.this.D(this.f77266c));
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
                                    b.this.a0(response.request(), e, this.f77264a);
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
                        b.this.b0(file2.getAbsolutePath(), this.f77264a);
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
            public void onFailure(Call call, IOException iOException) {
                a(call.request(), iOException);
            }

            @Override // okhttp3.Callback
            public void onResponse(Call call, Response response) throws Throwable {
                b(response);
            }
        }

        public j() {
        }

        public void a(String str, String str2, p pVar) {
            b(str, str2, pVar, null);
        }

        public void b(String str, String str2, p pVar, Object obj) {
            b.this.f77222a.newCall(new Request.Builder().url(str).tag(obj).build()).enqueue(new a(pVar, str2, str));
        }
    }

    public class k {
        public k() {
        }

        private Request a(String str, Object obj) {
            Request.Builder builderUrl = new Request.Builder().url(str);
            if (obj != null) {
                builderUrl.tag(obj);
            }
            return builderUrl.build();
        }

        public Response b(String str) throws IOException {
            return c(str, null);
        }

        public Response c(String str, Object obj) throws IOException {
            return d(a(str, obj));
        }

        public Response d(Request request) throws IOException {
            return b.this.f77222a.newCall(request).execute();
        }

        public String e(String str) throws IOException {
            return f(str, null);
        }

        public String f(String str, Object obj) throws IOException {
            return c(str, obj).body().string();
        }

        public void g(String str, p pVar) {
            h(str, pVar, null);
        }

        public void h(String str, p pVar, Object obj) {
            i(a(str, obj), pVar);
        }

        public void i(Request request, p pVar) {
            b.this.w(pVar, request);
        }
    }

    public class l {

        public class a implements X509TrustManager {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private X509TrustManager f77270a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private X509TrustManager f77271b;

            public a(X509TrustManager x509TrustManager) throws NoSuchAlgorithmException, KeyStoreException {
                TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
                trustManagerFactory.init((KeyStore) null);
                this.f77270a = l.this.b(trustManagerFactory.getTrustManagers());
                this.f77271b = x509TrustManager;
            }

            @Override // javax.net.ssl.X509TrustManager
            public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
            }

            @Override // javax.net.ssl.X509TrustManager
            public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
                try {
                    this.f77270a.checkServerTrusted(x509CertificateArr, str);
                } catch (CertificateException unused) {
                    this.f77271b.checkServerTrusted(x509CertificateArr, str);
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
        public X509TrustManager b(TrustManager[] trustManagerArr) {
            for (TrustManager trustManager : trustManagerArr) {
                if (trustManager instanceof X509TrustManager) {
                    return (X509TrustManager) trustManager;
                }
            }
            return null;
        }

        public KeyManager[] c(InputStream inputStream, String str) {
            if (inputStream != null && str != null) {
                try {
                    KeyStore keyStore = KeyStore.getInstance("BKS");
                    keyStore.load(inputStream, str.toCharArray());
                    KeyManagerFactory keyManagerFactory = KeyManagerFactory.getInstance(KeyManagerFactory.getDefaultAlgorithm());
                    keyManagerFactory.init(keyStore, str.toCharArray());
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

        public TrustManager[] d(InputStream... inputStreamArr) {
            if (inputStreamArr != null && inputStreamArr.length > 0) {
                try {
                    CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
                    KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
                    keyStore.load(null);
                    int length = inputStreamArr.length;
                    int i10 = 0;
                    int i11 = 0;
                    while (i10 < length) {
                        InputStream inputStream = inputStreamArr[i10];
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

        public void e(InputStream... inputStreamArr) {
            f(inputStreamArr, null, null);
        }

        public void f(InputStream[] inputStreamArr, InputStream inputStream, String str) {
            try {
                TrustManager[] trustManagerArrD = d(inputStreamArr);
                KeyManager[] keyManagerArrC = c(inputStream, str);
                SSLContext sSLContext = SSLContext.getInstance(SSLConnectionSocketFactory.TLS);
                sSLContext.init(keyManagerArrC, new TrustManager[]{new a(b(trustManagerArrD))}, new SecureRandom());
                b.this.f77222a.newBuilder().sslSocketFactory(sSLContext.getSocketFactory());
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
            int f77273a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            int f77274b;

            public a() {
            }

            public String toString() {
                return "ImageSize{width=" + this.f77273a + ", height=" + this.f77274b + '}';
            }

            public a(int i10, int i11) {
                this.f77273a = i10;
                this.f77274b = i11;
            }
        }

        public static int a(a aVar, a aVar2) {
            int i10 = aVar.f77273a;
            int i11 = aVar.f77274b;
            int i12 = aVar2.f77273a;
            int i13 = aVar2.f77274b;
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

        public static a d(InputStream inputStream) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeStream(inputStream, null, options);
            return new a(options.outWidth, options.outHeight);
        }

        private static int e(Object obj, String str) {
            try {
                Field declaredField = ImageView.class.getDeclaredField(str);
                declaredField.setAccessible(true);
                int i10 = declaredField.getInt(obj);
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
            aVar.f77273a = c(view);
            aVar.f77274b = b(view);
            return aVar;
        }
    }

    public static class n {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f77275a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f77276b;

        public n() {
        }

        public n(String str, String str2) {
            this.f77275a = str;
            this.f77276b = str2;
        }
    }

    public class o {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final MediaType f77277a = MediaType.parse("application/octet-stream;charset=utf-8");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final MediaType f77278b = MediaType.parse("text/plain;charset=utf-8");

        public o() {
        }

        private Request a(String str, RequestBody requestBody, Object obj) {
            Request.Builder builderPost = new Request.Builder().header("wufankey", b.this.P()).header("wf-d", b.this.L()).header("wf-a", b.this.J()).header("wf-ad", b.this.K()).header("wf-m", b.this.N()).header("wf-i", b.this.M()).header("wf-pm", b.this.O()).url(str).post(requestBody);
            if (obj != null) {
                builderPost.tag(obj);
            }
            return builderPost.build();
        }

        public Response b(String str, File file) throws IOException {
            return c(str, file, null);
        }

        public Response c(String str, File file, Object obj) throws IOException {
            return b.this.f77222a.newCall(a(str, RequestBody.create(this.f77277a, file), obj)).execute();
        }

        public Response d(String str, String str2) throws IOException {
            return e(str, str2, null);
        }

        public Response e(String str, String str2, Object obj) throws IOException {
            return b.this.f77222a.newCall(a(str, RequestBody.create(this.f77278b, str2), obj)).execute();
        }

        public Response f(String str, byte[] bArr) throws IOException {
            return g(str, bArr, null);
        }

        public Response g(String str, byte[] bArr, Object obj) throws IOException {
            return b.this.f77222a.newCall(a(str, RequestBody.create(this.f77277a, bArr), obj)).execute();
        }

        public Response h(String str, n[] nVarArr) throws IOException {
            return i(str, nVarArr, null);
        }

        public Response i(String str, n[] nVarArr, Object obj) throws IOException {
            return b.this.f77222a.newCall(b.this.s(str, nVarArr, obj)).execute();
        }

        public String j(String str, n[] nVarArr) throws IOException {
            return k(str, nVarArr, null);
        }

        public String k(String str, n[] nVarArr, Object obj) throws IOException {
            return i(str, nVarArr, obj).body().string();
        }

        public void l(String str, File file, p pVar) {
            m(str, file, pVar, null);
        }

        public void m(String str, File file, p pVar, Object obj) {
            v(str, file, MediaType.parse("application/octet-stream;charset=utf-8"), pVar, obj);
        }

        public void n(String str, String str2, p pVar) {
            o(str, str2, pVar, null);
        }

        public void o(String str, String str2, p pVar, Object obj) {
            w(str, str2, MediaType.parse("application/json;charset=utf-8"), pVar, obj);
        }

        public void p(String str, Map<String, String> map, p pVar) {
            q(str, map, pVar, null);
        }

        public void q(String str, Map<String, String> map, p pVar, Object obj) {
            u(str, b.this.T(map), pVar, obj);
        }

        public void r(String str, byte[] bArr, p pVar) {
            s(str, bArr, pVar, null);
        }

        public void s(String str, byte[] bArr, p pVar, Object obj) {
            x(str, bArr, MediaType.parse("application/octet-stream;charset=utf-8"), pVar, obj);
        }

        public void t(String str, n[] nVarArr, p pVar) {
            u(str, nVarArr, pVar, null);
        }

        public void u(String str, n[] nVarArr, p pVar, Object obj) {
            b.this.w(pVar, b.this.s(str, nVarArr, obj));
        }

        public void v(String str, File file, MediaType mediaType, p pVar, Object obj) {
            b.this.w(pVar, a(str, RequestBody.create(mediaType, file), obj));
        }

        public void w(String str, String str2, MediaType mediaType, p pVar, Object obj) {
            b.this.w(pVar, a(str, RequestBody.create(mediaType, str2), obj));
        }

        public void x(String str, byte[] bArr, MediaType mediaType, p pVar, Object obj) {
            b.this.w(pVar, a(str, RequestBody.create(mediaType, bArr), obj));
        }
    }

    public static abstract class p<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Type f77280a = a(getClass());

        static Type a(Class<?> cls) {
            Type genericSuperclass = cls.getGenericSuperclass();
            if (genericSuperclass instanceof Class) {
                throw new RuntimeException("Missing type parameter.");
            }
            return ((ParameterizedType) genericSuperclass).getActualTypeArguments()[0];
        }

        public void b() {
        }

        public void c(Request request) {
        }

        public abstract void d(Request request, Exception exc);

        public abstract void e(T t10);
    }

    public class q {
        public q() {
        }

        private Request a(String str, File[] fileArr, String[] strArr, n[] nVarArr, Object obj) {
            n[] nVarArrM0 = b.this.m0(nVarArr);
            MultipartBody.Builder type = new MultipartBody.Builder().setType(MultipartBody.FORM);
            for (n nVar : nVarArrM0) {
                type.addPart(Headers.of(com.sigmob.sdk.downloader.core.c.f80446j, "form-data; name=\"" + nVar.f77275a + x.a.f97579g), RequestBody.create((MediaType) null, nVar.f77276b));
            }
            if (fileArr != null) {
                for (int i10 = 0; i10 < fileArr.length; i10++) {
                    File file = fileArr[i10];
                    String name = file.getName();
                    type.addPart(Headers.of(com.sigmob.sdk.downloader.core.c.f80446j, "form-data; name=\"" + strArr[i10] + "\"; filename=\"" + name + x.a.f97579g), RequestBody.create(MediaType.parse(b.this.Q(name)), file));
                }
            }
            return new Request.Builder().url(str).post(type.build()).tag(obj).build();
        }

        public Response b(String str, String str2, File file, Object obj) throws IOException {
            return d(str, new String[]{str2}, new File[]{file}, null, obj);
        }

        public Response c(String str, String str2, File file, n[] nVarArr, Object obj) throws IOException {
            return d(str, new String[]{str2}, new File[]{file}, nVarArr, obj);
        }

        public Response d(String str, String[] strArr, File[] fileArr, n[] nVarArr, Object obj) throws IOException {
            return b.this.f77222a.newCall(a(str, fileArr, strArr, nVarArr, obj)).execute();
        }

        public void e(String str, String str2, File file, p pVar, Object obj) throws IOException {
            g(str, new String[]{str2}, new File[]{file}, null, pVar, obj);
        }

        public void f(String str, String str2, File file, n[] nVarArr, p pVar, Object obj) {
            g(str, new String[]{str2}, new File[]{file}, nVarArr, pVar, obj);
        }

        public void g(String str, String[] strArr, File[] fileArr, n[] nVarArr, p pVar, Object obj) {
            b.this.w(pVar, a(str, fileArr, strArr, nVarArr, obj));
        }
    }

    private b() {
        S();
        this.f77223b = new Handler(Looper.getMainLooper());
        this.f77224c = JsonMapper.getInstance();
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
    public String D(String str) {
        int iLastIndexOf = str.lastIndexOf(net.lingala.zip4j.util.e.F0);
        return iLastIndexOf < 0 ? str : str.substring(iLastIndexOf + 1, str.length());
    }

    public static l F() {
        return G().d();
    }

    public static b G() {
        if (f77221s == null) {
            synchronized (b.class) {
                if (f77221s == null) {
                    f77221s = new b();
                }
            }
        }
        return f77221s;
    }

    public static q I() {
        return G().e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String Q(String str) {
        String contentTypeFor = URLConnection.getFileNameMap().getContentTypeFor(str);
        return contentTypeFor == null ? "application/octet-stream" : contentTypeFor;
    }

    private void R() {
    }

    private void S() {
        OkHttpClient.Builder builderA = q2.a(c0(new OkHttpClient.Builder()));
        builderA.hostnameVerifier(new a());
        this.f77222a = builderA.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public n[] T(Map<String, String> map) {
        int i10 = 0;
        if (map == null) {
            return new n[0];
        }
        n[] nVarArr = new n[map.size()];
        for (Map.Entry<String, String> entry : map.entrySet()) {
            nVarArr[i10] = new n(entry.getKey(), entry.getValue());
            i10++;
        }
        return nVarArr;
    }

    public static void U(String str, String str2, p pVar) {
        G().H().o(str, str2, pVar, null);
    }

    public static void V(String str, String str2, p pVar, Object obj) {
        G().H().o(str, str2, pVar, obj);
    }

    public static void W(String str, Map<String, String> map, p pVar) {
        G().H().q(str, map, pVar, null);
    }

    public static void X(String str, Map<String, String> map, p pVar, Object obj) {
        G().H().q(str, map, pVar, obj);
    }

    public static void Y(String str, n[] nVarArr, p pVar) {
        G().H().u(str, nVarArr, pVar, null);
    }

    public static void Z(String str, n[] nVarArr, p pVar, Object obj) {
        G().H().u(str, nVarArr, pVar, obj);
    }

    private void a(Object obj) {
        Dispatcher dispatcher = this.f77222a.dispatcher();
        synchronized (dispatcher) {
            for (Call call : dispatcher.queuedCalls()) {
                if (obj.equals(call.request().tag())) {
                    call.cancel();
                }
            }
            for (Call call2 : dispatcher.runningCalls()) {
                if (obj.equals(call2.request().tag())) {
                    call2.cancel();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a0(Request request, Exception exc, p pVar) {
        this.f77223b.post(new f(pVar, request, exc));
    }

    private i b() {
        return this.f77227f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b0(Object obj, p pVar) {
        this.f77223b.post(new g(pVar, obj));
    }

    private j c() {
        return this.f77226e;
    }

    private OkHttpClient.Builder c0(OkHttpClient.Builder builder) {
        return builder.cookieJar(new d());
    }

    private l d() {
        return this.f77225d;
    }

    private q e() {
        return this.f77229h;
    }

    public static OkHttpClient e0() throws Exception {
        C0996b c0996b = new C0996b();
        SSLContext sSLContext = SSLContext.getInstance(SSLConnectionSocketFactory.SSL);
        sSLContext.init(null, new TrustManager[]{c0996b}, new SecureRandom());
        return new OkHttpClient.Builder().sslSocketFactory(sSLContext.getSocketFactory(), c0996b).hostnameVerifier(new c()).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public n[] m0(n[] nVarArr) {
        return nVarArr == null ? new n[0] : nVarArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Request s(String str, n[] nVarArr, Object obj) {
        if (nVarArr == null) {
            nVarArr = new n[0];
        }
        FormBody.Builder builder = new FormBody.Builder();
        for (n nVar : nVarArr) {
            try {
                builder.add(nVar.f77275a, nVar.f77276b);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        FormBody formBodyBuild = builder.build();
        Request.Builder builder2 = new Request.Builder();
        builder2.url(str).post(formBodyBuild);
        if (obj != null) {
            builder2.tag(obj);
        }
        return builder2.build();
    }

    public static void t(Object obj) {
        G().a(obj);
    }

    private Class<?>[] v(Class<?>[] clsArr, Class<?>[] clsArr2) {
        Class<?>[] clsArr3 = new Class[clsArr.length + clsArr2.length];
        System.arraycopy(clsArr, 0, clsArr3, 0, clsArr.length);
        System.arraycopy(clsArr2, 0, clsArr3, clsArr.length, clsArr2.length);
        return clsArr3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w(p pVar, Request request) {
        if (pVar == null) {
            pVar = this.f77238q;
        }
        pVar.c(request);
        this.f77222a.newCall(request).enqueue(new e(pVar));
    }

    public static void x(String str, p pVar) {
        G().E().h(str, pVar, null);
    }

    public static void y(String str, p pVar, Object obj) {
        G().E().h(str, pVar, obj);
    }

    public static OkHttpClient z() {
        return G().u();
    }

    public k E() {
        return this.f77228g;
    }

    public o H() {
        return this.f77230i;
    }

    public String J() {
        String str = this.f77233l;
        return str == null ? "" : str;
    }

    public String K() {
        String str = this.f77234m;
        return str == null ? "" : str;
    }

    public String L() {
        String str = this.f77232k;
        return str == null ? "" : str;
    }

    public String M() {
        String str = this.f77236o;
        return str == null ? "" : str;
    }

    public String N() {
        String str = this.f77235n;
        return str == null ? "" : str;
    }

    public String O() {
        String str = this.f77237p;
        return str == null ? "" : str;
    }

    public String P() {
        String str = this.f77231j;
        return str == null ? "" : str;
    }

    public void d0(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        this.f77231j = str;
        this.f77232k = str2;
        this.f77233l = str3;
        this.f77234m = str4;
        this.f77235n = str5;
        this.f77236o = str6;
        this.f77237p = str7;
    }

    public void f0(String str) {
        this.f77233l = str;
    }

    public void g0(String str) {
        this.f77234m = str;
    }

    public void h0(String str) {
        this.f77232k = str;
    }

    public void i0(String str) {
        this.f77236o = str;
    }

    public void j0(String str) {
        this.f77235n = str;
    }

    public void k0(String str) {
        this.f77237p = str;
    }

    public void l0(String str) {
        this.f77231j = str;
    }

    public OkHttpClient u() {
        return this.f77222a;
    }
}

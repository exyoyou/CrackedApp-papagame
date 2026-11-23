package com.baidu.mobads.sdk.internal;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class an {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f7426a = "OAdURLConnection";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f7427b = "POST";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f7428c = "GET";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f7429d = "application/json";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f7430e = "text/plain";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private HttpURLConnection f7431f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private bv f7432g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private b f7433h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private c f7434i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f7435j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f7436k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private String f7437l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private String f7438m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f7439n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f7440o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f7441p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Uri.Builder f7442q;

    class a extends j {
        a() {
        }

        @Override // com.baidu.mobads.sdk.internal.j
        public Object i() throws Throwable {
            an.this.e();
            an.this.f();
            return null;
        }
    }

    public interface b {
        void a(String str, int i10);

        void a(String str, String str2);
    }

    public interface c {
        void a(InputStream inputStream, String str);

        void a(String str, int i10);
    }

    public an(String str) {
        this(str, "GET");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() throws Throwable {
        if (TextUtils.isEmpty(this.f7435j) || !cs.a().f(this.f7435j)) {
            return;
        }
        try {
            HttpURLConnection httpURLConnectionA = cs.a().a(new URL(this.f7435j));
            this.f7431f = httpURLConnectionA;
            httpURLConnectionA.setConnectTimeout(this.f7439n);
            if (Integer.parseInt(bn.a((Context) null).b()) < 8) {
                System.setProperty("http.keepAlive", "false");
            }
            this.f7431f.setRequestMethod(this.f7436k);
            this.f7431f.setUseCaches(this.f7441p);
            if (!TextUtils.isEmpty(this.f7437l)) {
                this.f7431f.setRequestProperty("User-Agent", this.f7437l);
            }
            this.f7431f.setRequestProperty("Content-type", this.f7438m);
            this.f7431f.setRequestProperty("Connection", "keep-alive");
            this.f7431f.setRequestProperty("Cache-Control", "no-cache");
            if (this.f7436k.equals("POST")) {
                this.f7431f.setDoInput(true);
                this.f7431f.setDoOutput(true);
                Uri.Builder builder = this.f7442q;
                if (builder != null) {
                    a(builder.build().getEncodedQuery(), this.f7431f);
                }
            }
        } catch (Exception e10) {
            b bVar = this.f7433h;
            if (bVar != null) {
                bVar.a("Net Create RuntimeError: " + e10.toString(), 0);
            }
            c cVar = this.f7434i;
            if (cVar != null) {
                cVar.a("Net Create RuntimeError: " + e10.toString(), 0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        HttpURLConnection httpURLConnection;
        try {
            try {
                this.f7431f.connect();
                this.f7432g.a(f7426a, this.f7431f.getRequestMethod() + " connect code :" + this.f7431f.getResponseCode());
                int responseCode = this.f7431f.getResponseCode();
                if (responseCode == 302 || responseCode == 301) {
                    this.f7431f.setInstanceFollowRedirects(false);
                    HttpURLConnection httpURLConnectionA = a(this.f7431f);
                    this.f7431f = httpURLConnectionA;
                    responseCode = httpURLConnectionA.getResponseCode();
                }
                if (responseCode / 100 != 2) {
                    b bVar = this.f7433h;
                    if (bVar != null) {
                        bVar.a(this.f7431f.getResponseMessage(), responseCode);
                    }
                    c cVar = this.f7434i;
                    if (cVar != null) {
                        cVar.a(this.f7431f.getResponseMessage(), responseCode);
                    }
                } else {
                    String strG = cs.a().g(this.f7435j);
                    b bVar2 = this.f7433h;
                    if (bVar2 != null) {
                        bVar2.a(c(), strG);
                    }
                    c cVar2 = this.f7434i;
                    if (cVar2 != null) {
                        cVar2.a(this.f7431f.getInputStream(), strG);
                    }
                }
                httpURLConnection = this.f7431f;
                if (httpURLConnection == null) {
                    return;
                }
            } catch (Exception e10) {
                b bVar3 = this.f7433h;
                if (bVar3 != null) {
                    bVar3.a("Net Connect RuntimeError: " + e10.toString(), 0);
                }
                c cVar3 = this.f7434i;
                if (cVar3 != null) {
                    cVar3.a("Net Connect RuntimeError: " + e10.toString(), 0);
                }
                httpURLConnection = this.f7431f;
                if (httpURLConnection == null) {
                    return;
                }
            }
            httpURLConnection.disconnect();
        } catch (Throwable th) {
            HttpURLConnection httpURLConnection2 = this.f7431f;
            if (httpURLConnection2 != null) {
                httpURLConnection2.disconnect();
            }
            throw th;
        }
    }

    public String c() throws Exception {
        InputStream inputStream = null;
        try {
            inputStream = this.f7431f.getInputStream();
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[128];
            while (true) {
                int i10 = inputStream.read(bArr);
                if (i10 == -1) {
                    byteArrayOutputStream.flush();
                    String string = byteArrayOutputStream.toString();
                    inputStream.close();
                    return string;
                }
                byteArrayOutputStream.write(bArr, 0, i10);
            }
        } catch (Throwable th) {
            if (inputStream != null) {
                inputStream.close();
            }
            throw th;
        }
    }

    public void d() {
        HttpURLConnection httpURLConnection = this.f7431f;
        if (httpURLConnection != null) {
            try {
                InputStream inputStream = httpURLConnection.getInputStream();
                if (inputStream != null) {
                    inputStream.close();
                }
            } catch (Exception e10) {
                az.h(f7426a).f(e10.toString());
            }
        }
    }

    public an(String str, String str2) {
        this.f7432g = bv.a();
        this.f7433h = null;
        this.f7434i = null;
        this.f7438m = "text/plain";
        this.f7439n = 10000;
        this.f7440o = 10000;
        this.f7441p = false;
        this.f7442q = null;
        this.f7435j = str;
        this.f7436k = str2;
    }

    public String a() throws Throwable {
        e();
        HttpURLConnection httpURLConnection = this.f7431f;
        if (httpURLConnection != null) {
            try {
                if (httpURLConnection.getResponseCode() / 100 != 2) {
                    HttpURLConnection httpURLConnection2 = this.f7431f;
                    if (httpURLConnection2 != null) {
                        httpURLConnection2.disconnect();
                    }
                    return null;
                }
                String strC = c();
                HttpURLConnection httpURLConnection3 = this.f7431f;
                if (httpURLConnection3 != null) {
                    httpURLConnection3.disconnect();
                }
                return strC;
            } catch (Throwable unused) {
                HttpURLConnection httpURLConnection4 = this.f7431f;
                if (httpURLConnection4 != null) {
                    httpURLConnection4.disconnect();
                }
            }
        }
        return null;
    }

    public void b() {
        try {
            be.a().a((j) new a());
        } catch (Exception unused) {
        }
    }

    public void b(int i10) {
        this.f7440o = i10;
    }

    private void a(String str, HttpURLConnection httpURLConnection) throws Throwable {
        OutputStream outputStream;
        BufferedWriter bufferedWriter = null;
        try {
            outputStream = httpURLConnection.getOutputStream();
            try {
                BufferedWriter bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(outputStream, "UTF-8"));
                try {
                    bufferedWriter2.write(str);
                    bufferedWriter2.flush();
                    bufferedWriter2.close();
                    if (outputStream != null) {
                        outputStream.close();
                    }
                } catch (Throwable th) {
                    th = th;
                    bufferedWriter = bufferedWriter2;
                    if (bufferedWriter != null) {
                        bufferedWriter.close();
                    }
                    if (outputStream != null) {
                        outputStream.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
            outputStream = null;
        }
    }

    public void a(Map<String, String> map) {
        if (this.f7431f != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                this.f7431f.setRequestProperty(entry.getKey(), entry.getValue());
            }
        }
    }

    private HttpURLConnection a(HttpURLConnection httpURLConnection) {
        while (true) {
            try {
                int responseCode = httpURLConnection.getResponseCode();
                if (responseCode != 302 && responseCode != 301) {
                    return httpURLConnection;
                }
                HttpURLConnection httpURLConnection2 = (HttpURLConnection) new URL(httpURLConnection.getHeaderField("Location")).openConnection();
                try {
                    httpURLConnection2.setConnectTimeout(httpURLConnection2.getConnectTimeout());
                    httpURLConnection2.setInstanceFollowRedirects(false);
                    httpURLConnection2.setRequestProperty("Range", "bytes=0-");
                    httpURLConnection = httpURLConnection2;
                } catch (Exception unused) {
                    return httpURLConnection2;
                }
            } catch (Exception unused2) {
                return httpURLConnection;
            }
        }
    }

    public void a(b bVar) {
        this.f7433h = bVar;
    }

    public void a(c cVar) {
        this.f7434i = cVar;
    }

    public void a(int i10) {
        this.f7439n = i10;
    }

    public void a(Uri.Builder builder) {
        this.f7442q = builder;
    }

    public void a(String str) {
        this.f7438m = str;
    }
}

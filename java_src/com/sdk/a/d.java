package com.sdk.a;

import android.annotation.SuppressLint;
import android.content.Context;
import com.sdk.base.framework.utils.log.LogUtils;
import com.sdk.base.framework.utils.log.MobileLogManager;
import com.umeng.analytics.pro.bm;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import javax.net.ssl.HttpsURLConnection;
import org.apache.http.client.methods.HttpDeleteHC4;
import org.apache.http.client.methods.HttpOptionsHC4;
import org.apache.http.client.methods.HttpPutHC4;
import org.apache.http.client.methods.HttpTraceHC4;

/* JADX INFO: loaded from: classes2.dex */
public class d<T> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f78414d = "d";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static boolean f78415e = com.sdk.f.d.f78521a;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f78416f = UUID.randomUUID().toString();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static boolean f78417g = true;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Context f78418a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public e<T> f78419b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f78420c;

    public enum a {
        GET("GET"),
        POST("POST"),
        PUT(HttpPutHC4.METHOD_NAME),
        HEAD("HEAD"),
        MOVE("MOVE"),
        COPY("COPY"),
        DELETE(HttpDeleteHC4.METHOD_NAME),
        OPTIONS(HttpOptionsHC4.METHOD_NAME),
        TRACE(HttpTraceHC4.METHOD_NAME),
        CONNECT("CONNECT");


        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f78432a;

        a(String str) {
            this.f78432a = str;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.f78432a;
        }
    }

    public d(Context context, e<T> eVar) {
        this.f78418a = context;
        this.f78419b = eVar;
    }

    public e<T> a() {
        return this.f78419b;
    }

    public String b() {
        StringBuilder sb2;
        String strA;
        try {
            e<T> eVar = this.f78419b;
            if (eVar != null) {
                String str = eVar.f78435a;
                String str2 = eVar.f78436b;
                if (str.equals("GET")) {
                    e<T> eVar2 = this.f78419b;
                    strA = eVar2.a(eVar2.f78437c);
                    if (!com.sdk.r.a.b(strA).booleanValue()) {
                        return str2;
                    }
                    sb2 = new StringBuilder();
                    sb2.append(str2);
                    sb2.append("?");
                } else {
                    this.f78419b.getClass();
                    if (!com.sdk.r.a.b(null).booleanValue()) {
                        return str2;
                    }
                    sb2 = new StringBuilder();
                    sb2.append(str2);
                    sb2.append("?unikey=");
                    strA = null;
                }
                sb2.append(strA);
                return sb2.toString();
            }
        } catch (Exception e10) {
            LogUtils.e(f78414d, e10.getMessage(), Boolean.valueOf(f78415e));
        }
        return null;
    }

    public int c() {
        LogUtils.d_yl(f78414d, "openCellularKitKat 开始:", 0);
        String str = this.f78419b.f78436b;
        if (!a(str)) {
            return com.sdk.n.a.b(this.f78418a).a();
        }
        ArrayList arrayList = new ArrayList();
        if (com.sdk.r.a.b(str).booleanValue()) {
            arrayList.add(str);
        }
        return com.sdk.n.a.b(this.f78418a).a();
    }

    public final boolean a(String str) {
        return (str.contains("/api/netm/v1.0/qhbt") || str.contains("/api/netm/v1.0/qhbv") || str.contains("/st/api/v1.0/ses")) ? false : true;
    }

    @SuppressLint({"DefaultLocale"})
    public HttpURLConnection a(String str, boolean z10) throws Exception {
        HttpURLConnection httpURLConnectionA;
        LogUtils.d_yl(f78414d, "HttpRequest client 开始", 0);
        try {
            HttpURLConnection httpURLConnection = null;
            if (com.sdk.r.a.b(str).booleanValue()) {
                URL url = new URL(str);
                int iA = com.sdk.n.a.b(this.f78418a).a();
                if (a(str) && iA != 1) {
                    int iA2 = com.sdk.i.a.a();
                    if (iA2 < 23) {
                        iA = c();
                        httpURLConnectionA = (iA2 <= 21 || iA == 1) ? null : new com.sdk.a.a(this.f78418a, url).a();
                    } else {
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        httpURLConnectionA = new com.sdk.a.a(this.f78418a, url).a();
                        this.f78420c = System.currentTimeMillis() - jCurrentTimeMillis;
                    }
                    if (httpURLConnectionA == null) {
                        return null;
                    }
                    httpURLConnection = httpURLConnectionA;
                }
                if (httpURLConnection == null) {
                    httpURLConnection = (HttpURLConnection) url.openConnection();
                } else if (iA == 0) {
                    iA = 2;
                }
                String protocol = url.getProtocol();
                if (com.sdk.r.a.b(protocol).booleanValue() && "https".equals(protocol.toLowerCase(Locale.getDefault()))) {
                    httpURLConnection = (HttpsURLConnection) httpURLConnection;
                }
                httpURLConnection.setDoOutput(true);
                httpURLConnection.setConnectTimeout(10000);
                httpURLConnection.setReadTimeout(10000);
                httpURLConnection.setInstanceFollowRedirects(false);
                httpURLConnection.setRequestProperty("user-agent", com.sdk.l.a.a(this.f78418a));
                httpURLConnection.setRequestProperty("netType", iA + "");
                httpURLConnection.setRequestProperty(bm.f84421x, "android");
                httpURLConnection.setRequestProperty("Accept", "*/*");
                httpURLConnection.setUseCaches(true);
                if (f78417g) {
                    z10 = true;
                }
                httpURLConnection.setInstanceFollowRedirects(z10);
                HttpURLConnection.setFollowRedirects(z10);
                HashMap<String, Object> map = this.f78419b.f78439e;
                if (map != null && map.size() > 0) {
                    for (Map.Entry<String, Object> entry : map.entrySet()) {
                        httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue() + "");
                    }
                }
            }
            return httpURLConnection;
        } catch (Exception e10) {
            MobileLogManager.status302002(e10.toString());
            LogUtils.e(f78414d + "HttpRequst 248", e10.toString(), Boolean.valueOf(f78415e));
            throw e10;
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0032  */
    public HttpURLConnection a(HttpURLConnection httpURLConnection) throws ProtocolException {
        String str;
        String str2 = f78414d;
        LogUtils.d_yl(str2, "HttpRequest HttpURLConnection execute() 开始", 0);
        e<T> eVar = this.f78419b;
        if (eVar == null) {
            str = "application/x-www-form-urlencoded";
        } else {
            ArrayList<File> arrayList = eVar.f78438d;
            if ((arrayList == null || arrayList.size() == 0) ? false : true) {
                str = "multipart/form-data; boundary=" + f78416f;
            } else {
                str = "application/x-www-form-urlencoded";
            }
        }
        httpURLConnection.setRequestProperty("Content-Type", str);
        httpURLConnection.setRequestProperty("Charset", "UTF-8");
        httpURLConnection.setRequestProperty("connection", "keep-alive");
        e<T> eVar2 = this.f78419b;
        if (eVar2 != null) {
            String str3 = eVar2.f78435a;
            if ("POST".equals(str3)) {
                LogUtils.d_yl(str2, "execute 建立了一个与服务器的tcp请求 step1:" + str3, 0);
                httpURLConnection.setRequestMethod("POST");
                try {
                    httpURLConnection.getOutputStream().write(a(this.f78419b).toByteArray());
                } catch (Exception e10) {
                    LogUtils.d_yl(f78414d, "execute 建立了一个与服务器的tcp请求 OutputStream Exception:" + e10.toString(), 0);
                }
                LogUtils.d_yl(f78414d, "execute 建立了一个与服务器的tcp请求 step2:" + str3, 0);
            } else {
                httpURLConnection.setRequestMethod("GET");
            }
        }
        LogUtils.d_yl(f78414d, "HttpRequest HttpURLConnection execute() 结束:", 0);
        return httpURLConnection;
    }

    public ByteArrayOutputStream a(e<T> eVar) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        if (eVar != null) {
            try {
                String strA = eVar.a(this.f78419b.f78437c);
                if (eVar.f78436b.contains("/dro/log/v1.0/log")) {
                    strA = eVar.f78437c.toString();
                }
                ArrayList<File> arrayList = eVar.f78438d;
                if (arrayList == null || arrayList.size() <= 0) {
                    byteArrayOutputStream.write(strA.getBytes("utf-8"));
                } else {
                    byteArrayOutputStream.write(("--" + f78416f + "\r\n").getBytes("utf-8"));
                    byteArrayOutputStream.write("Content-Disposition: form-data; name=\"params\"".getBytes("utf-8"));
                    byteArrayOutputStream.write("\r\n\r\n".getBytes("utf-8"));
                    byteArrayOutputStream.write(strA.getBytes("utf-8"));
                    byteArrayOutputStream.write("\r\n".getBytes("utf-8"));
                    for (int i10 = 0; i10 < arrayList.size(); i10++) {
                        File file = arrayList.get(i10);
                        if (file != null) {
                            FileInputStream fileInputStream = new FileInputStream(file);
                            String name = file.getName();
                            byteArrayOutputStream.write(("--" + f78416f + "\r\n").getBytes("utf-8"));
                            byteArrayOutputStream.write(("Content-Disposition: form-data; name=\"" + name + "\"; filename=\"" + name + "\"\r\n").getBytes("utf-8"));
                            byteArrayOutputStream.write("Content-Type: application/octet-stream\r\n".getBytes("utf-8"));
                            byteArrayOutputStream.write("Content-Transfer-Encoding: binary\r\n\r\n".getBytes("utf-8"));
                            byte[] bArr = new byte[1024];
                            while (true) {
                                int i11 = fileInputStream.read(bArr);
                                if (i11 == -1) {
                                    break;
                                }
                                byteArrayOutputStream.write(bArr, 0, i11);
                            }
                            byteArrayOutputStream.write(("\r\n--" + f78416f + "--\r\n").getBytes("utf-8"));
                            byteArrayOutputStream.flush();
                            fileInputStream.close();
                        }
                    }
                }
            } catch (Exception e10) {
                MobileLogManager.status302002(e10.toString());
                LogUtils.e(f78414d + "HttpRequst558", e10.toString(), Boolean.valueOf(f78415e));
            }
        }
        return byteArrayOutputStream;
    }
}

package com.cmic.gen.sdk.c.a;

import android.annotation.TargetApi;
import android.text.TextUtils;
import com.cmic.gen.sdk.c.b.e;
import com.cmic.gen.sdk.c.b.g;
import com.cmic.gen.sdk.c.b.h;
import com.join.mgps.Util.o0;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.Map;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: loaded from: classes9.dex */
public class a implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static com.cmic.gen.sdk.c.c f24335a;

    /* JADX WARN: Code duplicated, block: B:100:0x026b  */
    /* JADX WARN: Code duplicated, block: B:103:0x028e  */
    /* JADX WARN: Code duplicated, block: B:104:0x0291  */
    /* JADX WARN: Code duplicated, block: B:107:0x02a3  */
    /* JADX WARN: Code duplicated, block: B:10:0x005d  */
    /* JADX WARN: Code duplicated, block: B:117:0x02c1  */
    /* JADX WARN: Code duplicated, block: B:120:0x02e4  */
    /* JADX WARN: Code duplicated, block: B:121:0x02e7  */
    /* JADX WARN: Code duplicated, block: B:124:0x02f9  */
    /* JADX WARN: Code duplicated, block: B:129:0x0309  */
    /* JADX WARN: Code duplicated, block: B:89:0x0239  */
    /* JADX WARN: Code duplicated, block: B:90:0x0240  */
    /* JADX WARN: Code duplicated, block: B:93:0x024a A[Catch: all -> 0x02b8, TryCatch #7 {all -> 0x02b8, blocks: (B:87:0x0211, B:91:0x0246, B:93:0x024a, B:95:0x0252, B:97:0x025a, B:44:0x0176, B:45:0x0178, B:47:0x017e, B:48:0x018c), top: B:131:0x002f }] */
    @Override // com.cmic.gen.sdk.c.a.b
    @TargetApi(21)
    public void a(com.cmic.gen.sdk.c.c.c cVar, com.cmic.gen.sdk.c.d.c cVar2, com.cmic.gen.sdk.a aVar) throws Throwable {
        String str;
        OutputStream outputStream;
        HttpURLConnection httpURLConnection;
        int responseCode;
        Closeable closeable;
        String string;
        InputStream inputStream;
        String string2;
        boolean z10;
        String str2 = "";
        com.cmic.gen.sdk.e.c.b("ConnectionInterceptor", "请求地址: " + cVar.a());
        StringBuilder sb2 = new StringBuilder();
        try {
            try {
                String strA = cVar.a();
                URL url = new URL(strA);
                final String host = url.getHost();
                g gVarK = cVar.k();
                if ((gVarK instanceof h) || (gVarK instanceof e)) {
                    String strB = aVar.b("remote_ip");
                    if (TextUtils.isEmpty(strB)) {
                        z10 = false;
                    } else {
                        url = new URL(strA.replaceFirst(host, strB));
                        z10 = true;
                    }
                } else {
                    z10 = false;
                }
                if (cVar.h() != null) {
                    com.cmic.gen.sdk.e.c.b("ConnectionInterceptor", "开始wifi下取号" + url);
                    httpURLConnection = (HttpURLConnection) cVar.h().openConnection(url);
                } else {
                    com.cmic.gen.sdk.e.c.b("ConnectionInterceptor", "使用当前网络环境发送请求" + url);
                    httpURLConnection = (HttpURLConnection) url.openConnection();
                }
                try {
                    Map<String, String> mapC = cVar.c();
                    if (mapC != null) {
                        for (String str3 : mapC.keySet()) {
                            str = str2;
                            try {
                                httpURLConnection.addRequestProperty(str3, mapC.get(str3));
                                str2 = str;
                                mapC = mapC;
                            } catch (Exception e10) {
                                e = e10;
                                outputStream = null;
                                inputStream = null;
                                e.printStackTrace();
                                com.cmic.gen.sdk.e.c.a("ConnectionInterceptor", "请求失败: " + cVar.a());
                                aVar.a().f24446a.add(e);
                                if (e instanceof EOFException) {
                                    responseCode = 200050;
                                } else {
                                    responseCode = 102102;
                                }
                                if (e instanceof UnknownHostException) {
                                    aVar.a("remote_ip", a());
                                }
                                a(outputStream);
                                a(inputStream);
                                if (httpURLConnection != null) {
                                    httpURLConnection.disconnect();
                                }
                                com.cmic.gen.sdk.e.c.b("ConnectionInterceptor", "responseCode: " + responseCode);
                                StringBuilder sb3 = new StringBuilder();
                                sb3.append("responseResult: ");
                                if (TextUtils.isEmpty(sb2)) {
                                    string2 = str;
                                } else {
                                    string2 = sb2.toString();
                                }
                                sb3.append(string2);
                                com.cmic.gen.sdk.e.c.b("ConnectionInterceptor", sb3.toString());
                                if (responseCode != 200) {
                                }
                                cVar2.a((com.cmic.gen.sdk.c.d.b) null);
                                return;
                            } catch (Throwable th) {
                                th = th;
                                outputStream = null;
                                closeable = null;
                                responseCode = -1;
                                a(outputStream);
                                a(closeable);
                                if (httpURLConnection != null) {
                                    httpURLConnection.disconnect();
                                }
                                com.cmic.gen.sdk.e.c.b("ConnectionInterceptor", "responseCode: " + responseCode);
                                StringBuilder sb4 = new StringBuilder();
                                sb4.append("responseResult: ");
                                if (TextUtils.isEmpty(sb2)) {
                                    string = str;
                                } else {
                                    string = sb2.toString();
                                }
                                sb4.append(string);
                                com.cmic.gen.sdk.e.c.b("ConnectionInterceptor", sb4.toString());
                                if (responseCode != 200 || responseCode == 301 || responseCode == 302) {
                                    cVar2.a((com.cmic.gen.sdk.c.d.b) null);
                                } else {
                                    cVar2.a(com.cmic.gen.sdk.c.d.a.a(responseCode));
                                }
                                throw th;
                            }
                        }
                    }
                    str = str2;
                    if ((httpURLConnection instanceof HttpsURLConnection) && ((gVarK instanceof h) || (gVarK instanceof e))) {
                        if (z10) {
                            com.cmic.gen.sdk.e.c.b("ConnectionInterceptor", "host = " + host);
                            httpURLConnection.setRequestProperty("Host", host);
                            com.cmic.gen.sdk.e.c.b("ConnectionInterceptor", "need sni handle");
                            ((HttpsURLConnection) httpURLConnection).setSSLSocketFactory(new com.cmic.gen.sdk.c.d((HttpsURLConnection) httpURLConnection, cVar.h(), aVar));
                            ((HttpsURLConnection) httpURLConnection).setHostnameVerifier(new HostnameVerifier() { // from class: com.cmic.gen.sdk.c.a.a.1
                                @Override // javax.net.ssl.HostnameVerifier
                                public boolean verify(String str4, SSLSession sSLSession) {
                                    return HttpsURLConnection.getDefaultHostnameVerifier().verify(host, sSLSession);
                                }
                            });
                        } else {
                            ((HttpsURLConnection) httpURLConnection).setSSLSocketFactory(a(gVarK, aVar));
                        }
                    }
                    httpURLConnection.setDoInput(true);
                    httpURLConnection.setInstanceFollowRedirects(false);
                    httpURLConnection.setConnectTimeout(5000);
                    httpURLConnection.setReadTimeout(5000);
                    httpURLConnection.setDefaultUseCaches(false);
                    String strE = cVar.e();
                    httpURLConnection.setRequestMethod(strE);
                    httpURLConnection.setDoOutput(true);
                    if (cVar instanceof com.cmic.gen.sdk.c.c.b) {
                        httpURLConnection.connect();
                        ((com.cmic.gen.sdk.c.c.b) cVar).a(aVar);
                    }
                    if (strE.endsWith("POST")) {
                        outputStream = httpURLConnection.getOutputStream();
                        try {
                            outputStream.write(cVar.d().getBytes("utf-8"));
                            outputStream.flush();
                        } catch (Exception e11) {
                            e = e11;
                            inputStream = null;
                            e.printStackTrace();
                            com.cmic.gen.sdk.e.c.a("ConnectionInterceptor", "请求失败: " + cVar.a());
                            aVar.a().f24446a.add(e);
                            if (e instanceof EOFException) {
                                responseCode = 200050;
                            } else {
                                responseCode = 102102;
                            }
                            if (e instanceof UnknownHostException) {
                                aVar.a("remote_ip", a());
                            }
                            a(outputStream);
                            a(inputStream);
                            if (httpURLConnection != null) {
                                httpURLConnection.disconnect();
                            }
                            com.cmic.gen.sdk.e.c.b("ConnectionInterceptor", "responseCode: " + responseCode);
                            StringBuilder sb5 = new StringBuilder();
                            sb5.append("responseResult: ");
                            if (TextUtils.isEmpty(sb2)) {
                                string2 = str;
                            } else {
                                string2 = sb2.toString();
                            }
                            sb5.append(string2);
                            com.cmic.gen.sdk.e.c.b("ConnectionInterceptor", sb5.toString());
                            if (responseCode != 200) {
                            }
                            cVar2.a((com.cmic.gen.sdk.c.d.b) null);
                            return;
                        } catch (Throwable th2) {
                            th = th2;
                            closeable = null;
                            responseCode = -1;
                            a(outputStream);
                            a(closeable);
                            if (httpURLConnection != null) {
                                httpURLConnection.disconnect();
                            }
                            com.cmic.gen.sdk.e.c.b("ConnectionInterceptor", "responseCode: " + responseCode);
                            StringBuilder sb6 = new StringBuilder();
                            sb6.append("responseResult: ");
                            if (TextUtils.isEmpty(sb2)) {
                                string = str;
                            } else {
                                string = sb2.toString();
                            }
                            sb6.append(string);
                            com.cmic.gen.sdk.e.c.b("ConnectionInterceptor", sb6.toString());
                            if (responseCode != 200) {
                                cVar2.a((com.cmic.gen.sdk.c.d.b) null);
                            } else {
                                cVar2.a((com.cmic.gen.sdk.c.d.b) null);
                            }
                            throw th;
                        }
                    } else {
                        outputStream = null;
                    }
                    responseCode = httpURLConnection.getResponseCode();
                    try {
                        inputStream = httpURLConnection.getInputStream();
                        try {
                            byte[] bArr = new byte[2048];
                            while (true) {
                                int i10 = inputStream.read(bArr);
                                if (i10 <= 0) {
                                    break;
                                } else {
                                    sb2.append(new String(bArr, 0, i10, "utf-8"));
                                }
                            }
                            com.cmic.gen.sdk.c.d.b bVar = new com.cmic.gen.sdk.c.d.b(responseCode, httpURLConnection.getHeaderFields(), sb2.toString());
                            a(outputStream);
                            a(inputStream);
                            httpURLConnection.disconnect();
                            com.cmic.gen.sdk.e.c.b("ConnectionInterceptor", "responseCode: " + responseCode);
                            StringBuilder sb7 = new StringBuilder();
                            sb7.append("responseResult: ");
                            sb7.append(TextUtils.isEmpty(sb2) ? str : sb2.toString());
                            com.cmic.gen.sdk.e.c.b("ConnectionInterceptor", sb7.toString());
                            if (responseCode == 200 || responseCode == 301 || responseCode == 302) {
                                cVar2.a(bVar);
                                return;
                            }
                        } catch (Exception e12) {
                            e = e12;
                            e.printStackTrace();
                            com.cmic.gen.sdk.e.c.a("ConnectionInterceptor", "请求失败: " + cVar.a());
                            aVar.a().f24446a.add(e);
                            if (e instanceof EOFException) {
                                responseCode = 200050;
                            } else {
                                responseCode = 102102;
                            }
                            if ((e instanceof UnknownHostException) && ((cVar.k() instanceof h) || (cVar.k() instanceof e))) {
                                aVar.a("remote_ip", a());
                            }
                            a(outputStream);
                            a(inputStream);
                            if (httpURLConnection != null) {
                                httpURLConnection.disconnect();
                            }
                            com.cmic.gen.sdk.e.c.b("ConnectionInterceptor", "responseCode: " + responseCode);
                            StringBuilder sb8 = new StringBuilder();
                            sb8.append("responseResult: ");
                            if (TextUtils.isEmpty(sb2)) {
                                string2 = str;
                            } else {
                                string2 = sb2.toString();
                            }
                            sb8.append(string2);
                            com.cmic.gen.sdk.e.c.b("ConnectionInterceptor", sb8.toString());
                            if (responseCode != 200 || responseCode == 301 || responseCode == 302) {
                                cVar2.a((com.cmic.gen.sdk.c.d.b) null);
                                return;
                            }
                        }
                    } catch (Exception e13) {
                        e = e13;
                        inputStream = null;
                    } catch (Throwable th3) {
                        th = th3;
                        closeable = null;
                        a(outputStream);
                        a(closeable);
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        com.cmic.gen.sdk.e.c.b("ConnectionInterceptor", "responseCode: " + responseCode);
                        StringBuilder sb9 = new StringBuilder();
                        sb9.append("responseResult: ");
                        if (TextUtils.isEmpty(sb2)) {
                            string = str;
                        } else {
                            string = sb2.toString();
                        }
                        sb9.append(string);
                        com.cmic.gen.sdk.e.c.b("ConnectionInterceptor", sb9.toString());
                        if (responseCode != 200) {
                            cVar2.a((com.cmic.gen.sdk.c.d.b) null);
                        } else {
                            cVar2.a((com.cmic.gen.sdk.c.d.b) null);
                        }
                        throw th;
                    }
                } catch (Exception e14) {
                    e = e14;
                    str = str2;
                } catch (Throwable th4) {
                    th = th4;
                    str = str2;
                }
            } catch (Throwable th5) {
                th = th5;
            }
        } catch (Exception e15) {
            e = e15;
            str = "";
            outputStream = null;
            httpURLConnection = null;
        } catch (Throwable th6) {
            th = th6;
            str = "";
            outputStream = null;
            httpURLConnection = null;
        }
        cVar2.a(com.cmic.gen.sdk.c.d.a.a(responseCode));
    }

    private void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e10) {
                e10.printStackTrace();
            }
        }
    }

    private String a() {
        return com.cmic.gen.sdk.b.f24322a[0] + o0.f49827a + com.cmic.gen.sdk.b.f24322a[2] + o0.f49827a + com.cmic.gen.sdk.b.f24322a[4] + o0.f49827a + com.cmic.gen.sdk.b.f24322a[6];
    }

    public synchronized SSLSocketFactory a(g gVar, com.cmic.gen.sdk.a aVar) {
        if (gVar instanceof e) {
            com.cmic.gen.sdk.c.c cVar = new com.cmic.gen.sdk.c.c(HttpsURLConnection.getDefaultSSLSocketFactory(), aVar);
            if (f24335a == null) {
                f24335a = cVar;
            }
            return cVar;
        }
        if (f24335a == null) {
            f24335a = new com.cmic.gen.sdk.c.c(HttpsURLConnection.getDefaultSSLSocketFactory(), aVar);
        }
        return f24335a;
    }
}

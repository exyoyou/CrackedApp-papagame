package com.tencent.bugly.proguard;

import android.content.Context;
import android.os.Process;
import android.os.SystemClock;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;

/* JADX INFO: loaded from: classes2.dex */
public final class af {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static af f83219a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected Context f83220b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Map<String, String> f83221c = null;

    af(Context context) {
        this.f83220b = context;
    }

    private static byte[] b(HttpURLConnection httpURLConnection) {
        BufferedInputStream bufferedInputStream;
        if (httpURLConnection == null) {
            return null;
        }
        try {
            bufferedInputStream = new BufferedInputStream(httpURLConnection.getInputStream());
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                byte[] bArr = new byte[1024];
                while (true) {
                    int i10 = bufferedInputStream.read(bArr);
                    if (i10 <= 0) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, i10);
                }
                byteArrayOutputStream.flush();
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                try {
                    bufferedInputStream.close();
                } catch (Throwable th) {
                    th.printStackTrace();
                }
                return byteArray;
            } catch (Throwable th2) {
                th = th2;
                try {
                    if (!al.a(th)) {
                        th.printStackTrace();
                    }
                    return null;
                } finally {
                    if (bufferedInputStream != null) {
                        try {
                            bufferedInputStream.close();
                        } catch (Throwable th3) {
                            th3.printStackTrace();
                        }
                    }
                }
            }
        } catch (Throwable th4) {
            th = th4;
            bufferedInputStream = null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:89:0x0164 A[PHI: r4 r6 r10 r13 r14
      0x0164: PHI (r4v4 java.lang.Throwable) = (r4v3 java.lang.Throwable), (r4v14 java.lang.Throwable) binds: [B:104:0x0184, B:88:0x0162] A[DONT_GENERATE, DONT_INLINE]
      0x0164: PHI (r6v7 int) = (r6v6 int), (r6v12 int) binds: [B:104:0x0184, B:88:0x0162] A[DONT_GENERATE, DONT_INLINE]
      0x0164: PHI (r10v9 java.lang.String) = (r10v8 java.lang.String), (r10v14 java.lang.String) binds: [B:104:0x0184, B:88:0x0162] A[DONT_GENERATE, DONT_INLINE]
      0x0164: PHI (r13v4 int) = (r13v3 int), (r13v7 int) binds: [B:104:0x0184, B:88:0x0162] A[DONT_GENERATE, DONT_INLINE]
      0x0164: PHI (r14v5 boolean) = (r14v4 boolean), (r14v9 boolean) binds: [B:104:0x0184, B:88:0x0162] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:99:0x0177 A[Catch: all -> 0x016a, TRY_LEAVE, TryCatch #6 {all -> 0x016a, blocks: (B:23:0x009c, B:25:0x00b3, B:29:0x00c4, B:28:0x00c2, B:49:0x00ed, B:51:0x00f5, B:64:0x0120, B:66:0x012b, B:80:0x0148, B:83:0x0155, B:97:0x0171, B:99:0x0177), top: B:129:0x009c }] */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    public final byte[] a(String str, byte[] bArr, aj ajVar, Map<String, String> map) {
        int i10;
        Throwable th;
        byte[] bArr2 = null;
        int i11 = 0;
        if (str == null) {
            al.e("Failed for no URL.", new Object[0]);
            return null;
        }
        long length = bArr == null ? 0L : bArr.length;
        int i12 = 1;
        al.c("request: %s, send: %d (pid=%d | tid=%d)", str, Long.valueOf(length), Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
        String str2 = str;
        int i13 = 0;
        int i14 = 0;
        boolean z10 = false;
        while (i13 <= 0 && i14 <= 0) {
            if (z10) {
                i10 = i13;
                z10 = false;
            } else {
                int i15 = i13 + 1;
                if (i15 > i12) {
                    al.c("try time: ".concat(String.valueOf(i15)), new Object[i11]);
                    SystemClock.sleep(((long) new Random(System.currentTimeMillis()).nextInt(10000)) + 10000);
                }
                i10 = i15;
            }
            String strC = ab.c(this.f83220b);
            if (strC == null) {
                al.d("Failed to request for network not avail", new Object[i11]);
            } else {
                ajVar.a(length);
                HttpURLConnection httpURLConnectionA = a(str2, bArr, strC, map);
                if (httpURLConnectionA != null) {
                    try {
                        try {
                            int responseCode = httpURLConnectionA.getResponseCode();
                            al.c("response code ".concat(String.valueOf(responseCode)), new Object[i11]);
                            if (responseCode == 200) {
                                this.f83221c = a(httpURLConnectionA);
                                byte[] bArrB = b(httpURLConnectionA);
                                ajVar.b(bArrB == null ? 0L : bArrB.length);
                                try {
                                    httpURLConnectionA.disconnect();
                                } catch (Throwable th2) {
                                    if (!al.a(th2)) {
                                        th2.printStackTrace();
                                    }
                                }
                                return bArrB;
                            }
                            if (responseCode == 301 || responseCode == 302 || responseCode == 303 || responseCode == 307) {
                                try {
                                    String headerField = httpURLConnectionA.getHeaderField("Location");
                                    if (headerField == null) {
                                        try {
                                            al.e("Failed to redirect: %d".concat(String.valueOf(responseCode)), new Object[0]);
                                            try {
                                                httpURLConnectionA.disconnect();
                                                return null;
                                            } catch (Throwable th3) {
                                                if (al.a(th3)) {
                                                    return null;
                                                }
                                                th3.printStackTrace();
                                                return null;
                                            }
                                        } catch (IOException e10) {
                                            e = e10;
                                            z10 = true;
                                            if (!al.a(e)) {
                                                e.printStackTrace();
                                            }
                                            try {
                                                httpURLConnectionA.disconnect();
                                            } catch (Throwable th4) {
                                                th = th4;
                                                if (!al.a(th)) {
                                                    th.printStackTrace();
                                                }
                                            }
                                            i13 = i10;
                                            bArr2 = null;
                                            i11 = 0;
                                            i12 = 1;
                                        }
                                    } else {
                                        i14++;
                                        try {
                                            Object[] objArr = new Object[2];
                                            objArr[0] = Integer.valueOf(responseCode);
                                            try {
                                                objArr[1] = headerField;
                                                al.c("redirect code: %d ,to:%s", objArr);
                                                str2 = headerField;
                                                i10 = 0;
                                                z10 = true;
                                            } catch (IOException e11) {
                                                e = e11;
                                                str2 = headerField;
                                                i10 = 0;
                                                z10 = true;
                                                if (!al.a(e)) {
                                                    e.printStackTrace();
                                                }
                                                httpURLConnectionA.disconnect();
                                                i13 = i10;
                                                bArr2 = null;
                                                i11 = 0;
                                                i12 = 1;
                                            }
                                        } catch (IOException e12) {
                                            e = e12;
                                        }
                                    }
                                } catch (IOException e13) {
                                    e = e13;
                                }
                            }
                            try {
                                long contentLength = httpURLConnectionA.getContentLength();
                                if (contentLength < 0) {
                                    contentLength = 0;
                                }
                                ajVar.b(contentLength);
                                try {
                                    httpURLConnectionA.disconnect();
                                } catch (Throwable th5) {
                                    th = th5;
                                    if (!al.a(th)) {
                                        th.printStackTrace();
                                    }
                                }
                            } catch (IOException e14) {
                                e = e14;
                                if (!al.a(e)) {
                                    e.printStackTrace();
                                }
                                httpURLConnectionA.disconnect();
                            }
                        } catch (Throwable th6) {
                            try {
                                httpURLConnectionA.disconnect();
                                throw th6;
                            } catch (Throwable th7) {
                                if (al.a(th7)) {
                                    throw th6;
                                }
                                th7.printStackTrace();
                                throw th6;
                            }
                        }
                    } catch (IOException e15) {
                        e = e15;
                    }
                } else {
                    al.c("Failed to execute post.", new Object[0]);
                    ajVar.b(0L);
                }
            }
            i13 = i10;
            bArr2 = null;
            i11 = 0;
            i12 = 1;
        }
        return bArr2;
    }

    private static Map<String, String> a(HttpURLConnection httpURLConnection) {
        HashMap map = new HashMap();
        Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
        if (headerFields == null || headerFields.size() == 0) {
            return null;
        }
        for (String str : headerFields.keySet()) {
            List<String> list = headerFields.get(str);
            if (list.size() > 0) {
                map.put(str, list.get(0));
            }
        }
        return map;
    }

    private static HttpURLConnection a(String str, byte[] bArr, String str2, Map<String, String> map) {
        if (str == null) {
            al.e("destUrl is null.", new Object[0]);
            return null;
        }
        HttpURLConnection httpURLConnectionA = a(str2, str);
        if (httpURLConnectionA == null) {
            al.e("Failed to get HttpURLConnection object.", new Object[0]);
            return null;
        }
        try {
            httpURLConnectionA.setRequestProperty("wup_version", "3.0");
            if (map != null && map.size() > 0) {
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    httpURLConnectionA.setRequestProperty(entry.getKey(), URLEncoder.encode(entry.getValue(), "utf-8"));
                }
            }
            httpURLConnectionA.setRequestProperty("A37", URLEncoder.encode(str2, "utf-8"));
            httpURLConnectionA.setRequestProperty("A38", URLEncoder.encode(str2, "utf-8"));
            OutputStream outputStream = httpURLConnectionA.getOutputStream();
            if (bArr == null) {
                outputStream.write(0);
            } else {
                outputStream.write(bArr);
            }
            return httpURLConnectionA;
        } catch (Throwable th) {
            if (!al.a(th)) {
                th.printStackTrace();
            }
            al.e("Failed to upload, please check your network.", new Object[0]);
            return null;
        }
    }

    private static HttpURLConnection a(String str, String str2) {
        HttpURLConnection httpURLConnection;
        try {
            URL url = new URL(str2);
            Proxy proxy = an.f83282a;
            if (proxy != null) {
                httpURLConnection = (HttpURLConnection) url.openConnection(proxy);
            } else if (str != null && str.toLowerCase(Locale.US).contains("wap")) {
                httpURLConnection = (HttpURLConnection) url.openConnection(new Proxy(Proxy.Type.HTTP, new InetSocketAddress(System.getProperty("http.proxyHost"), Integer.parseInt(System.getProperty("http.proxyPort")))));
            } else {
                httpURLConnection = (HttpURLConnection) url.openConnection();
            }
            httpURLConnection.setConnectTimeout(30000);
            httpURLConnection.setReadTimeout(10000);
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setDoInput(true);
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setInstanceFollowRedirects(false);
            return httpURLConnection;
        } catch (Throwable th) {
            if (al.a(th)) {
                return null;
            }
            th.printStackTrace();
            return null;
        }
    }
}

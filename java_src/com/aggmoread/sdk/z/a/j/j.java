package com.aggmoread.sdk.z.a.j;

import android.text.TextUtils;
import com.byazt.tk.AdBaseConstants;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.join.mgps.Util.o0;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import org.apache.http.conn.ssl.SSLConnectionSocketFactory;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.conn.ssl.X509HostnameVerifier;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static int f3582a = 65536;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static long f3583b = 2000;

    public static final class a implements X509TrustManager {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private X509TrustManager f3584a;

        public a(KeyStore keyStore) {
            try {
                TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance("X509");
                trustManagerFactory.init(keyStore);
                TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
                if (trustManagers == null || trustManagers.length == 0) {
                    throw new NoSuchAlgorithmException("no trust manager found.");
                }
                this.f3584a = (X509TrustManager) trustManagers[0];
            } catch (Exception e10) {
                com.aggmoread.sdk.z.a.d.a("DownloadNetworkImpl", "failed to initialize the standard trust manager: " + e10.getMessage());
                this.f3584a = null;
            }
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
            if (x509CertificateArr == null) {
                throw new IllegalArgumentException("there were no certificates.");
            }
            if (x509CertificateArr.length == 1) {
                x509CertificateArr[0].checkValidity();
                return;
            }
            X509TrustManager x509TrustManager = this.f3584a;
            if (x509TrustManager == null) {
                throw new CertificateException("there were one more certificates but no trust manager found.");
            }
            x509TrustManager.checkServerTrusted(x509CertificateArr, str);
        }

        @Override // javax.net.ssl.X509TrustManager
        public X509Certificate[] getAcceptedIssuers() {
            return new X509Certificate[0];
        }
    }

    j() {
    }

    private int a(String str) throws h {
        if (str == null || str.length() == 0) {
            return -1;
        }
        try {
            Matcher matcher = Pattern.compile("bytes (\\d+)-(\\d+)/\\d+").matcher(str);
            if (!matcher.find()) {
                return -1;
            }
            return (Integer.parseInt(matcher.group(2)) - Integer.parseInt(matcher.group(1))) + 1;
        } catch (Exception e10) {
            throw new h(-1016, "getContentLengthWithContentRange exception contentRange = " + str, e10);
        }
    }

    private String b(Map<String, List<String>> map) {
        String strSubstring = "";
        if (map == null) {
            return "";
        }
        List<String> list = map.get(com.sigmob.sdk.downloader.core.c.f80446j);
        if (list != null && list.size() > 0) {
            String str = list.get(0);
            com.aggmoread.sdk.z.a.d.d("DownloadNetworkImpl", "Content-Disposition header value = " + str);
            for (String str2 : str.split(";")) {
                if (str2.trim().startsWith(com.sigmob.sdk.downloader.core.breakpoint.f.f80402e)) {
                    strSubstring = str2.split(SimpleComparison.EQUAL_TO_OPERATION)[1];
                    if (strSubstring.startsWith(x.a.f97579g) && strSubstring.endsWith(x.a.f97579g)) {
                        strSubstring = strSubstring.substring(1, strSubstring.length() - 1);
                    }
                }
            }
        }
        return strSubstring;
    }

    public String a(n nVar) throws h {
        int i10;
        long j10;
        com.aggmoread.sdk.z.a.d.d("DownloadNetworkImpl", "download enter , " + nVar.toString());
        i iVarE = nVar.e();
        if (iVarE == i.f3581a) {
            throw new h("DownloadListener EMPTY");
        }
        iVarE.b();
        String strD = nVar.d();
        String strH = nVar.h();
        boolean zL = nVar.l();
        if (zL) {
            File file = new File(strD, g.a(strH));
            if (zL && file.exists()) {
                iVarE.a();
                iVarE.c();
                iVarE.a(100, file.length(), file.length());
                iVarE.a(file);
                return file.getAbsolutePath();
            }
        }
        HttpURLConnection httpURLConnectionA = a(strH, nVar.b(), nVar.j());
        try {
            Map<String, String> mapG = nVar.g();
            int i11 = 1;
            if (TextUtils.isEmpty(mapG.get("User-Agent"))) {
                String str = String.format(Locale.ENGLISH, "downloader/%s", 12078564);
                com.aggmoread.sdk.z.a.d.d("DownloadNetworkImpl", "setRequestProperty headerName = User-Agent, headerValue = " + str);
                httpURLConnectionA.setRequestProperty("User-Agent", str);
            }
            if (TextUtils.isEmpty(mapG.get("Range"))) {
                String str2 = String.format(Locale.ENGLISH, "bytes=%d-", 0);
                com.aggmoread.sdk.z.a.d.d("DownloadNetworkImpl", "setRequestProperty headerName = Range, headerValue = " + str2);
                httpURLConnectionA.addRequestProperty("Range", str2);
            }
            for (String str3 : mapG.keySet()) {
                com.aggmoread.sdk.z.a.d.d("DownloadNetworkImpl", "setRequestProperty headerName = " + str3 + ", headerValue = " + mapG.get(str3));
                httpURLConnectionA.setRequestProperty(str3, mapG.get(str3));
            }
            try {
                httpURLConnectionA.connect();
                int responseCode = httpURLConnectionA.getResponseCode();
                int i12 = nVar.i();
                String headerField = httpURLConnectionA.getHeaderField("Location");
                com.aggmoread.sdk.z.a.d.d("DownloadNetworkImpl", "http responseCode = " + responseCode + ", location = " + headerField);
                HttpURLConnection httpURLConnection = httpURLConnectionA;
                int i13 = 0;
                while (a(responseCode) && !TextUtils.isEmpty(headerField)) {
                    try {
                        httpURLConnection.getInputStream().close();
                        HttpURLConnection httpURLConnectionA2 = a(headerField, nVar.b(), nVar.j());
                        httpURLConnectionA2.connect();
                        responseCode = httpURLConnectionA2.getResponseCode();
                        headerField = httpURLConnectionA2.getHeaderField("Location");
                        i13 += i11;
                        com.aggmoread.sdk.z.a.d.d("DownloadNetworkImpl", "redirect responseCode = " + responseCode + ", location = " + headerField + " , currentRedirectTimes = " + i13);
                        if (i13 >= i12) {
                            throw new h(-1012, "redirect too many times(" + i12 + ")");
                        }
                        httpURLConnection = httpURLConnectionA2;
                        i11 = 1;
                    } catch (IOException e10) {
                        e10.printStackTrace();
                        if (e10 instanceof SocketTimeoutException) {
                            String str4 = "redirect SocketTimeoutException(" + strH + ")";
                            com.aggmoread.sdk.z.a.d.f("DownloadNetworkImpl", str4);
                            throw new h(-1009, str4, e10);
                        }
                        if (e10 instanceof UnknownHostException) {
                            String str5 = "redirect UnknownHostException(" + strH + ")";
                            com.aggmoread.sdk.z.a.d.f("DownloadNetworkImpl", str5);
                            throw new h(-1010, str5, e10);
                        }
                        if (!(e10 instanceof ConnectException)) {
                            throw new h(-1011, "redirect(" + e10.getMessage() + ")", e10);
                        }
                        String str6 = "redirect ConnectException(" + strH + ")";
                        com.aggmoread.sdk.z.a.d.f("DownloadNetworkImpl", str6);
                        throw new h(-1001, str6, e10);
                    }
                }
                com.aggmoread.sdk.z.a.d.d("DownloadNetworkImpl", "final responseCode = " + responseCode);
                if (responseCode < 200 || responseCode >= 300) {
                    try {
                        try {
                            StringBuilder sb2 = new StringBuilder();
                            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream(), Charset.forName("utf-8")));
                            while (true) {
                                String line = bufferedReader.readLine();
                                if (line == null) {
                                    a(bufferedReader);
                                    JSONObject jSONObject = new JSONObject();
                                    jSONObject.put("error", sb2.toString());
                                    jSONObject.put("status", Integer.valueOf(responseCode));
                                    throw new h(-1014, jSONObject.toString());
                                }
                                if (sb2.length() > 0) {
                                    sb2.append('\n');
                                }
                                sb2.append(line);
                            }
                        } catch (Throwable th) {
                            httpURLConnection.disconnect();
                            throw th;
                        }
                    } catch (Exception e11) {
                        throw new h(-1015, e11.getMessage());
                    }
                } else {
                    iVarE.a();
                    Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
                    a(headerFields);
                    com.aggmoread.sdk.z.a.d.d("DownloadNetworkImpl", "eTag = " + httpURLConnection.getHeaderField("ETag"));
                    String strF = nVar.f();
                    com.aggmoread.sdk.z.a.d.d("DownloadNetworkImpl", "download request file name = " + strF);
                    if (TextUtils.isEmpty(strF)) {
                        strF = b(headerFields);
                        com.aggmoread.sdk.z.a.d.d("DownloadNetworkImpl", "getFileNameWithContentDisposition= " + strF);
                        if (TextUtils.isEmpty(strF)) {
                            strF = a(headerFields, strH);
                            com.aggmoread.sdk.z.a.d.d("DownloadNetworkImpl", "getFileNameWithContentType = " + strF);
                        }
                    }
                    com.aggmoread.sdk.z.a.d.d("DownloadNetworkImpl", "final file name = " + strF);
                    File file2 = new File(strD, strF);
                    File file3 = new File(strD, strF.replace("tmp", "apk"));
                    if (zL && file3.exists()) {
                        httpURLConnection.disconnect();
                        iVarE.c();
                        iVarE.a(100, file3.length(), file3.length());
                        iVarE.a(file3);
                        return file3.getAbsolutePath();
                    }
                    if (!file2.getParentFile().exists()) {
                        file2.getParentFile().mkdirs();
                    }
                    if (file2.exists()) {
                        file2.delete();
                    }
                    if (file3.exists()) {
                        file3.delete();
                    }
                    try {
                        if (nVar.k()) {
                            if (file2.exists()) {
                                file2.delete();
                            }
                            httpURLConnection.disconnect();
                            return "";
                        }
                        InputStream inputStream = httpURLConnection.getInputStream();
                        int contentLength = httpURLConnection.getContentLength();
                        com.aggmoread.sdk.z.a.d.d("DownloadNetworkImpl", "contentLength = " + contentLength);
                        if (contentLength < 0) {
                            String headerField2 = httpURLConnection.getHeaderField("Transfer-Encoding");
                            String headerField3 = httpURLConnection.getHeaderField("Content-Range");
                            int iA = a(headerField3);
                            com.aggmoread.sdk.z.a.d.d("DownloadNetworkImpl", "transferEncoding = " + headerField2 + " , contentRange = " + iA + " , contentRangeValue = " + headerField3);
                            if (iA < 0) {
                                throw new h(-1002, "contentLength < 0 , transferEncoding = " + headerField2 + " , contentRange = " + headerField3);
                            }
                            i10 = iA;
                        } else {
                            i10 = contentLength;
                        }
                        FileOutputStream fileOutputStream = new FileOutputStream(file2);
                        byte[] bArr = new byte[4096];
                        int i14 = inputStream.read(bArr);
                        if (i14 > 0) {
                            iVarE.c();
                        }
                        long j11 = 0;
                        long j12 = 0;
                        long j13 = 0;
                        while (i14 > 0) {
                            fileOutputStream.write(bArr, 0, i14);
                            byte[] bArr2 = bArr;
                            long j14 = ((long) i14) + j11;
                            long jCurrentTimeMillis = System.currentTimeMillis();
                            long j15 = jCurrentTimeMillis - j13;
                            long j16 = jCurrentTimeMillis;
                            if (j14 - j12 <= f3582a || j15 <= f3583b) {
                                j16 = j13;
                                j10 = j12;
                            } else {
                                a(fileOutputStream);
                                j10 = j14;
                            }
                            float f10 = 100.0f;
                            if (i10 > 0) {
                                f10 = 100.0f * j14;
                            }
                            iVarE.a((int) (f10 / i10), j14, i10);
                            if (nVar.k()) {
                                break;
                            }
                            bArr = bArr2;
                            i14 = inputStream.read(bArr2);
                            j12 = j10;
                            j11 = j14;
                            j13 = j16;
                        }
                        a(fileOutputStream);
                        a(inputStream);
                        a((Closeable) fileOutputStream);
                        if (nVar.k()) {
                            if (file2.exists()) {
                                file2.delete();
                            }
                            httpURLConnection.disconnect();
                            return null;
                        }
                        iVarE.a(100, file2.length(), file2.length());
                        File file4 = new File(file2.getAbsolutePath().replace("tmp", "apk"));
                        file2.renameTo(file4);
                        try {
                            iVarE.a(file4);
                            httpURLConnection.disconnect();
                            return file4.getAbsolutePath();
                        } catch (Throwable th2) {
                            th = th2;
                            file2 = file4;
                            try {
                                if (file2.exists()) {
                                    file2.delete();
                                }
                                throw new h(-1013, th.getMessage(), th);
                            } catch (Throwable th3) {
                                httpURLConnection.disconnect();
                                throw th3;
                            }
                        }
                    } catch (Throwable th4) {
                        th = th4;
                    }
                }
            } catch (IOException e12) {
                e12.printStackTrace();
                if (e12 instanceof SocketTimeoutException) {
                    String str7 = "SocketTimeoutException(" + strH + ")";
                    com.aggmoread.sdk.z.a.d.f("DownloadNetworkImpl", str7);
                    throw new h(-1009, str7, e12);
                }
                if (e12 instanceof UnknownHostException) {
                    String str8 = "UnknownHostException(" + strH + ")";
                    com.aggmoread.sdk.z.a.d.f("DownloadNetworkImpl", str8);
                    throw new h(-1010, str8, e12);
                }
                if (!(e12 instanceof ConnectException)) {
                    throw new h(-1011, e12.getMessage(), e12);
                }
                String str9 = "ConnectException(" + strH + ")";
                com.aggmoread.sdk.z.a.d.f("DownloadNetworkImpl", str9);
                throw new h(-1001, str9, e12);
            }
        } catch (IllegalStateException e13) {
            e13.printStackTrace();
            throw new h(-1007, e13);
        } catch (Exception e14) {
            throw new h(-1008, e14);
        }
    }

    private String a(Map map, String str) {
        List list;
        int iLastIndexOf;
        String strA = g.a(str);
        if (map == null || (list = (List) map.get("Content-Type")) == null || list.size() <= 0) {
            return strA;
        }
        String str2 = (String) list.get(0);
        String strTrim = str2 == null ? "" : str2.trim();
        com.aggmoread.sdk.z.a.d.d("DownloadNetworkImpl", "Content-Type = " + strTrim);
        if (strTrim.startsWith("image/")) {
            String strSubstring = strTrim.substring(6);
            StringBuilder sb2 = new StringBuilder();
            sb2.append(strA);
            sb2.append(o0.f49827a);
            if ("jpeg".equals(strSubstring)) {
                strSubstring = "jpg";
            }
            sb2.append(strSubstring);
            return sb2.toString();
        }
        if (strTrim.startsWith(AdBaseConstants.MIME_APK)) {
            return strA + o0.f49827a + "apk";
        }
        int iLastIndexOf2 = str.lastIndexOf(47);
        String strSubstring2 = iLastIndexOf2 > 0 ? str.substring(iLastIndexOf2 + 1) : null;
        com.aggmoread.sdk.z.a.d.d("DownloadNetworkImpl", "lastPart = " + strSubstring2);
        if (strSubstring2 == null || strSubstring2.length() <= 0 || (iLastIndexOf = strSubstring2.lastIndexOf(46)) <= 0 || strSubstring2.length() - iLastIndexOf >= 10) {
            return strA;
        }
        return strA + strSubstring2.substring(iLastIndexOf);
    }

    private HttpURLConnection a(String str, int i10, int i11) throws h {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setRequestMethod("GET");
            if (httpURLConnection instanceof HttpsURLConnection) {
                X509HostnameVerifier x509HostnameVerifier = SSLSocketFactory.STRICT_HOSTNAME_VERIFIER;
                HttpsURLConnection httpsURLConnection = (HttpsURLConnection) httpURLConnection;
                SSLContext sSLContext = SSLContext.getInstance(SSLConnectionSocketFactory.TLS);
                sSLContext.init(null, new TrustManager[]{new a(null)}, new SecureRandom());
                httpsURLConnection.setSSLSocketFactory(sSLContext.getSocketFactory());
                httpsURLConnection.setHostnameVerifier(x509HostnameVerifier);
            }
            if (i10 > 0) {
                httpURLConnection.setConnectTimeout(i10);
            }
            if (i11 > 0) {
                httpURLConnection.setReadTimeout(i11);
            }
            return httpURLConnection;
        } catch (MalformedURLException e10) {
            e10.printStackTrace();
            throw new h(-1003, e10);
        } catch (IOException e11) {
            e11.printStackTrace();
            throw new h(-1004, e11);
        } catch (KeyManagementException e12) {
            e12.printStackTrace();
            throw new h(-1006, e12);
        } catch (NoSuchAlgorithmException e13) {
            e13.printStackTrace();
            throw new h(-1005, e13);
        } catch (Exception e14) {
            e14.printStackTrace();
            throw new h(-1000, "getDownloadConnection exception(" + str + ")", e14);
        }
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

    private void a(FileOutputStream fileOutputStream) {
        if (fileOutputStream != null) {
            try {
                com.aggmoread.sdk.z.a.d.d("DownloadNetworkImpl", "flush and sync to disk");
                fileOutputStream.flush();
                fileOutputStream.getFD().sync();
            } catch (IOException e10) {
                e10.printStackTrace();
            }
        }
    }

    private void a(Map<String, List<String>> map) {
        for (Map.Entry<String, List<String>> entry : map.entrySet()) {
            String key = entry.getKey();
            List<String> value = entry.getValue();
            StringBuilder sb2 = new StringBuilder();
            if (value != null && value.size() > 0) {
                for (int i10 = 0; i10 < value.size(); i10++) {
                    sb2.append(value.get(i10));
                    sb2.append(",");
                }
            }
            com.aggmoread.sdk.z.a.d.d("DownloadNetworkImpl", "header key = " + key + " , value = " + sb2.toString());
        }
    }

    private boolean a(int i10) {
        return i10 == 301 || i10 == 302 || i10 == 303 || i10 == 300 || i10 == 307 || i10 == 308;
    }
}

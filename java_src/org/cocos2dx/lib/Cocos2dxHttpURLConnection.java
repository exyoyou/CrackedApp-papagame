package org.cocos2dx.lib;

import com.j256.ormlite.stmt.query.SimpleComparison;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.security.KeyStore;
import java.security.cert.Certificate;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManagerFactory;
import net.lingala.zip4j.util.e;
import org.apache.http.conn.ssl.SSLConnectionSocketFactory;

/* JADX INFO: loaded from: classes10.dex */
public class Cocos2dxHttpURLConnection {
    private static final String POST_METHOD = "POST";
    private static final String PUT_METHOD = "PUT";

    static void addRequestHeader(HttpURLConnection httpURLConnection, String str, String str2) {
        httpURLConnection.setRequestProperty(str, str2);
    }

    public static String combinCookies(List<String> list, String str) {
        StringBuilder sb2 = new StringBuilder();
        Iterator<String> it2 = list.iterator();
        String str2 = "FALSE";
        String str3 = null;
        String str4 = null;
        String strStr2Seconds = null;
        String str5 = e.F0;
        String str6 = str;
        while (it2.hasNext()) {
            int i10 = 0;
            for (String str7 : it2.next().split(";")) {
                int iIndexOf = str7.indexOf(SimpleComparison.EQUAL_TO_OPERATION);
                if (-1 != iIndexOf) {
                    String[] strArr = {str7.substring(i10, iIndexOf), str7.substring(iIndexOf + 1)};
                    if ("expires".equalsIgnoreCase(strArr[i10].trim())) {
                        strStr2Seconds = str2Seconds(strArr[1].trim());
                    } else {
                        if ("path".equalsIgnoreCase(strArr[i10].trim())) {
                            str5 = strArr[1];
                        } else if ("secure".equalsIgnoreCase(strArr[0].trim())) {
                            str2 = strArr[1];
                        } else if ("domain".equalsIgnoreCase(strArr[0].trim())) {
                            str6 = strArr[1];
                        } else {
                            i10 = 0;
                            if (!"version".equalsIgnoreCase(strArr[0].trim()) && !"max-age".equalsIgnoreCase(strArr[0].trim())) {
                                str3 = strArr[0];
                                str4 = strArr[1];
                            }
                        }
                        i10 = 0;
                    }
                }
            }
            if (str6 == null) {
                str6 = "none";
            }
            sb2.append(str6);
            sb2.append('\t');
            sb2.append("FALSE");
            sb2.append('\t');
            sb2.append(str5);
            sb2.append('\t');
            sb2.append(str2);
            sb2.append('\t');
            sb2.append(strStr2Seconds);
            sb2.append("\t");
            sb2.append(str3);
            sb2.append("\t");
            sb2.append(str4);
            sb2.append('\n');
        }
        return sb2.toString();
    }

    static int connect(HttpURLConnection httpURLConnection) {
        try {
            httpURLConnection.connect();
            return 0;
        } catch (IOException e10) {
            e10.toString();
            return 1;
        }
    }

    static HttpURLConnection createHttpURLConnection(String str) {
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setRequestProperty("Accept-Encoding", "identity");
            httpURLConnection.setDoInput(true);
            return httpURLConnection;
        } catch (Exception e10) {
            e10.toString();
            return null;
        }
    }

    static void disconnect(HttpURLConnection httpURLConnection) {
        httpURLConnection.disconnect();
    }

    static int getResponseCode(HttpURLConnection httpURLConnection) {
        try {
            return httpURLConnection.getResponseCode();
        } catch (IOException e10) {
            e10.toString();
            return 0;
        }
    }

    static byte[] getResponseContent(HttpURLConnection httpURLConnection) {
        DataInputStream dataInputStream;
        byte[] bArr;
        ByteArrayOutputStream byteArrayOutputStream;
        try {
            try {
                dataInputStream = new DataInputStream(httpURLConnection.getInputStream());
                while (true) {
                    int i10 = dataInputStream.read(bArr, 0, 1024);
                    if (i10 == -1) {
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        byteArrayOutputStream.close();
                        return byteArray;
                    }
                    byteArrayOutputStream.write(bArr, 0, i10);
                }
            } catch (IOException unused) {
                dataInputStream = new DataInputStream(httpURLConnection.getErrorStream());
            } catch (Exception e10) {
                e10.toString();
                return null;
            }
            bArr = new byte[1024];
            byteArrayOutputStream = new ByteArrayOutputStream();
        } catch (Exception e11) {
            e11.toString();
            return null;
        }
    }

    static String getResponseHeaderByIdx(HttpURLConnection httpURLConnection, int i10) {
        Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
        if (headerFields == null) {
            return null;
        }
        int i11 = 0;
        for (Map.Entry<String, List<String>> entry : headerFields.entrySet()) {
            if (i11 == i10) {
                String key = entry.getKey();
                if (key == null) {
                    return listToString(entry.getValue(), ",") + "\n";
                }
                return key + ":" + listToString(entry.getValue(), ",") + "\n";
            }
            i11++;
        }
        return null;
    }

    static String getResponseHeaderByKey(HttpURLConnection httpURLConnection, String str) {
        Map<String, List<String>> headerFields;
        if (str == null || (headerFields = httpURLConnection.getHeaderFields()) == null) {
            return null;
        }
        for (Map.Entry<String, List<String>> entry : headerFields.entrySet()) {
            if (str.equalsIgnoreCase(entry.getKey())) {
                return "set-cookie".equalsIgnoreCase(str) ? combinCookies(entry.getValue(), httpURLConnection.getURL().getHost()) : listToString(entry.getValue(), ",");
            }
        }
        return null;
    }

    static int getResponseHeaderByKeyInt(HttpURLConnection httpURLConnection, String str) {
        String headerField = httpURLConnection.getHeaderField(str);
        if (headerField == null) {
            return 0;
        }
        return Integer.parseInt(headerField);
    }

    static String getResponseHeaders(HttpURLConnection httpURLConnection) {
        Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
        if (headerFields == null) {
            return null;
        }
        String str = "";
        for (Map.Entry<String, List<String>> entry : headerFields.entrySet()) {
            String key = entry.getKey();
            str = key == null ? str + listToString(entry.getValue(), ",") + "\n" : str + key + ":" + listToString(entry.getValue(), ",") + "\n";
        }
        return str;
    }

    static String getResponseMessage(HttpURLConnection httpURLConnection) {
        try {
            return httpURLConnection.getResponseMessage();
        } catch (IOException e10) {
            return e10.toString();
        }
    }

    public static String listToString(List<String> list, String str) {
        if (list == null) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        boolean z10 = false;
        for (String str2 : list) {
            if (z10) {
                sb2.append(str);
            }
            if (str2 == null) {
                str2 = "";
            }
            sb2.append(str2);
            z10 = true;
        }
        return sb2.toString();
    }

    static void sendRequest(HttpURLConnection httpURLConnection, byte[] bArr) {
        try {
            OutputStream outputStream = httpURLConnection.getOutputStream();
            if (bArr != null) {
                outputStream.write(bArr);
                outputStream.flush();
            }
            outputStream.close();
        } catch (IOException e10) {
            e10.toString();
        }
    }

    static void setReadAndConnectTimeout(HttpURLConnection httpURLConnection, int i10, int i11) {
        httpURLConnection.setReadTimeout(i10);
        httpURLConnection.setConnectTimeout(i11);
    }

    static void setRequestMethod(HttpURLConnection httpURLConnection, String str) {
        try {
            httpURLConnection.setRequestMethod(str);
            if (str.equalsIgnoreCase("POST") || str.equalsIgnoreCase("PUT")) {
                httpURLConnection.setDoOutput(true);
            }
        } catch (ProtocolException e10) {
            e10.toString();
        }
    }

    static void setVerifySSL(HttpURLConnection httpURLConnection, String str) {
        BufferedInputStream bufferedInputStream;
        if (httpURLConnection instanceof HttpsURLConnection) {
            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) httpURLConnection;
            try {
                if (str.startsWith(e.F0)) {
                    bufferedInputStream = new BufferedInputStream(new FileInputStream(str));
                } else {
                    bufferedInputStream = new BufferedInputStream(Cocos2dxHelper.getActivity().getAssets().open(str.substring(7)));
                }
                Certificate certificateGenerateCertificate = CertificateFactory.getInstance("X.509").generateCertificate(bufferedInputStream);
                System.out.println("ca=" + ((X509Certificate) certificateGenerateCertificate).getSubjectDN());
                bufferedInputStream.close();
                KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
                keyStore.load(null, null);
                keyStore.setCertificateEntry("ca", certificateGenerateCertificate);
                TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
                trustManagerFactory.init(keyStore);
                SSLContext sSLContext = SSLContext.getInstance(SSLConnectionSocketFactory.TLS);
                sSLContext.init(null, trustManagerFactory.getTrustManagers(), null);
                httpsURLConnection.setSSLSocketFactory(sSLContext.getSocketFactory());
            } catch (Exception e10) {
                e10.toString();
            }
        }
    }

    private static String str2Seconds(String str) {
        long timeInMillis;
        Calendar calendar = Calendar.getInstance();
        try {
            calendar.setTime(new SimpleDateFormat("EEE, dd-MMM-yy hh:mm:ss zzz", Locale.US).parse(str));
            timeInMillis = calendar.getTimeInMillis() / 1000;
        } catch (ParseException e10) {
            e10.toString();
            timeInMillis = 0;
        }
        return Long.toString(timeInMillis);
    }
}

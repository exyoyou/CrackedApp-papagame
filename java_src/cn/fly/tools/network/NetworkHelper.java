package cn.fly.tools.network;

import cn.fly.commons.C1293r;
import cn.fly.commons.j;
import cn.fly.commons.q;
import cn.fly.commons.x;
import cn.fly.tools.FlyLog;
import cn.fly.tools.proguard.EverythingKeeper;
import cn.fly.tools.proguard.PublicMemberKeeper;
import cn.fly.tools.utils.DH;
import cn.fly.tools.utils.Data;
import cn.fly.tools.utils.HashonHelper;
import cn.fly.tools.utils.ReflectHelper;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.NoRouteToHostException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.URLConnection;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.util.HashMap;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import kotlin.text.Typography;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.conn.ssl.X509HostnameVerifier;

/* JADX INFO: loaded from: classes7.dex */
public class NetworkHelper implements EverythingKeeper {
    private static final String CONTENT_TYPE_FORM = x.b("033ciif_chZbchXchcjTdk0dhgjefefefgjdecjcicegjcfciDfedbMcjcb4eNcb");
    private static final String CONTENT_TYPE_JSON = "application/json";
    public static int connectionTimeout = 0;
    private static boolean followRedirects = true;
    public static int readTimout;
    public boolean instanceFollowRedirects = followRedirects;

    public static class NetworkTimeOut implements PublicMemberKeeper {
        public int connectionTimeout;
        public int readTimout;
    }

    private static class a implements InvocationHandler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Object f2063a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f2064b;

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            String name = method.getName();
            if (name.equals("checkClientTrusted")) {
                return null;
            }
            if (!name.equals("checkServerTrusted")) {
                if (name.equals(x.b("018Fdi6ehIec)bbeihe cbddehehcf eEcieh"))) {
                    return Array.newInstance(Class.forName(x.b("034Vgf2c!ccHc%ckeh*ebScfcich1hUdbckLbeGci^h-ckffgheggidcWe@ci!h=chdech.bche")), 0);
                }
                if (name.equals(x.b("008gcSeh$gZdccjcb,e"))) {
                    return Integer.valueOf(hashCode());
                }
                if (name.equals("toString")) {
                    return toString();
                }
                return null;
            }
            Object[] objArr2 = (Object[]) objArr[0];
            String str = (String) objArr[1];
            if (objArr2 == null) {
                throw new IllegalArgumentException("there were no certificates.");
            }
            if (objArr2.length == 0) {
                throw new IllegalArgumentException("certificates is empty.");
            }
            if (this.f2063a == null) {
                throw new CertificateException("there were one more certificates but no trust manager found.");
            }
            for (Object obj2 : objArr2) {
                Method declaredMethod = obj2.getClass().getDeclaredMethod("checkValidity", new Class[0]);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(obj2, new Object[0]);
            }
            if (DH.SyncMtd.getOSVersionIntForFly() < 17) {
                Method declaredMethod2 = this.f2063a.getClass().getDeclaredMethod("checkServerTrusted", Array.newInstance(Class.forName(x.b("034;gf_cAcc;cNckeh8eb)cfcichZhAdbck_be3ci-hIckffgheggidc,eCciIhMchdech6bche")), 0).getClass(), String.class);
                declaredMethod2.setAccessible(true);
                declaredMethod2.invoke(this.f2063a, objArr2, str);
                return null;
            }
            Object objNewInstance = Class.forName("android.net.http.X509TrustManagerExtensions").getConstructor(Class.forName(x.b("030^gf%c%cc*c)dhck[deh*ckehehEf+ckffgheggiebcicfehXhFgbZcdcUdi8eUci"))).newInstance(this.f2063a);
            Method declaredMethod3 = objNewInstance.getClass().getDeclaredMethod("checkServerTrusted", Array.newInstance(Class.forName(x.b("034Agf-cYccSc3ckeh7eb=cfcichQh<dbck4be>ciShXckffgheggidc(e5ciBh[chdech?bche")), 0).getClass(), String.class, String.class);
            declaredMethod3.setAccessible(true);
            declaredMethod3.invoke(objNewInstance, objArr2, str, this.f2064b);
            return null;
        }

        private a(String str) {
            try {
                this.f2064b = str;
                Method declaredMethod = Class.forName(x.b("033RgfTcMcc1cMdhck!deh9ckeheh8fFckebcicfeh,h<gb]cdcSdi5eTcifbGcbhFcjcidb")).getDeclaredMethod(x.b("011Cdi_eh7ddFd!eh0hcdbe"), String.class);
                declaredMethod.setAccessible(true);
                Object objInvoke = declaredMethod.invoke(null, x.b("004!ffgheggi"));
                Method method = objInvoke.getClass().getMethod(x.b("004RchMdYch0h"), Class.forName(x.b("022Dgf2c>cc*cUckeh1eb8cfcichLhFdbckhb)e:dbdkSh*cjciQe")));
                method.setAccessible(true);
                method.invoke(objInvoke, null);
                Method method2 = objInvoke.getClass().getMethod(x.b("016,diTehCebcicfehXh*gb_cdcQdiOeOcieh"), new Class[0]);
                method2.setAccessible(true);
                Object[] objArr = (Object[]) method2.invoke(objInvoke, new Object[0]);
                if (objArr == null || objArr.length == 0) {
                    throw new NoSuchAlgorithmException("no trust manager found.");
                }
                this.f2063a = objArr[0];
            } catch (Exception e10) {
                FlyLog.getInstance().d("failed to initialize the standard trust manager: " + e10.getMessage(), new Object[0]);
                this.f2063a = null;
            }
        }
    }

    public static Object getTrustManager(String str) throws Throwable {
        Class<?> cls = Class.forName(x.b("0309gf5c$ccNc.dhck<deh9ckehehKf$ckffgheggiebcicfehEh0gbFcdc%diKeXci"));
        return Proxy.newProxyInstance(ClassLoader.getSystemClassLoader(), new Class[]{cls}, new a(str));
    }

    private String handleResponse(HttpURLConnection httpURLConnection, int i10, HttpResponseCallback httpResponseCallback, long j10) throws Throwable {
        try {
            if (i10 != 200 && i10 >= 300) {
                String stream = readStream(httpURLConnection.getErrorStream());
                HashMap map = new HashMap();
                map.put(x.b("005e)cicicjci"), stream);
                map.put(x.b("006Neh0hchScfeh"), Integer.valueOf(i10));
                throw new Throwable(HashonHelper.fromHashMap(map));
            }
            if (httpResponseCallback == null) {
                String stream2 = readStream(httpURLConnection.getInputStream());
                httpURLConnection.disconnect();
                return stream2;
            }
            httpResponseCallback.onResponse(new HttpConnectionImpl23(httpURLConnection));
            FlyLog.getInstance().i("use time: " + (System.currentTimeMillis() - j10));
            httpURLConnection.disconnect();
            return null;
        } catch (Throwable th) {
            httpURLConnection.disconnect();
            throw th;
        }
    }

    public static boolean isRedirects(HttpURLConnection httpURLConnection) {
        try {
            return httpURLConnection.getResponseCode() == 301 || httpURLConnection.getResponseCode() == 302 || httpURLConnection.getResponseCode() == 304 || httpURLConnection.getResponseCode() == 307 || httpURLConnection.getResponseCode() == 308;
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return false;
        }
    }

    private String postRequest(String str, HashMap<String, Object> map, HashMap<String, String> map2, NetworkTimeOut networkTimeOut, String str2, HttpResponseCallback httpResponseCallback) throws Throwable {
        OutputStream outputStream;
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            FlyLog.getInstance().d("postRequest: " + str + "\nhd: " + map2, new Object[0]);
            HttpURLConnection connection = getConnection(str, networkTimeOut);
            connection.setDoOutput(true);
            connection.setRequestProperty(x.b("010Bdccj)ddebhVchcj4d"), "Keep-Alive");
            connection.setRequestProperty("Content-Type", str2);
            if (map2 != null) {
                for (Map.Entry<String, String> entry : map2.entrySet()) {
                    connection.setRequestProperty(entry.getKey(), entry.getValue());
                }
            }
            StringPart stringPart = new StringPart();
            if (map != null) {
                if ("application/json".equals(str2)) {
                    stringPart.append(HashonHelper.fromHashMap(map));
                } else {
                    stringPart.append(requestParamsToUrl(map));
                }
            }
            if ("application/json".equals(str2)) {
                connection.setChunkedStreamingMode(0);
            } else if (CONTENT_TYPE_FORM.equals(str2)) {
                connection.setFixedLengthStreamingMode((int) stringPart.length());
            }
            connection.setInstanceFollowRedirects(this.instanceFollowRedirects);
            connection.connect();
            InputStream inputStream = null;
            try {
                outputStream = connection.getOutputStream();
                try {
                    inputStream = stringPart.toInputStream();
                    transferData(inputStream, outputStream);
                    C1293r.a(inputStream, outputStream);
                    return handleResponse(connection, connection.getResponseCode(), httpResponseCallback, jCurrentTimeMillis);
                } catch (Throwable th) {
                    th = th;
                    C1293r.a(inputStream, outputStream);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                outputStream = null;
            }
        } catch (Throwable th3) {
            handleNetworkError(th3);
            throw th3;
        }
    }

    private String readStream(InputStream inputStream) throws Throwable {
        InputStreamReader inputStreamReader;
        StringBuilder sb2 = new StringBuilder();
        BufferedReader bufferedReader = null;
        try {
            inputStreamReader = new InputStreamReader(inputStream, "UTF-8");
            try {
                BufferedReader bufferedReader2 = new BufferedReader(inputStreamReader);
                while (true) {
                    try {
                        String line = bufferedReader2.readLine();
                        if (line == null) {
                            C1293r.a(bufferedReader2, inputStreamReader);
                            return sb2.toString();
                        }
                        if (sb2.length() > 0) {
                            sb2.append('\n');
                        }
                        sb2.append(line);
                    } catch (Throwable th) {
                        th = th;
                        bufferedReader = bufferedReader2;
                        C1293r.a(bufferedReader, inputStreamReader);
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
            inputStreamReader = null;
        }
    }

    private void transferData(InputStream inputStream, OutputStream outputStream) throws Throwable {
        byte[] bArr = new byte[65536];
        while (true) {
            int i10 = inputStream.read(bArr);
            if (i10 <= 0) {
                outputStream.flush();
                return;
            }
            outputStream.write(bArr, 0, i10);
        }
    }

    public void download(String str, final OutputStream outputStream, NetworkTimeOut networkTimeOut) throws Throwable {
        final byte[] bArr = new byte[1024];
        rawGet(str, new RawNetworkCallback() { // from class: cn.fly.tools.network.NetworkHelper.1
            @Override // cn.fly.tools.network.RawNetworkCallback
            public void onResponse(InputStream inputStream) throws Throwable {
                int i10 = inputStream.read(bArr);
                while (i10 != -1) {
                    outputStream.write(bArr, 0, i10);
                    i10 = inputStream.read(bArr);
                }
            }
        }, networkTimeOut);
        outputStream.flush();
    }

    public HttpURLConnection getConnection(String str, NetworkTimeOut networkTimeOut) throws Throwable {
        Object staticField;
        boolean z10;
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        String strB = x.b("0126ceEehgRcjcbebcjdg%ed$eh");
        try {
            staticField = ReflectHelper.getInstanceField(httpURLConnection, strB);
        } catch (Throwable unused) {
            staticField = null;
        }
        if (staticField == null) {
            strB = "PERMITTED_USER_METHODS";
            try {
                staticField = ReflectHelper.getStaticField("HttpURLConnection", "PERMITTED_USER_METHODS");
            } catch (Throwable unused2) {
            }
            z10 = true;
        } else {
            z10 = false;
        }
        if (staticField != null) {
            String[] strArr = (String[]) staticField;
            String[] strArr2 = new String[strArr.length + 1];
            System.arraycopy(strArr, 0, strArr2, 0, strArr.length);
            strArr2[strArr.length] = x.b("005[fkecebdcej");
            if (z10) {
                ReflectHelper.setStaticField("HttpURLConnection", strB, strArr2);
            } else {
                ReflectHelper.setInstanceField(httpURLConnection, strB, strArr2);
            }
        }
        System.setProperty("http.keepAlive", "false");
        if (httpURLConnection instanceof HttpsURLConnection) {
            X509HostnameVerifier x509HostnameVerifier = SSLSocketFactory.STRICT_HOSTNAME_VERIFIER;
            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) httpURLConnection;
            SSLContext sSLContext = SSLContext.getInstance(x.b("0030ebeddk"));
            TrustManager[] trustManagerArr = new TrustManager[0];
            try {
                trustManagerArr = new TrustManager[]{(TrustManager) getTrustManager(httpsURLConnection.getURL().getHost())};
            } catch (Throwable th) {
                FlyLog.getInstance().e(th);
            }
            sSLContext.init(null, trustManagerArr, new SecureRandom());
            httpsURLConnection.setSSLSocketFactory(sSLContext.getSocketFactory());
            httpsURLConnection.setHostnameVerifier(x509HostnameVerifier);
        }
        int i10 = networkTimeOut == null ? connectionTimeout : networkTimeOut.connectionTimeout;
        if (i10 > 0) {
            httpURLConnection.setConnectTimeout(i10);
        }
        int i11 = networkTimeOut == null ? readTimout : networkTimeOut.readTimout;
        if (i11 > 0) {
            httpURLConnection.setReadTimeout(i11);
        }
        return httpURLConnection;
    }

    public void handleNetworkError(Throwable th) {
        if ((th instanceof UnknownHostException) || (th instanceof NoRouteToHostException) || (th instanceof SocketTimeoutException) || (th instanceof ConnectException)) {
            j.a().d();
        }
    }

    public String httpGet(String str, HashMap<String, Object> map, HashMap<String, String> map2) throws Throwable {
        NetworkTimeOut networkTimeOut = new NetworkTimeOut();
        networkTimeOut.readTimout = 30000;
        networkTimeOut.connectionTimeout = 10000;
        return httpGetNew(str, map, map2, networkTimeOut);
    }

    public String httpGetNew(String str, HashMap<String, Object> map, HashMap<String, String> map2, NetworkTimeOut networkTimeOut) throws Throwable {
        InputStreamReader inputStreamReader;
        InputStreamReader inputStreamReader2;
        try {
            FlyLog.getInstance().d(String.format("hgt: %s", str) + "\n" + String.format("hd: %s", map2), new Object[0]);
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (map != null) {
                String strRequestParamsToUrl = requestParamsToUrl(map);
                if (strRequestParamsToUrl.length() > 0) {
                    str = str + "?" + strRequestParamsToUrl;
                }
            }
            HttpURLConnection connection = getConnection(str, networkTimeOut);
            setHeader(connection, map2);
            connection.setInstanceFollowRedirects(this.instanceFollowRedirects);
            connection.connect();
            int responseCode = connection.getResponseCode();
            BufferedReader bufferedReader = null;
            if (responseCode == 200) {
                StringBuilder sb2 = new StringBuilder();
                try {
                    inputStreamReader2 = new InputStreamReader(connection.getInputStream(), Charset.forName("utf-8"));
                    try {
                        BufferedReader bufferedReader2 = new BufferedReader(inputStreamReader2);
                        try {
                            for (String line = bufferedReader2.readLine(); line != null; line = bufferedReader2.readLine()) {
                                if (sb2.length() > 0) {
                                    sb2.append('\n');
                                }
                                sb2.append(line);
                            }
                            C1293r.a(bufferedReader2, inputStreamReader2);
                            connection.disconnect();
                            String string = sb2.toString();
                            FlyLog.getInstance().d("use time: " + (System.currentTimeMillis() - jCurrentTimeMillis), new Object[0]);
                            return string;
                        } catch (Throwable th) {
                            th = th;
                            bufferedReader = bufferedReader2;
                            C1293r.a(bufferedReader, inputStreamReader2);
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    inputStreamReader2 = null;
                }
            } else {
                StringBuilder sb3 = new StringBuilder();
                try {
                    inputStreamReader = new InputStreamReader(connection.getErrorStream(), Charset.forName("utf-8"));
                    try {
                        BufferedReader bufferedReader3 = new BufferedReader(inputStreamReader);
                        try {
                            for (String line2 = bufferedReader3.readLine(); line2 != null; line2 = bufferedReader3.readLine()) {
                                if (sb3.length() > 0) {
                                    sb3.append('\n');
                                }
                                sb3.append(line2);
                            }
                            C1293r.a(bufferedReader3, inputStreamReader);
                            connection.disconnect();
                            HashMap map3 = new HashMap();
                            map3.put(x.b("005e2cicicjci"), sb3.toString());
                            map3.put(x.b("006!eh8hchRcfeh"), Integer.valueOf(responseCode));
                            throw new Throwable(HashonHelper.fromHashMap(map3));
                        } catch (Throwable th4) {
                            th = th4;
                            bufferedReader = bufferedReader3;
                            C1293r.a(bufferedReader, inputStreamReader);
                            throw th;
                        }
                    } catch (Throwable th5) {
                        th = th5;
                    }
                } catch (Throwable th6) {
                    th = th6;
                    inputStreamReader = null;
                }
            }
        } catch (Throwable th7) {
            handleNetworkError(th7);
            throw th7;
        }
    }

    public String httpPostNew(String str, HashMap<String, Object> map, HashMap<String, String> map2, NetworkTimeOut networkTimeOut) throws Throwable {
        return postRequest(str, map, map2, networkTimeOut, CONTENT_TYPE_FORM, null);
    }

    public void httpPostWithBytes(String str, byte[] bArr, HashMap<String, String> map, int i10, HttpResponseCallback httpResponseCallback, NetworkTimeOut networkTimeOut) throws Throwable {
        ByteArrayInputStream byteArrayInputStream;
        OutputStream outputStream;
        ByteArrayOutputStream byteArrayOutputStream;
        DataOutputStream dataOutputStream;
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            FlyLog.getInstance().d("hpt: " + str, new Object[0]);
            HttpURLConnection connection = getConnection(str, networkTimeOut);
            connection.setDoOutput(true);
            if (i10 >= 0) {
                connection.setChunkedStreamingMode(0);
            }
            setHeader(connection, map);
            connection.setRequestProperty(x.b("010]dccjZddebh5chcj8d"), "Keep-Alive");
            connection.setRequestProperty("Content-Type", "application/octet-stream");
            connection.setInstanceFollowRedirects(this.instanceFollowRedirects);
            connection.connect();
            try {
                outputStream = connection.getOutputStream();
                try {
                    String strA = q.a();
                    if (strA == null) {
                        strA = "";
                    }
                    byte[] bytes = strA.getBytes("utf-8");
                    byteArrayOutputStream = new ByteArrayOutputStream();
                    try {
                        dataOutputStream = new DataOutputStream(byteArrayOutputStream);
                        try {
                            dataOutputStream.writeInt(bytes.length);
                            dataOutputStream.write(bytes);
                            dataOutputStream.write(bArr);
                            dataOutputStream.flush();
                            byteArrayInputStream = new ByteArrayInputStream(byteArrayOutputStream.toByteArray());
                            try {
                                transferData(byteArrayInputStream, outputStream);
                                if (httpResponseCallback != null) {
                                    try {
                                        httpResponseCallback.onResponse(new HttpConnectionImpl23(connection));
                                        connection.disconnect();
                                    } catch (Throwable th) {
                                        try {
                                            throw th;
                                        } catch (Throwable th2) {
                                            connection.disconnect();
                                            throw th2;
                                        }
                                    }
                                } else {
                                    connection.disconnect();
                                }
                                connection.disconnect();
                                C1293r.a(byteArrayInputStream, outputStream, dataOutputStream, byteArrayOutputStream);
                                FlyLog.getInstance().d("use time: " + (System.currentTimeMillis() - jCurrentTimeMillis), new Object[0]);
                            } catch (Throwable th3) {
                                th = th3;
                                connection.disconnect();
                                C1293r.a(byteArrayInputStream, outputStream, dataOutputStream, byteArrayOutputStream);
                                FlyLog.getInstance().d("use time: " + (System.currentTimeMillis() - jCurrentTimeMillis), new Object[0]);
                                throw th;
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            byteArrayInputStream = null;
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        byteArrayInputStream = null;
                        dataOutputStream = null;
                        connection.disconnect();
                        C1293r.a(byteArrayInputStream, outputStream, dataOutputStream, byteArrayOutputStream);
                        FlyLog.getInstance().d("use time: " + (System.currentTimeMillis() - jCurrentTimeMillis), new Object[0]);
                        throw th;
                    }
                } catch (Throwable th6) {
                    th = th6;
                    byteArrayInputStream = null;
                    byteArrayOutputStream = null;
                    dataOutputStream = null;
                    connection.disconnect();
                    C1293r.a(byteArrayInputStream, outputStream, dataOutputStream, byteArrayOutputStream);
                    FlyLog.getInstance().d("use time: " + (System.currentTimeMillis() - jCurrentTimeMillis), new Object[0]);
                    throw th;
                }
            } catch (Throwable th7) {
                th = th7;
                byteArrayInputStream = null;
                outputStream = null;
            }
        } catch (Throwable th8) {
            handleNetworkError(th8);
            throw th8;
        }
    }

    public String jsonPost(String str, HashMap<String, Object> map, HashMap<String, String> map2, NetworkTimeOut networkTimeOut) throws Throwable {
        final HashMap map3 = new HashMap();
        postRequest(str, map, map2, networkTimeOut, "application/json", new HttpResponseCallback() { // from class: cn.fly.tools.network.NetworkHelper.2
            @Override // cn.fly.tools.network.HttpResponseCallback
            public void onResponse(HttpConnection httpConnection) throws Throwable {
                InputStreamReader inputStreamReader;
                InputStreamReader inputStreamReader2;
                int responseCode = httpConnection.getResponseCode();
                StringBuilder sb2 = new StringBuilder();
                BufferedReader bufferedReader = null;
                if (responseCode == 200 || responseCode == 201) {
                    try {
                        inputStreamReader = new InputStreamReader(httpConnection.getInputStream(), Charset.forName("utf-8"));
                        try {
                            BufferedReader bufferedReader2 = new BufferedReader(inputStreamReader);
                            try {
                                for (String line = bufferedReader2.readLine(); line != null; line = bufferedReader2.readLine()) {
                                    if (sb2.length() > 0) {
                                        sb2.append('\n');
                                    }
                                    sb2.append(line);
                                }
                                C1293r.a(bufferedReader2, inputStreamReader);
                                map3.put(x.b("003+ci5eYeh"), sb2.toString());
                            } catch (Throwable th) {
                                th = th;
                                bufferedReader = bufferedReader2;
                                C1293r.a(bufferedReader, inputStreamReader);
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        inputStreamReader = null;
                    }
                } else {
                    try {
                        inputStreamReader2 = new InputStreamReader(httpConnection.getErrorStream(), Charset.forName("utf-8"));
                        try {
                            BufferedReader bufferedReader3 = new BufferedReader(inputStreamReader2);
                            try {
                                for (String line2 = bufferedReader3.readLine(); line2 != null; line2 = bufferedReader3.readLine()) {
                                    if (sb2.length() > 0) {
                                        sb2.append('\n');
                                    }
                                    sb2.append(line2);
                                }
                                C1293r.a(bufferedReader3, inputStreamReader2);
                                HashMap map4 = new HashMap();
                                map4.put(x.b("005eBcicicjci"), sb2.toString());
                                map4.put(x.b("006+eh?hchEcfeh"), Integer.valueOf(responseCode));
                                new HashonHelper();
                                throw new Throwable(HashonHelper.fromHashMap(map4));
                            } catch (Throwable th4) {
                                th = th4;
                                bufferedReader = bufferedReader3;
                                C1293r.a(bufferedReader, inputStreamReader2);
                                throw th;
                            }
                        } catch (Throwable th5) {
                            th = th5;
                        }
                    } catch (Throwable th6) {
                        th = th6;
                        inputStreamReader2 = null;
                    }
                }
            }
        });
        if (map3.containsKey(x.b("003OciQe%eh"))) {
            return (String) map3.get(x.b("003AciOe*eh"));
        }
        return null;
    }

    public void rawGet(String str, RawNetworkCallback rawNetworkCallback, NetworkTimeOut networkTimeOut) throws Throwable {
        rawGet(str, new HashMap<>(), rawNetworkCallback, networkTimeOut);
    }

    public void rawPost(String str, HashMap<String, String> map, HTTPPart hTTPPart, int i10, HttpResponseCallback httpResponseCallback, NetworkTimeOut networkTimeOut) throws Throwable {
        OutputStream outputStream;
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            FlyLog.getInstance().d("hptr: " + str, new Object[0]);
            HttpURLConnection connection = getConnection(str, networkTimeOut);
            connection.setDoOutput(true);
            if (i10 >= 0) {
                connection.setChunkedStreamingMode(0);
            }
            setHeader(connection, map);
            connection.setInstanceFollowRedirects(this.instanceFollowRedirects);
            connection.connect();
            InputStream inputStream = null;
            try {
                outputStream = connection.getOutputStream();
                try {
                    inputStream = hTTPPart.toInputStream();
                    byte[] bArr = new byte[65536];
                    for (int i11 = inputStream.read(bArr); i11 > 0; i11 = inputStream.read(bArr)) {
                        outputStream.write(bArr, 0, i11);
                    }
                    outputStream.flush();
                    C1293r.a(inputStream, outputStream);
                    if (httpResponseCallback != null) {
                        try {
                            httpResponseCallback.onResponse(new HttpConnectionImpl23(connection));
                            connection.disconnect();
                        } catch (Throwable th) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                connection.disconnect();
                                throw th2;
                            }
                        }
                    } else {
                        connection.disconnect();
                    }
                    FlyLog.getInstance().d("use time: " + (System.currentTimeMillis() - jCurrentTimeMillis), new Object[0]);
                } catch (Throwable th3) {
                    th = th3;
                    C1293r.a(inputStream, outputStream);
                    throw th;
                }
            } catch (Throwable th4) {
                th = th4;
                outputStream = null;
            }
        } catch (Throwable th5) {
            handleNetworkError(th5);
            throw th5;
        }
    }

    public String requestParamsToUrl(HashMap<String, Object> map) throws Throwable {
        StringBuilder sb2 = new StringBuilder();
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            String strUrlEncode = Data.urlEncode(entry.getKey(), "utf-8");
            String strUrlEncode2 = entry.getValue() == null ? "" : Data.urlEncode(String.valueOf(entry.getValue()), "utf-8");
            if (sb2.length() > 0) {
                sb2.append(Typography.amp);
            }
            sb2.append(strUrlEncode);
            sb2.append('=');
            sb2.append(strUrlEncode2);
        }
        return sb2.toString();
    }

    public void setHeader(URLConnection uRLConnection, HashMap<String, String> map) {
        if (map == null || map.isEmpty()) {
            return;
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            uRLConnection.setRequestProperty(entry.getKey(), entry.getValue());
        }
    }

    public void rawGet(String str, HashMap<String, String> map, RawNetworkCallback rawNetworkCallback, NetworkTimeOut networkTimeOut) throws Throwable {
        InputStreamReader inputStreamReader;
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            FlyLog.getInstance().d("rawGet: " + str, new Object[0]);
            HttpURLConnection connection = getConnection(str, networkTimeOut);
            setHeader(connection, map);
            connection.setInstanceFollowRedirects(this.instanceFollowRedirects);
            connection.connect();
            int responseCode = connection.getResponseCode();
            if (responseCode == 200) {
                if (rawNetworkCallback != null) {
                    InputStream inputStream = connection.getInputStream();
                    try {
                        rawNetworkCallback.onResponse(inputStream);
                        C1293r.a(inputStream);
                        connection.disconnect();
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            C1293r.a(inputStream);
                            connection.disconnect();
                            throw th2;
                        }
                    }
                } else {
                    connection.disconnect();
                }
                FlyLog.getInstance().d("use time: " + (System.currentTimeMillis() - jCurrentTimeMillis), new Object[0]);
                return;
            }
            if (isRedirects(connection)) {
                rawGet(connection.getHeaderField(x.b("0080edcj%bchPchcj6d")), new HashMap<>(), rawNetworkCallback, networkTimeOut);
                return;
            }
            StringBuilder sb2 = new StringBuilder();
            BufferedReader bufferedReader = null;
            try {
                inputStreamReader = new InputStreamReader(connection.getErrorStream(), Charset.forName("utf-8"));
                try {
                    BufferedReader bufferedReader2 = new BufferedReader(inputStreamReader);
                    try {
                        for (String line = bufferedReader2.readLine(); line != null; line = bufferedReader2.readLine()) {
                            if (sb2.length() > 0) {
                                sb2.append('\n');
                            }
                            sb2.append(line);
                        }
                        C1293r.a(bufferedReader2, inputStreamReader);
                        connection.disconnect();
                        HashMap map2 = new HashMap();
                        map2.put(x.b("005e>cicicjci"), sb2.toString());
                        map2.put(x.b("0068ehUhch)cfeh"), Integer.valueOf(responseCode));
                        throw new Throwable(HashonHelper.fromHashMap(map2));
                    } catch (Throwable th3) {
                        th = th3;
                        bufferedReader = bufferedReader2;
                        C1293r.a(bufferedReader, inputStreamReader);
                        throw th;
                    }
                } catch (Throwable th4) {
                    th = th4;
                }
            } catch (Throwable th5) {
                th = th5;
                inputStreamReader = null;
            }
        } catch (Throwable th6) {
            handleNetworkError(th6);
            throw th6;
        }
    }

    public void jsonPost(String str, HashMap<String, Object> map, HashMap<String, String> map2, NetworkTimeOut networkTimeOut, HttpResponseCallback httpResponseCallback) throws Throwable {
        postRequest(str, map, map2, networkTimeOut, "application/json", httpResponseCallback);
    }

    public void rawGet(String str, HttpResponseCallback httpResponseCallback, NetworkTimeOut networkTimeOut) throws Throwable {
        rawGet(str, new HashMap<>(), httpResponseCallback, networkTimeOut);
    }

    public void rawGet(String str, HashMap<String, String> map, HttpResponseCallback httpResponseCallback, NetworkTimeOut networkTimeOut) throws Throwable {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            FlyLog.getInstance().d("rawGet: " + str, new Object[0]);
            HttpURLConnection connection = getConnection(str, networkTimeOut);
            setHeader(connection, map);
            connection.setInstanceFollowRedirects(this.instanceFollowRedirects);
            connection.connect();
            if (isRedirects(connection)) {
                rawGet(connection.getHeaderField(x.b("008'edcjMbchAchcjXd")), new HashMap<>(), httpResponseCallback, networkTimeOut);
            } else if (httpResponseCallback != null) {
                try {
                    httpResponseCallback.onResponse(new HttpConnectionImpl23(connection));
                    connection.disconnect();
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        connection.disconnect();
                        throw th2;
                    }
                }
            } else {
                connection.disconnect();
            }
            FlyLog.getInstance().d("use time: " + (System.currentTimeMillis() - jCurrentTimeMillis), new Object[0]);
        } catch (Throwable th3) {
            handleNetworkError(th3);
            throw th3;
        }
    }
}

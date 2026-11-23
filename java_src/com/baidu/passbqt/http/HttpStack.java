package com.baidu.passbqt.http;

import android.text.TextUtils;
import com.j256.ormlite.stmt.query.SimpleComparison;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import x.a;

/* JADX INFO: loaded from: classes6.dex */
public class HttpStack {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f8323a = "HttpStack";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f8324b = "Set-Cookie";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final char[] f8325c = "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f8326f = "User-Agent";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int f8327g = 15000;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f8328d = "AgzTBLLDxWSdvY0AbyfzsK8KCwpuSV";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f8329e = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private HttpRequestHandler f8330h = null;

    /* JADX INFO: renamed from: com.baidu.passbqt.http.HttpStack$1, reason: invalid class name */
    /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f8331a;

        static {
            int[] iArr = new int[Method.values().length];
            f8331a = iArr;
            try {
                iArr[Method.GET.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f8331a[Method.POST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private HttpURLConnection b(PassHttpParamDTO passHttpParamDTO) throws IOException {
        URL url = new URL(passHttpParamDTO.f8360a);
        HttpURLConnection httpURLConnection = TextUtils.isEmpty(passHttpParamDTO.f8368i) ? (HttpURLConnection) url.openConnection() : (HttpURLConnection) url.openConnection(new Proxy(Proxy.Type.HTTP, new InetSocketAddress(passHttpParamDTO.f8368i, passHttpParamDTO.f8369j)));
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setDoOutput(true);
        return httpURLConnection;
    }

    public HttpStack a(HttpRequestHandler httpRequestHandler) {
        this.f8330h = httpRequestHandler;
        return this;
    }

    /* JADX WARN: Code duplicated, block: B:44:0x0075 A[EXC_TOP_SPLITTER, PHI: r2
      0x0075: PHI (r2v3 java.io.OutputStream) = (r2v2 java.io.OutputStream), (r2v4 java.io.OutputStream) binds: [B:26:0x0080, B:19:0x0073] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    public void a(PassHttpClientRequest passHttpClientRequest) throws IOException, IllegalArgumentException {
        HttpURLConnection httpURLConnectionA;
        byte[] bArrA;
        HttpResponseHandler httpResponseHandler;
        if (passHttpClientRequest == null || passHttpClientRequest.f8353f) {
            return;
        }
        a();
        int i10 = AnonymousClass1.f8331a[passHttpClientRequest.f8352e.ordinal()];
        OutputStream outputStream = null;
        if (i10 == 1) {
            httpURLConnectionA = a(passHttpClientRequest.f8351d);
            bArrA = null;
        } else {
            if (i10 != 2) {
                throw new IllegalArgumentException(passHttpClientRequest.f8352e + " method not support");
            }
            httpURLConnectionA = b(passHttpClientRequest.f8351d);
            bArrA = a(httpURLConnectionA, passHttpClientRequest.f8351d);
        }
        a(httpURLConnectionA, passHttpClientRequest.f8351d.f8364e);
        a(httpURLConnectionA, passHttpClientRequest.f8351d.f8362c);
        a(httpURLConnectionA, passHttpClientRequest.f8351d.f8367h);
        PassHttpCookieUtil.a(passHttpClientRequest.f8348a, httpURLConnectionA, passHttpClientRequest.f8351d);
        if (bArrA != null) {
            try {
                outputStream = httpURLConnectionA.getOutputStream();
                if (outputStream != null) {
                    outputStream.write(bArrA);
                    outputStream.flush();
                }
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (Exception unused) {
                    }
                }
            } catch (Exception unused2) {
                if (outputStream != null) {
                    outputStream.close();
                }
            } catch (Throwable th) {
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (Exception unused3) {
                    }
                }
                throw th;
            }
        }
        InputStream inputStream = httpURLConnectionA.getInputStream();
        int responseCode = httpURLConnectionA.getResponseCode();
        HashMap<String, String> mapA = a(httpURLConnectionA);
        byte[] bArrA2 = a(inputStream);
        try {
            inputStream.close();
        } catch (Exception unused4) {
        }
        PassHttpCookieUtil.b(passHttpClientRequest.f8348a, httpURLConnectionA, passHttpClientRequest.f8351d);
        if (passHttpClientRequest.f8353f || (httpResponseHandler = passHttpClientRequest.f8349b) == null) {
            return;
        }
        httpResponseHandler.c(responseCode, mapA, bArrA2);
    }

    private void a(HttpURLConnection httpURLConnection, HashMap<String, String> map) {
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
            }
        }
    }

    public void a(HttpURLConnection httpURLConnection, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        httpURLConnection.setRequestProperty("User-Agent", str);
    }

    private void a(HttpURLConnection httpURLConnection, int i10) {
        httpURLConnection.setConnectTimeout(i10 == 0 ? 15000 : i10);
        if (i10 == 0) {
            i10 = 15000;
        }
        httpURLConnection.setReadTimeout(i10);
    }

    private byte[] a(HttpURLConnection httpURLConnection, PassHttpParamDTO passHttpParamDTO) throws IOException {
        HttpHashMap httpHashMap = passHttpParamDTO.f8363d;
        if (httpHashMap instanceof MultipartHashMap) {
            httpURLConnection.setRequestProperty("Content-Type", "multipart/form-data;boundary=" + this.f8328d);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            HttpHashMap httpHashMap2 = passHttpParamDTO.f8363d;
            if (httpHashMap2 != null) {
                for (Map.Entry entry : httpHashMap2.a().entrySet()) {
                    if (!TextUtils.isEmpty((CharSequence) entry.getKey()) && !TextUtils.isEmpty((CharSequence) entry.getValue())) {
                        a(byteArrayOutputStream, URLEncoder.encode((String) entry.getKey(), "UTF-8"), URLEncoder.encode((String) entry.getValue(), "UTF-8"));
                    }
                }
            }
            MultipartHashMap.FileWrapper fileWrapper = ((MultipartHashMap) passHttpParamDTO.f8363d).f8335a;
            a(byteArrayOutputStream, fileWrapper.f8336a, fileWrapper.f8337b, fileWrapper.f8339d, fileWrapper.f8338c);
            a(byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        }
        if (!(httpHashMap instanceof HttpHashMap)) {
            return null;
        }
        byte[] bytes = a(httpHashMap).getBytes("UTF-8");
        HttpRequestHandler httpRequestHandler = this.f8330h;
        return httpRequestHandler != null ? httpRequestHandler.a(bytes) : bytes;
    }

    private HttpURLConnection a(PassHttpParamDTO passHttpParamDTO) throws IOException {
        HttpURLConnection httpURLConnection;
        String strA = a(passHttpParamDTO.f8363d);
        if (!TextUtils.isEmpty(strA)) {
            passHttpParamDTO.f8360a += "?" + strA;
        }
        URL url = new URL(passHttpParamDTO.f8360a);
        if (TextUtils.isEmpty(passHttpParamDTO.f8368i)) {
            httpURLConnection = (HttpURLConnection) url.openConnection();
        } else {
            httpURLConnection = (HttpURLConnection) url.openConnection(new Proxy(Proxy.Type.HTTP, new InetSocketAddress(passHttpParamDTO.f8368i, passHttpParamDTO.f8369j)));
        }
        httpURLConnection.setRequestMethod("GET");
        httpURLConnection.setUseCaches(false);
        return httpURLConnection;
    }

    private byte[] a(InputStream inputStream) {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(byteArrayOutputStream);
        byte[] bArr = new byte[8192];
        while (true) {
            try {
                try {
                    try {
                        try {
                            try {
                                int i10 = bufferedInputStream.read(bArr);
                                if (i10 <= 0) {
                                    break;
                                }
                                bufferedOutputStream.write(bArr, 0, i10);
                            } catch (IOException e10) {
                                e10.printStackTrace();
                                try {
                                    bufferedOutputStream.close();
                                } catch (IOException e11) {
                                    e11.printStackTrace();
                                }
                                try {
                                    bufferedInputStream.close();
                                } catch (IOException e12) {
                                    e12.printStackTrace();
                                }
                                try {
                                    byteArrayOutputStream.close();
                                } catch (IOException e13) {
                                    e13.printStackTrace();
                                }
                                return null;
                            }
                        } catch (Throwable th) {
                            bufferedOutputStream.close();
                            bufferedInputStream.close();
                            byteArrayOutputStream.close();
                            throw th;
                        }
                        bufferedOutputStream.close();
                    } catch (IOException e14) {
                        e14.printStackTrace();
                    }
                    byteArrayOutputStream.close();
                    throw th;
                } catch (IOException e15) {
                    e15.printStackTrace();
                    throw th;
                }
                bufferedInputStream.close();
            } catch (IOException e16) {
                e16.printStackTrace();
            }
        }
        bufferedOutputStream.flush();
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        try {
            bufferedOutputStream.close();
        } catch (IOException e17) {
            e17.printStackTrace();
        }
        try {
            bufferedInputStream.close();
        } catch (IOException e18) {
            e18.printStackTrace();
        }
        try {
            byteArrayOutputStream.close();
            return byteArray;
        } catch (IOException e19) {
            e19.printStackTrace();
            return byteArray;
        }
    }

    private HashMap<String, String> a(HttpURLConnection httpURLConnection) {
        HashMap<String, String> map = new HashMap<>();
        int size = httpURLConnection.getHeaderFields().size();
        for (int i10 = 0; i10 < size; i10++) {
            String headerFieldKey = httpURLConnection.getHeaderFieldKey(i10);
            String headerField = httpURLConnection.getHeaderField(i10);
            if ("Set-Cookie".equals(headerFieldKey) && !TextUtils.isEmpty(headerField) && headerField.contains(SimpleComparison.EQUAL_TO_OPERATION)) {
                headerFieldKey = headerField.substring(0, headerField.indexOf(SimpleComparison.EQUAL_TO_OPERATION));
            }
            map.put(headerFieldKey, headerField);
        }
        return map;
    }

    private void a() {
        StringBuilder sb2 = new StringBuilder();
        Random random = new Random();
        for (int i10 = 0; i10 < 30; i10++) {
            char[] cArr = f8325c;
            sb2.append(cArr[random.nextInt(cArr.length)]);
        }
        this.f8328d = sb2.toString();
    }

    private void a(ByteArrayOutputStream byteArrayOutputStream) throws IOException {
        Random random = new Random();
        for (int i10 = 0; i10 < 30; i10++) {
            char[] cArr = f8325c;
            char c10 = cArr[random.nextInt(cArr.length)];
        }
        byte[] bytes = ("\r\n--" + this.f8328d + "\r\n").getBytes();
        if (!this.f8329e) {
            this.f8329e = true;
            byteArrayOutputStream.write(("--" + this.f8328d + "\r\n").getBytes());
            return;
        }
        byteArrayOutputStream.write(bytes);
    }

    private void a(ByteArrayOutputStream byteArrayOutputStream, String str, String str2) throws IOException {
        a(byteArrayOutputStream);
        byteArrayOutputStream.write(("Content-Disposition: form-data; name=\"" + str + "\"\r\n\r\n").getBytes());
        byteArrayOutputStream.write(str2.getBytes());
    }

    private ByteArrayOutputStream a(ByteArrayOutputStream byteArrayOutputStream, String str, String str2, InputStream inputStream, String str3) throws IOException {
        try {
            try {
                a(byteArrayOutputStream);
                byteArrayOutputStream.write(("Content-Disposition: form-data; name=\"" + str + "\"; filename=\"" + str2 + "\"\r\n").getBytes());
                if (str3 != null) {
                    byteArrayOutputStream.write(("Content-Type: " + str3 + "\r\n\r\n").getBytes());
                } else {
                    byteArrayOutputStream.write("Content-Type: application/octet-stream\r\n\r\n".getBytes());
                }
                byte[] bArr = new byte[4096];
                while (true) {
                    int i10 = inputStream.read(bArr);
                    if (i10 == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, i10);
                    try {
                        inputStream.close();
                    } catch (IOException e10) {
                        e10.printStackTrace();
                    }
                    throw th;
                }
                byteArrayOutputStream.flush();
                try {
                    inputStream.close();
                } catch (IOException e11) {
                    e11.printStackTrace();
                }
                return byteArrayOutputStream;
            } catch (IOException e12) {
                throw e12;
            }
        } catch (Throwable th) {
            inputStream.close();
            throw th;
        }
    }

    private String a(HttpHashMap httpHashMap) {
        StringBuilder sb2 = new StringBuilder();
        if (httpHashMap != null && httpHashMap.a() != null) {
            for (Map.Entry entry : httpHashMap.a().entrySet()) {
                if (!TextUtils.isEmpty((CharSequence) entry.getKey()) && !TextUtils.isEmpty((CharSequence) entry.getValue())) {
                    try {
                        sb2.append(URLEncoder.encode((String) entry.getKey(), "UTF-8"));
                        sb2.append(SimpleComparison.EQUAL_TO_OPERATION);
                        sb2.append(URLEncoder.encode((String) entry.getValue(), "UTF-8"));
                        sb2.append(a.f97576d);
                    } catch (UnsupportedEncodingException e10) {
                        PassHttpUtils.a(e10.getMessage());
                    }
                }
            }
        }
        if (!TextUtils.isEmpty(sb2)) {
            sb2.deleteCharAt(sb2.length() - 1);
        }
        return sb2.toString();
    }
}

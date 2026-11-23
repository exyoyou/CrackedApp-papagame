package com.czhj.volley.toolbox;

import android.os.SystemClock;
import com.coremedia.iso.boxes.c;
import com.czhj.volley.AuthFailureError;
import com.czhj.volley.Cache;
import com.czhj.volley.Header;
import com.czhj.volley.Network;
import com.czhj.volley.NetworkError;
import com.czhj.volley.NetworkResponse;
import com.czhj.volley.NoConnectionError;
import com.czhj.volley.Request;
import com.czhj.volley.RetryPolicy;
import com.czhj.volley.ServerError;
import com.czhj.volley.TimeoutError;
import com.czhj.volley.VolleyError;
import com.czhj.volley.VolleyLog;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.net.URI;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes9.dex */
public class BasicNetwork implements Network {
    protected static final boolean DEBUG = VolleyLog.DEBUG;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f25766a = 3000;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f25767b = 4096;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final BaseHttpStack f25768c;
    protected final ByteArrayPool mPool;

    public BasicNetwork(BaseHttpStack baseHttpStack) {
        this(baseHttpStack, new ByteArrayPool(4096));
    }

    private static List<Header> a(List<Header> list, Cache.Entry entry) {
        TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
        if (!list.isEmpty()) {
            Iterator<Header> it2 = list.iterator();
            while (it2.hasNext()) {
                treeSet.add(it2.next().getName());
            }
        }
        ArrayList arrayList = new ArrayList(list);
        List<Header> list2 = entry.allResponseHeaders;
        if (list2 != null) {
            if (!list2.isEmpty()) {
                for (Header header : entry.allResponseHeaders) {
                    if (!treeSet.contains(header.getName())) {
                        arrayList.add(header);
                    }
                }
            }
        } else if (!entry.responseHeaders.isEmpty()) {
            for (Map.Entry<String, String> entry2 : entry.responseHeaders.entrySet()) {
                if (!treeSet.contains(entry2.getKey())) {
                    arrayList.add(new Header(entry2.getKey(), entry2.getValue()));
                }
            }
        }
        return arrayList;
    }

    protected static Map<String, String> convertHeaders(List<Header> list) {
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        for (int i10 = 0; i10 < list.size(); i10++) {
            Header header = list.get(i10);
            treeMap.put(header.getName(), header.getValue());
        }
        return treeMap;
    }

    protected void logError(String str, String str2, long j10) {
        VolleyLog.v("HTTP ERROR(%s) %d ms to fetch %s", str, Long.valueOf(SystemClock.elapsedRealtime() - j10), str2);
    }

    /* JADX WARN: Code duplicated, block: B:124:0x020e A[Catch: all -> 0x016c, TryCatch #9 {all -> 0x016c, blocks: (B:4:0x0012, B:85:0x0177, B:87:0x0192, B:100:0x01ba, B:102:0x01c0, B:103:0x01c5, B:104:0x01c9, B:105:0x01ce, B:109:0x01d7, B:111:0x01dd, B:112:0x01e3, B:113:0x01e8, B:115:0x01eb, B:117:0x01f1, B:118:0x01f7, B:119:0x01fc, B:120:0x01fd, B:121:0x0202, B:122:0x0203, B:123:0x020a, B:124:0x020e, B:125:0x0214, B:133:0x0237, B:134:0x023c, B:136:0x023e, B:137:0x0258, B:138:0x0259), top: B:169:0x0012 }] */
    /* JADX WARN: Code duplicated, block: B:125:0x0214 A[Catch: all -> 0x016c, TRY_LEAVE, TryCatch #9 {all -> 0x016c, blocks: (B:4:0x0012, B:85:0x0177, B:87:0x0192, B:100:0x01ba, B:102:0x01c0, B:103:0x01c5, B:104:0x01c9, B:105:0x01ce, B:109:0x01d7, B:111:0x01dd, B:112:0x01e3, B:113:0x01e8, B:115:0x01eb, B:117:0x01f1, B:118:0x01f7, B:119:0x01fc, B:120:0x01fd, B:121:0x0202, B:122:0x0203, B:123:0x020a, B:124:0x020e, B:125:0x0214, B:133:0x0237, B:134:0x023c, B:136:0x023e, B:137:0x0258, B:138:0x0259), top: B:169:0x0012 }] */
    /* JADX WARN: Code duplicated, block: B:170:0x0222 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:181:0x0237 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:188:0x0008 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:85:0x0177 A[Catch: all -> 0x016c, TRY_ENTER, TryCatch #9 {all -> 0x016c, blocks: (B:4:0x0012, B:85:0x0177, B:87:0x0192, B:100:0x01ba, B:102:0x01c0, B:103:0x01c5, B:104:0x01c9, B:105:0x01ce, B:109:0x01d7, B:111:0x01dd, B:112:0x01e3, B:113:0x01e8, B:115:0x01eb, B:117:0x01f1, B:118:0x01f7, B:119:0x01fc, B:120:0x01fd, B:121:0x0202, B:122:0x0203, B:123:0x020a, B:124:0x020e, B:125:0x0214, B:133:0x0237, B:134:0x023c, B:136:0x023e, B:137:0x0258, B:138:0x0259), top: B:169:0x0012 }] */
    /* JADX WARN: Code duplicated, block: B:87:0x0192 A[Catch: all -> 0x016c, TRY_LEAVE, TryCatch #9 {all -> 0x016c, blocks: (B:4:0x0012, B:85:0x0177, B:87:0x0192, B:100:0x01ba, B:102:0x01c0, B:103:0x01c5, B:104:0x01c9, B:105:0x01ce, B:109:0x01d7, B:111:0x01dd, B:112:0x01e3, B:113:0x01e8, B:115:0x01eb, B:117:0x01f1, B:118:0x01f7, B:119:0x01fc, B:120:0x01fd, B:121:0x0202, B:122:0x0203, B:123:0x020a, B:124:0x020e, B:125:0x0214, B:133:0x0237, B:134:0x023c, B:136:0x023e, B:137:0x0258, B:138:0x0259), top: B:169:0x0012 }] */
    /* JADX WARN: Code duplicated, block: B:89:0x01a4 A[ADDED_TO_REGION] */
    @Override // com.czhj.volley.Network
    public NetworkResponse performRequest(Request<?> request) throws Throwable {
        List<Header> list;
        Throwable th;
        int statusCode;
        String str;
        VolleyError networkError;
        ServerError serverError;
        List<Header> list2;
        byte[] bArrA;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        while (true) {
            List<Header> listEmptyList = Collections.emptyList();
            HttpResponse httpResponseExecuteRequest = null;
            byte[] bArr = null;
            HttpResponse httpResponse = null;
            HttpResponse httpResponse2 = null;
            try {
                try {
                    httpResponseExecuteRequest = this.f25768c.executeRequest(request, a(request.getCacheEntry()));
                    try {
                        try {
                            int statusCode2 = httpResponseExecuteRequest.getStatusCode();
                            List<Header> headers = httpResponseExecuteRequest.getHeaders();
                            if (statusCode2 == 304) {
                                Cache.Entry cacheEntry = request.getCacheEntry();
                                if (cacheEntry == null) {
                                    NetworkResponse networkResponse = new NetworkResponse(304, (byte[]) null, true, SystemClock.elapsedRealtime() - jElapsedRealtime, headers);
                                    if (httpResponseExecuteRequest.getContent() != null) {
                                        try {
                                            httpResponseExecuteRequest.getContent().close();
                                        } catch (IOException e10) {
                                            VolleyLog.e(e10.getMessage(), new Object[0]);
                                        }
                                    }
                                    return networkResponse;
                                }
                                NetworkResponse networkResponse2 = new NetworkResponse(304, cacheEntry.data, true, SystemClock.elapsedRealtime() - jElapsedRealtime, a(headers, cacheEntry));
                                if (httpResponseExecuteRequest.getContent() != null) {
                                    try {
                                        httpResponseExecuteRequest.getContent().close();
                                    } catch (IOException e11) {
                                        VolleyLog.e(e11.getMessage(), new Object[0]);
                                    }
                                }
                                return networkResponse2;
                            }
                            if (statusCode2 == 301 || statusCode2 == 302) {
                                try {
                                    String string = convertHeaders(headers).get("Location");
                                    URI uriCreate = URI.create(string);
                                    if (uriCreate != null) {
                                        try {
                                            if (!uriCreate.isAbsolute()) {
                                                try {
                                                    URI uriCreate2 = URI.create(request.getUrl());
                                                    if (uriCreate2 != null) {
                                                        string = uriCreate2.resolve(uriCreate).toString();
                                                    }
                                                } catch (Throwable unused) {
                                                }
                                            }
                                        } catch (IOException e12) {
                                            e = e12;
                                            list = headers;
                                            httpResponseExecuteRequest = httpResponseExecuteRequest;
                                            if (httpResponseExecuteRequest == null) {
                                                throw new NoConnectionError(e);
                                            }
                                            statusCode = httpResponseExecuteRequest.getStatusCode();
                                            VolleyLog.e("Unexpected response code %d for %s", Integer.valueOf(statusCode), request.getUrl());
                                            if (bArr != null) {
                                                NetworkResponse networkResponse3 = new NetworkResponse(statusCode, bArr, false, SystemClock.elapsedRealtime() - jElapsedRealtime, list);
                                                if (statusCode != 301) {
                                                    a("redirect", request);
                                                } else {
                                                    a("redirect", request);
                                                }
                                                if (httpResponseExecuteRequest.getContent() != null) {
                                                    try {
                                                        httpResponseExecuteRequest.getContent().close();
                                                    } catch (IOException e13) {
                                                        VolleyLog.e(e13.getMessage(), new Object[0]);
                                                    }
                                                }
                                            } else {
                                                str = "network";
                                                networkError = new NetworkError(e);
                                            }
                                            a(str, request, networkError);
                                            if (httpResponseExecuteRequest.getContent() != null) {
                                                httpResponseExecuteRequest.getContent().close();
                                            }
                                        }
                                    }
                                    request.setRedirectURL(string);
                                    request.addMarker("redirectURL: " + string);
                                } catch (IOException e14) {
                                    e = e14;
                                    list2 = headers;
                                    bArr = null;
                                    list = list2;
                                    if (httpResponseExecuteRequest == null) {
                                        throw new NoConnectionError(e);
                                    }
                                    statusCode = httpResponseExecuteRequest.getStatusCode();
                                    VolleyLog.e("Unexpected response code %d for %s", Integer.valueOf(statusCode), request.getUrl());
                                    if (bArr != null) {
                                        NetworkResponse networkResponse4 = new NetworkResponse(statusCode, bArr, false, SystemClock.elapsedRealtime() - jElapsedRealtime, list);
                                        if (statusCode != 301 || statusCode == 302) {
                                            a("redirect", request);
                                        } else if (statusCode == 401 || statusCode == 403) {
                                            str = c.f24723u;
                                            networkError = new AuthFailureError(networkResponse4);
                                        } else {
                                            if (statusCode < 400 || statusCode > 499) {
                                                if (statusCode < 500 || statusCode > 599) {
                                                    if (statusCode <= 599) {
                                                        throw new ServerError(networkResponse4);
                                                    }
                                                    if (!request.shouldRetryServerErrors()) {
                                                        throw new ServerError(networkResponse4);
                                                    }
                                                    serverError = new ServerError(networkResponse4);
                                                } else {
                                                    if (!request.shouldRetryServerErrors()) {
                                                        throw new ServerError(networkResponse4);
                                                    }
                                                    serverError = new ServerError(networkResponse4);
                                                }
                                            } else {
                                                if (!request.shouldRetryServerErrors()) {
                                                    throw new ServerError(networkResponse4);
                                                }
                                                serverError = new ServerError(networkResponse4);
                                            }
                                            a("server", request, serverError);
                                        }
                                        if (httpResponseExecuteRequest.getContent() != null) {
                                            httpResponseExecuteRequest.getContent().close();
                                        }
                                    } else {
                                        str = "network";
                                        networkError = new NetworkError(e);
                                    }
                                    a(str, request, networkError);
                                    if (httpResponseExecuteRequest.getContent() != null) {
                                        httpResponseExecuteRequest.getContent().close();
                                    }
                                }
                            }
                            InputStream content = httpResponseExecuteRequest.getContent();
                            if (content != null) {
                                int contentLength = httpResponseExecuteRequest.getContentLength();
                                if (request.getMaxLength() >= 0) {
                                    contentLength = request.getMaxLength();
                                }
                                bArrA = a(content, contentLength);
                            } else {
                                bArrA = new byte[0];
                            }
                            byte[] bArr2 = bArrA;
                            try {
                                list2 = headers;
                                try {
                                    a(SystemClock.elapsedRealtime() - jElapsedRealtime, request, bArr2, statusCode2);
                                    if (statusCode2 < 200 || statusCode2 > 299) {
                                        throw new IOException();
                                    }
                                    NetworkResponse networkResponse5 = new NetworkResponse(statusCode2, bArr2, false, SystemClock.elapsedRealtime() - jElapsedRealtime, list2);
                                    if (httpResponseExecuteRequest.getContent() != null) {
                                        try {
                                            httpResponseExecuteRequest.getContent().close();
                                        } catch (IOException e15) {
                                            VolleyLog.e(e15.getMessage(), new Object[0]);
                                        }
                                    }
                                    return networkResponse5;
                                } catch (IOException e16) {
                                    e = e16;
                                    bArr = bArr2;
                                    list = list2;
                                    if (httpResponseExecuteRequest == null) {
                                        throw new NoConnectionError(e);
                                    }
                                    statusCode = httpResponseExecuteRequest.getStatusCode();
                                    VolleyLog.e("Unexpected response code %d for %s", Integer.valueOf(statusCode), request.getUrl());
                                    if (bArr != null) {
                                        NetworkResponse networkResponse6 = new NetworkResponse(statusCode, bArr, false, SystemClock.elapsedRealtime() - jElapsedRealtime, list);
                                        if (statusCode != 301) {
                                            a("redirect", request);
                                        } else {
                                            a("redirect", request);
                                        }
                                        if (httpResponseExecuteRequest.getContent() != null) {
                                            httpResponseExecuteRequest.getContent().close();
                                        }
                                    } else {
                                        str = "network";
                                        networkError = new NetworkError(e);
                                    }
                                    a(str, request, networkError);
                                    if (httpResponseExecuteRequest.getContent() != null) {
                                        httpResponseExecuteRequest.getContent().close();
                                    }
                                }
                            } catch (IOException e17) {
                                e = e17;
                                list2 = headers;
                            }
                        } catch (IOException e18) {
                            e = e18;
                            list = listEmptyList;
                        }
                    } catch (MalformedURLException e19) {
                        e = e19;
                        throw new RuntimeException("Bad URL " + request.getUrl(), e);
                    } catch (SocketTimeoutException unused2) {
                        httpResponse2 = httpResponseExecuteRequest;
                        a("socket", request, new TimeoutError());
                        if (httpResponse2 != null && httpResponse2.getContent() != null) {
                            try {
                                httpResponse2.getContent().close();
                            } catch (IOException e20) {
                                VolleyLog.e(e20.getMessage(), new Object[0]);
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        httpResponse = httpResponseExecuteRequest;
                        if (httpResponse == null || httpResponse.getContent() == null) {
                            throw th;
                        }
                        try {
                            httpResponse.getContent().close();
                            throw th;
                        } catch (IOException e21) {
                            VolleyLog.e(e21.getMessage(), new Object[0]);
                            throw th;
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (MalformedURLException e22) {
                e = e22;
            } catch (SocketTimeoutException unused3) {
            } catch (IOException e23) {
                e = e23;
                list = listEmptyList;
                bArr = null;
            }
        }
    }

    public BasicNetwork(BaseHttpStack baseHttpStack, ByteArrayPool byteArrayPool) {
        this.f25768c = baseHttpStack;
        this.mPool = byteArrayPool;
    }

    private Map<String, String> a(Cache.Entry entry) {
        if (entry == null) {
            return Collections.emptyMap();
        }
        HashMap map = new HashMap();
        String str = entry.etag;
        if (str != null) {
            map.put("If-None-Match", str);
        }
        long j10 = entry.lastModified;
        if (j10 > 0) {
            map.put("If-Modified-Since", HttpHeaderParser.a(j10));
        }
        return map;
    }

    private void a(long j10, Request<?> request, byte[] bArr, int i10) {
        if (DEBUG || j10 > BaseCloudFileManager.ACK_TIMEOUT) {
            Object[] objArr = new Object[5];
            objArr[0] = request;
            objArr[1] = Long.valueOf(j10);
            objArr[2] = bArr != null ? Integer.valueOf(bArr.length) : "null";
            objArr[3] = Integer.valueOf(i10);
            objArr[4] = Integer.valueOf(request.getRetryPolicy().getCurrentRetryCount());
            VolleyLog.d("HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]", objArr);
        }
    }

    private static void a(String str, Request<?> request) {
        request.addMarker(String.format("%s-Redirect [timeout=%s]", str, Integer.valueOf(request.getTimeoutMs())));
    }

    private static void a(String str, Request<?> request, VolleyError volleyError) throws VolleyError {
        RetryPolicy retryPolicy = request.getRetryPolicy();
        int timeoutMs = request.getTimeoutMs();
        try {
            retryPolicy.retry(volleyError);
            request.addMarker(String.format("%s-retry [timeout=%s]", str, Integer.valueOf(timeoutMs)));
        } catch (VolleyError e10) {
            request.addMarker(String.format("%s-timeout-giveup [timeout=%s]", str, Integer.valueOf(timeoutMs)));
            throw e10;
        }
    }

    private byte[] a(InputStream inputStream, int i10) throws IOException {
        byte[] byteArray;
        PoolingByteArrayOutputStream poolingByteArrayOutputStream = new PoolingByteArrayOutputStream(this.mPool, i10);
        int i11 = 1024;
        if (i10 > 0 && i10 < 1024) {
            i11 = i10;
        }
        byte[] buf = null;
        try {
            buf = this.mPool.getBuf(i11);
            long j10 = 0;
            while (true) {
                int i12 = inputStream.read(buf, 0, i11);
                if (i12 == -1 || (i10 >= 1 && j10 >= i10)) {
                    break;
                }
                poolingByteArrayOutputStream.write(buf, 0, i12);
                j10 += (long) i12;
            }
            byteArray = poolingByteArrayOutputStream.toByteArray();
            try {
                inputStream.close();
            } catch (IOException unused) {
                VolleyLog.v("Error occurred when closing InputStream", new Object[0]);
            }
            this.mPool.returnBuf(buf);
        } catch (Throwable th) {
            try {
                VolleyLog.e("readError", th.getMessage());
                byteArray = poolingByteArrayOutputStream.toByteArray();
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException unused2) {
                        VolleyLog.v("Error occurred when closing InputStream", new Object[0]);
                    }
                }
                this.mPool.returnBuf(buf);
            } finally {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException unused3) {
                        VolleyLog.v("Error occurred when closing InputStream", new Object[0]);
                    }
                }
                this.mPool.returnBuf(buf);
                poolingByteArrayOutputStream.close();
            }
        }
        return byteArray;
    }
}

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
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes9.dex */
public class FileDownloadNetwork implements Network {
    protected static final boolean DEBUG = VolleyLog.DEBUG;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f25773a = 3000;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f25774b = 4096;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final BaseHttpStack f25775c;
    protected final ByteArrayPool mPool;

    public FileDownloadNetwork(BaseHttpStack baseHttpStack) {
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

    public static void attemptRetryOnException(String str, Request<?> request, VolleyError volleyError) throws VolleyError {
        RetryPolicy retryPolicy = request.getRetryPolicy();
        int timeoutMs = request.getTimeoutMs();
        try {
            retryPolicy.retry(volleyError);
            request.addMarker(String.format("%s-retry [RetryCount %s]  [timeout=%s]", str, Integer.valueOf(retryPolicy.getCurrentRetryCount()), Integer.valueOf(timeoutMs)));
        } catch (VolleyError e10) {
            request.addMarker(String.format("%s-timeout-giveup [RetryCount %s] [timeout=%s]", str, Integer.valueOf(retryPolicy.getCurrentRetryCount()), Integer.valueOf(timeoutMs)));
            throw e10;
        }
    }

    public static Map<String, String> convertHeaders(List<Header> list) {
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

    /* JADX WARN: Code duplicated, block: B:100:0x0182 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:109:0x0176 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:48:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:50:0x0111  */
    @Override // com.czhj.volley.Network
    public NetworkResponse performRequest(Request<?> request) throws VolleyError {
        List<Header> list;
        int statusCode;
        VolleyError networkError;
        String str;
        NetworkResponse networkResponse;
        AuthFailureError authFailureError;
        List<Header> list2;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        while (true) {
            VolleyLog.d("download start %s", request.getUrl());
            List<Header> listEmptyList = Collections.emptyList();
            HttpResponse httpResponseExecuteRequest = null;
            byte[] bArr = null;
            byte[] bArrHandleRawResponse = null;
            try {
                try {
                    httpResponseExecuteRequest = this.f25775c.executeRequest(request, a(request.getCacheEntry()));
                    try {
                        int statusCode2 = httpResponseExecuteRequest.getStatusCode();
                        VolleyLog.d("download getStatus %s StatusCode: %s", request.getUrl(), Integer.valueOf(statusCode2));
                        List<Header> headers = httpResponseExecuteRequest.getHeaders();
                        if (statusCode2 == 304) {
                            Cache.Entry cacheEntry = request.getCacheEntry();
                            return cacheEntry == null ? new NetworkResponse(304, (byte[]) null, true, SystemClock.elapsedRealtime() - jElapsedRealtime, headers) : new NetworkResponse(304, cacheEntry.data, true, SystemClock.elapsedRealtime() - jElapsedRealtime, a(headers, cacheEntry));
                        }
                        try {
                            if (httpResponseExecuteRequest.getContent() != null) {
                                try {
                                    if (request instanceof FileDownloadRequest) {
                                        bArrHandleRawResponse = ((FileDownloadRequest) request).handleRawResponse(httpResponseExecuteRequest);
                                    }
                                } catch (IOException e10) {
                                    e = e10;
                                    list = headers;
                                    httpResponseExecuteRequest = httpResponseExecuteRequest;
                                    if (httpResponseExecuteRequest != null) {
                                        throw new NoConnectionError(e);
                                    }
                                    statusCode = httpResponseExecuteRequest.getStatusCode();
                                    VolleyLog.e("%s Unexpected response code %d for %s", e.getMessage(), Integer.valueOf(statusCode), request.getUrl());
                                    if (bArr != null) {
                                        networkResponse = new NetworkResponse(statusCode, bArr, false, SystemClock.elapsedRealtime() - jElapsedRealtime, list);
                                        if (statusCode != 401) {
                                        }
                                        authFailureError = new AuthFailureError(networkResponse);
                                        attemptRetryOnException(c.f24723u, request, authFailureError);
                                    } else {
                                        networkError = new NetworkError(e);
                                        str = "network";
                                    }
                                    attemptRetryOnException(str, request, networkError);
                                }
                            } else {
                                bArrHandleRawResponse = new byte[0];
                            }
                            byte[] bArr2 = bArrHandleRawResponse;
                            try {
                                list2 = headers;
                                try {
                                    a(SystemClock.elapsedRealtime() - jElapsedRealtime, request, bArr2, statusCode2);
                                    if (statusCode2 < 200 || statusCode2 > 299) {
                                        throw new IOException();
                                    }
                                    return new NetworkResponse(statusCode2, bArr2, false, SystemClock.elapsedRealtime() - jElapsedRealtime, list2);
                                } catch (IOException e11) {
                                    e = e11;
                                    bArr = bArr2;
                                    list = list2;
                                    if (httpResponseExecuteRequest != null) {
                                        throw new NoConnectionError(e);
                                    }
                                    statusCode = httpResponseExecuteRequest.getStatusCode();
                                    VolleyLog.e("%s Unexpected response code %d for %s", e.getMessage(), Integer.valueOf(statusCode), request.getUrl());
                                    if (bArr != null) {
                                        networkResponse = new NetworkResponse(statusCode, bArr, false, SystemClock.elapsedRealtime() - jElapsedRealtime, list);
                                        if (statusCode != 401 || statusCode == 403) {
                                            authFailureError = new AuthFailureError(networkResponse);
                                        } else if (statusCode == 301 || statusCode == 302) {
                                            authFailureError = new AuthFailureError(networkResponse);
                                        } else {
                                            if (statusCode >= 400 && statusCode <= 499) {
                                                throw new ServerError(networkResponse);
                                            }
                                            if (statusCode < 500 || statusCode > 599) {
                                                throw new ServerError(networkResponse);
                                            }
                                            if (!request.shouldRetryServerErrors()) {
                                                throw new ServerError(networkResponse);
                                            }
                                            networkError = new ServerError(networkResponse);
                                            str = "server";
                                        }
                                        attemptRetryOnException(c.f24723u, request, authFailureError);
                                    } else {
                                        networkError = new NetworkError(e);
                                        str = "network";
                                    }
                                    attemptRetryOnException(str, request, networkError);
                                }
                            } catch (IOException e12) {
                                e = e12;
                                list2 = headers;
                            }
                        } catch (IOException e13) {
                            e = e13;
                            list2 = headers;
                            bArr = null;
                        }
                    } catch (IOException e14) {
                        e = e14;
                        list = listEmptyList;
                    }
                } catch (IOException e15) {
                    e = e15;
                    list = listEmptyList;
                    bArr = null;
                }
            } catch (MalformedURLException e16) {
                throw new RuntimeException("Bad URL " + request.getUrl(), e16);
            } catch (SocketTimeoutException unused) {
                attemptRetryOnException("socket", request, new TimeoutError());
            }
        }
    }

    public FileDownloadNetwork(BaseHttpStack baseHttpStack, ByteArrayPool byteArrayPool) {
        this.f25775c = baseHttpStack;
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

    private byte[] a(InputStream inputStream, int i10) throws IOException, ServerError {
        PoolingByteArrayOutputStream poolingByteArrayOutputStream = new PoolingByteArrayOutputStream(this.mPool, i10);
        try {
            if (inputStream == null) {
                throw new ServerError();
            }
            byte[] buf = this.mPool.getBuf(1024);
            while (true) {
                int i11 = inputStream.read(buf);
                if (i11 == -1) {
                    break;
                }
                poolingByteArrayOutputStream.write(buf, 0, i11);
            }
            byte[] byteArray = poolingByteArrayOutputStream.toByteArray();
            try {
                inputStream.close();
            } catch (IOException unused) {
                VolleyLog.v("Error occurred when closing InputStream", new Object[0]);
            }
            this.mPool.returnBuf(buf);
            poolingByteArrayOutputStream.close();
            return byteArray;
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused2) {
                    VolleyLog.v("Error occurred when closing InputStream", new Object[0]);
                }
            }
            this.mPool.returnBuf(null);
            poolingByteArrayOutputStream.close();
            throw th;
        }
    }
}

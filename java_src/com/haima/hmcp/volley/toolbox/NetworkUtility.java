package com.haima.hmcp.volley.toolbox;

import android.os.SystemClock;
import androidx.annotation.Nullable;
import com.coremedia.iso.boxes.c;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import com.haima.hmcp.volley.AuthFailureError;
import com.haima.hmcp.volley.Cache;
import com.haima.hmcp.volley.ClientError;
import com.haima.hmcp.volley.Header;
import com.haima.hmcp.volley.NetworkError;
import com.haima.hmcp.volley.NetworkResponse;
import com.haima.hmcp.volley.NoConnectionError;
import com.haima.hmcp.volley.Request;
import com.haima.hmcp.volley.RetryPolicy;
import com.haima.hmcp.volley.ServerError;
import com.haima.hmcp.volley.TimeoutError;
import com.haima.hmcp.volley.VolleyError;
import com.haima.hmcp.volley.VolleyLog;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class NetworkUtility {
    private static final int SLOW_REQUEST_THRESHOLD_MS = 3000;

    static class RetryInfo {
        private final VolleyError errorToRetry;
        private final String logPrefix;

        private RetryInfo(String str, VolleyError volleyError) {
            this.logPrefix = str;
            this.errorToRetry = volleyError;
        }
    }

    private NetworkUtility() {
    }

    static void attemptRetryOnException(Request<?> request, RetryInfo retryInfo) throws VolleyError {
        RetryPolicy retryPolicy = request.getRetryPolicy();
        int timeoutMs = request.getTimeoutMs();
        try {
            retryPolicy.retry(retryInfo.errorToRetry);
            request.addMarker(String.format("%s-retry [timeout=%s]", retryInfo.logPrefix, Integer.valueOf(timeoutMs)));
        } catch (VolleyError e10) {
            request.addMarker(String.format("%s-timeout-giveup [timeout=%s]", retryInfo.logPrefix, Integer.valueOf(timeoutMs)));
            throw e10;
        }
    }

    static NetworkResponse getNotModifiedNetworkResponse(Request<?> request, long j10, List<Header> list) {
        Cache.Entry cacheEntry = request.getCacheEntry();
        if (cacheEntry == null) {
            return new NetworkResponse(304, (byte[]) null, true, j10, list);
        }
        return new NetworkResponse(304, cacheEntry.data, true, j10, HttpHeaderParser.combineHeaders(list, cacheEntry));
    }

    static byte[] inputStreamToBytes(InputStream inputStream, int i10, ByteArrayPool byteArrayPool) throws Throwable {
        byte[] buf;
        PoolingByteArrayOutputStream poolingByteArrayOutputStream = new PoolingByteArrayOutputStream(byteArrayPool, i10);
        try {
            buf = byteArrayPool.getBuf(1024);
            while (true) {
                try {
                    int i11 = inputStream.read(buf);
                    if (i11 == -1) {
                        break;
                    }
                    poolingByteArrayOutputStream.write(buf, 0, i11);
                } catch (Throwable th) {
                    th = th;
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException unused) {
                            VolleyLog.v("Error occurred when closing InputStream", new Object[0]);
                        }
                    }
                    byteArrayPool.returnBuf(buf);
                    poolingByteArrayOutputStream.close();
                    throw th;
                }
            }
            byte[] byteArray = poolingByteArrayOutputStream.toByteArray();
            try {
                inputStream.close();
            } catch (IOException unused2) {
                VolleyLog.v("Error occurred when closing InputStream", new Object[0]);
            }
            byteArrayPool.returnBuf(buf);
            poolingByteArrayOutputStream.close();
            return byteArray;
        } catch (Throwable th2) {
            th = th2;
            buf = null;
        }
    }

    static void logSlowRequests(long j10, Request<?> request, byte[] bArr, int i10) {
        if (VolleyLog.DEBUG || j10 > BaseCloudFileManager.ACK_TIMEOUT) {
            Object[] objArr = new Object[5];
            objArr[0] = request;
            objArr[1] = Long.valueOf(j10);
            objArr[2] = bArr != null ? Integer.valueOf(bArr.length) : "null";
            objArr[3] = Integer.valueOf(i10);
            objArr[4] = Integer.valueOf(request.getRetryPolicy().getCurrentRetryCount());
            VolleyLog.d("HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]", objArr);
        }
    }

    public static byte[] responseToBytes(HttpResponse httpResponse, ByteArrayPool byteArrayPool) throws Throwable {
        byte[] bArr;
        PoolingByteArrayOutputStream poolingByteArrayOutputStream = new PoolingByteArrayOutputStream(byteArrayPool, httpResponse.getContentLength());
        InputStream inputStream = null;
        try {
            InputStream content = httpResponse.getContent();
            try {
                if (content == null) {
                    throw new ServerError();
                }
                byte[] buf = byteArrayPool.getBuf(1024);
                while (true) {
                    int i10 = content.read(buf);
                    if (i10 == -1) {
                        break;
                    }
                    poolingByteArrayOutputStream.write(buf, 0, i10);
                }
                byte[] byteArray = poolingByteArrayOutputStream.toByteArray();
                try {
                    content.close();
                } catch (IOException e10) {
                    e10.printStackTrace();
                }
                byteArrayPool.returnBuf(buf);
                poolingByteArrayOutputStream.close();
                return byteArray;
            } catch (Throwable th) {
                th = th;
                inputStream = content;
                bArr = null;
                try {
                    inputStream.close();
                } catch (IOException e11) {
                    e11.printStackTrace();
                }
                byteArrayPool.returnBuf(bArr);
                poolingByteArrayOutputStream.close();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            bArr = null;
        }
    }

    static RetryInfo shouldRetryException(Request<?> request, IOException iOException, long j10, @Nullable HttpResponse httpResponse, @Nullable byte[] bArr) throws VolleyError {
        if (iOException instanceof SocketTimeoutException) {
            return new RetryInfo("socket", new TimeoutError());
        }
        if (iOException instanceof MalformedURLException) {
            throw new RuntimeException("Bad URL " + request.getUrl(), iOException);
        }
        if (httpResponse == null) {
            if (request.shouldRetryConnectionErrors()) {
                return new RetryInfo("connection", new NoConnectionError());
            }
            throw new NoConnectionError(iOException);
        }
        int statusCode = httpResponse.getStatusCode();
        VolleyLog.e("Unexpected response code %d for %s", Integer.valueOf(statusCode), request.getUrl());
        if (bArr == null) {
            return new RetryInfo("network", new NetworkError());
        }
        NetworkResponse networkResponse = new NetworkResponse(statusCode, bArr, false, SystemClock.elapsedRealtime() - j10, httpResponse.getHeaders());
        if (statusCode == 401 || statusCode == 403) {
            return new RetryInfo(c.f24723u, new AuthFailureError(networkResponse));
        }
        if (statusCode >= 400 && statusCode <= 499) {
            throw new ClientError(networkResponse);
        }
        if (statusCode < 500 || statusCode > 599 || !request.shouldRetryServerErrors()) {
            throw new ServerError(networkResponse);
        }
        return new RetryInfo("server", new ServerError(networkResponse));
    }
}

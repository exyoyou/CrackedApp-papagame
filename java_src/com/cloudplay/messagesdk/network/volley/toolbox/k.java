package com.cloudplay.messagesdk.network.volley.toolbox;

import android.os.SystemClock;
import com.cloudplay.messagesdk.network.volley.AuthFailureError;
import com.cloudplay.messagesdk.network.volley.Cache;
import com.cloudplay.messagesdk.network.volley.ClientError;
import com.cloudplay.messagesdk.network.volley.NetworkError;
import com.cloudplay.messagesdk.network.volley.NoConnectionError;
import com.cloudplay.messagesdk.network.volley.Request;
import com.cloudplay.messagesdk.network.volley.RetryPolicy;
import com.cloudplay.messagesdk.network.volley.ServerError;
import com.cloudplay.messagesdk.network.volley.TimeoutError;
import com.cloudplay.messagesdk.network.volley.VolleyError;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
final class k {

    static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f24099a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final VolleyError f24100b;

        private b(String str, VolleyError volleyError) {
            this.f24099a = str;
            this.f24100b = volleyError;
        }
    }

    static void a(long j10, Request<?> request, byte[] bArr, int i10) {
        if (com.cloudplay.messagesdk.network.volley.g.f24051b || j10 > BaseCloudFileManager.ACK_TIMEOUT) {
            Object[] objArr = new Object[5];
            objArr[0] = request;
            objArr[1] = Long.valueOf(j10);
            objArr[2] = bArr != null ? Integer.valueOf(bArr.length) : "null";
            objArr[3] = Integer.valueOf(i10);
            objArr[4] = Integer.valueOf(request.o().getCurrentRetryCount());
            com.cloudplay.messagesdk.network.volley.g.b("HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]", objArr);
        }
    }

    static com.cloudplay.messagesdk.network.volley.f a(Request<?> request, long j10, List<com.cloudplay.messagesdk.network.volley.d> list) {
        Cache.a aVarD = request.d();
        if (aVarD == null) {
            return new com.cloudplay.messagesdk.network.volley.f(304, (byte[]) null, true, j10, list);
        }
        return new com.cloudplay.messagesdk.network.volley.f(304, aVarD.f23972a, true, j10, f.a(list, aVarD));
    }

    static byte[] a(InputStream inputStream, int i10, d dVar) throws Throwable {
        byte[] bArrA;
        l lVar = new l(dVar, i10);
        try {
            bArrA = dVar.a(1024);
            while (true) {
                try {
                    int i11 = inputStream.read(bArrA);
                    if (i11 == -1) {
                        break;
                    }
                    lVar.write(bArrA, 0, i11);
                } catch (Throwable th) {
                    th = th;
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (IOException unused) {
                            com.cloudplay.messagesdk.network.volley.g.d("Error occurred when closing InputStream", new Object[0]);
                        }
                    }
                    dVar.a(bArrA);
                    lVar.close();
                    throw th;
                }
            }
            byte[] byteArray = lVar.toByteArray();
            try {
                inputStream.close();
            } catch (IOException unused2) {
                com.cloudplay.messagesdk.network.volley.g.d("Error occurred when closing InputStream", new Object[0]);
            }
            dVar.a(bArrA);
            lVar.close();
            return byteArray;
        } catch (Throwable th2) {
            th = th2;
            bArrA = null;
        }
    }

    static void a(Request<?> request, b bVar) throws VolleyError {
        RetryPolicy retryPolicyO = request.o();
        int iQ = request.q();
        try {
            retryPolicyO.retry(bVar.f24100b);
            request.a(String.format("%s-retry [timeout=%s]", bVar.f24099a, Integer.valueOf(iQ)));
        } catch (VolleyError e10) {
            request.a(String.format("%s-timeout-giveup [timeout=%s]", bVar.f24099a, Integer.valueOf(iQ)));
            throw e10;
        }
    }

    static b a(Request<?> request, IOException iOException, long j10, g gVar, byte[] bArr) throws VolleyError {
        if (iOException instanceof SocketTimeoutException) {
            return new b("socket", new TimeoutError());
        }
        if (iOException instanceof MalformedURLException) {
            throw new RuntimeException("Bad URL " + request.s(), iOException);
        }
        if (gVar != null) {
            int iD = gVar.d();
            com.cloudplay.messagesdk.network.volley.g.c("Unexpected response code %d for %s", Integer.valueOf(iD), request.s());
            if (bArr != null) {
                com.cloudplay.messagesdk.network.volley.f fVar = new com.cloudplay.messagesdk.network.volley.f(iD, bArr, false, SystemClock.elapsedRealtime() - j10, gVar.c());
                if (iD == 401 || iD == 403) {
                    return new b(com.coremedia.iso.boxes.c.f24723u, new AuthFailureError(fVar));
                }
                if (iD >= 400 && iD <= 499) {
                    throw new ClientError(fVar);
                }
                if (iD >= 500 && iD <= 599 && request.z()) {
                    return new b("server", new ServerError(fVar));
                }
                throw new ServerError(fVar);
            }
            return new b("network", new NetworkError());
        }
        if (request.y()) {
            return new b("connection", new NoConnectionError());
        }
        throw new NoConnectionError(iOException);
    }
}

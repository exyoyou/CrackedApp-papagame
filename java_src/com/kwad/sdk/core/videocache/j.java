package com.kwad.sdk.core.videocache;

import android.text.TextUtils;
import com.kwad.sdk.utils.az;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.util.Arrays;
import java.util.concurrent.TimeUnit;
import okhttp3.ConnectionSpec;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

/* JADX INFO: loaded from: classes2.dex */
public final class j extends p {
    private final com.kwad.sdk.core.videocache.d.c aZN;
    private final com.kwad.sdk.core.videocache.b.b aZO;
    private n bal;
    private InputStream ban;
    private OkHttpClient bas = new OkHttpClient();

    public j(String str, com.kwad.sdk.core.videocache.d.c cVar, com.kwad.sdk.core.videocache.b.b bVar) {
        this.aZN = (com.kwad.sdk.core.videocache.d.c) az.checkNotNull(cVar);
        this.aZO = (com.kwad.sdk.core.videocache.b.b) az.checkNotNull(bVar);
        n nVarFG = cVar.fG(str);
        this.bal = nVarFG == null ? new n(str, -2147483648L, l.fE(str)) : nVarFG;
    }

    private void Pe() {
        Response responseEP = null;
        try {
            try {
                responseEP = eP(10000);
                if (responseEP == null || !responseEP.isSuccessful()) {
                    throw new ProxyCacheException("Fail to fetchContentInfo: " + getUrl());
                }
                n nVar = new n(this.bal.url, c(responseEP), responseEP.header("Content-Type"));
                this.bal = nVar;
                this.aZN.a(nVar.url, nVar);
                com.kwad.sdk.core.d.c.d("HttpUrlSource", "Source info fetched: " + this.bal);
                if (responseEP.body() == null) {
                    return;
                }
                com.kwad.sdk.crash.utils.b.closeQuietly(responseEP.body());
            } catch (IOException unused) {
                com.kwad.sdk.core.d.c.e("HttpUrlSource", "Error fetching info from " + this.bal.url);
                if (0 == 0 || responseEP.body() == null) {
                }
            }
        } catch (Throwable th) {
            if (0 != 0 && responseEP.body() != null) {
                com.kwad.sdk.crash.utils.b.closeQuietly(responseEP.body());
            }
            throw th;
        }
    }

    private void Pg() {
        n nVarFG;
        com.kwad.sdk.core.videocache.d.c cVar = this.aZN;
        if (cVar == null || !(cVar instanceof com.kwad.sdk.core.videocache.d.b) || (nVarFG = cVar.fG(getUrl())) == null || TextUtils.isEmpty(nVarFG.baC) || nVarFG.baB == -2147483648L) {
            return;
        }
        this.bal = nVarFG;
    }

    private long a(Response response, long j10) {
        int iCode = response.code();
        long j11 = response.body().get$contentLength();
        if (iCode == 200) {
            return j11;
        }
        return iCode == 206 ? j11 + j10 : this.bal.baB;
    }

    private static long c(Response response) {
        String strHeader = response.header("Content-Length");
        if (strHeader == null) {
            return -1L;
        }
        return Long.parseLong(strHeader);
    }

    private Response eP(int i10) throws IOException, ProxyCacheException {
        Response responseExecute;
        OkHttpClient.Builder builderNewBuilder = new OkHttpClient().newBuilder();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        builderNewBuilder.connectTimeout(10000L, timeUnit);
        builderNewBuilder.readTimeout(10000L, timeUnit);
        builderNewBuilder.writeTimeout(10000L, timeUnit);
        int i11 = 0;
        builderNewBuilder.connectionSpecs(Arrays.asList(ConnectionSpec.MODERN_TLS, ConnectionSpec.COMPATIBLE_TLS, ConnectionSpec.CLEARTEXT));
        try {
            builderNewBuilder.dns(new com.kwad.sdk.core.network.a.d());
        } catch (Throwable th) {
            com.kwad.sdk.core.d.c.printStackTrace(th);
        }
        this.bas = builderNewBuilder.build();
        String url = getUrl();
        boolean zIsRedirect = false;
        do {
            Request.Builder builder = new Request.Builder();
            builder.head();
            builder.url(url);
            responseExecute = this.bas.newCall(builder.build()).execute();
            if (responseExecute.isRedirect()) {
                url = responseExecute.header("Location");
                zIsRedirect = responseExecute.isRedirect();
                i11++;
            }
            if (i11 > 5) {
                throw new ProxyCacheException("Too many redirects: " + i11);
            }
        } while (zIsRedirect);
        return responseExecute;
    }

    private Response f(long j10, int i10) throws IOException, ProxyCacheException {
        Response responseExecute;
        OkHttpClient.Builder builderNewBuilder = this.bas.newBuilder();
        int i11 = 0;
        builderNewBuilder.connectionSpecs(Arrays.asList(ConnectionSpec.MODERN_TLS, ConnectionSpec.COMPATIBLE_TLS, ConnectionSpec.CLEARTEXT));
        try {
            builderNewBuilder.dns(new com.kwad.sdk.core.network.a.d());
        } catch (Throwable th) {
            com.kwad.sdk.core.d.c.printStackTrace(th);
        }
        this.bas = builderNewBuilder.build();
        String url = getUrl();
        boolean zIsRedirect = false;
        do {
            Request.Builder builder = new Request.Builder();
            builder.get();
            builder.url(url);
            if (j10 > 0) {
                builder.addHeader("Range", "bytes=" + j10 + "-");
            }
            responseExecute = this.bas.newCall(builder.build()).execute();
            if (responseExecute.isRedirect()) {
                url = responseExecute.header("Location");
                zIsRedirect = responseExecute.isRedirect();
                i11++;
            }
            if (i11 > 5) {
                throw new ProxyCacheException("Too many redirects: " + i11);
            }
        } while (zIsRedirect);
        return responseExecute;
    }

    @Override // com.kwad.sdk.core.videocache.p
    public final synchronized String Pf() {
        if (TextUtils.isEmpty(this.bal.baC)) {
            Pg();
        }
        if (TextUtils.isEmpty(this.bal.baC)) {
            Pe();
        }
        return this.bal.baC;
    }

    @Override // com.kwad.sdk.core.videocache.m
    public final void aP(long j10) throws ProxyCacheException {
        try {
            Response responseF = f(j10, -1);
            String mediaType = responseF.body().get$contentType().getMediaType();
            long jA = a(responseF, j10);
            this.ban = new BufferedInputStream(responseF.body().byteStream(), 1024);
            n nVar = new n(this.bal.url, jA, mediaType);
            this.bal = nVar;
            this.aZN.a(nVar.url, nVar);
        } catch (IOException e10) {
            throw new ProxyCacheException("Error opening connection for " + getUrl() + " with offset " + j10, e10);
        }
    }

    @Override // com.kwad.sdk.core.videocache.m
    public final void close() {
        com.kwad.sdk.crash.utils.b.closeQuietly(this.ban);
    }

    @Override // com.kwad.sdk.core.videocache.p
    public final String getUrl() {
        return this.bal.url;
    }

    @Override // com.kwad.sdk.core.videocache.m
    public final synchronized long length() {
        if (this.bal.baB == -2147483648L) {
            Pg();
        }
        if (this.bal.baB == -2147483648L) {
            Pe();
        }
        return this.bal.baB;
    }

    @Override // com.kwad.sdk.core.videocache.m
    public final int read(byte[] bArr) throws ProxyCacheException {
        InputStream inputStream = this.ban;
        if (inputStream == null) {
            throw new ProxyCacheException("Error reading data from " + this.bal.url + ": connection is absent!");
        }
        try {
            return inputStream.read(bArr, 0, 1024);
        } catch (InterruptedIOException e10) {
            throw new InterruptedProxyCacheException("Reading source " + this.bal.url + " is interrupted", e10);
        } catch (IOException e11) {
            throw new ProxyCacheException("Error reading data from " + this.bal.url, e11);
        }
    }

    @Override // com.kwad.sdk.core.videocache.p
    public final String toString() {
        return "HttpUrlSource{sourceInfo='" + this.bal + "}";
    }

    public j(j jVar) {
        this.bal = jVar.bal;
        this.aZN = jVar.aZN;
        this.aZO = jVar.aZO;
    }
}

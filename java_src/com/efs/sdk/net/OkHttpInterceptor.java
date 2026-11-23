package com.efs.sdk.net;

import com.efs.sdk.base.core.util.Log;
import com.efs.sdk.base.integrationtesting.IntegrationTestingUtil;
import com.efs.sdk.net.a.a.e;
import com.efs.sdk.net.a.a.f;
import com.efs.sdk.net.a.a.g;
import com.efs.sdk.net.a.a.h;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.zip.InflaterOutputStream;
import okhttp3.Connection;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.Okio;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public class OkHttpInterceptor implements Interceptor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f f26510a = g.c();

    static class a extends ResponseBody {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ResponseBody f26511a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final BufferedSource f26512b;

        public a(ResponseBody responseBody, InputStream inputStream) {
            this.f26511a = responseBody;
            this.f26512b = Okio.buffer(Okio.source(inputStream));
        }

        @Override // okhttp3.ResponseBody
        /* JADX INFO: renamed from: contentLength */
        public final long getContentLength() {
            return this.f26511a.getContentLength();
        }

        @Override // okhttp3.ResponseBody
        /* JADX INFO: renamed from: contentType */
        public final MediaType get$contentType() {
            return this.f26511a.get$contentType();
        }

        @Override // okhttp3.ResponseBody
        /* JADX INFO: renamed from: source */
        public final BufferedSource getBodySource() {
            return this.f26512b;
        }
    }

    static class b implements f.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f26513a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Request f26514b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private h f26515c;

        public b(String str, Request request, h hVar) {
            this.f26513a = str;
            this.f26514b = request;
            this.f26515c = hVar;
        }

        @Override // com.efs.sdk.net.a.a.f.c
        public final String a() {
            return this.f26513a;
        }

        @Override // com.efs.sdk.net.a.a.f.b
        public final String b() {
            return this.f26514b.url().getUrl();
        }

        @Override // com.efs.sdk.net.a.a.f.b
        public final String c() {
            return this.f26514b.method();
        }

        @Override // com.efs.sdk.net.a.a.f.b
        @Nullable
        public final byte[] d() throws IOException {
            OutputStream inflaterOutputStream;
            RequestBody requestBodyBody = this.f26514b.body();
            if (requestBodyBody == null) {
                return null;
            }
            h hVar = this.f26515c;
            String strHeader = this.f26514b.header("Content-Encoding");
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            if ("gzip".equals(strHeader)) {
                inflaterOutputStream = e.a(byteArrayOutputStream);
            } else {
                inflaterOutputStream = "deflate".equals(strHeader) ? new InflaterOutputStream(byteArrayOutputStream) : byteArrayOutputStream;
            }
            com.efs.sdk.net.a.a.a aVar = new com.efs.sdk.net.a.a.a(inflaterOutputStream);
            hVar.f26546c = aVar;
            hVar.f26545b = byteArrayOutputStream;
            BufferedSink bufferedSinkBuffer = Okio.buffer(Okio.sink(aVar));
            try {
                requestBodyBody.writeTo(bufferedSinkBuffer);
                bufferedSinkBuffer.close();
                h hVar2 = this.f26515c;
                hVar2.b();
                return hVar2.f26545b.toByteArray();
            } catch (Throwable th) {
                bufferedSinkBuffer.close();
                throw th;
            }
        }

        @Override // com.efs.sdk.net.a.a.f.a
        public final int e() {
            return this.f26514b.headers().size();
        }

        @Override // com.efs.sdk.net.a.a.f.a
        public final String a(int i10) {
            return this.f26514b.headers().name(i10);
        }

        @Override // com.efs.sdk.net.a.a.f.a
        public final String b(int i10) {
            return this.f26514b.headers().value(i10);
        }
    }

    static class c implements f.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f26516a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Request f26517b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Response f26518c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @Nullable
        private final Connection f26519d;

        public c(String str, Request request, Response response, @Nullable Connection connection) {
            this.f26516a = str;
            this.f26517b = request;
            this.f26518c = response;
            this.f26519d = connection;
        }

        @Override // com.efs.sdk.net.a.a.f.e
        public final String a() {
            return this.f26516a;
        }

        @Override // com.efs.sdk.net.a.a.f.e
        public final int b() {
            return this.f26518c.code();
        }

        @Override // com.efs.sdk.net.a.a.f.a
        public final int e() {
            return this.f26518c.headers().size();
        }

        @Override // com.efs.sdk.net.a.a.f.a
        public final String a(int i10) {
            return this.f26518c.headers().name(i10);
        }

        @Override // com.efs.sdk.net.a.a.f.a
        public final String b(int i10) {
            return this.f26518c.headers().value(i10);
        }
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0035 A[Catch: all -> 0x002d, TryCatch #3 {all -> 0x002d, blocks: (B:7:0x001d, B:10:0x0024, B:14:0x0035, B:16:0x0050, B:15:0x004b), top: B:59:0x001d }] */
    /* JADX WARN: Code duplicated, block: B:15:0x004b A[Catch: all -> 0x002d, TryCatch #3 {all -> 0x002d, blocks: (B:7:0x001d, B:10:0x0024, B:14:0x0035, B:16:0x0050, B:15:0x004b), top: B:59:0x001d }] */
    /* JADX WARN: Code duplicated, block: B:31:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:40:0x00c7 A[Catch: all -> 0x00aa, TryCatch #2 {all -> 0x00aa, blocks: (B:29:0x00a3, B:35:0x00ae, B:37:0x00b4, B:38:0x00c1, B:40:0x00c7, B:42:0x00d7, B:44:0x00e2, B:46:0x00e6, B:47:0x00ea, B:49:0x00fd, B:50:0x0110, B:51:0x0117), top: B:58:0x00a3 }] */
    /* JADX WARN: Code duplicated, block: B:42:0x00d7 A[Catch: all -> 0x00aa, TryCatch #2 {all -> 0x00aa, blocks: (B:29:0x00a3, B:35:0x00ae, B:37:0x00b4, B:38:0x00c1, B:40:0x00c7, B:42:0x00d7, B:44:0x00e2, B:46:0x00e6, B:47:0x00ea, B:49:0x00fd, B:50:0x0110, B:51:0x0117), top: B:58:0x00a3 }] */
    /* JADX WARN: Code duplicated, block: B:43:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:46:0x00e6 A[Catch: all -> 0x00aa, TryCatch #2 {all -> 0x00aa, blocks: (B:29:0x00a3, B:35:0x00ae, B:37:0x00b4, B:38:0x00c1, B:40:0x00c7, B:42:0x00d7, B:44:0x00e2, B:46:0x00e6, B:47:0x00ea, B:49:0x00fd, B:50:0x0110, B:51:0x0117), top: B:58:0x00a3 }] */
    /* JADX WARN: Code duplicated, block: B:49:0x00fd A[Catch: all -> 0x00aa, TryCatch #2 {all -> 0x00aa, blocks: (B:29:0x00a3, B:35:0x00ae, B:37:0x00b4, B:38:0x00c1, B:40:0x00c7, B:42:0x00d7, B:44:0x00e2, B:46:0x00e6, B:47:0x00ea, B:49:0x00fd, B:50:0x0110, B:51:0x0117), top: B:58:0x00a3 }] */
    /* JADX WARN: Code duplicated, block: B:50:0x0110 A[Catch: all -> 0x00aa, TryCatch #2 {all -> 0x00aa, blocks: (B:29:0x00a3, B:35:0x00ae, B:37:0x00b4, B:38:0x00c1, B:40:0x00c7, B:42:0x00d7, B:44:0x00e2, B:46:0x00e6, B:47:0x00ea, B:49:0x00fd, B:50:0x0110, B:51:0x0117), top: B:58:0x00a3 }] */
    /* JADX WARN: Code duplicated, block: B:58:0x00a3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:62:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:63:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:14:0x0035, please report this as an issue */
    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        h hVar;
        String str;
        boolean z10;
        h hVar2;
        boolean zEnableTracer;
        String strB;
        Response responseProceed;
        Connection connection;
        ResponseBody responseBodyBody;
        MediaType mediaTypeContentType;
        InputStream inputStreamByteStream;
        InputStream inputStreamA;
        Request request = chain.request();
        try {
            Log.d("NetTrace-Interceptor", "begin intercept");
            zEnableTracer = NetManager.getNetConfigManager() != null ? NetManager.getNetConfigManager().enableTracer() : false;
            if (zEnableTracer) {
                if (request != null) {
                    Log.d("NetTrace-Interceptor", "intercept request is " + request.toString());
                } else {
                    Log.d("NetTrace-Interceptor", "intercept request is null~");
                }
                strB = this.f26510a.b();
                Log.d("NetTrace-Interceptor", "intercept request id is ".concat(String.valueOf(strB)));
                com.efs.sdk.net.a.a.a().a(strB).f26554c = request.url().getUrl();
                hVar2 = new h(this.f26510a, strB);
                this.f26510a.a(new b(strB, request, hVar2));
            } else {
                try {
                    if (IntegrationTestingUtil.isIntegrationTestingInPeriod()) {
                        if (request != null) {
                            Log.d("NetTrace-Interceptor", "intercept request is " + request.toString());
                        } else {
                            Log.d("NetTrace-Interceptor", "intercept request is null~");
                        }
                        strB = this.f26510a.b();
                        try {
                            Log.d("NetTrace-Interceptor", "intercept request id is ".concat(String.valueOf(strB)));
                            com.efs.sdk.net.a.a.a().a(strB).f26554c = request.url().getUrl();
                            hVar2 = new h(this.f26510a, strB);
                            try {
                                this.f26510a.a(new b(strB, request, hVar2));
                            } catch (Throwable th) {
                                boolean z11 = zEnableTracer;
                                hVar = hVar2;
                                th = th;
                                str = strB;
                                z10 = z11;
                                th.printStackTrace();
                                hVar2 = hVar;
                                zEnableTracer = z10;
                                strB = str;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            str = strB;
                            z10 = zEnableTracer;
                            hVar = null;
                        }
                    } else {
                        Log.d("NetTrace-Interceptor", "net enable is false~");
                        hVar2 = null;
                        strB = null;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    str = null;
                    z10 = zEnableTracer;
                    hVar = null;
                    th.printStackTrace();
                    hVar2 = hVar;
                    zEnableTracer = z10;
                    strB = str;
                    responseProceed = chain.proceed(request);
                    if (!zEnableTracer) {
                        try {
                            if (IntegrationTestingUtil.isIntegrationTestingInPeriod()) {
                                return responseProceed;
                            }
                        } catch (Throwable th4) {
                            th4.printStackTrace();
                            return responseProceed;
                        }
                    }
                    if (hVar2 != null) {
                        hVar2.b();
                        f fVar = hVar2.f26544a;
                        hVar2.f26545b.size();
                        fVar.a();
                    }
                    connection = chain.connection();
                    if (connection != null) {
                        throw new IllegalStateException("No connection associated with this request; did you use addInterceptor instead of addNetworkInterceptor?");
                    }
                    this.f26510a.a(new c(strB, request, responseProceed, connection));
                    responseBodyBody = responseProceed.body();
                    if (responseBodyBody != null) {
                        mediaTypeContentType = responseBodyBody.get$contentType();
                        inputStreamByteStream = responseBodyBody.byteStream();
                    } else {
                        mediaTypeContentType = null;
                        inputStreamByteStream = null;
                    }
                    f fVar2 = this.f26510a;
                    String mediaType = mediaTypeContentType != null ? mediaTypeContentType.getMediaType() : null;
                    String strHeader = responseProceed.header("Content-Encoding");
                    new com.efs.sdk.net.a.a.c(this.f26510a, strB);
                    inputStreamA = fVar2.a(strB, mediaType, strHeader, inputStreamByteStream);
                    if (inputStreamA != null) {
                        return responseProceed.newBuilder().body(new a(responseBodyBody, inputStreamA)).build();
                    }
                    return responseProceed;
                }
            }
        } catch (Throwable th5) {
            th = th5;
            hVar = null;
            str = null;
            z10 = false;
        }
        responseProceed = chain.proceed(request);
        if (!zEnableTracer) {
            if (IntegrationTestingUtil.isIntegrationTestingInPeriod()) {
                return responseProceed;
            }
        }
        if (hVar2 != null && hVar2.a()) {
            hVar2.b();
            f fVar3 = hVar2.f26544a;
            hVar2.f26545b.size();
            fVar3.a();
        }
        connection = chain.connection();
        if (connection != null) {
            throw new IllegalStateException("No connection associated with this request; did you use addInterceptor instead of addNetworkInterceptor?");
        }
        this.f26510a.a(new c(strB, request, responseProceed, connection));
        responseBodyBody = responseProceed.body();
        if (responseBodyBody != null) {
            mediaTypeContentType = responseBodyBody.get$contentType();
            inputStreamByteStream = responseBodyBody.byteStream();
        } else {
            mediaTypeContentType = null;
            inputStreamByteStream = null;
        }
        f fVar4 = this.f26510a;
        if (mediaTypeContentType != null) {
        }
        String strHeader2 = responseProceed.header("Content-Encoding");
        new com.efs.sdk.net.a.a.c(this.f26510a, strB);
        inputStreamA = fVar4.a(strB, mediaType, strHeader2, inputStreamByteStream);
        if (inputStreamA != null) {
            return responseProceed.newBuilder().body(new a(responseBodyBody, inputStreamA)).build();
        }
        return responseProceed;
    }
}

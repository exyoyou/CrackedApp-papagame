package com.join.android.app.common.http;

import java.io.IOException;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okio.Buffer;
import okio.BufferedSink;
import okio.ForwardingSink;
import okio.Okio;
import okio.Sink;

/* JADX INFO: loaded from: classes5.dex */
public class f extends RequestBody {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RequestBody f34605a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final g f34606b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private BufferedSink f34607c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    String f34608d;

    class a extends ForwardingSink {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        long f34609b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        long f34610c;

        a(Sink delegate) {
            super(delegate);
            this.f34609b = 0L;
            this.f34610c = 0L;
        }

        @Override // okio.ForwardingSink, okio.Sink
        public void write(Buffer source, long byteCount) throws IOException {
            super.write(source, byteCount);
            if (this.f34610c == 0) {
                this.f34610c = f.this.contentLength();
            }
            this.f34609b += byteCount;
            g gVar = f.this.f34606b;
            long j10 = this.f34609b;
            long j11 = this.f34610c;
            gVar.onRequestProgress(j10, j11, j10 == j11, f.this.f34608d);
        }
    }

    public f(RequestBody requestBody, g progressListener, String filename) {
        this.f34605a = requestBody;
        this.f34606b = progressListener;
        this.f34608d = filename;
    }

    private Sink b(Sink sink) {
        return new a(sink);
    }

    @Override // okhttp3.RequestBody
    public long contentLength() throws IOException {
        return this.f34605a.contentLength();
    }

    @Override // okhttp3.RequestBody
    /* JADX INFO: renamed from: contentType */
    public MediaType getContentType() {
        return this.f34605a.getContentType();
    }

    @Override // okhttp3.RequestBody
    public void writeTo(BufferedSink sink) throws IOException {
        if (this.f34607c == null) {
            this.f34607c = Okio.buffer(b(sink));
        }
        this.f34605a.writeTo(this.f34607c);
        this.f34607c.flush();
    }
}

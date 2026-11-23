package com.cloudplay.messagesdk.gson.internal.j;

import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public final class g extends com.cloudplay.messagesdk.gson.stream.b {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final Writer f23823o = new a();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final com.cloudplay.messagesdk.gson.g f23824p = new com.cloudplay.messagesdk.gson.g("closed");

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final List<com.cloudplay.messagesdk.gson.d> f23825l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private String f23826m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private com.cloudplay.messagesdk.gson.d f23827n;

    static class a extends Writer {
        a() {
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            throw new AssertionError();
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() throws IOException {
            throw new AssertionError();
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i10, int i11) {
            throw new AssertionError();
        }
    }

    public g() {
        super(f23823o);
        this.f23825l = new ArrayList();
        this.f23827n = com.cloudplay.messagesdk.gson.e.f23753a;
    }

    private void a(com.cloudplay.messagesdk.gson.d dVar) {
        if (this.f23826m != null) {
            if (!dVar.e() || e()) {
                ((com.cloudplay.messagesdk.gson.f) j()).a(this.f23826m, dVar);
            }
            this.f23826m = null;
            return;
        }
        if (this.f23825l.isEmpty()) {
            this.f23827n = dVar;
            return;
        }
        com.cloudplay.messagesdk.gson.d dVarJ = j();
        if (!(dVarJ instanceof com.cloudplay.messagesdk.gson.c)) {
            throw new IllegalStateException();
        }
        ((com.cloudplay.messagesdk.gson.c) dVarJ).a(dVar);
    }

    private com.cloudplay.messagesdk.gson.d j() {
        List<com.cloudplay.messagesdk.gson.d> list = this.f23825l;
        return list.get(list.size() - 1);
    }

    @Override // com.cloudplay.messagesdk.gson.stream.b
    public com.cloudplay.messagesdk.gson.stream.b b() throws IOException {
        com.cloudplay.messagesdk.gson.f fVar = new com.cloudplay.messagesdk.gson.f();
        a(fVar);
        this.f23825l.add(fVar);
        return this;
    }

    @Override // com.cloudplay.messagesdk.gson.stream.b
    public com.cloudplay.messagesdk.gson.stream.b c() throws IOException {
        if (this.f23825l.isEmpty() || this.f23826m != null) {
            throw new IllegalStateException();
        }
        if (!(j() instanceof com.cloudplay.messagesdk.gson.c)) {
            throw new IllegalStateException();
        }
        List<com.cloudplay.messagesdk.gson.d> list = this.f23825l;
        list.remove(list.size() - 1);
        return this;
    }

    @Override // com.cloudplay.messagesdk.gson.stream.b, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.f23825l.isEmpty()) {
            throw new IOException("Incomplete document");
        }
        this.f23825l.add(f23824p);
    }

    @Override // com.cloudplay.messagesdk.gson.stream.b
    public com.cloudplay.messagesdk.gson.stream.b d() throws IOException {
        if (this.f23825l.isEmpty() || this.f23826m != null) {
            throw new IllegalStateException();
        }
        if (!(j() instanceof com.cloudplay.messagesdk.gson.f)) {
            throw new IllegalStateException();
        }
        List<com.cloudplay.messagesdk.gson.d> list = this.f23825l;
        list.remove(list.size() - 1);
        return this;
    }

    @Override // com.cloudplay.messagesdk.gson.stream.b, java.io.Flushable
    public void flush() throws IOException {
    }

    @Override // com.cloudplay.messagesdk.gson.stream.b
    public com.cloudplay.messagesdk.gson.stream.b h() throws IOException {
        a(com.cloudplay.messagesdk.gson.e.f23753a);
        return this;
    }

    public com.cloudplay.messagesdk.gson.d i() {
        if (this.f23825l.isEmpty()) {
            return this.f23827n;
        }
        throw new IllegalStateException("Expected one JSON element but was " + this.f23825l);
    }

    @Override // com.cloudplay.messagesdk.gson.stream.b
    public com.cloudplay.messagesdk.gson.stream.b c(String str) throws IOException {
        if (str == null) {
            return h();
        }
        a(new com.cloudplay.messagesdk.gson.g(str));
        return this;
    }

    @Override // com.cloudplay.messagesdk.gson.stream.b
    public com.cloudplay.messagesdk.gson.stream.b d(boolean z10) throws IOException {
        a(new com.cloudplay.messagesdk.gson.g(Boolean.valueOf(z10)));
        return this;
    }

    @Override // com.cloudplay.messagesdk.gson.stream.b
    public com.cloudplay.messagesdk.gson.stream.b a() throws IOException {
        com.cloudplay.messagesdk.gson.c cVar = new com.cloudplay.messagesdk.gson.c();
        a(cVar);
        this.f23825l.add(cVar);
        return this;
    }

    @Override // com.cloudplay.messagesdk.gson.stream.b
    public com.cloudplay.messagesdk.gson.stream.b a(String str) throws IOException {
        if (str != null) {
            if (!this.f23825l.isEmpty() && this.f23826m == null) {
                if (j() instanceof com.cloudplay.messagesdk.gson.f) {
                    this.f23826m = str;
                    return this;
                }
                throw new IllegalStateException();
            }
            throw new IllegalStateException();
        }
        throw new NullPointerException("name == null");
    }

    @Override // com.cloudplay.messagesdk.gson.stream.b
    public com.cloudplay.messagesdk.gson.stream.b a(Boolean bool) throws IOException {
        if (bool == null) {
            return h();
        }
        a(new com.cloudplay.messagesdk.gson.g(bool));
        return this;
    }

    @Override // com.cloudplay.messagesdk.gson.stream.b
    public com.cloudplay.messagesdk.gson.stream.b a(long j10) throws IOException {
        a(new com.cloudplay.messagesdk.gson.g(Long.valueOf(j10)));
        return this;
    }

    @Override // com.cloudplay.messagesdk.gson.stream.b
    public com.cloudplay.messagesdk.gson.stream.b a(Number number) throws IOException {
        if (number == null) {
            return h();
        }
        if (!g()) {
            double dDoubleValue = number.doubleValue();
            if (Double.isNaN(dDoubleValue) || Double.isInfinite(dDoubleValue)) {
                throw new IllegalArgumentException("JSON forbids NaN and infinities: " + number);
            }
        }
        a(new com.cloudplay.messagesdk.gson.g(number));
        return this;
    }
}

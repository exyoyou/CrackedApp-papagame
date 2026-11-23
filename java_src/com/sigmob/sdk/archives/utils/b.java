package com.sigmob.sdk.archives.utils;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes9.dex */
public class b extends FilterInputStream {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f78766a;

    public b(final InputStream in2) {
        super(in2);
    }

    public long a() {
        return this.f78766a;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int i10 = ((FilterInputStream) this).in.read();
        if (i10 >= 0) {
            a(1L);
        }
        return i10;
    }

    protected final void a(long read) {
        if (read != -1) {
            this.f78766a += read;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] b10) throws IOException {
        return read(b10, 0, b10.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] b10, int off, int len) throws IOException {
        int i10 = ((FilterInputStream) this).in.read(b10, off, len);
        if (i10 >= 0) {
            a(i10);
        }
        return i10;
    }
}

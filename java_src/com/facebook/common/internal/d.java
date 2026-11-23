package com.facebook.common.internal;

import com.facebook.infer.annotation.Nullsafe;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class d extends FilterOutputStream {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f26876b;

    public d(OutputStream out) {
        super(out);
        this.f26876b = 0L;
    }

    public long b() {
        return this.f26876b;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        ((FilterOutputStream) this).out.close();
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] b10, int off, int len) throws IOException {
        ((FilterOutputStream) this).out.write(b10, off, len);
        this.f26876b += (long) len;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int b10) throws IOException {
        ((FilterOutputStream) this).out.write(b10);
        this.f26876b++;
    }
}

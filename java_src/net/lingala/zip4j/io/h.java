package net.lingala.zip4j.io;

import java.io.IOException;
import java.io.InputStream;
import net.lingala.zip4j.exception.ZipException;

/* JADX INFO: loaded from: classes.dex */
public class h extends InputStream {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a f94657b;

    public h(a aVar) {
        this.f94657b = aVar;
    }

    public void a(boolean z10) throws IOException {
        try {
            this.f94657b.close();
            if (z10 || this.f94657b.b() == null) {
                return;
            }
            this.f94657b.b().b();
        } catch (ZipException e10) {
            throw new IOException(e10.getMessage());
        }
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.f94657b.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        a(false);
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        int i10 = this.f94657b.read();
        if (i10 != -1) {
            this.f94657b.b().u(i10);
        }
        return i10;
    }

    @Override // java.io.InputStream
    public long skip(long j10) throws IOException {
        return this.f94657b.skip(j10);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        int i12 = this.f94657b.read(bArr, i10, i11);
        if (i12 > 0 && this.f94657b.b() != null) {
            this.f94657b.b().v(bArr, i10, i12);
        }
        return i12;
    }
}

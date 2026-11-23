package com.facebook.common.memory;

import com.facebook.infer.annotation.Nullsafe;
import java.io.IOException;
import java.io.InputStream;
import javax.annotation.concurrent.NotThreadSafe;

/* JADX INFO: loaded from: classes9.dex */
@NotThreadSafe
@Nullsafe(Nullsafe.Mode.LOCAL)
public class f extends InputStream {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f26888h = "PooledByteInputStream";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final InputStream f26889b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final byte[] f26890c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.facebook.common.references.g<byte[]> f26891d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f26892e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f26893f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f26894g = false;

    public f(InputStream inputStream, byte[] byteArray, com.facebook.common.references.g<byte[]> resourceReleaser) {
        this.f26889b = (InputStream) com.facebook.common.internal.i.i(inputStream);
        this.f26890c = (byte[]) com.facebook.common.internal.i.i(byteArray);
        this.f26891d = (com.facebook.common.references.g) com.facebook.common.internal.i.i(resourceReleaser);
    }

    private boolean b() throws IOException {
        if (this.f26893f < this.f26892e) {
            return true;
        }
        int i10 = this.f26889b.read(this.f26890c);
        if (i10 <= 0) {
            return false;
        }
        this.f26892e = i10;
        this.f26893f = 0;
        return true;
    }

    private void d() throws IOException {
        if (this.f26894g) {
            throw new IOException("stream already closed");
        }
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        com.facebook.common.internal.i.o(this.f26893f <= this.f26892e);
        d();
        return (this.f26892e - this.f26893f) + this.f26889b.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f26894g) {
            return;
        }
        this.f26894g = true;
        this.f26891d.release(this.f26890c);
        super.close();
    }

    protected void finalize() throws Throwable {
        if (!this.f26894g) {
            i3.a.u(f26888h, "Finalized without closing");
            close();
        }
        super.finalize();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        com.facebook.common.internal.i.o(this.f26893f <= this.f26892e);
        d();
        if (!b()) {
            return -1;
        }
        byte[] bArr = this.f26890c;
        int i10 = this.f26893f;
        this.f26893f = i10 + 1;
        return bArr[i10] & 255;
    }

    @Override // java.io.InputStream
    public long skip(long byteCount) throws IOException {
        com.facebook.common.internal.i.o(this.f26893f <= this.f26892e);
        d();
        int i10 = this.f26892e;
        int i11 = this.f26893f;
        long j10 = i10 - i11;
        if (j10 >= byteCount) {
            this.f26893f = (int) (((long) i11) + byteCount);
            return byteCount;
        }
        this.f26893f = i10;
        return j10 + this.f26889b.skip(byteCount - j10);
    }

    @Override // java.io.InputStream
    public int read(byte[] buffer, int offset, int length) throws IOException {
        com.facebook.common.internal.i.o(this.f26893f <= this.f26892e);
        d();
        if (!b()) {
            return -1;
        }
        int iMin = Math.min(this.f26892e - this.f26893f, length);
        System.arraycopy(this.f26890c, this.f26893f, buffer, offset, iMin);
        this.f26893f += iMin;
        return iMin;
    }
}

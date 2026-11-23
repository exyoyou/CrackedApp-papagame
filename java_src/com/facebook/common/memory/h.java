package com.facebook.common.memory;

import androidx.annotation.VisibleForTesting;
import com.facebook.infer.annotation.Nullsafe;
import java.io.InputStream;
import javax.annotation.concurrent.NotThreadSafe;

/* JADX INFO: loaded from: classes9.dex */
@NotThreadSafe
@Nullsafe(Nullsafe.Mode.LOCAL)
public class h extends InputStream {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @VisibleForTesting
    final PooledByteBuffer f26895b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @VisibleForTesting
    int f26896c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @VisibleForTesting
    int f26897d;

    public h(PooledByteBuffer pooledByteBuffer) {
        com.facebook.common.internal.i.d(Boolean.valueOf(!pooledByteBuffer.isClosed()));
        this.f26895b = (PooledByteBuffer) com.facebook.common.internal.i.i(pooledByteBuffer);
        this.f26896c = 0;
        this.f26897d = 0;
    }

    @Override // java.io.InputStream
    public int available() {
        return this.f26895b.size() - this.f26896c;
    }

    @Override // java.io.InputStream
    public void mark(int readlimit) {
        this.f26897d = this.f26896c;
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.InputStream
    public int read() {
        if (available() <= 0) {
            return -1;
        }
        PooledByteBuffer pooledByteBuffer = this.f26895b;
        int i10 = this.f26896c;
        this.f26896c = i10 + 1;
        return pooledByteBuffer.D(i10) & 255;
    }

    @Override // java.io.InputStream
    public void reset() {
        this.f26896c = this.f26897d;
    }

    @Override // java.io.InputStream
    public long skip(long byteCount) {
        com.facebook.common.internal.i.d(Boolean.valueOf(byteCount >= 0));
        int iMin = Math.min((int) byteCount, available());
        this.f26896c += iMin;
        return iMin;
    }

    @Override // java.io.InputStream
    public int read(byte[] buffer) {
        return read(buffer, 0, buffer.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] buffer, int offset, int length) {
        if (offset >= 0 && length >= 0 && offset + length <= buffer.length) {
            int iAvailable = available();
            if (iAvailable <= 0) {
                return -1;
            }
            if (length <= 0) {
                return 0;
            }
            int iMin = Math.min(iAvailable, length);
            this.f26895b.B(this.f26896c, buffer, offset, iMin);
            this.f26896c += iMin;
            return iMin;
        }
        throw new ArrayIndexOutOfBoundsException("length=" + buffer.length + "; regionStart=" + offset + "; regionLength=" + length);
    }
}

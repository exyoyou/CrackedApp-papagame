package com.facebook.common.memory;

import androidx.annotation.VisibleForTesting;
import com.facebook.infer.annotation.Nullsafe;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class j {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f26898c = 16384;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f26899a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a f26900b;

    public j(a byteArrayPool) {
        this(byteArrayPool, 16384);
    }

    public long a(final InputStream from, final OutputStream to) throws IOException {
        byte[] bArr = this.f26900b.get(this.f26899a);
        long j10 = 0;
        while (true) {
            try {
                int i10 = from.read(bArr, 0, this.f26899a);
                if (i10 == -1) {
                    this.f26900b.release(bArr);
                    return j10;
                }
                to.write(bArr, 0, i10);
                j10 += (long) i10;
            } catch (Throwable th) {
                this.f26900b.release(bArr);
                throw th;
            }
        }
    }

    public long b(final InputStream from, final OutputStream to, final long bytesToCopy) throws IOException {
        long j10 = 0;
        com.facebook.common.internal.i.o(bytesToCopy > 0);
        byte[] bArr = this.f26900b.get(this.f26899a);
        while (j10 < bytesToCopy) {
            try {
                int i10 = from.read(bArr, 0, (int) Math.min(this.f26899a, bytesToCopy - j10));
                if (i10 == -1) {
                    break;
                }
                to.write(bArr, 0, i10);
                j10 += (long) i10;
            } catch (Throwable th) {
                this.f26900b.release(bArr);
                throw th;
            }
        }
        this.f26900b.release(bArr);
        return j10;
    }

    @VisibleForTesting
    public j(a byteArrayPool, int tempBufSize) {
        com.facebook.common.internal.i.d(Boolean.valueOf(tempBufSize > 0));
        this.f26899a = tempBufSize;
        this.f26900b = byteArrayPool;
    }
}

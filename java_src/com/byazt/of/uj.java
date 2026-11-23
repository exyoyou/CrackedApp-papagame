package com.byazt.of;

import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1217, 15})
public class uj implements tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FileChannel f17774c;
    public final long tt;
    public final long ve;

    public uj(FileChannel fileChannel, long j10, long j11) {
        if (j10 < 0) {
            throw new IndexOutOfBoundsException("offset: ".concat(String.valueOf(j11)));
        }
        if (j11 < 0) {
            throw new IndexOutOfBoundsException("size: ".concat(String.valueOf(j11)));
        }
        this.f17774c = fileChannel;
        this.tt = j10;
        this.ve = j11;
    }

    @Override // com.byazt.of.tt
    /* JADX INFO: renamed from: tt, reason: merged with bridge method [inline-methods] */
    public uj c(long j10, long j11) {
        long jC = c();
        c(j10, j11, jC);
        return (j10 == 0 && j11 == jC) ? this : new uj(this.f17774c, this.tt + j10, j11);
    }

    @Override // com.byazt.of.tt
    public long c() {
        long j10 = this.ve;
        if (j10 != -1) {
            return j10;
        }
        try {
            return this.f17774c.size();
        } catch (IOException unused) {
            return 0L;
        }
    }

    public void c(long j10, int i10, ByteBuffer byteBuffer) throws IOException {
        int i11;
        c(j10, i10, c());
        if (i10 == 0) {
            return;
        }
        if (i10 <= byteBuffer.remaining()) {
            long j11 = this.tt + j10;
            int iLimit = byteBuffer.limit();
            try {
                byteBuffer.limit(byteBuffer.position() + i10);
                while (i10 > 0) {
                    synchronized (this.f17774c) {
                        this.f17774c.position(j11);
                        i11 = this.f17774c.read(byteBuffer);
                    }
                    j11 += (long) i11;
                    i10 -= i11;
                }
                byteBuffer.limit(iLimit);
                return;
            } catch (Throwable th) {
                byteBuffer.limit(iLimit);
                throw th;
            }
        }
        throw new BufferOverflowException();
    }

    @Override // com.byazt.of.tt
    public ByteBuffer c(long j10, int i10) throws IOException {
        if (i10 >= 0) {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i10);
            c(j10, i10, byteBufferAllocate);
            byteBufferAllocate.flip();
            return byteBufferAllocate;
        }
        throw new IndexOutOfBoundsException("size: ".concat(String.valueOf(i10)));
    }

    private static void c(long j10, long j11, long j12) {
        if (j10 < 0) {
            throw new IndexOutOfBoundsException("offset: ".concat(String.valueOf(j10)));
        }
        if (j11 < 0) {
            throw new IndexOutOfBoundsException("size: ".concat(String.valueOf(j11)));
        }
        if (j10 > j12) {
            throw new IndexOutOfBoundsException("offset (" + j10 + ") > source size (" + j12 + ")");
        }
        long j13 = j10 + j11;
        if (j13 < j10) {
            throw new IndexOutOfBoundsException("offset (" + j10 + ") + size (" + j11 + ") overflow");
        }
        if (j13 <= j12) {
            return;
        }
        throw new IndexOutOfBoundsException("offset (" + j10 + ") + size (" + j11 + ") > source size (" + j12 + ")");
    }
}

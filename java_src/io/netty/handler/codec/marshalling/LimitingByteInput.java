package io.netty.handler.codec.marshalling;

import java.io.IOException;
import org.jboss.marshalling.ByteInput;

/* JADX INFO: loaded from: classes.dex */
class LimitingByteInput implements ByteInput {
    private static final TooBigObjectException EXCEPTION = new TooBigObjectException();
    private final ByteInput input;
    private final long limit;
    private long read;

    static final class TooBigObjectException extends IOException {
        private static final long serialVersionUID = 1;

        TooBigObjectException() {
        }
    }

    LimitingByteInput(ByteInput byteInput, long j10) {
        if (j10 <= 0) {
            throw new IllegalArgumentException("The limit MUST be > 0");
        }
        this.input = byteInput;
        this.limit = j10;
    }

    private int readable(int i10) {
        return (int) Math.min(i10, this.limit - this.read);
    }

    public int available() throws IOException {
        return readable(this.input.available());
    }

    public void close() throws IOException {
    }

    public int read() throws IOException {
        if (readable(1) <= 0) {
            throw EXCEPTION;
        }
        int i10 = this.input.read();
        this.read++;
        return i10;
    }

    public long skip(long j10) throws IOException {
        int i10 = readable((int) j10);
        if (i10 <= 0) {
            throw EXCEPTION;
        }
        long jSkip = this.input.skip(i10);
        this.read += jSkip;
        return jSkip;
    }

    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    public int read(byte[] bArr, int i10, int i11) throws IOException {
        int i12 = readable(i11);
        if (i12 > 0) {
            int i13 = this.input.read(bArr, i10, i12);
            this.read += (long) i13;
            return i13;
        }
        throw EXCEPTION;
    }
}

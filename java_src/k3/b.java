package k3;

import com.facebook.infer.annotation.Nullsafe;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class b extends FilterInputStream {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final byte[] f92113b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f92114c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f92115d;

    public b(InputStream inputStream, byte[] tail) {
        super(inputStream);
        inputStream.getClass();
        tail.getClass();
        this.f92113b = tail;
    }

    private int b() {
        int i10 = this.f92114c;
        byte[] bArr = this.f92113b;
        if (i10 >= bArr.length) {
            return -1;
        }
        this.f92114c = i10 + 1;
        return bArr[i10] & 255;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void mark(int readLimit) {
        if (((FilterInputStream) this).in.markSupported()) {
            super.mark(readLimit);
            this.f92115d = this.f92114c;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int i10 = ((FilterInputStream) this).in.read();
        return i10 != -1 ? i10 : b();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        if (!((FilterInputStream) this).in.markSupported()) {
            throw new IOException("mark is not supported");
        }
        ((FilterInputStream) this).in.reset();
        this.f92114c = this.f92115d;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] buffer) throws IOException {
        return read(buffer, 0, buffer.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] buffer, int offset, int count) throws IOException {
        int i10 = ((FilterInputStream) this).in.read(buffer, offset, count);
        if (i10 != -1) {
            return i10;
        }
        int i11 = 0;
        if (count == 0) {
            return 0;
        }
        while (i11 < count) {
            int iB = b();
            if (iB == -1) {
                break;
            }
            buffer[offset + i11] = (byte) iB;
            i11++;
        }
        if (i11 > 0) {
            return i11;
        }
        return -1;
    }
}

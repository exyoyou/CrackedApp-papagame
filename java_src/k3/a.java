package k3;

import com.facebook.infer.annotation.Nullsafe;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class a extends FilterInputStream {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f92111b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f92112c;

    public a(InputStream inputStream, int limit) {
        super(inputStream);
        inputStream.getClass();
        if (limit < 0) {
            throw new IllegalArgumentException("limit must be >= 0");
        }
        this.f92111b = limit;
        this.f92112c = -1;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        return Math.min(((FilterInputStream) this).in.available(), this.f92111b);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void mark(int readLimit) {
        if (((FilterInputStream) this).in.markSupported()) {
            ((FilterInputStream) this).in.mark(readLimit);
            this.f92112c = this.f92111b;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        if (this.f92111b == 0) {
            return -1;
        }
        int i10 = ((FilterInputStream) this).in.read();
        if (i10 != -1) {
            this.f92111b--;
        }
        return i10;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        if (!((FilterInputStream) this).in.markSupported()) {
            throw new IOException("mark is not supported");
        }
        if (this.f92112c == -1) {
            throw new IOException("mark not set");
        }
        ((FilterInputStream) this).in.reset();
        this.f92111b = this.f92112c;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long byteCount) throws IOException {
        long jSkip = ((FilterInputStream) this).in.skip(Math.min(byteCount, this.f92111b));
        this.f92111b = (int) (((long) this.f92111b) - jSkip);
        return jSkip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] buffer, int byteOffset, int byteCount) throws IOException {
        int i10 = this.f92111b;
        if (i10 == 0) {
            return -1;
        }
        int i11 = ((FilterInputStream) this).in.read(buffer, byteOffset, Math.min(byteCount, i10));
        if (i11 > 0) {
            this.f92111b -= i11;
        }
        return i11;
    }
}

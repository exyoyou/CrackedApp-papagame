package g5;

import e5.c;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final OutputStream f91317a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int[] f91318b = new int[8];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f91319c;

    public a(OutputStream outputStream) {
        this.f91317a = outputStream;
    }

    private void d() throws IOException {
        int[] iArr = this.f91318b;
        this.f91317a.write(iArr[7] | (iArr[0] << 7) | (iArr[1] << 6) | (iArr[2] << 5) | (iArr[3] << 4) | (iArr[4] << 3) | (iArr[5] << 2) | (iArr[6] << 1));
    }

    public void a() throws IOException {
        for (int i10 = this.f91319c; i10 < 8; i10++) {
            this.f91318b[i10] = 0;
        }
        this.f91319c = 0;
        d();
    }

    public void b(int i10) throws IOException {
        c.a(i10);
        if (this.f91319c == 8) {
            this.f91319c = 0;
            d();
        }
        int[] iArr = this.f91318b;
        int i11 = this.f91319c;
        this.f91319c = i11 + 1;
        iArr[i11] = i10;
    }

    public void c(int i10) throws IOException {
        this.f91317a.write(i10);
    }

    public void e(long j10, int i10) throws IOException {
        for (int i11 = 0; i11 < i10; i11++) {
            b(((int) (j10 >> ((i10 - i11) - 1))) & 1);
        }
    }

    public void f() throws IOException {
        e(0L, 8 - this.f91319c);
    }
}

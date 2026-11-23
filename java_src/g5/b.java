package g5;

import e5.c;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes5.dex */
public class b extends a {
    public b(OutputStream outputStream) {
        super(outputStream);
    }

    public void g(boolean z10, String str) throws IOException {
        c.b(String.valueOf(str) + "\t");
        b(z10 ? 1 : 0);
        c.g("\t" + z10);
    }

    public void h(long j10, int i10, String str) throws IOException {
        c.b(String.valueOf(str) + "\t");
        for (int i11 = 0; i11 < i10; i11++) {
            b(((int) (j10 >> ((i10 - i11) - 1))) & 1);
        }
        c.g("\t" + j10);
    }

    public void i(int i10, String str) throws IOException {
        c.b(String.valueOf(str) + "\t");
        n(((i10 << 1) * (i10 < 0 ? -1 : 1)) + (i10 <= 0 ? 0 : 1));
        c.g("\t" + i10);
    }

    public void j() {
        throw new IllegalStateException("todo");
    }

    public void k() throws IOException {
        b(1);
        f();
        a();
    }

    public void l(int i10, int i11) throws IOException {
        e(i10, i11);
    }

    public void m(int i10, int i11, String str) throws IOException {
        c.b(String.valueOf(str) + "\t");
        e((long) i10, i11);
        c.g("\t" + i10);
    }

    public void n(int i10) throws IOException {
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i12 < 15) {
            int i14 = (1 << i12) + i13;
            if (i10 < i14) {
                i11 = i12;
                break;
            } else {
                i12++;
                i13 = i14;
            }
        }
        e(0L, i11);
        b(1);
        e(i10 - i13, i11);
    }

    public void o(int i10, String str) throws IOException {
        c.b(String.valueOf(str) + "\t");
        n(i10);
        c.g("\t" + i10);
    }
}

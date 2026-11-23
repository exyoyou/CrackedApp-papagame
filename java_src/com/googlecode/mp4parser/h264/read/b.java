package com.googlecode.mp4parser.h264.read;

import e5.c;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes5.dex */
public class b extends a {
    public b(InputStream inputStream) throws IOException {
        super(inputStream);
    }

    private void A(String str, String str2) {
        StringBuilder sb2 = new StringBuilder();
        String strValueOf = String.valueOf(a.f33763f - this.f33768e.d());
        int length = 8 - strValueOf.length();
        sb2.append("@" + strValueOf);
        for (int i10 = 0; i10 < length; i10++) {
            sb2.append(' ');
        }
        sb2.append(str);
        int length2 = (100 - sb2.length()) - this.f33768e.d();
        for (int i11 = 0; i11 < length2; i11++) {
            sb2.append(' ');
        }
        sb2.append(this.f33768e);
        sb2.append(" (" + str2 + ")");
        this.f33768e.c();
        c.g(sb2.toString());
    }

    private int x() throws IOException {
        int i10 = 0;
        while (h() == 0) {
            i10++;
        }
        if (i10 <= 0) {
            return 0;
        }
        return (int) (((long) ((1 << i10) - 1)) + k(i10));
    }

    public byte[] m(int i10) throws IOException {
        byte[] bArr = new byte[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            bArr[i11] = (byte) j();
        }
        return bArr;
    }

    public boolean n() {
        throw new UnsupportedOperationException("Stan");
    }

    public int o() {
        throw new UnsupportedOperationException("Stan");
    }

    public boolean p(String str) throws IOException {
        boolean z10 = h() != 0;
        A(str, z10 ? "1" : "0");
        return z10;
    }

    public Object q(e5.a aVar, String str) throws IOException {
        Object objC;
        do {
            aVar = aVar.b(h());
            if (aVar == null) {
                throw new RuntimeException("Illegal code");
            }
            objC = aVar.c();
        } while (objC == null);
        A(str, objC.toString());
        return objC;
    }

    public int r(String str) throws IOException {
        return y(str);
    }

    public long s(int i10, String str) throws IOException {
        long jK = k(i10);
        A(str, String.valueOf(jK));
        return jK;
    }

    public int t(String str) throws IOException {
        int iX = x();
        int i10 = iX & 1;
        int i11 = ((iX >> 1) + i10) * ((i10 << 1) - 1);
        A(str, String.valueOf(i11));
        return i11;
    }

    public int u(int i10) throws IOException {
        return i10 > 1 ? x() : (~h()) & 1;
    }

    public void v() throws IOException {
        h();
        l();
    }

    public int w(int i10, String str) throws IOException {
        return (int) s(i10, str);
    }

    public int y(String str) throws IOException {
        int iX = x();
        A(str, String.valueOf(iX));
        return iX;
    }

    public int z(String str) throws IOException {
        int i10 = 0;
        while (h() == 0) {
            i10++;
        }
        A(str, String.valueOf(i10));
        return i10;
    }
}

package com.alipay.security.mobile.module.commonutils.crypto;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes7.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final byte[] f7280a = {com.sigmob.sdk.archives.tar.e.H, com.sigmob.sdk.archives.tar.e.I, com.sigmob.sdk.archives.tar.e.J, com.sigmob.sdk.archives.tar.e.K, com.sigmob.sdk.archives.tar.e.L, com.sigmob.sdk.archives.tar.e.M, com.sigmob.sdk.archives.tar.e.N, com.sigmob.sdk.archives.tar.e.O, 56, 57, 97, 98, 99, 100, 101, 102};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final byte[] f7281b = new byte[128];

    public f() {
        d();
    }

    private void d() {
        int i10 = 0;
        while (true) {
            byte[] bArr = this.f7280a;
            if (i10 >= bArr.length) {
                byte[] bArr2 = this.f7281b;
                bArr2[65] = bArr2[97];
                bArr2[66] = bArr2[98];
                bArr2[67] = bArr2[99];
                bArr2[68] = bArr2[100];
                bArr2[69] = bArr2[101];
                bArr2[70] = bArr2[102];
                return;
            }
            this.f7281b[bArr[i10]] = (byte) i10;
            i10++;
        }
    }

    private static boolean e(char c10) {
        return c10 == '\n' || c10 == '\r' || c10 == '\t' || c10 == ' ';
    }

    public final int a(String str, OutputStream outputStream) throws IOException {
        int length = str.length();
        while (length > 0 && e(str.charAt(length - 1))) {
            length--;
        }
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            while (i10 < length && e(str.charAt(i10))) {
                i10++;
            }
            int i12 = i10 + 1;
            byte b10 = this.f7281b[str.charAt(i10)];
            while (i12 < length && e(str.charAt(i12))) {
                i12++;
            }
            outputStream.write((b10 << 4) | this.f7281b[str.charAt(i12)]);
            i11++;
            i10 = i12 + 1;
        }
        return i11;
    }

    public final int b(byte[] bArr, int i10, int i11, OutputStream outputStream) throws IOException {
        for (int i12 = i10; i12 < i10 + i11; i12++) {
            int i13 = bArr[i12] & 255;
            outputStream.write(this.f7280a[i13 >>> 4]);
            outputStream.write(this.f7280a[i13 & 15]);
        }
        return i11 * 2;
    }

    public final int c(byte[] bArr, int i10, OutputStream outputStream) throws IOException {
        int i11 = 0;
        int i12 = i10 + 0;
        while (i12 > 0 && e((char) bArr[i12 - 1])) {
            i12--;
        }
        int i13 = 0;
        while (i11 < i12) {
            while (i11 < i12 && e((char) bArr[i11])) {
                i11++;
            }
            int i14 = i11 + 1;
            byte b10 = this.f7281b[bArr[i11]];
            while (i14 < i12 && e((char) bArr[i14])) {
                i14++;
            }
            outputStream.write((b10 << 4) | this.f7281b[bArr[i14]]);
            i13++;
            i11 = i14 + 1;
        }
        return i13;
    }
}

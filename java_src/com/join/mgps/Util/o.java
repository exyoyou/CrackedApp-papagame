package com.join.mgps.Util;

import java.io.ByteArrayOutputStream;

/* JADX INFO: loaded from: classes4.dex */
public class o {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f49821c = 256;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f49822d = 62;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f49823a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private byte[] f49824b;

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final byte[] f49825a = {com.sigmob.sdk.archives.tar.e.H, com.sigmob.sdk.archives.tar.e.I, com.sigmob.sdk.archives.tar.e.J, com.sigmob.sdk.archives.tar.e.K, com.sigmob.sdk.archives.tar.e.L, com.sigmob.sdk.archives.tar.e.M, com.sigmob.sdk.archives.tar.e.N, com.sigmob.sdk.archives.tar.e.O, 56, 57, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, com.sigmob.sdk.archives.tar.e.P, 77, 78, 79, 80, 81, 82, com.sigmob.sdk.archives.tar.e.Q, 84, 85, 86, 87, com.sigmob.sdk.archives.tar.e.S, 89, 90, 97, 98, 99, 100, 101, 102, com.sigmob.sdk.archives.tar.e.T, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, com.sigmob.sdk.archives.tar.e.R, 121, 122};

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final byte[] f49826b = {com.sigmob.sdk.archives.tar.e.H, com.sigmob.sdk.archives.tar.e.I, com.sigmob.sdk.archives.tar.e.J, com.sigmob.sdk.archives.tar.e.K, com.sigmob.sdk.archives.tar.e.L, com.sigmob.sdk.archives.tar.e.M, com.sigmob.sdk.archives.tar.e.N, com.sigmob.sdk.archives.tar.e.O, 56, 57, 97, 98, 99, 100, 101, 102, com.sigmob.sdk.archives.tar.e.T, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, com.sigmob.sdk.archives.tar.e.R, 121, 122, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, com.sigmob.sdk.archives.tar.e.P, 77, 78, 79, 80, 81, 82, com.sigmob.sdk.archives.tar.e.Q, 84, 85, 86, 87, com.sigmob.sdk.archives.tar.e.S, 89, 90};

        private a() {
        }
    }

    private o(final byte[] alphabet) {
        this.f49823a = alphabet;
        e();
    }

    private byte[] a(final byte[] message, final int sourceBase, final int targetBase) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(h(message.length, sourceBase, targetBase));
        byte[] byteArray = message;
        while (true) {
            if (byteArray.length <= 0) {
                break;
            }
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream(byteArray.length);
            int i10 = 0;
            for (byte b10 : byteArray) {
                int i11 = (b10 & 255) + (i10 * sourceBase);
                i10 = i11 % targetBase;
                int i12 = (i11 - i10) / targetBase;
                if (byteArrayOutputStream2.size() > 0 || i12 > 0) {
                    byteArrayOutputStream2.write(i12);
                }
            }
            byteArrayOutputStream.write(i10);
            byteArray = byteArrayOutputStream2.toByteArray();
        }
        for (int i13 = 0; i13 < message.length - 1 && message[i13] == 0; i13++) {
            byteArrayOutputStream.write(0);
        }
        return j(byteArrayOutputStream.toByteArray());
    }

    public static o b() {
        return c();
    }

    public static o c() {
        return new o(a.f49825a);
    }

    public static o d() {
        return new o(a.f49826b);
    }

    private void e() {
        this.f49824b = new byte[256];
        int i10 = 0;
        while (true) {
            byte[] bArr = this.f49823a;
            if (i10 >= bArr.length) {
                return;
            }
            this.f49824b[bArr[i10]] = (byte) (i10 & 255);
            i10++;
        }
    }

    private int h(int inputLength, int sourceBase, int targetBase) {
        return (int) Math.ceil((Math.log(sourceBase) / Math.log(targetBase)) * ((double) inputLength));
    }

    private byte[] j(final byte[] arr) {
        int length = arr.length;
        byte[] bArr = new byte[length];
        for (int i10 = 0; i10 < length; i10++) {
            bArr[(length - i10) - 1] = arr[i10];
        }
        return bArr;
    }

    private byte[] k(final byte[] indices, final byte[] dictionary) {
        byte[] bArr = new byte[indices.length];
        for (int i10 = 0; i10 < indices.length; i10++) {
            bArr[i10] = dictionary[indices[i10]];
        }
        return bArr;
    }

    public byte[] f(final byte[] encoded) {
        if (i(encoded)) {
            return a(k(encoded, this.f49824b), 62, 256);
        }
        throw new IllegalArgumentException("Input is not encoded correctly");
    }

    public byte[] g(final byte[] message) {
        return k(a(message, 256, 62), this.f49823a);
    }

    public boolean i(final byte[] bytes) {
        if (bytes == null) {
            return false;
        }
        for (byte b10 : bytes) {
            if ((48 > b10 || 57 < b10) && ((97 > b10 || 122 < b10) && (65 > b10 || 90 < b10))) {
                return false;
            }
        }
        return true;
    }
}

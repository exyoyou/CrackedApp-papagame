package com.alipay.security.mobile.module.commonutils.crypto;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes7.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final f f7279a = new f();

    private static int a(String str, OutputStream outputStream) {
        return f7279a.a(str, outputStream);
    }

    private static int b(byte[] bArr, int i10, int i11, OutputStream outputStream) {
        return f7279a.b(bArr, i10, i11, outputStream);
    }

    private static int c(byte[] bArr, OutputStream outputStream) {
        return f7279a.b(bArr, 0, bArr.length, outputStream);
    }

    public static byte[] d(String str) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            f7279a.a(str, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e10) {
            throw new RuntimeException("exception decoding Hex string: " + e10);
        }
    }

    private static byte[] e(byte[] bArr) {
        return f(bArr, bArr.length);
    }

    private static byte[] f(byte[] bArr, int i10) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            f7279a.b(bArr, 0, i10, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e10) {
            throw new RuntimeException("exception encoding Hex string: " + e10);
        }
    }

    private static byte[] g(byte[] bArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            f7279a.c(bArr, bArr.length, byteArrayOutputStream);
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e10) {
            throw new RuntimeException("exception decoding Hex string: " + e10);
        }
    }
}

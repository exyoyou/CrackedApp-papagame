package com.alibaba.fastjson.util;

import java.lang.ref.SoftReference;
import java.nio.charset.CharsetDecoder;

/* JADX INFO: loaded from: classes7.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f6845a = 1024;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f6846b = 10;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f6847c = 131072;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f6848d = 17;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int f6851g = 1024;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f6852h = 10;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f6853i = 131072;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int f6854j = 17;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    static final /* synthetic */ boolean f6856l = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final ThreadLocal<SoftReference<char[]>> f6849e = new ThreadLocal<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final ThreadLocal<CharsetDecoder> f6850f = new ThreadLocal<>();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final ThreadLocal<SoftReference<byte[]>> f6855k = new ThreadLocal<>();

    private static char[] a(int i10) {
        if (i10 > 131072) {
            return new char[i10];
        }
        char[] cArr = new char[e(10, 17, i10)];
        f6849e.set(new SoftReference<>(cArr));
        return cArr;
    }

    private static byte[] b(int i10) {
        if (i10 > 131072) {
            return new byte[i10];
        }
        byte[] bArr = new byte[e(10, 17, i10)];
        f6855k.set(new SoftReference<>(bArr));
        return bArr;
    }

    public static void c() {
        f6855k.set(null);
    }

    public static void d() {
        f6849e.set(null);
    }

    private static int e(int i10, int i11, int i12) {
        return (i12 >>> i10) <= 0 ? 1 << i10 : 1 << (32 - Integer.numberOfLeadingZeros(i12 - 1));
    }

    public static byte[] f(int i10) {
        SoftReference<byte[]> softReference = f6855k.get();
        if (softReference == null) {
            return b(i10);
        }
        byte[] bArr = softReference.get();
        if (bArr == null) {
            return b(i10);
        }
        return bArr.length < i10 ? b(i10) : bArr;
    }

    public static char[] g(int i10) {
        SoftReference<char[]> softReference = f6849e.get();
        if (softReference == null) {
            return a(i10);
        }
        char[] cArr = softReference.get();
        if (cArr == null) {
            return a(i10);
        }
        return cArr.length < i10 ? a(i10) : cArr;
    }

    public static CharsetDecoder h() {
        ThreadLocal<CharsetDecoder> threadLocal = f6850f;
        CharsetDecoder charsetDecoder = threadLocal.get();
        if (charsetDecoder != null) {
            return charsetDecoder;
        }
        l lVar = new l();
        threadLocal.set(lVar);
        return lVar;
    }
}

package com.facebook.imageformat;

import com.coremedia.iso.boxes.s;
import com.facebook.common.internal.g;
import com.facebook.common.internal.i;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class a implements c.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f27511c = 20;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f27512d = 21;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final byte[] f27513e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f27514f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final byte[] f27515g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int f27516h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final byte[] f27517i = e.a("GIF87a");

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final byte[] f27518j = e.a("GIF89a");

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final int f27519k = 6;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final byte[] f27520l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final int f27521m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final byte[] f27522n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final int f27523o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final byte[] f27524p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final byte[][] f27525q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final int f27526r = 12;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final byte[] f27527s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final byte[] f27528t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final int f27529u;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final int f27530a = g.a(21, 20, f27514f, f27516h, 6, f27521m, f27523o, 12);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f27531b = false;

    static {
        byte[] bArr = {-1, -40, -1};
        f27513e = bArr;
        f27514f = bArr.length;
        byte[] bArr2 = {-119, 80, 78, 71, 13, 10, 26, 10};
        f27515g = bArr2;
        f27516h = bArr2.length;
        byte[] bArrA = e.a("BM");
        f27520l = bArrA;
        f27521m = bArrA.length;
        byte[] bArr3 = {0, 0, 1, 0};
        f27522n = bArr3;
        f27523o = bArr3.length;
        f27524p = e.a(s.f25047r);
        f27525q = new byte[][]{e.a("heic"), e.a("heix"), e.a("hevc"), e.a("hevx"), e.a("mif1"), e.a("msf1")};
        byte[] bArr4 = {73, 73, 42, 0};
        f27527s = bArr4;
        f27528t = new byte[]{77, 77, 0, 42};
        f27529u = bArr4.length;
    }

    private static c c(final byte[] imageHeaderBytes, final int headerSize) {
        i.d(Boolean.valueOf(m3.c.h(imageHeaderBytes, 0, headerSize)));
        if (m3.c.g(imageHeaderBytes, 0)) {
            return b.f27537f;
        }
        if (m3.c.f(imageHeaderBytes, 0)) {
            return b.f27538g;
        }
        if (!m3.c.c(imageHeaderBytes, 0, headerSize)) {
            return c.f27545c;
        }
        if (m3.c.b(imageHeaderBytes, 0)) {
            return b.f27541j;
        }
        return m3.c.d(imageHeaderBytes, 0) ? b.f27540i : b.f27539h;
    }

    private static boolean d(final byte[] imageHeaderBytes, final int headerSize) {
        byte[] bArr = f27520l;
        if (headerSize < bArr.length) {
            return false;
        }
        return e.d(imageHeaderBytes, bArr);
    }

    private static boolean e(final byte[] imageHeaderBytes, final int headerSize) {
        return headerSize >= f27529u && (e.d(imageHeaderBytes, f27527s) || e.d(imageHeaderBytes, f27528t));
    }

    private static boolean f(final byte[] imageHeaderBytes, final int headerSize) {
        if (headerSize < 6) {
            return false;
        }
        return e.d(imageHeaderBytes, f27517i) || e.d(imageHeaderBytes, f27518j);
    }

    private static boolean g(final byte[] imageHeaderBytes, final int headerSize) {
        if (headerSize < 12 || imageHeaderBytes[3] < 8 || !e.b(imageHeaderBytes, f27524p, 4)) {
            return false;
        }
        for (byte[] bArr : f27525q) {
            if (e.b(imageHeaderBytes, bArr, 8)) {
                return true;
            }
        }
        return false;
    }

    private static boolean h(final byte[] imageHeaderBytes, final int headerSize) {
        byte[] bArr = f27522n;
        if (headerSize < bArr.length) {
            return false;
        }
        return e.d(imageHeaderBytes, bArr);
    }

    private static boolean i(final byte[] imageHeaderBytes, final int headerSize) {
        byte[] bArr = f27513e;
        return headerSize >= bArr.length && e.d(imageHeaderBytes, bArr);
    }

    private static boolean j(final byte[] imageHeaderBytes, final int headerSize) {
        byte[] bArr = f27515g;
        return headerSize >= bArr.length && e.d(imageHeaderBytes, bArr);
    }

    @Override // com.facebook.imageformat.c.a
    @Nullable
    public final c a(byte[] headerBytes, int headerSize) {
        i.i(headerBytes);
        if (!this.f27531b && m3.c.h(headerBytes, 0, headerSize)) {
            return c(headerBytes, headerSize);
        }
        if (i(headerBytes, headerSize)) {
            return b.f27532a;
        }
        if (j(headerBytes, headerSize)) {
            return b.f27533b;
        }
        if (this.f27531b && m3.c.h(headerBytes, 0, headerSize)) {
            return c(headerBytes, headerSize);
        }
        if (f(headerBytes, headerSize)) {
            return b.f27534c;
        }
        if (d(headerBytes, headerSize)) {
            return b.f27535d;
        }
        if (h(headerBytes, headerSize)) {
            return b.f27536e;
        }
        if (g(headerBytes, headerSize)) {
            return b.f27542k;
        }
        return e(headerBytes, headerSize) ? b.f27543l : c.f27545c;
    }

    @Override // com.facebook.imageformat.c.a
    public int b() {
        return this.f27530a;
    }

    public void k(boolean useNewOrder) {
        this.f27531b = useNewOrder;
    }
}

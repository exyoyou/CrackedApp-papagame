package com.facebook.imageutils;

import com.facebook.infer.annotation.Nullsafe;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Class<?> f28781a = g.class;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f28782b = 1296891946;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f28783c = 1229531648;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f28784d = 274;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f28785e = 3;

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f28786a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f28787b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f28788c;

        private b() {
        }
    }

    g() {
    }

    public static int a(int orientation) {
        if (orientation == 3) {
            return 180;
        }
        if (orientation != 6) {
            return orientation != 8 ? 0 : 270;
        }
        return 90;
    }

    private static int b(InputStream is, int length, boolean isLittleEndian) throws IOException {
        if (length >= 10 && f.a(is, 2, isLittleEndian) == 3 && f.a(is, 4, isLittleEndian) == 1) {
            return f.a(is, 2, isLittleEndian);
        }
        return 0;
    }

    private static int c(InputStream is, int length, boolean isLittleEndian, int tagToFind) throws IOException {
        if (length < 14) {
            return 0;
        }
        int iA = f.a(is, 2, isLittleEndian);
        int i10 = length - 2;
        while (true) {
            int i11 = iA - 1;
            if (iA <= 0 || i10 < 12) {
                break;
            }
            int i12 = i10 - 2;
            if (f.a(is, 2, isLittleEndian) == tagToFind) {
                return i12;
            }
            is.skip(10L);
            i10 = i12 - 10;
            iA = i11;
        }
        return 0;
    }

    public static int d(InputStream is, int length) throws IOException {
        b bVar = new b();
        int iE = e(is, length, bVar);
        int i10 = bVar.f28788c - 8;
        if (iE == 0 || i10 > iE) {
            return 0;
        }
        is.skip(i10);
        return b(is, c(is, iE - i10, bVar.f28786a, 274), bVar.f28786a);
    }

    private static int e(InputStream is, int length, b tiffHeader) throws IOException {
        if (length <= 8) {
            return 0;
        }
        int iA = f.a(is, 4, false);
        tiffHeader.f28787b = iA;
        int i10 = length - 4;
        if (iA != 1229531648 && iA != 1296891946) {
            i3.a.q(f28781a, "Invalid TIFF header");
            return 0;
        }
        boolean z10 = iA == 1229531648;
        tiffHeader.f28786a = z10;
        int iA2 = f.a(is, 4, z10);
        tiffHeader.f28788c = iA2;
        int i11 = i10 - 4;
        if (iA2 >= 8 && iA2 - 8 <= i11) {
            return i11;
        }
        i3.a.q(f28781a, "Invalid offset");
        return 0;
    }
}

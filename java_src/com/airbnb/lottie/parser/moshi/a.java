package com.airbnb.lottie.parser.moshi;

import external.org.apache.commons.lang3.d;

/* JADX INFO: loaded from: classes7.dex */
final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final int f6019a = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final int f6020b = 2;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final int f6021c = 3;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final int f6022d = 4;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final int f6023e = 5;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final int f6024f = 6;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static final int f6025g = 7;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static final int f6026h = 8;

    private a() {
    }

    static String a(int i10, int[] iArr, String[] strArr, int[] iArr2) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append('$');
        for (int i11 = 0; i11 < i10; i11++) {
            int i12 = iArr[i11];
            if (i12 == 1 || i12 == 2) {
                sb2.append('[');
                sb2.append(iArr2[i11]);
                sb2.append(']');
            } else if (i12 == 3 || i12 == 4 || i12 == 5) {
                sb2.append(d.f90941a);
                String str = strArr[i11];
                if (str != null) {
                    sb2.append(str);
                }
            }
        }
        return sb2.toString();
    }
}

package com.alibaba.fastjson.asm;

/* JADX INFO: loaded from: classes7.dex */
public class j {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f6475e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f6476f = 1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int f6477g = 2;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f6478h = 3;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f6479i = 4;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int f6480j = 5;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int f6481k = 6;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int f6482l = 7;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int f6483m = 8;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int f6484n = 9;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int f6485o = 10;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final j f6486p = new j(0, null, 1443168256, 1);

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final j f6487q = new j(1, null, 1509950721, 1);

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final j f6488r = new j(2, null, 1124075009, 1);

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final j f6489s = new j(3, null, 1107297537, 1);

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final j f6490t = new j(4, null, 1392510721, 1);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final j f6491u = new j(5, null, 1224736769, 1);

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final j f6492v = new j(6, null, 1174536705, 1);

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final j f6493w = new j(7, null, 1241579778, 1);

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final j f6494x = new j(8, null, 1141048066, 1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f6495a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final char[] f6496b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f6497c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f6498d;

    private j(int i10, char[] cArr, int i11, int i12) {
        this.f6495a = i10;
        this.f6496b = cArr;
        this.f6497c = i11;
        this.f6498d = i12;
    }

    public static int a(String str) {
        int i10;
        int i11 = 1;
        int i12 = 1;
        int i13 = 1;
        while (true) {
            i10 = i12 + 1;
            char cCharAt = str.charAt(i12);
            if (cCharAt == ')') {
                break;
            }
            if (cCharAt == 'L') {
                while (true) {
                    i12 = i10 + 1;
                    if (str.charAt(i10) == ';') {
                        break;
                    }
                    i10 = i12;
                }
                i13++;
            } else {
                i13 = (cCharAt == 'D' || cCharAt == 'J') ? i13 + 2 : i13 + 1;
                i12 = i10;
            }
        }
        char cCharAt2 = str.charAt(i10);
        int i14 = i13 << 2;
        if (cCharAt2 == 'V') {
            i11 = 0;
        } else if (cCharAt2 == 'D' || cCharAt2 == 'J') {
            i11 = 2;
        }
        return i14 | i11;
    }

    public static j getType(String str) {
        return getType(str.toCharArray(), 0);
    }

    String b() {
        return new String(this.f6496b, this.f6497c, this.f6498d);
    }

    public String c() {
        return new String(this.f6496b, this.f6497c, this.f6498d);
    }

    public int d() {
        return this.f6495a;
    }

    private static j getType(char[] cArr, int i10) {
        char c10;
        char c11 = cArr[i10];
        if (c11 == 'F') {
            return f6492v;
        }
        if (c11 == 'S') {
            return f6490t;
        }
        if (c11 == 'V') {
            return f6486p;
        }
        if (c11 == 'I') {
            return f6491u;
        }
        if (c11 == 'J') {
            return f6493w;
        }
        if (c11 == 'Z') {
            return f6487q;
        }
        if (c11 != '[') {
            switch (c11) {
                case 'B':
                    return f6489s;
                case 'C':
                    return f6488r;
                case 'D':
                    return f6494x;
                default:
                    int i11 = 1;
                    while (cArr[i10 + i11] != ';') {
                        i11++;
                    }
                    return new j(10, cArr, i10 + 1, i11 - 1);
            }
        }
        int i12 = 1;
        while (true) {
            c10 = cArr[i10 + i12];
            if (c10 != '[') {
                break;
            }
            i12++;
        }
        if (c10 == 'L') {
            do {
                i12++;
            } while (cArr[i10 + i12] != ';');
        }
        return new j(9, cArr, i10, i12 + 1);
    }
}

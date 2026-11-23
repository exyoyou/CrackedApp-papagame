package com.alibaba.fastjson.parser;

/* JADX INFO: loaded from: classes7.dex */
public class l {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f6653f = 512;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int f6654g = 8;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f6655h = 4096;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a[] f6656a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String[] f6657b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final char[][] f6658c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f6659d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f6660e;

    public l() {
        this(512);
        a("$ref", 0, 4, 1185263);
        String str = com.alibaba.fastjson.a.DEFAULT_TYPE_KEY;
        a(str, 0, 5, str.hashCode());
    }

    public static final int d(char[] cArr, int i10, int i11) {
        int i12 = 0;
        int i13 = 0;
        while (i12 < i11) {
            i13 = (i13 * 31) + cArr[i10];
            i12++;
            i10++;
        }
        return i13;
    }

    public String a(String str, int i10, int i11, int i12) {
        boolean z10;
        boolean z11;
        int i13 = this.f6659d & i12;
        String str2 = this.f6657b[i13];
        if (str2 == null) {
            z10 = true;
        } else if (str2.length() == i11) {
            char[] cArr = this.f6658c[i13];
            int i14 = 0;
            while (true) {
                if (i14 >= i11) {
                    z10 = true;
                    break;
                }
                if (str.charAt(i10 + i14) != cArr[i14]) {
                    z10 = false;
                    break;
                }
                i14++;
            }
            if (z10) {
                return str2;
            }
        } else {
            z10 = false;
        }
        int i15 = 0;
        for (a aVar = this.f6656a[i13]; aVar != null; aVar = aVar.f6665e) {
            char[] cArr2 = aVar.f6663c;
            if (i11 == cArr2.length && i12 == aVar.f6662b) {
                int i16 = 0;
                while (true) {
                    if (i16 >= i11) {
                        z11 = true;
                        break;
                    }
                    if (str.charAt(i10 + i16) != cArr2[i16]) {
                        z11 = false;
                        break;
                    }
                    i16++;
                }
                if (z11) {
                    return aVar.f6661a;
                }
                i15++;
            }
        }
        if (i15 >= 8) {
            return str.substring(i10, i11 + i10);
        }
        if (this.f6660e >= 4096) {
            return str.substring(i10, i11 + i10);
        }
        a aVar2 = new a(str, i10, i11, i12, this.f6656a[i13]);
        this.f6656a[i13] = aVar2;
        if (z10) {
            this.f6657b[i13] = aVar2.f6661a;
            this.f6658c[i13] = aVar2.f6663c;
        }
        this.f6660e++;
        return aVar2.f6661a;
    }

    public String b(char[] cArr, int i10, int i11) {
        return c(cArr, i10, i11, d(cArr, i10, i11));
    }

    public String c(char[] cArr, int i10, int i11, int i12) {
        boolean z10;
        boolean z11;
        int i13 = this.f6659d & i12;
        String str = this.f6657b[i13];
        if (str == null) {
            z10 = true;
        } else if (str.length() == i11) {
            char[] cArr2 = this.f6658c[i13];
            int i14 = 0;
            while (true) {
                if (i14 >= i11) {
                    z10 = true;
                    break;
                }
                if (cArr[i10 + i14] != cArr2[i14]) {
                    z10 = false;
                    break;
                }
                i14++;
            }
            if (z10) {
                return str;
            }
        } else {
            z10 = false;
        }
        int i15 = 0;
        for (a aVar = this.f6656a[i13]; aVar != null; aVar = aVar.f6665e) {
            char[] cArr3 = aVar.f6663c;
            if (i11 == cArr3.length && i12 == aVar.f6662b) {
                int i16 = 0;
                while (true) {
                    if (i16 >= i11) {
                        z11 = true;
                        break;
                    }
                    if (cArr[i10 + i16] != cArr3[i16]) {
                        z11 = false;
                        break;
                    }
                    i16++;
                }
                if (z11) {
                    return aVar.f6661a;
                }
                i15++;
            }
        }
        if (i15 >= 8) {
            return new String(cArr, i10, i11);
        }
        if (this.f6660e >= 4096) {
            return new String(cArr, i10, i11);
        }
        a aVar2 = new a(cArr, i10, i11, i12, this.f6656a[i13]);
        this.f6656a[i13] = aVar2;
        if (z10) {
            this.f6657b[i13] = aVar2.f6661a;
            this.f6658c[i13] = aVar2.f6663c;
        }
        this.f6660e++;
        return aVar2.f6661a;
    }

    public int e() {
        return this.f6660e;
    }

    public l(int i10) {
        this.f6660e = 0;
        this.f6659d = i10 - 1;
        this.f6656a = new a[i10];
        this.f6657b = new String[i10];
        this.f6658c = new char[i10][];
    }

    protected static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f6661a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f6662b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final char[] f6663c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final byte[] f6664d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public a f6665e;

        public a(char[] cArr, int i10, int i11, int i12, a aVar) {
            char[] cArr2 = new char[i11];
            this.f6663c = cArr2;
            System.arraycopy(cArr, i10, cArr2, 0, i11);
            this.f6661a = new String(cArr2).intern();
            this.f6665e = aVar;
            this.f6662b = i12;
            this.f6664d = null;
        }

        public a(String str, int i10, int i11, int i12, a aVar) {
            String strIntern = str.substring(i10, i11 + i10).intern();
            this.f6661a = strIntern;
            this.f6663c = strIntern.toCharArray();
            this.f6665e = aVar;
            this.f6662b = i12;
            this.f6664d = null;
        }
    }
}

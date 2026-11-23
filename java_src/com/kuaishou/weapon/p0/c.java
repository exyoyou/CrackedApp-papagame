package com.kuaishou.weapon.p0;

import java.io.UnsupportedEncodingException;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes3.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f74555a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f74556b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f74557c = 2;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f74558d = 4;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f74559e = 8;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f74560f = 16;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static final /* synthetic */ boolean f74561g = true;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final Pattern f74562h = Pattern.compile("^([A-Za-z0-9+/]{4})*([A-Za-z0-9+/]{4}|[A-Za-z0-9+/]{3}=|[A-Za-z0-9+/]{2}==)$");

    static abstract class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public byte[] f74563a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f74564b;

        a() {
        }

        public abstract int a(int i10);

        public abstract boolean a(byte[] bArr, int i10, int i11, boolean z10);
    }

    static class b extends a {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final int[] f74565c = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final int[] f74566d = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, 63, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final int f74567e = -1;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final int f74568f = -2;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f74569g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f74570h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private final int[] f74571i;

        public b(int i10, byte[] bArr) {
            this.f74563a = bArr;
            this.f74571i = (i10 & 8) == 0 ? f74565c : f74566d;
            this.f74569g = 0;
            this.f74570h = 0;
        }

        @Override // com.kuaishou.weapon.p0.c.a
        public int a(int i10) {
            return ((i10 * 3) / 4) + 10;
        }

        @Override // com.kuaishou.weapon.p0.c.a
        public boolean a(byte[] bArr, int i10, int i11, boolean z10) {
            int i12 = this.f74569g;
            if (i12 == 6) {
                return false;
            }
            int i13 = i11 + i10;
            int i14 = this.f74570h;
            byte[] bArr2 = this.f74563a;
            int[] iArr = this.f74571i;
            int i15 = i14;
            int i16 = 0;
            int i17 = i12;
            int i18 = i10;
            while (i18 < i13) {
                if (i17 == 0) {
                    while (true) {
                        int i19 = i18 + 4;
                        if (i19 > i13 || (i15 = (iArr[bArr[i18] & 255] << 18) | (iArr[bArr[i18 + 1] & 255] << 12) | (iArr[bArr[i18 + 2] & 255] << 6) | iArr[bArr[i18 + 3] & 255]) < 0) {
                            break;
                        }
                        bArr2[i16 + 2] = (byte) i15;
                        bArr2[i16 + 1] = (byte) (i15 >> 8);
                        bArr2[i16] = (byte) (i15 >> 16);
                        i16 += 3;
                        i18 = i19;
                    }
                    if (i18 >= i13) {
                        break;
                    }
                }
                i18++;
                int i20 = iArr[bArr[i18] & 255];
                if (i17 != 0) {
                    if (i17 != 1) {
                        if (i17 != 2) {
                            if (i17 != 3) {
                                if (i17 != 4) {
                                    if (i17 == 5 && i20 != -1) {
                                        this.f74569g = 6;
                                        return false;
                                    }
                                } else if (i20 == -2) {
                                    i17++;
                                } else if (i20 != -1) {
                                    this.f74569g = 6;
                                    return false;
                                }
                            } else if (i20 >= 0) {
                                i15 = (i15 << 6) | i20;
                                bArr2[i16 + 2] = (byte) i15;
                                bArr2[i16 + 1] = (byte) (i15 >> 8);
                                bArr2[i16] = (byte) (i15 >> 16);
                                i16 += 3;
                                i17 = 0;
                            } else if (i20 == -2) {
                                bArr2[i16 + 1] = (byte) (i15 >> 2);
                                bArr2[i16] = (byte) (i15 >> 10);
                                i16 += 2;
                                i17 = 5;
                            } else if (i20 != -1) {
                                this.f74569g = 6;
                                return false;
                            }
                        } else if (i20 >= 0) {
                            i15 = (i15 << 6) | i20;
                            i17++;
                        } else if (i20 == -2) {
                            bArr2[i16] = (byte) (i15 >> 4);
                            i16++;
                            i17 = 4;
                        } else if (i20 != -1) {
                            this.f74569g = 6;
                            return false;
                        }
                    } else if (i20 >= 0) {
                        i15 = (i15 << 6) | i20;
                        i17++;
                    } else if (i20 != -1) {
                        this.f74569g = 6;
                        return false;
                    }
                } else if (i20 >= 0) {
                    i17++;
                    i15 = i20;
                } else if (i20 != -1) {
                    this.f74569g = 6;
                    return false;
                }
            }
            if (!z10) {
                this.f74569g = i17;
                this.f74570h = i15;
                this.f74564b = i16;
                return true;
            }
            if (i17 == 1) {
                this.f74569g = 6;
                return false;
            }
            if (i17 == 2) {
                bArr2[i16] = (byte) (i15 >> 4);
                i16++;
            } else if (i17 == 3) {
                int i21 = i16 + 1;
                bArr2[i16] = (byte) (i15 >> 10);
                i16 = i21 + 1;
                bArr2[i21] = (byte) (i15 >> 2);
            } else if (i17 == 4) {
                this.f74569g = 6;
                return false;
            }
            this.f74569g = i17;
            this.f74564b = i16;
            return true;
        }
    }

    /* JADX INFO: renamed from: com.kuaishou.weapon.p0.c$c, reason: collision with other inner class name */
    static class C0779c extends a {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final int f74572c = 19;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        static final /* synthetic */ boolean f74573h = true;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private static final byte[] f74574i = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, com.sigmob.sdk.archives.tar.e.P, 77, 78, 79, 80, 81, 82, com.sigmob.sdk.archives.tar.e.Q, 84, 85, 86, 87, com.sigmob.sdk.archives.tar.e.S, 89, 90, 97, 98, 99, 100, 101, 102, com.sigmob.sdk.archives.tar.e.T, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, com.sigmob.sdk.archives.tar.e.R, 121, 122, com.sigmob.sdk.archives.tar.e.H, com.sigmob.sdk.archives.tar.e.I, com.sigmob.sdk.archives.tar.e.J, com.sigmob.sdk.archives.tar.e.K, com.sigmob.sdk.archives.tar.e.L, com.sigmob.sdk.archives.tar.e.M, com.sigmob.sdk.archives.tar.e.N, com.sigmob.sdk.archives.tar.e.O, 56, 57, 43, 47};

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private static final byte[] f74575j = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, com.sigmob.sdk.archives.tar.e.P, 77, 78, 79, 80, 81, 82, com.sigmob.sdk.archives.tar.e.Q, 84, 85, 86, 87, com.sigmob.sdk.archives.tar.e.S, 89, 90, 97, 98, 99, 100, 101, 102, com.sigmob.sdk.archives.tar.e.T, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, com.sigmob.sdk.archives.tar.e.R, 121, 122, com.sigmob.sdk.archives.tar.e.H, com.sigmob.sdk.archives.tar.e.I, com.sigmob.sdk.archives.tar.e.J, com.sigmob.sdk.archives.tar.e.K, com.sigmob.sdk.archives.tar.e.L, com.sigmob.sdk.archives.tar.e.M, com.sigmob.sdk.archives.tar.e.N, com.sigmob.sdk.archives.tar.e.O, 56, 57, 45, 95};

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f74576d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final boolean f74577e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final boolean f74578f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final boolean f74579g;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private final byte[] f74580k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private int f74581l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private final byte[] f74582m;

        public C0779c(int i10, byte[] bArr) {
            this.f74563a = bArr;
            this.f74577e = (i10 & 1) == 0;
            boolean z10 = (i10 & 2) == 0;
            this.f74578f = z10;
            this.f74579g = (i10 & 4) != 0;
            this.f74582m = (i10 & 8) == 0 ? f74574i : f74575j;
            this.f74580k = new byte[2];
            this.f74576d = 0;
            this.f74581l = z10 ? 19 : -1;
        }

        @Override // com.kuaishou.weapon.p0.c.a
        public int a(int i10) {
            return ((i10 * 8) / 5) + 10;
        }

        /* JADX WARN: Code duplicated, block: B:100:0x00d4 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:12:0x0050  */
        /* JADX WARN: Code duplicated, block: B:27:0x0094  */
        /* JADX WARN: Code duplicated, block: B:31:0x00d8  */
        /* JADX WARN: Code duplicated, block: B:32:0x00dd A[EDGE_INSN: B:32:0x00dd->B:22:0x008a BREAK  A[LOOP:0: B:25:0x0090->B:33:0x00e4]] */
        /* JADX WARN: Code duplicated, block: B:33:0x00e4 A[LOOP:0: B:25:0x0090->B:33:0x00e4, LOOP_END] */
        /*  JADX ERROR: StackOverflowError in pass: RegionMakerVisitor
            java.lang.StackOverflowError
            	at jadx.core.utils.BlockUtils.traverseSuccessorsUntil(BlockUtils.java:731)
            	at jadx.core.utils.BlockUtils.traverseSuccessorsUntil(BlockUtils.java:749)
            */
        @Override // com.kuaishou.weapon.p0.c.a
        public boolean a(byte[] r18, int r19, int r20, boolean r21) {
            /*
                Method dump skipped, instruction units count: 512
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.kuaishou.weapon.p0.c.C0779c.a(byte[], int, int, boolean):boolean");
        }
    }

    private c() {
    }

    public static byte[] a(String str, int i10) {
        return a(str.getBytes(), i10);
    }

    public static String b(String str, int i10) {
        try {
            return new String(a(str.getBytes(), i10));
        } catch (Throwable unused) {
            return "";
        }
    }

    public static byte[] c(byte[] bArr, int i10) {
        try {
            return c(bArr, 0, bArr.length, i10);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static byte[] a(byte[] bArr) {
        return a(bArr, 0, bArr.length, 0);
    }

    public static String b(byte[] bArr, int i10) {
        try {
            return new String(c(bArr, i10), com.alipay.security.mobile.module.commonutils.crypto.a.f7272b);
        } catch (UnsupportedEncodingException e10) {
            throw new AssertionError(e10);
        }
    }

    public static byte[] c(byte[] bArr, int i10, int i11, int i12) {
        C0779c c0779c = new C0779c(i12, null);
        int i13 = (i11 / 3) * 4;
        if (!c0779c.f74577e) {
            int i14 = i11 % 3;
            if (i14 == 1) {
                i13 += 2;
            } else if (i14 == 2) {
                i13 += 3;
            }
        } else if (i11 % 3 > 0) {
            i13 += 4;
        }
        if (c0779c.f74578f && i11 > 0) {
            i13 += (((i11 - 1) / 57) + 1) * (c0779c.f74579g ? 2 : 1);
        }
        c0779c.f74563a = new byte[i13];
        c0779c.a(bArr, i10, i11, true);
        if (f74561g || c0779c.f74564b == i13) {
            return c0779c.f74563a;
        }
        throw new AssertionError();
    }

    public static byte[] a(byte[] bArr, int i10) {
        return a(bArr, 0, bArr.length, i10);
    }

    public static byte[] a(byte[] bArr, int i10, int i11, int i12) {
        b bVar = new b(i12, new byte[(i11 * 3) / 4]);
        if (bVar.a(bArr, i10, i11, true)) {
            int i13 = bVar.f74564b;
            byte[] bArr2 = bVar.f74563a;
            if (i13 == bArr2.length) {
                return bArr2;
            }
            byte[] bArr3 = new byte[i13];
            System.arraycopy(bArr2, 0, bArr3, 0, i13);
            return bArr3;
        }
        throw new IllegalArgumentException("bad base-64");
    }

    public static String b(byte[] bArr, int i10, int i11, int i12) {
        try {
            return new String(c(bArr, i10, i11, i12), com.alipay.security.mobile.module.commonutils.crypto.a.f7272b);
        } catch (Throwable th) {
            throw new AssertionError(th);
        }
    }

    public static String a(byte[] bArr, String str) {
        try {
            return new String(c(bArr, 0), str);
        } catch (UnsupportedEncodingException e10) {
            throw new AssertionError(e10);
        }
    }

    public static boolean a(String str) {
        if (str != null) {
            try {
                if (!str.equals("")) {
                    return f74562h.matcher(str).matches();
                }
            } catch (Throwable unused) {
            }
        }
        return false;
    }
}

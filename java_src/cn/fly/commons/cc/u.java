package cn.fly.commons.cc;

import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ThreadLocal<byte[]> f1241a = new ThreadLocal<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Object[] f1242b = new Object[0];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int[] f1243c = new int[0];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final byte[] f1244d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int[] f1245e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Object[] f1246f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String[] f1247g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final byte[] f1248h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int[] f1249i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int[] f1250j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final int[] f1251k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final int[] f1252l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final int[] f1253m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final int[] f1254n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int[] f1255o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final int[] f1256p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final int[] f1257q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final int[] f1258r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final String[] f1259s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final int[] f1260t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final boolean f1261u;

    static final class a {
        private int A;
        private int B;
        private boolean C;
        private boolean D;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f1267f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String[] f1268g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int[] f1269h;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private int f1272k;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private int f1274m;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        private int f1283v;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        private int f1286y;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private byte[] f1262a = new byte[1024];

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int[] f1263b = new int[1024];

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int[] f1264c = new int[1024];

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int[] f1265d = new int[16];

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int[] f1266e = new int[16];

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private Object[] f1270i = new Object[256];

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private final IdentityHashMap<Object, Integer> f1271j = new IdentityHashMap<>();

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private byte[] f1273l = new byte[1024];

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private int[] f1275n = new int[256];

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private int[] f1276o = new int[256];

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private int[] f1277p = new int[256];

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private String[] f1278q = new String[256];

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private int[] f1279r = new int[256];

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private int f1280s = 1;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private final HashMap<String, Integer> f1281t = new HashMap<>();

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        private int[] f1282u = new int[1024];

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        private int[] f1284w = new int[256];

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        private int[] f1285x = new int[256];

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        private int[] f1287z = new int[1024];

        a() {
        }

        private void c(aa.a aVar, int i10) throws Throwable {
            b(aVar, i10);
            this.f1264c[i10] = aVar.c();
        }

        private void d(aa.a aVar, int i10) throws Throwable {
            this.f1264c[i10] = aVar.c();
        }

        private void e(aa.a aVar, int i10) throws Throwable {
            this.f1264c[i10] = ((((aVar.c() - 12) * 13) + 10) % 15) + 1;
        }

        private void f(aa.a aVar, int i10) throws Throwable {
            aVar.a();
            this.f1264c[i10] = aVar.c() + aVar.h();
        }

        private void g(int i10) {
            Object[] objArr = this.f1270i;
            if (i10 > objArr.length) {
                this.f1270i = Arrays.copyOf(objArr, b(objArr.length, i10));
            }
        }

        private void h(int i10) {
            byte[] bArr = this.f1273l;
            if (i10 > bArr.length) {
                this.f1273l = Arrays.copyOf(bArr, b(bArr.length, i10));
            }
        }

        private void i(int i10) {
            int[] iArr = this.f1275n;
            if (i10 > iArr.length) {
                int iB = b(iArr.length, i10);
                this.f1275n = Arrays.copyOf(this.f1275n, iB);
                this.f1276o = Arrays.copyOf(this.f1276o, iB);
                this.f1277p = Arrays.copyOf(this.f1277p, iB);
                this.f1278q = (String[]) Arrays.copyOf(this.f1278q, iB);
                this.f1279r = Arrays.copyOf(this.f1279r, iB);
            }
        }

        private void j(int i10) {
            int[] iArr = this.f1284w;
            if (i10 > iArr.length) {
                int iB = b(iArr.length, i10);
                this.f1284w = Arrays.copyOf(this.f1284w, iB);
                this.f1285x = Arrays.copyOf(this.f1285x, iB);
            }
        }

        private void k(int i10) {
            int[] iArr = this.f1282u;
            if (i10 > iArr.length) {
                this.f1282u = Arrays.copyOf(iArr, b(iArr.length, i10));
            }
        }

        private void l(int i10) {
            int[] iArr = this.f1287z;
            if (i10 > iArr.length) {
                this.f1287z = Arrays.copyOf(iArr, b(iArr.length, i10));
            }
        }

        int a() {
            return this.B;
        }

        u b() {
            return new u(this);
        }

        private void b(aa.a aVar, int i10) throws Throwable {
            int iA = a(2);
            a(iA, 0, aVar.d());
            a(iA, 1, aVar.d());
            this.f1263b[i10] = iA;
        }

        private void d(int i10) {
            this.f1262a = Arrays.copyOf(this.f1262a, i10);
            this.f1263b = Arrays.copyOf(this.f1263b, i10);
            this.f1264c = Arrays.copyOf(this.f1264c, i10);
            String[] strArr = this.f1268g;
            if (strArr != null) {
                this.f1268g = (String[]) Arrays.copyOf(strArr, i10);
                this.f1269h = Arrays.copyOf(this.f1269h, i10);
            }
        }

        void a(int i10, boolean z10) {
            if (i10 <= 0) {
                return;
            }
            d();
            this.C = z10;
            c(this.B + i10);
            g(a(i10, 16, 4096));
            i(a(i10, 4, 16384));
            j(a(i10, 16, 4096));
            k(a(i10, 16, 4096));
            l(a(i10, 16, 4096));
        }

        private void c(int i10) {
            if (i10 > this.f1262a.length) {
                d(i10);
            }
        }

        private void e(int i10) {
            int[] iArr = this.f1265d;
            if (i10 > iArr.length) {
                int iB = b(iArr.length, i10);
                this.f1265d = Arrays.copyOf(this.f1265d, iB);
                this.f1266e = Arrays.copyOf(this.f1266e, iB);
            }
        }

        private void f(int i10) {
            String[] strArr = this.f1268g;
            if (strArr == null) {
                this.f1268g = new String[i10];
                this.f1269h = new int[i10];
            } else if (i10 > strArr.length) {
                this.f1268g = (String[]) Arrays.copyOf(strArr, i10);
                this.f1269h = Arrays.copyOf(this.f1269h, i10);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void c() {
            d();
            this.D = true;
        }

        private int b(String str) {
            if (str == null) {
                return 0;
            }
            Integer num = this.f1281t.get(str);
            if (num != null) {
                return num.intValue();
            }
            i(this.f1280s + 1);
            byte[] bytes = str.getBytes(Charset.forName("UTF-8"));
            h(this.f1274m + bytes.length);
            int i10 = this.f1280s;
            this.f1280s = i10 + 1;
            int iB = u.b(bytes);
            this.f1275n[i10] = this.f1274m;
            this.f1276o[i10] = bytes.length;
            this.f1277p[i10] = iB;
            u.c(bytes, iB);
            System.arraycopy(bytes, 0, this.f1273l, this.f1274m, bytes.length);
            this.f1274m += bytes.length;
            this.f1281t.put(str, Integer.valueOf(i10));
            return i10;
        }

        private void d() {
            if (this.D) {
                throw new IllegalStateException("already built");
            }
        }

        void a(byte b10, aa.a aVar) throws Throwable {
            int i10;
            b(this.B + 1);
            int i11 = this.B;
            this.B = i11 + 1;
            int i12 = (((b10 * 100) + 71) % 127) + 1;
            byte[] bArr = this.f1262a;
            bArr[i11] = (byte) i12;
            if (this.C) {
                f(bArr.length);
                this.f1268g[i11] = aVar.f();
                this.f1269h[i11] = aVar.g();
            }
            int i13 = 0;
            switch (i12) {
                case 2:
                case 21:
                case 94:
                case 124:
                    a(aVar, i11, i12 != 21);
                    return;
                case 5:
                case 16:
                case 56:
                case 102:
                    b(aVar, i11);
                    return;
                case 10:
                case 37:
                case 97:
                    d(aVar, i11);
                    return;
                case 13:
                case 113:
                    f(aVar, i11);
                    return;
                case 18:
                    this.f1263b[i11] = a(aVar.e());
                    return;
                case 24:
                case 32:
                case 43:
                case 48:
                case 70:
                case 78:
                case 86:
                case 110:
                    return;
                case 29:
                case 59:
                case 67:
                case 83:
                case 105:
                case 118:
                case 121:
                    a(aVar, i11);
                    return;
                case 40:
                    aVar.a();
                    return;
                case 45:
                    a(i11, aVar.d());
                    aVar.a();
                    return;
                case 51:
                    a(i11, aVar.d());
                    this.f1264c[i11] = aVar.c();
                    a(i11, aVar.c() + aVar.h());
                    return;
                case 62:
                    int iC = aVar.c();
                    int iA = a(iC);
                    while (i13 < iC) {
                        a(iA, i13, aVar.d());
                        i13++;
                    }
                    this.f1263b[i11] = iA;
                    return;
                case 64:
                case 91:
                    e(aVar, i11);
                    return;
                case 75:
                    c(aVar, i11);
                    return;
                case 89:
                    int iC2 = aVar.c();
                    if (iC2 >= 0 && (i10 = this.A) <= Integer.MAX_VALUE - iC2) {
                        int i14 = i10 + iC2;
                        l(i14);
                        while (i13 < iC2) {
                            this.f1287z[i10 + i13] = a(aVar.e());
                            i13++;
                        }
                        this.f1263b[i11] = i10;
                        this.f1264c[i11] = iC2;
                        this.A = i14;
                        return;
                    }
                    throw new IllegalStateException("Invalid value sequence length: " + iC2);
                case 116:
                    int iC3 = aVar.c();
                    int iA2 = a(iC3);
                    while (i13 < iC3) {
                        a(iA2, i13, aVar.d());
                        aVar.a();
                        i13++;
                    }
                    this.f1263b[i11] = iA2;
                    return;
                default:
                    throw new RuntimeException("Bad value: " + i12);
            }
        }

        private void b(int i10) {
            byte[] bArr = this.f1262a;
            if (i10 <= bArr.length) {
                return;
            }
            d(b(bArr.length, i10));
        }

        private static int b(int i10, int i11) {
            while (i10 < i11) {
                i10 += Math.max(1, i10 >>> 1);
            }
            return i10;
        }

        private void a(aa.a aVar, int i10) throws Throwable {
            a(i10, aVar.d());
        }

        private void a(aa.a aVar, int i10, boolean z10) throws Throwable {
            if (z10) {
                a(i10, aVar.d());
            }
            this.f1264c[i10] = aVar.c();
        }

        private int a(Object obj) {
            if (obj instanceof String) {
                return b((String) obj) | Integer.MIN_VALUE;
            }
            Integer num = this.f1271j.get(obj);
            if (num != null) {
                return num.intValue();
            }
            g(this.f1272k + 1);
            Object[] objArr = this.f1270i;
            int i10 = this.f1272k;
            objArr[i10] = obj;
            this.f1271j.put(obj, Integer.valueOf(i10));
            int i11 = this.f1272k;
            this.f1272k = i11 + 1;
            return i11;
        }

        private void a(int i10, String str) {
            this.f1263b[i10] = a(str);
        }

        private int a(String str) {
            if (str == null) {
                return 0;
            }
            int iB = b(str);
            String[] strArr = this.f1278q;
            if (strArr[iB] != null) {
                return iB;
            }
            int[] iArr = this.f1279r;
            int i10 = iArr[iB] + 1;
            if (i10 >= 3) {
                strArr[iB] = str;
                iArr[iB] = 3;
            } else {
                iArr[iB] = i10;
            }
            return iB;
        }

        private int a(int i10) {
            j(this.f1286y + 1);
            k(this.f1283v + i10);
            int i11 = this.f1286y;
            this.f1286y = i11 + 1;
            int[] iArr = this.f1284w;
            int i12 = this.f1283v;
            iArr[i11] = i12;
            this.f1285x[i11] = i10;
            this.f1283v = i12 + i10;
            return i11;
        }

        private void a(int i10, int i11, String str) {
            this.f1282u[this.f1284w[i10] + i11] = a(str);
        }

        private void a(int i10, int i11) {
            e(this.f1267f + 1);
            int[] iArr = this.f1265d;
            int i12 = this.f1267f;
            iArr[i12] = i10;
            this.f1266e[i12] = i11;
            this.f1267f = i12 + 1;
        }

        private static int a(int i10, int i11, int i12) {
            int i13 = i10 / i11;
            if (i13 < 256) {
                return 256;
            }
            return Math.min(i13, i12);
        }
    }

    static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f1288a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public t f1289b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public List<Object> f1290c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f1291d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f1292e;

        b() {
        }

        public Object a() {
            return this.f1289b.b();
        }

        public Object b(String str) {
            return this.f1289b.a(str);
        }

        public void a(Object obj) {
            this.f1289b.a(obj);
        }

        public void b(String str, Object obj) {
            this.f1289b.a(str, obj);
        }

        public Class<?> a(String str) {
            return this.f1289b.b(str);
        }

        public void a(String str, Class<?> cls) {
            this.f1289b.b(str, cls);
        }

        public void a(String str, Object obj) {
            this.f1289b.b(str, obj);
        }
    }

    private static boolean a(int i10, int i11) {
        return i11 > 0 && ((long) i10) * 100 >= ((long) i11) * 85;
    }

    private static byte[] b(byte[] bArr, int i10) {
        return (i10 == bArr.length || a(i10, bArr.length)) ? bArr : Arrays.copyOf(bArr, i10);
    }

    private int c(int i10) {
        int length = this.f1257q.length - 1;
        int i11 = 0;
        while (i11 <= length) {
            int i12 = ((length - i11) >>> 1) + i11;
            int i13 = this.f1257q[i12];
            if (i13 < i10) {
                i11 = i12 + 1;
            } else {
                if (i13 <= i10) {
                    return this.f1258r[i12];
                }
                length = i12 - 1;
            }
        }
        return i10;
    }

    private Object d(int i10) {
        return e(this.f1245e[i10]);
    }

    private Object e(int i10) {
        return (Integer.MIN_VALUE & i10) != 0 ? g(i10 & Integer.MAX_VALUE) : this.f1246f[i10];
    }

    private String f(int i10) {
        return g(this.f1245e[i10]);
    }

    private String g(int i10) {
        if (i10 == 0) {
            return null;
        }
        String str = this.f1247g[i10];
        return str != null ? str : b(i10, this.f1250j[i10]);
    }

    private Object[] h(b bVar, int i10) throws Throwable {
        if (i10 == 0) {
            return f1242b;
        }
        if (i10 == 1) {
            return new Object[]{bVar.a()};
        }
        if (i10 == 2) {
            return new Object[]{bVar.a(), bVar.a()};
        }
        Object[] objArr = new Object[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            objArr[i11] = bVar.a();
        }
        return objArr;
    }

    private u(a aVar) {
        aVar.c();
        int i10 = aVar.B;
        this.f1244d = b(aVar.f1262a, i10);
        this.f1245e = a(aVar.f1263b, i10);
        this.f1256p = a(aVar.f1264c, i10);
        this.f1257q = aVar.f1267f == 0 ? f1243c : Arrays.copyOf(aVar.f1265d, aVar.f1267f);
        this.f1258r = aVar.f1267f == 0 ? f1243c : Arrays.copyOf(aVar.f1266e, aVar.f1267f);
        boolean z10 = aVar.C;
        this.f1261u = z10;
        this.f1259s = z10 ? a(aVar.f1268g, i10) : null;
        this.f1260t = z10 ? a(aVar.f1269h, i10) : null;
        this.f1246f = a(aVar.f1270i, aVar.f1272k);
        this.f1247g = a(aVar.f1278q, aVar.f1280s);
        this.f1248h = b(aVar.f1273l, aVar.f1274m);
        this.f1249i = a(aVar.f1275n, aVar.f1280s);
        this.f1250j = a(aVar.f1276o, aVar.f1280s);
        this.f1251k = a(aVar.f1277p, aVar.f1280s);
        this.f1252l = a(aVar.f1282u, aVar.f1283v);
        this.f1253m = a(aVar.f1284w, aVar.f1286y);
        this.f1254n = a(aVar.f1285x, aVar.f1286y);
        this.f1255o = a(aVar.f1287z, aVar.A);
    }

    private void d(b bVar, int i10) throws Throwable {
        int i11 = this.f1245e[i10];
        int i12 = this.f1253m[i11];
        int i13 = this.f1254n[i11] + i12;
        while (i12 < i13) {
            bVar.a(bVar.b(g(this.f1252l[i12])));
            i12++;
        }
    }

    private void f(b bVar, int i10) {
        HashMap map = new HashMap();
        for (int i11 = 0; i11 < i10; i11++) {
            map.put(bVar.a(), bVar.a());
        }
        bVar.a(map);
    }

    private int b(int i10) {
        if (this.f1261u) {
            return this.f1260t[i10];
        }
        return 0;
    }

    private void e(b bVar, int i10) {
        ArrayList arrayList = new ArrayList();
        int i11 = 0;
        if (i10 == 1) {
            Object objA = bVar.a();
            if (objA != null && objA.getClass().isArray()) {
                int length = Array.getLength(objA);
                while (i11 < length) {
                    arrayList.add(Array.get(objA, i11));
                    i11++;
                }
            } else {
                arrayList.add(objA);
            }
        } else {
            while (i11 < i10) {
                arrayList.add(bVar.a());
                i11++;
            }
        }
        bVar.a(arrayList);
    }

    private static int[] a(int[] iArr, int i10) {
        return (i10 == iArr.length || a(i10, iArr.length)) ? iArr : Arrays.copyOf(iArr, i10);
    }

    private String b(int i10, int i11) {
        byte[] bArrH = h(i11);
        try {
            System.arraycopy(this.f1248h, this.f1249i[i10], bArrH, 0, i11);
            a(bArrH, this.f1251k[i10], i11);
            return new String(bArrH, 0, i11, Charset.forName("UTF-8"));
        } finally {
            Arrays.fill(bArrH, 0, i11, (byte) 0);
        }
    }

    private String c(int i10, int i11) {
        int i12 = this.f1245e[i10];
        if (i11 >= 0 && i11 < this.f1254n[i12]) {
            return g(this.f1252l[this.f1253m[i12] + i11]);
        }
        throw new IndexOutOfBoundsException("Bad string sequence index: " + i11);
    }

    private void g(b bVar, int i10) {
        ab abVar;
        int iC = c(i10);
        bVar.f1288a = iC;
        String strF = f(i10);
        int i11 = i10 + 1;
        if (i11 == iC) {
            abVar = ab.a(strF, this.f1256p[i10], bVar.f1289b);
        } else {
            abVar = new ab(strF, this.f1256p[i10], this, i11, iC, bVar.f1289b);
        }
        if (strF != null) {
            bVar.b(strF, abVar);
        } else {
            bVar.a(abVar);
        }
    }

    private static Object[] a(Object[] objArr, int i10) {
        return (i10 == objArr.length || a(i10, objArr.length)) ? objArr : Arrays.copyOf(objArr, i10);
    }

    private static byte[] h(int i10) {
        if (i10 > 8192) {
            return new byte[i10];
        }
        ThreadLocal<byte[]> threadLocal = f1241a;
        byte[] bArr = threadLocal.get();
        if (bArr != null && bArr.length >= i10) {
            return bArr;
        }
        byte[] bArr2 = new byte[i10];
        threadLocal.set(bArr2);
        return bArr2;
    }

    private static String[] a(String[] strArr, int i10) {
        return (i10 == strArr.length || a(i10, strArr.length)) ? strArr : (String[]) Arrays.copyOf(strArr, i10);
    }

    private void c(b bVar, int i10) {
        int i11 = this.f1245e[i10];
        int i12 = this.f1256p[i10] + i11;
        while (i11 < i12) {
            bVar.a(e(this.f1255o[i11]));
            i11++;
        }
    }

    private void b(b bVar, int i10) throws Throwable {
        int i11 = this.f1245e[i10];
        int i12 = this.f1253m[i11];
        int i13 = this.f1254n[i11] + i12;
        while (i12 < i13) {
            bVar.b(g(this.f1252l[i12]), bVar.a());
            i12++;
        }
    }

    public void a(t tVar, z zVar) throws Throwable {
        tVar.a();
        a(0, this.f1244d.length, tVar, (List<Object>) null);
    }

    private void c(b bVar, int i10, int i11) throws Throwable {
        a(bVar, bVar.a(), i10, (String) null, i11);
    }

    private String a(int i10) {
        if (this.f1261u) {
            return this.f1259s[i10];
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(byte[] bArr, int i10) {
        a(bArr, i10, bArr.length);
    }

    public void a(int i10, int i11, t tVar, List<Object> list) throws Throwable {
        String string;
        b bVar = new b();
        bVar.f1288a = i10;
        bVar.f1289b = tVar;
        bVar.f1290c = list;
        while (bVar.f1288a < i11) {
            try {
                if (bVar.f1289b.g()) {
                    bVar.f1291d = true;
                    break;
                }
                a(bVar, bVar.f1288a);
                if (bVar.f1292e) {
                    break;
                } else {
                    bVar.f1288a++;
                }
            } catch (Throwable th) {
                th = th;
                if (th instanceof x) {
                    string = th.getMessage() == null ? th.getClass().getSimpleName() : th.getMessage();
                    th = th.getCause();
                } else {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("SS Runtime Error: ");
                    sb2.append(th.getMessage() == null ? th.getClass().getSimpleName() : th.getMessage());
                    string = sb2.toString();
                }
                int length = bVar.f1288a;
                byte[] bArr = this.f1244d;
                if (length >= bArr.length) {
                    length = bArr.length - 1;
                }
                throw new x(string + "\r\n\tat " + (length >= 0 ? a(length) : null) + " (" + (length >= 0 ? b(length) : 0) + ")", th);
            }
        }
        if (bVar.f1291d || bVar.f1289b.e() <= 0 || list == null) {
            return;
        }
        try {
            list.add(bVar.f1289b.b());
        } catch (Throwable unused) {
        }
    }

    private void b(b bVar, int i10, int i11) {
        w.b(bVar, i10, a(i11), b(i11));
    }

    private void b(b bVar) {
        Object objA = bVar.a();
        Object objA2 = bVar.a();
        Object objA3 = bVar.a();
        if (objA instanceof List) {
            List list = (List) objA;
            int iIntValue = ((Integer) objA2).intValue();
            if (iIntValue < 0) {
                iIntValue += list.size();
            }
            list.set(iIntValue, objA3);
            return;
        }
        if (objA instanceof Map) {
            ((Map) objA).put(objA2, objA3);
            return;
        }
        if (objA.getClass().isArray()) {
            int iIntValue2 = ((Integer) objA2).intValue();
            if (iIntValue2 < 0) {
                iIntValue2 += Array.getLength(objA);
            }
            Array.set(objA, iIntValue2, objA3);
            return;
        }
        throw new IllegalArgumentException(objA.getClass().getName() + " is not entry");
    }

    private void b(b bVar, String str, int i10) throws Throwable {
        b(bVar, bVar.a(), str, i10);
    }

    private void b(b bVar, Object obj, String str, int i10) throws Throwable {
        Field declaredField;
        Object objA = bVar.a();
        if (obj instanceof Map) {
            ((Map) obj).put(str, objA);
            return;
        }
        for (Class<?> superclass = obj.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
            try {
                declaredField = superclass.getDeclaredField(str);
            } catch (Throwable unused) {
                declaredField = null;
            }
            if (declaredField != null && !Modifier.isStatic(declaredField.getModifiers())) {
                declaredField.setAccessible(true);
                declaredField.set(obj, objA);
                return;
            }
        }
        a(obj, "set" + Character.toUpperCase(str.charAt(0)) + str.substring(1), new Object[]{objA}, bVar.f1289b, a(i10), b(i10));
    }

    private void a(b bVar, int i10) throws Throwable {
        switch (this.f1244d[i10]) {
            case 2:
                b(bVar, f(i10), this.f1256p[i10], i10);
                return;
            case 5:
                b(bVar, c(i10, 0), c(i10, 1), i10);
                return;
            case 10:
                f(bVar, this.f1256p[i10]);
                return;
            case 13:
                if (((Boolean) bVar.a()).booleanValue()) {
                    return;
                }
                bVar.f1288a = this.f1256p[i10];
                return;
            case 16:
                b(bVar, c(i10, 0), c(i10, 1));
                return;
            case 18:
                bVar.a(d(i10));
                return;
            case 21:
                a(bVar, bVar.a(), (String) bVar.a(), this.f1256p[i10], i10);
                return;
            case 24:
                bVar.f1292e = true;
                return;
            case 29:
                a(bVar, f(i10), i10);
                return;
            case 32:
                b(bVar, bVar.a(), (String) bVar.a(), i10);
                return;
            case 37:
                e(bVar, this.f1256p[i10]);
                return;
            case 40:
                return;
            case 43:
                bVar.f1289b = bVar.f1289b.d();
                return;
            case 45:
                bVar.b(f(i10), bVar.a());
                return;
            case 48:
                a(bVar, bVar.a(), (String) bVar.a(), i10);
                return;
            case 51:
                g(bVar, i10);
                return;
            case 56:
                a(bVar, c(i10, 0), c(i10, 1));
                return;
            case 59:
                b(bVar, f(i10), i10);
                return;
            case 62:
                d(bVar, i10);
                return;
            case 64:
                b(bVar, this.f1256p[i10], i10);
                return;
            case 67:
                bVar.a(f(i10), bVar.a());
                return;
            case 70:
                bVar.f1289b = bVar.f1289b.c();
                return;
            case 75:
                a(bVar, c(i10, 0), c(i10, 1), this.f1256p[i10], i10);
                return;
            case 78:
                List<Object> list = bVar.f1290c;
                if (list != null) {
                    list.add(bVar.a());
                }
                bVar.f1291d = true;
                bVar.f1292e = true;
                return;
            case 83:
                bVar.a(bVar.a(f(i10)));
                return;
            case 86:
                b(bVar);
                return;
            case 89:
                c(bVar, i10);
                return;
            case 91:
                a(bVar, this.f1256p[i10], i10);
                return;
            case 94:
                a(bVar, f(i10), (String) bVar.a(), this.f1256p[i10], i10);
                return;
            case 97:
                c(bVar, this.f1256p[i10], i10);
                return;
            case 102:
                a(bVar, c(i10, 0), c(i10, 1), i10);
                return;
            case 105:
                b(bVar, f(i10), (String) bVar.a(), i10);
                return;
            case 110:
                a(bVar);
                return;
            case 113:
                bVar.f1288a = this.f1256p[i10];
                return;
            case 116:
                b(bVar, i10);
                return;
            case 118:
                bVar.a(bVar.b(f(i10)));
                return;
            case 121:
                a(bVar, f(i10), (String) bVar.a(), i10);
                return;
            case 124:
                a(bVar, f(i10), this.f1256p[i10], i10);
                return;
            default:
                throw new RuntimeException("Bad opcode: " + ((int) this.f1244d[i10]));
        }
    }

    private void b(b bVar, String str, String str2, int i10) throws Throwable {
        Field declaredField;
        Class<?> clsA = bVar.a(str);
        Object objA = bVar.a();
        for (Class<?> superclass = clsA; superclass != null; superclass = superclass.getSuperclass()) {
            try {
                declaredField = superclass.getDeclaredField(str2);
            } catch (Throwable unused) {
                declaredField = null;
            }
            if (declaredField != null && Modifier.isStatic(declaredField.getModifiers())) {
                declaredField.setAccessible(true);
                declaredField.set(null, objA);
                return;
            }
        }
        a(clsA, str, "set" + Character.toUpperCase(str2.charAt(0)) + str2.substring(1), 1, new Object[]{objA}, bVar.f1289b, a(i10), b(i10));
    }

    private void b(b bVar, String str, String str2) {
        try {
            bVar.a(str2, bVar.a(str));
        } catch (Throwable unused) {
        }
    }

    private void b(b bVar, String str, int i10, int i11) throws Throwable {
        a(bVar, bVar.a(), str, i10, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int b(byte[] bArr) {
        int length = bArr.length ^ 1831565813;
        for (byte b10 : bArr) {
            length ^= (((b10 & 255) - 1640531527) + (length << 6)) + (length >>> 2);
        }
        if (length == 0) {
            return 324508639;
        }
        return length;
    }

    private void a(b bVar, int i10, int i11) throws Throwable {
        w.a(bVar, i10, a(i11), b(i11));
    }

    private void a(b bVar) {
        int iIntValue;
        int length;
        Object objSubstring;
        Object objA = bVar.a();
        Object objA2 = bVar.a();
        if (objA instanceof List) {
            List list = (List) objA;
            if (objA2 instanceof c) {
                Number[] numberArrB = ((c) objA2).b();
                int iIntValue2 = numberArrB[0].intValue();
                if (iIntValue2 < 0) {
                    iIntValue2 += list.size();
                }
                int iIntValue3 = numberArrB[1].intValue();
                if (iIntValue3 < 0) {
                    iIntValue3 += list.size();
                }
                objSubstring = list.subList(iIntValue2, iIntValue3);
            } else {
                int iIntValue4 = ((Integer) objA2).intValue();
                if (iIntValue4 < 0) {
                    iIntValue4 += list.size();
                }
                objSubstring = list.get(iIntValue4);
            }
        } else if (objA instanceof Map) {
            objSubstring = ((Map) objA).get(objA2);
        } else if (objA.getClass().isArray()) {
            if (objA2 instanceof c) {
                int length2 = Array.getLength(objA);
                Number[] numberArrB2 = ((c) objA2).b();
                int iIntValue5 = numberArrB2[0].intValue();
                if (iIntValue5 < 0) {
                    iIntValue5 += length2;
                }
                int iIntValue6 = numberArrB2[1].intValue();
                if (iIntValue6 < 0) {
                    iIntValue6 += length2;
                }
                int i10 = iIntValue6 - iIntValue5;
                Object objNewInstance = Array.newInstance(objA.getClass().getComponentType(), i10);
                System.arraycopy(objA, iIntValue5, objNewInstance, 0, i10);
                objSubstring = objNewInstance;
            } else {
                int iIntValue7 = ((Integer) objA2).intValue();
                if (iIntValue7 < 0) {
                    iIntValue7 += Array.getLength(objA);
                }
                objSubstring = Array.get(objA, iIntValue7);
            }
        } else if (objA instanceof String) {
            String str = (String) objA;
            if (objA2 instanceof c) {
                Number[] numberArrB3 = ((c) objA2).b();
                iIntValue = numberArrB3[0].intValue();
                length = numberArrB3[1].intValue();
            } else {
                int length3 = str.length();
                iIntValue = ((Integer) objA2).intValue();
                length = length3;
            }
            if (iIntValue < 0) {
                iIntValue += str.length();
            }
            if (length < 0) {
                length += str.length();
            }
            objSubstring = str.substring(iIntValue, length);
        } else {
            throw new IllegalArgumentException(objA.getClass().getName() + " is not entry");
        }
        bVar.a(objSubstring);
    }

    private void a(b bVar, String str, int i10) throws Throwable {
        a(bVar, bVar.a(), str, i10);
    }

    private void a(b bVar, Object obj, String str, int i10) throws Throwable {
        Field declaredField;
        if (obj instanceof Map) {
            bVar.a(((Map) obj).get(str));
            return;
        }
        if (cn.fly.commons.m.a("006ihgKgl4kj").equals(str) && obj.getClass().isArray()) {
            bVar.a(Integer.valueOf(Array.getLength(obj)));
            return;
        }
        for (Class<?> superclass = obj.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
            try {
                declaredField = superclass.getDeclaredField(str);
            } catch (Throwable unused) {
                declaredField = null;
            }
            if (declaredField != null && !Modifier.isStatic(declaredField.getModifiers())) {
                declaredField.setAccessible(true);
                bVar.a(declaredField.get(obj));
                return;
            }
        }
        a(obj, cn.fly.commons.m.a("003Cgl6hk") + Character.toUpperCase(str.charAt(0)) + str.substring(1), f1242b, bVar.f1289b, a(i10), b(i10));
    }

    private void a(b bVar, String str, String str2, int i10) throws Throwable {
        Field declaredField;
        Class<?> clsA = bVar.a(str);
        while (true) {
            if (clsA != null) {
                if ("class".equals(str2)) {
                    bVar.a(clsA);
                    return;
                }
                if (clsA.equals(aa.class) && cn.fly.commons.m.a("007%ffJhEflhkfkfmAg").equals(str2)) {
                    bVar.a((Object) 70);
                    return;
                }
                if (clsA.isEnum()) {
                    Object[] enumConstants = clsA.getEnumConstants();
                    if (enumConstants != null) {
                        for (Object obj : enumConstants) {
                            if (((Enum) obj).name().equals(str2)) {
                                bVar.a(obj);
                                return;
                            }
                        }
                    } else {
                        continue;
                    }
                } else {
                    try {
                        declaredField = clsA.getDeclaredField(str2);
                    } catch (Throwable unused) {
                        declaredField = null;
                    }
                    if (declaredField != null && Modifier.isStatic(declaredField.getModifiers())) {
                        declaredField.setAccessible(true);
                        bVar.a(declaredField.get(null));
                        return;
                    }
                    clsA = clsA.getSuperclass();
                }
            } else {
                a(clsA, str, cn.fly.commons.m.a("003@gl:hk") + Character.toUpperCase(str2.charAt(0)) + str2.substring(1), 1, f1242b, bVar.f1289b, a(i10), b(i10));
                return;
            }
        }
    }

    private void a(b bVar, String str, String str2) {
        try {
            bVar.a(str2, Class.forName(str));
        } catch (Throwable unused) {
        }
    }

    private void a(b bVar, String str, int i10, int i11) throws Throwable {
        a(bVar, bVar.b(str), i10, str, i11);
    }

    private void a(b bVar, Object obj, int i10, String str, int i11) throws Throwable {
        if (obj instanceof ab) {
            LinkedList<Object> linkedListB = ((ab) obj).b(h(bVar, i10));
            if (linkedListB.size() > 0) {
                bVar.a(linkedListB.get(0));
                return;
            }
            return;
        }
        if (obj instanceof Method) {
            bVar.f1289b.a((Method) obj, i10);
            return;
        }
        if (str != null) {
            throw new NoSuchMethodException(str + " at: " + a(i11) + "(" + b(i11) + ")");
        }
        throw new RuntimeException("at: " + a(i11) + "(" + b(i11) + ")");
    }

    private void a(b bVar, Object obj, String str, int i10, int i11) throws Throwable {
        a(obj, str, h(bVar, i10), bVar.f1289b, a(i11), b(i11));
    }

    private void a(b bVar, String str, String str2, int i10, int i11) throws Throwable {
        a(bVar.a(str), str, str2, i10, h(bVar, i10), bVar.f1289b, a(i11), b(i11));
    }

    private static void a(byte[] bArr, int i10, int i11) {
        for (int i12 = 0; i12 < i11; i12++) {
            bArr[i12] = (byte) (bArr[i12] ^ ((byte) ((i12 * 31) + i10)));
        }
    }

    static void a(Class<?> cls, String str, String str2, int i10, Object[] objArr, t tVar, String str3, int i11) throws Throwable {
        v.a(cls, str, str2, i10, objArr, tVar, str3, i11);
    }

    static void a(Object obj, String str, Object[] objArr, t tVar, String str2, int i10) throws Throwable {
        v.a(obj, str, objArr, tVar, str2, i10);
    }
}

package com.alibaba.fastjson.asm;

/* JADX INFO: loaded from: classes7.dex */
public class b {
    static final int A = 4;
    static final int B = 5;
    static final int C = 6;
    static final int D = 7;
    static final int E = 8;
    static final int F = 9;
    static final int G = 10;
    static final int H = 11;
    static final int I = 12;
    static final int J = 13;
    static final int K = 14;
    static final int L = 15;
    static final int M = 16;
    static final byte[] N;
    static final int O = 7;
    static final int P = 9;
    static final int Q = 10;
    static final int R = 11;
    static final int S = 8;
    static final int T = 3;
    static final int U = 4;
    static final int V = 5;
    static final int W = 6;
    static final int X = 12;
    static final int Y = 1;
    static final int Z = 13;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    static final int f6351a0 = 14;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    static final int f6352b0 = 15;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final int f6353t = 1;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final int f6354u = 2;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    static final int f6355v = 262144;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    static final int f6356w = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    static final int f6357x = 1;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    static final int f6358y = 2;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    static final int f6359z = 3;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f6360a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f6361b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final a f6362c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    e[] f6363d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f6364e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final e f6365f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final e f6366g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final e f6367h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    e[] f6368i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f6369j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f6370k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    String f6371l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f6372m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f6373n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int[] f6374o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    d f6375p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    d f6376q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    h f6377r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    h f6378s;

    static {
        byte[] bArr = new byte[220];
        for (int i10 = 0; i10 < 220; i10++) {
            bArr[i10] = (byte) ("AAAAAAAAAAAAAAAABCKLLDDDDDEEEEEEEEEEEEEEEEEEEEAAAAAAAADDDDDEEEEEEEEEEEEEEEEEEEEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMAAAAAAAAAAAAAAAAAAAAIIIIIIIIIIIIIIIIDNOAAAAAAGGGGGGGHHFBFAAFFAAQPIIJJIIIIIIIIIIIIIIIIII".charAt(i10) - 'A');
        }
        N = bArr;
    }

    public b() {
        this(0);
    }

    private e a(e eVar) {
        e[] eVarArr = this.f6363d;
        e eVar2 = eVarArr[eVar.f6390h % eVarArr.length];
        while (eVar2 != null && (eVar2.f6384b != eVar.f6384b || !eVar.a(eVar2))) {
            eVar2 = eVar2.f6391i;
        }
        return eVar2;
    }

    private e j(String str) {
        this.f6366g.c(8, str, null, null);
        e eVarA = a(this.f6366g);
        if (eVarA != null) {
            return eVarA;
        }
        this.f6362c.c(8, k(str));
        int i10 = this.f6361b;
        this.f6361b = i10 + 1;
        e eVar = new e(i10, this.f6366g);
        l(eVar);
        return eVar;
    }

    private void l(e eVar) {
        if (this.f6361b > this.f6364e) {
            int length = this.f6363d.length;
            int i10 = (length * 2) + 1;
            e[] eVarArr = new e[i10];
            for (int i11 = length - 1; i11 >= 0; i11--) {
                e eVar2 = this.f6363d[i11];
                while (eVar2 != null) {
                    int i12 = eVar2.f6390h % i10;
                    e eVar3 = eVar2.f6391i;
                    eVar2.f6391i = eVarArr[i12];
                    eVarArr[i12] = eVar2;
                    eVar2 = eVar3;
                }
            }
            this.f6363d = eVarArr;
            this.f6364e = (int) (((double) i10) * 0.75d);
        }
        int i13 = eVar.f6390h;
        e[] eVarArr2 = this.f6363d;
        int length2 = i13 % eVarArr2.length;
        eVar.f6391i = eVarArr2[length2];
        eVarArr2[length2] = eVar;
    }

    private void m(int i10, int i11, int i12) {
        this.f6362c.c(i10, i11).g(i12);
    }

    public int b(String str) {
        return c(str).f6383a;
    }

    e c(String str) {
        this.f6366g.c(7, str, null, null);
        e eVarA = a(this.f6366g);
        if (eVarA != null) {
            return eVarA;
        }
        this.f6362c.c(7, k(str));
        int i10 = this.f6361b;
        this.f6361b = i10 + 1;
        e eVar = new e(i10, this.f6366g);
        l(eVar);
        return eVar;
    }

    e d(Object obj) {
        if (obj instanceof Integer) {
            return f(((Integer) obj).intValue());
        }
        if (obj instanceof String) {
            return j((String) obj);
        }
        if (obj instanceof j) {
            j jVar = (j) obj;
            return c(jVar.d() == 10 ? jVar.c() : jVar.b());
        }
        throw new IllegalArgumentException("value " + obj);
    }

    e e(String str, String str2, String str3) {
        this.f6367h.c(9, str, str2, str3);
        e eVarA = a(this.f6367h);
        if (eVarA != null) {
            return eVarA;
        }
        m(9, b(str), h(str2, str3));
        int i10 = this.f6361b;
        this.f6361b = i10 + 1;
        e eVar = new e(i10, this.f6367h);
        l(eVar);
        return eVar;
    }

    e f(int i10) {
        this.f6365f.b(i10);
        e eVarA = a(this.f6365f);
        if (eVarA != null) {
            return eVarA;
        }
        this.f6362c.d(3).f(i10);
        int i11 = this.f6361b;
        this.f6361b = i11 + 1;
        e eVar = new e(i11, this.f6365f);
        l(eVar);
        return eVar;
    }

    e g(String str, String str2, String str3, boolean z10) {
        int i10 = z10 ? 11 : 10;
        this.f6367h.c(i10, str, str2, str3);
        e eVarA = a(this.f6367h);
        if (eVarA != null) {
            return eVarA;
        }
        m(i10, b(str), h(str2, str3));
        int i11 = this.f6361b;
        this.f6361b = i11 + 1;
        e eVar = new e(i11, this.f6367h);
        l(eVar);
        return eVar;
    }

    public int h(String str, String str2) {
        return i(str, str2).f6383a;
    }

    e i(String str, String str2) {
        this.f6366g.c(12, str, str2, null);
        e eVarA = a(this.f6366g);
        if (eVarA != null) {
            return eVarA;
        }
        m(12, k(str), k(str2));
        int i10 = this.f6361b;
        this.f6361b = i10 + 1;
        e eVar = new e(i10, this.f6366g);
        l(eVar);
        return eVar;
    }

    public int k(String str) {
        this.f6365f.c(1, str, null, null);
        e eVarA = a(this.f6365f);
        if (eVarA == null) {
            this.f6362c.d(1).h(str);
            int i10 = this.f6361b;
            this.f6361b = i10 + 1;
            eVarA = new e(i10, this.f6365f);
            l(eVarA);
        }
        return eVarA.f6383a;
    }

    public byte[] n() {
        int iM = (this.f6373n * 2) + 24;
        int i10 = 0;
        for (d dVar = this.f6375p; dVar != null; dVar = dVar.f6379a) {
            i10++;
            iM += dVar.b();
        }
        int i11 = 0;
        for (h hVar = this.f6377r; hVar != null; hVar = hVar.f6412a) {
            i11++;
            iM += hVar.m();
        }
        a aVar = new a(iM + this.f6362c.f6350b);
        aVar.f(-889275714).f(this.f6360a);
        a aVarG = aVar.g(this.f6361b);
        a aVar2 = this.f6362c;
        aVarG.e(aVar2.f6349a, 0, aVar2.f6350b);
        int i12 = this.f6369j;
        aVar.g(i12 & (~(((262144 & i12) / 64) | 393216))).g(this.f6370k).g(this.f6372m);
        aVar.g(this.f6373n);
        for (int i13 = 0; i13 < this.f6373n; i13++) {
            aVar.g(this.f6374o[i13]);
        }
        aVar.g(i10);
        for (d dVar2 = this.f6375p; dVar2 != null; dVar2 = dVar2.f6379a) {
            dVar2.c(aVar);
        }
        aVar.g(i11);
        for (h hVar2 = this.f6377r; hVar2 != null; hVar2 = hVar2.f6412a) {
            hVar2.n(aVar);
        }
        aVar.g(0);
        return aVar.f6349a;
    }

    public void o(int i10, int i11, String str, String str2, String[] strArr) {
        this.f6360a = i10;
        this.f6369j = i11;
        this.f6370k = b(str);
        this.f6371l = str;
        this.f6372m = str2 == null ? 0 : b(str2);
        if (strArr == null || strArr.length <= 0) {
            return;
        }
        int length = strArr.length;
        this.f6373n = length;
        this.f6374o = new int[length];
        for (int i12 = 0; i12 < this.f6373n; i12++) {
            this.f6374o[i12] = b(strArr[i12]);
        }
    }

    public c p(int i10, String str, String str2) {
        return new d(this, i10, str, str2);
    }

    public g q(int i10, String str, String str2, String str3, String[] strArr) {
        return new h(this, i10, str, str2, str3, strArr);
    }

    private b(int i10) {
        this.f6361b = 1;
        this.f6362c = new a();
        e[] eVarArr = new e[256];
        this.f6363d = eVarArr;
        this.f6364e = (int) (((double) eVarArr.length) * 0.75d);
        this.f6365f = new e();
        this.f6366g = new e();
        this.f6367h = new e();
    }
}

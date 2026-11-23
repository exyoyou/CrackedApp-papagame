package com.alibaba.fastjson.asm;

import com.android.dx.cf.attrib.AttCode;
import com.android.dx.cf.attrib.AttExceptions;

/* JADX INFO: loaded from: classes7.dex */
class h implements g {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    static final int f6403l = 262144;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    static final int f6404m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    static final int f6405n = 64;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    static final int f6406o = 128;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    static final int f6407p = 247;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    static final int f6408q = 248;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    static final int f6409r = 251;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    static final int f6410s = 252;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    static final int f6411t = 255;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    h f6412a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final b f6413b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f6414c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f6415d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f6416e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f6417f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f6418g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int[] f6419h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private a f6420i = new a();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f6421j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f6422k;

    h(b bVar, int i10, String str, String str2, String str3, String[] strArr) {
        if (bVar.f6377r == null) {
            bVar.f6377r = this;
        } else {
            bVar.f6378s.f6412a = this;
        }
        bVar.f6378s = this;
        this.f6413b = bVar;
        this.f6414c = i10;
        this.f6415d = bVar.k(str);
        this.f6416e = bVar.k(str2);
        if (strArr == null || strArr.length <= 0) {
            return;
        }
        int length = strArr.length;
        this.f6418g = length;
        this.f6419h = new int[length];
        for (int i11 = 0; i11 < this.f6418g; i11++) {
            this.f6419h[i11] = bVar.b(strArr[i11]);
        }
    }

    @Override // com.alibaba.fastjson.asm.g
    public void a() {
    }

    @Override // com.alibaba.fastjson.asm.g
    public void b(int i10, String str, String str2, String str3) {
        this.f6420i.c(i10, this.f6413b.e(str, str2, str3).f6383a);
    }

    @Override // com.alibaba.fastjson.asm.g
    public void c(Object obj) {
        e eVarD = this.f6413b.d(obj);
        int i10 = eVarD.f6383a;
        int i11 = eVarD.f6384b;
        if (i11 == 5 || i11 == 6) {
            this.f6420i.c(20, i10);
        } else if (i10 >= 256) {
            this.f6420i.c(19, i10);
        } else {
            this.f6420i.b(18, i10);
        }
    }

    @Override // com.alibaba.fastjson.asm.g
    public void d(int i10, String str) {
        this.f6420i.c(i10, this.f6413b.c(str).f6383a);
    }

    @Override // com.alibaba.fastjson.asm.g
    public void e(f fVar) {
        a aVar = this.f6420i;
        fVar.c(this, aVar.f6350b, aVar.f6349a);
    }

    @Override // com.alibaba.fastjson.asm.g
    public void f(int i10, f fVar) {
        if ((fVar.f6394b & 2) != 0 && fVar.f6396d - this.f6420i.f6350b < -32768) {
            throw new UnsupportedOperationException();
        }
        this.f6420i.d(i10);
        a aVar = this.f6420i;
        fVar.b(this, aVar, aVar.f6350b - 1);
    }

    @Override // com.alibaba.fastjson.asm.g
    public void g(int i10, int i11) {
        if (i11 < 4 && i10 != 169) {
            this.f6420i.d((i10 < 54 ? ((i10 - 21) << 2) + 26 : ((i10 - 54) << 2) + 59) + i11);
        } else if (i11 >= 256) {
            this.f6420i.d(196).c(i10, i11);
        } else {
            this.f6420i.b(i10, i11);
        }
    }

    @Override // com.alibaba.fastjson.asm.g
    public void h(int i10, int i11) {
        this.f6420i.d(132).b(i10, i11);
    }

    @Override // com.alibaba.fastjson.asm.g
    public void i(int i10, int i11) {
        this.f6420i.b(i10, i11);
    }

    @Override // com.alibaba.fastjson.asm.g
    public void j(int i10) {
        this.f6420i.d(i10);
    }

    @Override // com.alibaba.fastjson.asm.g
    public void k(int i10, int i11) {
        this.f6421j = i10;
        this.f6422k = i11;
    }

    @Override // com.alibaba.fastjson.asm.g
    public void l(int i10, String str, String str2, String str3) {
        boolean z10 = i10 == 185;
        e eVarG = this.f6413b.g(str, str2, str3, z10);
        int iA = eVarG.f6385c;
        if (!z10) {
            this.f6420i.c(i10, eVarG.f6383a);
            return;
        }
        if (iA == 0) {
            iA = j.a(str3);
            eVarG.f6385c = iA;
        }
        this.f6420i.c(185, eVarG.f6383a).b(iA >> 2, 0);
    }

    final int m() {
        int i10;
        if (this.f6420i.f6350b > 0) {
            this.f6413b.k(AttCode.ATTRIBUTE_NAME);
            i10 = this.f6420i.f6350b + 18 + 0 + 8;
        } else {
            i10 = 8;
        }
        if (this.f6418g <= 0) {
            return i10;
        }
        this.f6413b.k(AttExceptions.ATTRIBUTE_NAME);
        return i10 + (this.f6418g * 2) + 8;
    }

    final void n(a aVar) {
        int i10 = this.f6414c;
        aVar.g(i10 & (~(((262144 & i10) / 64) | 393216))).g(this.f6415d).g(this.f6416e);
        int i11 = this.f6420i.f6350b > 0 ? 1 : 0;
        if (this.f6418g > 0) {
            i11++;
        }
        aVar.g(i11);
        int i12 = this.f6420i.f6350b;
        if (i12 > 0) {
            aVar.g(this.f6413b.k(AttCode.ATTRIBUTE_NAME)).f(i12 + 12 + 0);
            aVar.g(this.f6421j).g(this.f6422k);
            a aVarF = aVar.f(this.f6420i.f6350b);
            a aVar2 = this.f6420i;
            aVarF.e(aVar2.f6349a, 0, aVar2.f6350b);
            aVar.g(0);
            aVar.g(0);
        }
        if (this.f6418g > 0) {
            aVar.g(this.f6413b.k(AttExceptions.ATTRIBUTE_NAME)).f((this.f6418g * 2) + 2);
            aVar.g(this.f6418g);
            for (int i13 = 0; i13 < this.f6418g; i13++) {
                aVar.g(this.f6419h[i13]);
            }
        }
    }
}

package com.byazt.zk;

import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 909, 71})
public class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f22890a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List<com.byazt.jx.ve> f22891c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final int f22892da;
    public final com.byazt.fs.da gr;
    public final List<com.byazt.vc.c<Float>> gt;
    public final com.byazt.jx.c gu;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final com.byazt.kd.t f22893i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final float f22894m;
    public final com.byazt.kd.tt my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final c f22895n;
    public final com.byazt.kd.da nu;
    public final boolean qy;
    public final com.byazt.kd.sl rh;
    public final tt rl;
    public final int sl;
    public final String sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final int f22896t;
    public final com.byazt.ga.a tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final float f22897u;
    public final long uj;
    public final String ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final List<com.byazt.jx.x> f22898x;
    public final float yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final float f22899z;

    public enum c {
        PRE_COMP,
        SOLID,
        IMAGE,
        NULL,
        SHAPE,
        TEXT,
        UNKNOWN
    }

    public enum tt {
        NONE,
        ADD,
        INVERT,
        LUMA,
        LUMA_INVERTED,
        UNKNOWN
    }

    public x(List<com.byazt.jx.ve> list, com.byazt.ga.a aVar, String str, long j10, c cVar, long j11, String str2, List<com.byazt.jx.x> list2, com.byazt.kd.t tVar, int i10, int i11, int i12, float f10, float f11, float f12, float f13, com.byazt.kd.da daVar, com.byazt.kd.sl slVar, List<com.byazt.vc.c<Float>> list3, tt ttVar, com.byazt.kd.tt ttVar2, boolean z10, com.byazt.jx.c cVar2, com.byazt.fs.da daVar2) {
        this.f22891c = list;
        this.tt = aVar;
        this.ve = str;
        this.uj = j10;
        this.f22895n = cVar;
        this.f22890a = j11;
        this.sp = str2;
        this.f22898x = list2;
        this.f22893i = tVar;
        this.f22892da = i10;
        this.sl = i11;
        this.f22896t = i12;
        this.f22897u = f10;
        this.yp = f11;
        this.f22899z = f12;
        this.f22894m = f13;
        this.nu = daVar;
        this.rh = slVar;
        this.gt = list3;
        this.rl = ttVar;
        this.my = ttVar2;
        this.qy = z10;
        this.gu = cVar2;
        this.gr = daVar2;
    }

    public String a() {
        return this.ve;
    }

    public com.byazt.ga.a c() {
        return this.tt;
    }

    public List<com.byazt.jx.x> da() {
        return this.f22898x;
    }

    public com.byazt.fs.da gr() {
        return this.gr;
    }

    public com.byazt.kd.sl gt() {
        return this.rh;
    }

    public com.byazt.jx.c gu() {
        return this.gu;
    }

    public float i() {
        return this.f22894m;
    }

    public int m() {
        return this.f22896t;
    }

    public com.byazt.kd.da my() {
        return this.nu;
    }

    public long n() {
        return this.uj;
    }

    public int nu() {
        return this.sl;
    }

    public boolean qy() {
        return this.qy;
    }

    public int rh() {
        return this.f22892da;
    }

    public com.byazt.kd.tt rl() {
        return this.my;
    }

    public c sl() {
        return this.f22895n;
    }

    public String sp() {
        return this.sp;
    }

    public tt t() {
        return this.rl;
    }

    public String toString() {
        return c("");
    }

    public float tt() {
        return this.f22897u;
    }

    public long u() {
        return this.f22890a;
    }

    public List<com.byazt.vc.c<Float>> uj() {
        return this.gt;
    }

    public float ve() {
        return this.yp / this.tt.rh();
    }

    public float x() {
        return this.f22899z;
    }

    public List<com.byazt.jx.ve> yp() {
        return this.f22891c;
    }

    public com.byazt.kd.t z() {
        return this.f22893i;
    }

    public String c(String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(a());
        sb2.append("\n");
        x xVarC = this.tt.c(u());
        if (xVarC != null) {
            sb2.append("\t\tParents: ");
            sb2.append(xVarC.a());
            x xVarC2 = this.tt.c(xVarC.u());
            while (xVarC2 != null) {
                sb2.append("->");
                sb2.append(xVarC2.a());
                xVarC2 = this.tt.c(xVarC2.u());
            }
            sb2.append(str);
            sb2.append("\n");
        }
        if (!da().isEmpty()) {
            sb2.append(str);
            sb2.append("\tMasks: ");
            sb2.append(da().size());
            sb2.append("\n");
        }
        if (rh() != 0 && nu() != 0) {
            sb2.append(str);
            sb2.append("\tBackground: ");
            sb2.append(String.format(Locale.US, "%dx%d %X\n", Integer.valueOf(rh()), Integer.valueOf(nu()), Integer.valueOf(m())));
        }
        if (!this.f22891c.isEmpty()) {
            sb2.append(str);
            sb2.append("\tShapes:\n");
            for (com.byazt.jx.ve veVar : this.f22891c) {
                sb2.append(str);
                sb2.append("\t\t");
                sb2.append(veVar);
                sb2.append("\n");
            }
        }
        return sb2.toString();
    }
}

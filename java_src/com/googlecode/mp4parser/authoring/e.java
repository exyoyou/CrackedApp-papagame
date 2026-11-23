package com.googlecode.mp4parser.authoring;

import com.coremedia.iso.boxes.a1;
import com.coremedia.iso.boxes.d1;
import com.coremedia.iso.boxes.e0;
import com.coremedia.iso.boxes.f1;
import com.coremedia.iso.boxes.fragment.k;
import com.coremedia.iso.boxes.fragment.l;
import com.coremedia.iso.boxes.fragment.n;
import com.coremedia.iso.boxes.g1;
import com.coremedia.iso.boxes.i0;
import com.coremedia.iso.boxes.r;
import com.coremedia.iso.boxes.r0;
import com.coremedia.iso.boxes.s0;
import com.coremedia.iso.boxes.u0;
import com.googlecode.mp4parser.util.m;
import com.join.mgps.Util.o0;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class e extends a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    f1 f32866e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    com.coremedia.iso.f[] f32867f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private List<f> f32868g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private s0 f32869h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long[] f32870i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private List<com.coremedia.iso.boxes.i.a> f32871j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long[] f32872k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private List<r0.a> f32873l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private i f32874m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private String f32875n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private a1 f32876o;

    public e(String str, f1 f1Var, com.coremedia.iso.f... fVarArr) {
        Class<k> cls;
        Iterator it2;
        Iterator it3;
        ArrayList arrayList;
        Class<k> cls2;
        Iterator it4;
        int i10;
        super(str);
        int i11 = 0;
        this.f32872k = new long[0];
        this.f32874m = new i();
        this.f32876o = null;
        long jC = f1Var.z().C();
        this.f32868g = new com.coremedia.iso.boxes.mdat.b(f1Var, fVarArr);
        u0 u0VarY = f1Var.v().z().y();
        this.f32875n = f1Var.v().v().v();
        ArrayList arrayList2 = new ArrayList();
        this.f32871j = new ArrayList();
        this.f32873l = new ArrayList();
        arrayList2.addAll(u0VarY.L().w());
        if (u0VarY.y() != null) {
            this.f32871j.addAll(u0VarY.y().w());
        }
        if (u0VarY.z() != null) {
            this.f32873l.addAll(u0VarY.z().v());
        }
        if (u0VarY.K() != null) {
            this.f32872k = u0VarY.K().v();
        }
        String str2 = a1.f24677t;
        this.f32876o = (a1) m.e(u0VarY, a1.f24677t);
        ArrayList arrayList3 = new ArrayList();
        arrayList3.addAll(((com.coremedia.iso.boxes.d) f1Var.getParent()).getParent().c(com.coremedia.iso.boxes.fragment.c.class));
        int length = fVarArr.length;
        int i12 = 0;
        while (i12 < length) {
            ArrayList arrayList4 = arrayList3;
            arrayList4.addAll(fVarArr[i12].c(com.coremedia.iso.boxes.fragment.c.class));
            i12++;
            arrayList3 = arrayList4;
            jC = jC;
            i11 = 0;
        }
        this.f32869h = u0VarY.F();
        List listC = f1Var.getParent().c(com.coremedia.iso.boxes.fragment.a.class);
        if (listC.size() > 0) {
            Iterator it5 = listC.iterator();
            while (true) {
                cls = k.class;
                if (!it5.hasNext()) {
                    break;
                }
                Iterator it6 = ((com.coremedia.iso.boxes.fragment.a) it5.next()).c(com.coremedia.iso.boxes.fragment.i.class).iterator();
                while (it6.hasNext()) {
                    com.coremedia.iso.boxes.fragment.i iVar = (com.coremedia.iso.boxes.fragment.i) it6.next();
                    if (iVar.A() == jC) {
                        if (m.h(((com.coremedia.iso.boxes.d) f1Var.getParent()).getParent(), "/moof/traf/subs").size() > 0) {
                            this.f32876o = new a1();
                        }
                        LinkedList linkedList = new LinkedList();
                        Iterator it7 = arrayList3.iterator();
                        long j10 = 1;
                        while (it7.hasNext()) {
                            for (k kVar : ((com.coremedia.iso.boxes.fragment.c) it7.next()).c(cls)) {
                                if (kVar.v().A() == jC) {
                                    a1 a1Var = (a1) m.e(kVar, str2);
                                    if (a1Var != null) {
                                        long j11 = (j10 - ((long) i11)) - 1;
                                        for (a1.a aVar : a1Var.v()) {
                                            a1.a aVar2 = new a1.a();
                                            Iterator it8 = it5;
                                            String str3 = str2;
                                            aVar2.c().addAll(aVar.c());
                                            long j12 = 0;
                                            if (j11 != 0) {
                                                aVar2.d(j11 + aVar.a());
                                            } else {
                                                j12 = j11;
                                                aVar2.d(aVar.a());
                                            }
                                            j11 = j12;
                                            this.f32876o.v().add(aVar2);
                                            it5 = it8;
                                            str2 = str3;
                                        }
                                        it2 = it5;
                                    } else {
                                        it2 = it5;
                                    }
                                    String str4 = str2;
                                    Iterator it9 = kVar.c(n.class).iterator();
                                    while (it9.hasNext()) {
                                        n nVar = (n) it9.next();
                                        l lVarV = ((k) nVar.getParent()).v();
                                        int i13 = 1;
                                        boolean z10 = true;
                                        for (n.a aVar3 : nVar.w()) {
                                            if (nVar.D()) {
                                                if (arrayList2.size() != 0) {
                                                    it3 = it9;
                                                    if (((d1.a) arrayList2.get(arrayList2.size() - 1)).b() == aVar3.j()) {
                                                        d1.a aVar4 = (d1.a) arrayList2.get(arrayList2.size() - i13);
                                                        arrayList = arrayList3;
                                                        cls2 = cls;
                                                        it4 = it6;
                                                        aVar4.c(aVar4.a() + 1);
                                                    }
                                                } else {
                                                    it3 = it9;
                                                }
                                                arrayList = arrayList3;
                                                cls2 = cls;
                                                it4 = it6;
                                                arrayList2.add(new d1.a(1L, aVar3.j()));
                                            } else {
                                                it3 = it9;
                                                arrayList = arrayList3;
                                                cls2 = cls;
                                                it4 = it6;
                                                if (lVarV.C()) {
                                                    arrayList2.add(new d1.a(1L, lVarV.w()));
                                                } else {
                                                    arrayList2.add(new d1.a(1L, iVar.w()));
                                                }
                                            }
                                            if (nVar.C()) {
                                                if (this.f32871j.size() != 0) {
                                                    List<com.coremedia.iso.boxes.i.a> list = this.f32871j;
                                                    i10 = 1;
                                                    if (list.get(list.size() - 1).b() == aVar3.i()) {
                                                        List<com.coremedia.iso.boxes.i.a> list2 = this.f32871j;
                                                        com.coremedia.iso.boxes.i.a aVar5 = list2.get(list2.size() - 1);
                                                        aVar5.c(aVar5.a() + 1);
                                                    }
                                                } else {
                                                    i10 = 1;
                                                }
                                                this.f32871j.add(new com.coremedia.iso.boxes.i.a(i10, com.googlecode.mp4parser.util.c.a(aVar3.i())));
                                            }
                                            com.coremedia.iso.boxes.fragment.g gVarK = nVar.E() ? aVar3.k() : (z10 && nVar.B()) ? nVar.x() : lVarV.D() ? lVarV.x() : iVar.x();
                                            if (gVarK != null && !gVarK.h()) {
                                                linkedList.add(Long.valueOf(j10));
                                            }
                                            j10++;
                                            arrayList3 = arrayList;
                                            it9 = it3;
                                            cls = cls2;
                                            it6 = it4;
                                            i13 = 1;
                                            z10 = false;
                                        }
                                    }
                                    it5 = it2;
                                    jC = jC;
                                    str2 = str4;
                                    i11 = 0;
                                }
                            }
                        }
                        long[] jArr = this.f32872k;
                        long[] jArr2 = new long[jArr.length + linkedList.size()];
                        this.f32872k = jArr2;
                        System.arraycopy(jArr, i11, jArr2, i11, jArr.length);
                        Iterator it10 = linkedList.iterator();
                        int length2 = jArr.length;
                        while (it10.hasNext()) {
                            this.f32872k[length2] = ((Long) it10.next()).longValue();
                            length2++;
                        }
                    }
                }
            }
            new ArrayList();
            new ArrayList();
            Iterator it11 = arrayList3.iterator();
            while (it11.hasNext()) {
                for (k kVar2 : ((com.coremedia.iso.boxes.fragment.c) it11.next()).c(cls)) {
                    if (kVar2.v().A() == jC) {
                        this.f32819d = a(m.h(kVar2, com.googlecode.mp4parser.boxes.mp4.samplegrouping.e.f33667u), m.h(kVar2, com.googlecode.mp4parser.boxes.mp4.samplegrouping.f.f33675v), this.f32819d);
                    }
                }
            }
        } else {
            this.f32819d = a(u0VarY.c(com.googlecode.mp4parser.boxes.mp4.samplegrouping.e.class), u0VarY.c(com.googlecode.mp4parser.boxes.mp4.samplegrouping.f.class), this.f32819d);
        }
        this.f32870i = d1.v(arrayList2);
        e0 e0VarY = f1Var.v().y();
        g1 g1VarZ = f1Var.z();
        this.f32874m.u(g1VarZ.C());
        this.f32874m.m(e0VarY.v());
        this.f32874m.p(e0VarY.x());
        this.f32874m.s(e0VarY.y());
        this.f32874m.t(e0VarY.z());
        this.f32874m.o(g1VarZ.y());
        this.f32874m.w(g1VarZ.E());
        this.f32874m.q(g1VarZ.z());
        this.f32874m.r(g1VarZ.A());
        r rVar = (r) m.e(f1Var, "edts/elst");
        i0 i0Var = (i0) m.e(f1Var, "../mvhd");
        if (rVar != null) {
            for (Iterator<r.a> it12 = rVar.v().iterator(); it12.hasNext(); it12 = it12) {
                r.a next = it12.next();
                this.f32818c.add(new c(next.c(), e0VarY.z(), next.b(), next.d() / i0Var.H()));
                e0VarY = e0VarY;
            }
        }
    }

    private Map<com.googlecode.mp4parser.boxes.mp4.samplegrouping.b, long[]> a(List<com.googlecode.mp4parser.boxes.mp4.samplegrouping.e> list, List<com.googlecode.mp4parser.boxes.mp4.samplegrouping.f> list2, Map<com.googlecode.mp4parser.boxes.mp4.samplegrouping.b, long[]> map) {
        for (com.googlecode.mp4parser.boxes.mp4.samplegrouping.e eVar : list) {
            boolean z10 = false;
            for (com.googlecode.mp4parser.boxes.mp4.samplegrouping.f fVar : list2) {
                if (fVar.w().equals(eVar.w().get(0).getType())) {
                    int iB = 0;
                    for (com.googlecode.mp4parser.boxes.mp4.samplegrouping.f.a aVar : fVar.v()) {
                        if (aVar.a() > 0) {
                            com.googlecode.mp4parser.boxes.mp4.samplegrouping.b bVar = eVar.w().get(aVar.a() - 1);
                            long[] jArr = map.get(bVar);
                            if (jArr == null) {
                                jArr = new long[0];
                            }
                            long[] jArr2 = new long[com.googlecode.mp4parser.util.c.a(aVar.b()) + jArr.length];
                            System.arraycopy(jArr, 0, jArr2, 0, jArr.length);
                            for (int i10 = 0; i10 < aVar.b(); i10++) {
                                jArr2[jArr.length + i10] = iB + i10;
                            }
                            map.put(bVar, jArr2);
                        }
                        iB = (int) (((long) iB) + aVar.b());
                    }
                    z10 = true;
                }
            }
            if (!z10) {
                throw new RuntimeException("Could not find SampleToGroupBox for " + eVar.w().get(0).getType() + o0.f49827a);
            }
        }
        return map;
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public List<com.coremedia.iso.boxes.i.a> E() {
        return this.f32871j;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public s0 F() {
        return this.f32869h;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public i H() {
        return this.f32874m;
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public long[] N() {
        if (this.f32872k.length == this.f32868g.size()) {
            return null;
        }
        return this.f32872k;
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public a1 S() {
        return this.f32876o;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<f> U() {
        return this.f32868g;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public synchronized long[] Z() {
        return this.f32870i;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        com.coremedia.iso.boxes.j parent = this.f32866e.getParent();
        if (parent instanceof com.googlecode.mp4parser.d) {
            ((com.googlecode.mp4parser.d) parent).close();
        }
        for (com.coremedia.iso.f fVar : this.f32867f) {
            fVar.close();
        }
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public String getHandler() {
        return this.f32875n;
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public List<r0.a> h0() {
        return this.f32873l;
    }
}

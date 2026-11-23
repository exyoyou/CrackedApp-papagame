package com.googlecode.mp4parser.authoring.builder;

import com.coremedia.iso.boxes.b1;
import com.coremedia.iso.boxes.c1;
import com.coremedia.iso.boxes.d0;
import com.coremedia.iso.boxes.d1;
import com.coremedia.iso.boxes.e0;
import com.coremedia.iso.boxes.f0;
import com.coremedia.iso.boxes.f1;
import com.coremedia.iso.boxes.g1;
import com.coremedia.iso.boxes.h0;
import com.coremedia.iso.boxes.i;
import com.coremedia.iso.boxes.i0;
import com.coremedia.iso.boxes.j;
import com.coremedia.iso.boxes.j0;
import com.coremedia.iso.boxes.l;
import com.coremedia.iso.boxes.m1;
import com.coremedia.iso.boxes.n;
import com.coremedia.iso.boxes.o;
import com.coremedia.iso.boxes.q;
import com.coremedia.iso.boxes.r;
import com.coremedia.iso.boxes.r0;
import com.coremedia.iso.boxes.s;
import com.coremedia.iso.boxes.t0;
import com.coremedia.iso.boxes.u0;
import com.coremedia.iso.boxes.v0;
import com.coremedia.iso.boxes.x;
import com.coremedia.iso.boxes.y;
import com.coremedia.iso.boxes.y0;
import com.coremedia.iso.boxes.z0;
import com.googlecode.mp4parser.util.m;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
public class b implements e {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static Logger f32828f = Logger.getLogger(b.class.getName());

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static final /* synthetic */ boolean f32829g = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Set<z0> f32830a = new HashSet();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Set<com.mp4parser.iso14496.part12.b> f32831b = new HashSet();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    HashMap<com.googlecode.mp4parser.authoring.h, List<com.googlecode.mp4parser.authoring.f>> f32832c = new HashMap<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    HashMap<com.googlecode.mp4parser.authoring.h, long[]> f32833d = new HashMap<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private c f32834e;

    public static long r(long j10, long j11) {
        return j11 == 0 ? j10 : r(j11, j10 % j11);
    }

    private static long w(int[] iArr) {
        long j10 = 0;
        for (int i10 : iArr) {
            j10 += (long) i10;
        }
        return j10;
    }

    private static long x(long[] jArr) {
        long j10 = 0;
        for (long j11 : jArr) {
            j10 += j11;
        }
        return j10;
    }

    @Override // com.googlecode.mp4parser.authoring.builder.e
    public j a(com.googlecode.mp4parser.authoring.d dVar) {
        com.coremedia.iso.boxes.d next;
        if (this.f32834e == null) {
            this.f32834e = new h(dVar, 2);
        }
        f32828f.fine("Creating movie " + dVar);
        Iterator<com.googlecode.mp4parser.authoring.h> it2 = dVar.g().iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            com.googlecode.mp4parser.authoring.h next2 = it2.next();
            List<com.googlecode.mp4parser.authoring.f> listU = next2.U();
            u(next2, listU);
            int size = listU.size();
            long[] jArr = new long[size];
            for (int i10 = 0; i10 < size; i10++) {
                jArr[i10] = listU.get(i10).getSize();
            }
            this.f32833d.put(next2, jArr);
        }
        com.googlecode.mp4parser.d dVar2 = new com.googlecode.mp4parser.d();
        dVar2.m(e(dVar));
        HashMap map = new HashMap();
        for (com.googlecode.mp4parser.authoring.h hVar : dVar.g()) {
            map.put(hVar, s(hVar, dVar));
        }
        h0 h0VarF = f(dVar, map);
        dVar2.m(h0VarF);
        Iterator it3 = m.f(h0VarF, "trak/mdia/minf/stbl/stsz").iterator();
        long jX = 0;
        while (it3.hasNext()) {
            jX += x(((t0) it3.next()).y());
        }
        C0612b c0612b = new C0612b(this, dVar, map, jX, null);
        dVar2.m(c0612b);
        long jB = c0612b.b();
        Iterator<z0> it4 = this.f32830a.iterator();
        while (it4.hasNext()) {
            long[] jArrV = it4.next().v();
            for (int i11 = 0; i11 < jArrV.length; i11++) {
                jArrV[i11] = jArrV[i11] + jB;
            }
        }
        for (com.mp4parser.iso14496.part12.b bVar : this.f32831b) {
            long size2 = bVar.getSize() + 44;
            Object obj = bVar;
            while (true) {
                j parent = ((com.coremedia.iso.boxes.d) obj).getParent();
                Iterator<com.coremedia.iso.boxes.d> it5 = parent.l().iterator();
                while (it5.hasNext() && (next = it5.next()) != obj) {
                    size2 += next.getSize();
                }
                if (!(parent instanceof com.coremedia.iso.boxes.d)) {
                    break;
                }
                obj = parent;
            }
            long[] jArrX = bVar.x();
            for (int i12 = 0; i12 < jArrX.length; i12++) {
                jArrX[i12] = jArrX[i12] + size2;
            }
            bVar.A(jArrX);
        }
        return dVar2;
    }

    protected void b(com.googlecode.mp4parser.authoring.tracks.g gVar, u0 u0Var, int[] iArr) {
        com.mp4parser.iso14496.part12.c cVar = new com.mp4parser.iso14496.part12.c();
        cVar.B("cenc");
        cVar.setFlags(1);
        List<com.mp4parser.iso23001.part7.a> listB0 = gVar.b0();
        if (gVar.V()) {
            int size = listB0.size();
            short[] sArr = new short[size];
            for (int i10 = 0; i10 < size; i10++) {
                sArr[i10] = (short) listB0.get(i10).b();
            }
            cVar.F(sArr);
        } else {
            cVar.D(8);
            cVar.E(gVar.U().size());
        }
        com.mp4parser.iso14496.part12.b bVar = new com.mp4parser.iso14496.part12.b();
        com.googlecode.mp4parser.boxes.dece.d dVar = new com.googlecode.mp4parser.boxes.dece.d();
        dVar.C(gVar.V());
        dVar.B(listB0);
        long jX = dVar.x();
        long[] jArr = new long[iArr.length];
        int i11 = 0;
        for (int i12 = 0; i12 < iArr.length; i12++) {
            jArr[i12] = jX;
            int i13 = 0;
            while (i13 < iArr[i12]) {
                jX += (long) listB0.get(i11).b();
                i13++;
                i11++;
                dVar = dVar;
            }
        }
        bVar.A(jArr);
        u0Var.m(cVar);
        u0Var.m(bVar);
        u0Var.m(dVar);
        this.f32831b.add(bVar);
    }

    protected void c(com.googlecode.mp4parser.authoring.h hVar, u0 u0Var) {
        List<i.a> listE = hVar.E();
        if (listE == null || listE.isEmpty()) {
            return;
        }
        i iVar = new i();
        iVar.x(listE);
        u0Var.m(iVar);
    }

    protected com.coremedia.iso.boxes.d d(com.googlecode.mp4parser.authoring.h hVar, com.googlecode.mp4parser.authoring.d dVar) {
        if (hVar.X() == null || hVar.X().size() <= 0) {
            return null;
        }
        r rVar = new r();
        rVar.setVersion(1);
        ArrayList arrayList = new ArrayList();
        for (com.googlecode.mp4parser.authoring.c cVar : hVar.X()) {
            arrayList.add(new r.a(rVar, Math.round(cVar.c() * dVar.e()), (cVar.b() * hVar.H().i()) / cVar.d(), cVar.a()));
        }
        rVar.w(arrayList);
        q qVar = new q();
        qVar.m(rVar);
        return qVar;
    }

    protected s e(com.googlecode.mp4parser.authoring.d dVar) {
        LinkedList linkedList = new LinkedList();
        linkedList.add("isom");
        linkedList.add("iso2");
        linkedList.add(com.coremedia.iso.boxes.sampleentry.h.f25109z);
        return new s("isom", 0L, linkedList);
    }

    protected h0 f(com.googlecode.mp4parser.authoring.d dVar, Map<com.googlecode.mp4parser.authoring.h, int[]> map) {
        long duration;
        h0 h0Var = new h0();
        i0 i0Var = new i0();
        i0Var.J(new Date());
        i0Var.N(new Date());
        i0Var.M(dVar.c());
        long jT = t(dVar);
        long j10 = 0;
        for (com.googlecode.mp4parser.authoring.h hVar : dVar.g()) {
            if (hVar.X() == null || hVar.X().isEmpty()) {
                duration = (hVar.getDuration() * t(dVar)) / hVar.H().i();
            } else {
                Iterator<com.googlecode.mp4parser.authoring.c> it2 = hVar.X().iterator();
                long jC = 0;
                while (it2.hasNext()) {
                    jC += (long) it2.next().c();
                }
                duration = jC * t(dVar);
            }
            if (duration > j10) {
                j10 = duration;
            }
        }
        i0Var.L(j10);
        i0Var.V(jT);
        long j11 = 0;
        for (com.googlecode.mp4parser.authoring.h hVar2 : dVar.g()) {
            if (j11 < hVar2.H().j()) {
                j11 = hVar2.H().j();
            }
        }
        i0Var.O(j11 + 1);
        h0Var.m(i0Var);
        Iterator<com.googlecode.mp4parser.authoring.h> it3 = dVar.g().iterator();
        while (it3.hasNext()) {
            h0Var.m(p(it3.next(), dVar, map));
        }
        com.coremedia.iso.boxes.d dVarQ = q(dVar);
        if (dVarQ != null) {
            h0Var.m(dVarQ);
        }
        return h0Var;
    }

    protected void g(com.googlecode.mp4parser.authoring.h hVar, u0 u0Var) {
        if (hVar.h0() == null || hVar.h0().isEmpty()) {
            return;
        }
        r0 r0Var = new r0();
        r0Var.w(hVar.h0());
        u0Var.m(r0Var);
    }

    protected com.coremedia.iso.boxes.d h(com.googlecode.mp4parser.authoring.h hVar, com.googlecode.mp4parser.authoring.d dVar, Map<com.googlecode.mp4parser.authoring.h, int[]> map) {
        u0 u0Var = new u0();
        k(hVar, u0Var);
        n(hVar, u0Var);
        c(hVar, u0Var);
        l(hVar, u0Var);
        g(hVar, u0Var);
        j(hVar, map, u0Var);
        m(hVar, u0Var);
        i(hVar, dVar, map, u0Var);
        HashMap map2 = new HashMap();
        for (Map.Entry<com.googlecode.mp4parser.boxes.mp4.samplegrouping.b, long[]> entry : hVar.G().entrySet()) {
            String type = entry.getKey().getType();
            List arrayList = (List) map2.get(type);
            if (arrayList == null) {
                arrayList = new ArrayList();
                map2.put(type, arrayList);
            }
            arrayList.add(entry.getKey());
        }
        for (Map.Entry entry2 : map2.entrySet()) {
            com.googlecode.mp4parser.boxes.mp4.samplegrouping.e eVar = new com.googlecode.mp4parser.boxes.mp4.samplegrouping.e();
            String str = (String) entry2.getKey();
            eVar.z((List) entry2.getValue());
            com.googlecode.mp4parser.boxes.mp4.samplegrouping.f fVar = new com.googlecode.mp4parser.boxes.mp4.samplegrouping.f();
            fVar.z(str);
            com.googlecode.mp4parser.boxes.mp4.samplegrouping.f.a aVar = null;
            for (int i10 = 0; i10 < hVar.U().size(); i10++) {
                int i11 = 0;
                for (int i12 = 0; i12 < ((List) entry2.getValue()).size(); i12++) {
                    if (Arrays.binarySearch(hVar.G().get((com.googlecode.mp4parser.boxes.mp4.samplegrouping.b) ((List) entry2.getValue()).get(i12)), i10) >= 0) {
                        i11 = i12 + 1;
                    }
                }
                if (aVar == null || aVar.a() != i11) {
                    com.googlecode.mp4parser.boxes.mp4.samplegrouping.f.a aVar2 = new com.googlecode.mp4parser.boxes.mp4.samplegrouping.f.a(1L, i11);
                    fVar.v().add(aVar2);
                    aVar = aVar2;
                } else {
                    aVar.d(aVar.b() + 1);
                }
            }
            u0Var.m(eVar);
            u0Var.m(fVar);
        }
        if (hVar instanceof com.googlecode.mp4parser.authoring.tracks.g) {
            b((com.googlecode.mp4parser.authoring.tracks.g) hVar, u0Var, map.get(hVar));
        }
        o(hVar, u0Var);
        return u0Var;
    }

    protected void i(com.googlecode.mp4parser.authoring.h hVar, com.googlecode.mp4parser.authoring.d dVar, Map<com.googlecode.mp4parser.authoring.h, int[]> map, u0 u0Var) {
        int[] iArr;
        z0 z0Var;
        com.googlecode.mp4parser.authoring.h hVar2 = hVar;
        Map<com.googlecode.mp4parser.authoring.h, int[]> map2 = map;
        int[] iArr2 = map2.get(hVar2);
        z0 z0Var2 = new z0();
        this.f32830a.add(z0Var2);
        long[] jArr = new long[iArr2.length];
        String str = "Calculating chunk offsets for track_";
        if (f32828f.isLoggable(Level.FINE)) {
            f32828f.fine("Calculating chunk offsets for track_" + hVar.H().j());
        }
        int i10 = 0;
        long j10 = 0;
        while (i10 < iArr2.length) {
            if (f32828f.isLoggable(Level.FINER)) {
                f32828f.finer(str + hVar.H().j() + " chunk " + i10);
            }
            for (com.googlecode.mp4parser.authoring.h hVar3 : dVar.g()) {
                if (f32828f.isLoggable(Level.FINEST)) {
                    f32828f.finest("Adding offsets of track_" + hVar3.H().j());
                }
                int[] iArr3 = map2.get(hVar3);
                int i11 = 0;
                long j11 = 0;
                while (i11 < i10) {
                    j11 += (long) iArr3[i11];
                    i11++;
                    hVar2 = hVar;
                }
                if (hVar3 == hVar2) {
                    jArr[i10] = j10;
                }
                int iA = com.googlecode.mp4parser.util.c.a(j11);
                while (true) {
                    iArr = iArr2;
                    z0Var = z0Var2;
                    if (iA >= ((long) iArr3[i10]) + j11) {
                        break;
                    }
                    j10 += this.f32833d.get(hVar3)[iA];
                    iA++;
                    iArr2 = iArr;
                    z0Var2 = z0Var;
                }
                hVar2 = hVar;
                map2 = map;
                iArr2 = iArr;
                z0Var2 = z0Var;
            }
            i10++;
            str = str;
        }
        z0Var2.w(jArr);
        u0Var.m(z0Var2);
    }

    protected void j(com.googlecode.mp4parser.authoring.h hVar, Map<com.googlecode.mp4parser.authoring.h, int[]> map, u0 u0Var) {
        int[] iArr = map.get(hVar);
        v0 v0Var = new v0();
        v0Var.x(new LinkedList());
        long j10 = -2147483648L;
        for (int i10 = 0; i10 < iArr.length; i10++) {
            if (j10 != iArr[i10]) {
                v0Var.w().add(new v0.a(i10 + 1, iArr[i10], 1L));
                j10 = iArr[i10];
            }
        }
        u0Var.m(v0Var);
    }

    protected void k(com.googlecode.mp4parser.authoring.h hVar, u0 u0Var) {
        u0Var.m(hVar.F());
    }

    protected void l(com.googlecode.mp4parser.authoring.h hVar, u0 u0Var) {
        long[] jArrN = hVar.N();
        if (jArrN == null || jArrN.length <= 0) {
            return;
        }
        c1 c1Var = new c1();
        c1Var.w(jArrN);
        u0Var.m(c1Var);
    }

    protected void m(com.googlecode.mp4parser.authoring.h hVar, u0 u0Var) {
        t0 t0Var = new t0();
        t0Var.A(this.f32833d.get(hVar));
        u0Var.m(t0Var);
    }

    protected void n(com.googlecode.mp4parser.authoring.h hVar, u0 u0Var) {
        ArrayList arrayList = new ArrayList();
        d1.a aVar = null;
        for (long j10 : hVar.Z()) {
            if (aVar == null || aVar.b() != j10) {
                aVar = new d1.a(1L, j10);
                arrayList.add(aVar);
            } else {
                aVar.c(aVar.a() + 1);
            }
        }
        d1 d1Var = new d1();
        d1Var.x(arrayList);
        u0Var.m(d1Var);
    }

    protected void o(com.googlecode.mp4parser.authoring.h hVar, u0 u0Var) {
        if (hVar.S() != null) {
            u0Var.m(hVar.S());
        }
    }

    protected f1 p(com.googlecode.mp4parser.authoring.h hVar, com.googlecode.mp4parser.authoring.d dVar, Map<com.googlecode.mp4parser.authoring.h, int[]> map) {
        f1 f1Var = new f1();
        g1 g1Var = new g1();
        g1Var.M(true);
        g1Var.O(true);
        g1Var.Q(true);
        g1Var.P(true);
        g1Var.S(hVar.H().g());
        g1Var.J(hVar.H().b());
        g1Var.K(hVar.H().a());
        if (hVar.X() == null || hVar.X().isEmpty()) {
            g1Var.L((hVar.getDuration() * t(dVar)) / hVar.H().i());
        } else {
            Iterator<com.googlecode.mp4parser.authoring.c> it2 = hVar.X().iterator();
            long jC = 0;
            while (it2.hasNext()) {
                jC += (long) it2.next().c();
            }
            g1Var.L(jC * hVar.H().i());
        }
        g1Var.N(hVar.H().d());
        g1Var.W(hVar.H().l());
        g1Var.R(hVar.H().f());
        g1Var.T(new Date());
        g1Var.U(hVar.H().j());
        g1Var.V(hVar.H().k());
        f1Var.m(g1Var);
        f1Var.m(d(hVar, dVar));
        d0 d0Var = new d0();
        f1Var.m(d0Var);
        e0 e0Var = new e0();
        e0Var.A(hVar.H().a());
        e0Var.B(hVar.getDuration());
        e0Var.E(hVar.H().i());
        e0Var.C(hVar.H().e());
        d0Var.m(e0Var);
        x xVar = new x();
        d0Var.m(xVar);
        xVar.y(hVar.getHandler());
        f0 f0Var = new f0();
        if (hVar.getHandler().equals("vide")) {
            f0Var.m(new m1());
        } else if (hVar.getHandler().equals("soun")) {
            f0Var.m(new y0());
        } else if (hVar.getHandler().equals("text")) {
            f0Var.m(new j0());
        } else if (hVar.getHandler().equals("subt")) {
            f0Var.m(new b1());
        } else if (hVar.getHandler().equals("hint")) {
            f0Var.m(new y());
        } else if (hVar.getHandler().equals("sbtl")) {
            f0Var.m(new j0());
        }
        n nVar = new n();
        o oVar = new o();
        nVar.m(oVar);
        l lVar = new l();
        lVar.setFlags(1);
        oVar.m(lVar);
        f0Var.m(nVar);
        f0Var.m(h(hVar, dVar, map));
        d0Var.m(f0Var);
        return f1Var;
    }

    protected com.coremedia.iso.boxes.d q(com.googlecode.mp4parser.authoring.d dVar) {
        return null;
    }

    int[] s(com.googlecode.mp4parser.authoring.h hVar, com.googlecode.mp4parser.authoring.d dVar) {
        long[] jArrA = this.f32834e.a(hVar);
        int[] iArr = new int[jArrA.length];
        int i10 = 0;
        while (i10 < jArrA.length) {
            int i11 = i10 + 1;
            iArr[i10] = com.googlecode.mp4parser.util.c.a((jArrA.length == i11 ? hVar.U().size() : jArrA[i11] - 1) - (jArrA[i10] - 1));
            i10 = i11;
        }
        return iArr;
    }

    public long t(com.googlecode.mp4parser.authoring.d dVar) {
        long jI = dVar.g().iterator().next().H().i();
        Iterator<com.googlecode.mp4parser.authoring.h> it2 = dVar.g().iterator();
        while (it2.hasNext()) {
            jI = r(it2.next().H().i(), jI);
        }
        return jI;
    }

    protected List<com.googlecode.mp4parser.authoring.f> u(com.googlecode.mp4parser.authoring.h hVar, List<com.googlecode.mp4parser.authoring.f> list) {
        return this.f32832c.put(hVar, list);
    }

    public void v(c cVar) {
        this.f32834e = cVar;
    }

    /* JADX INFO: renamed from: com.googlecode.mp4parser.authoring.builder.b$b, reason: collision with other inner class name */
    private class C0612b implements com.coremedia.iso.boxes.d {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        List<com.googlecode.mp4parser.authoring.h> f32835b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        List<List<com.googlecode.mp4parser.authoring.f>> f32836c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        j f32837d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        long f32838e;

        private C0612b(com.googlecode.mp4parser.authoring.d dVar, Map<com.googlecode.mp4parser.authoring.h, int[]> map, long j10) {
            this.f32836c = new ArrayList();
            this.f32838e = j10;
            this.f32835b = dVar.g();
            for (int i10 = 0; i10 < map.values().iterator().next().length; i10++) {
                for (com.googlecode.mp4parser.authoring.h hVar : this.f32835b) {
                    int[] iArr = map.get(hVar);
                    long j11 = 0;
                    for (int i11 = 0; i11 < i10; i11++) {
                        j11 += (long) iArr[i11];
                    }
                    this.f32836c.add(b.this.f32832c.get(hVar).subList(com.googlecode.mp4parser.util.c.a(j11), com.googlecode.mp4parser.util.c.a(j11 + ((long) iArr[i10]))));
                }
            }
        }

        private boolean c(long j10) {
            return j10 + 8 < 4294967296L;
        }

        @Override // com.coremedia.iso.boxes.d
        public void a(WritableByteChannel writableByteChannel) throws IOException {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(16);
            long size = getSize();
            if (c(size)) {
                com.coremedia.iso.i.i(byteBufferAllocate, size);
            } else {
                com.coremedia.iso.i.i(byteBufferAllocate, 1L);
            }
            byteBufferAllocate.put(com.coremedia.iso.f.t(com.coremedia.iso.boxes.mdat.a.f24987h));
            if (c(size)) {
                byteBufferAllocate.put(new byte[8]);
            } else {
                com.coremedia.iso.i.l(byteBufferAllocate, size);
            }
            byteBufferAllocate.rewind();
            writableByteChannel.write(byteBufferAllocate);
            Iterator<List<com.googlecode.mp4parser.authoring.f>> it2 = this.f32836c.iterator();
            while (it2.hasNext()) {
                Iterator<com.googlecode.mp4parser.authoring.f> it3 = it2.next().iterator();
                while (it3.hasNext()) {
                    it3.next().b(writableByteChannel);
                }
            }
        }

        public long b() {
            com.coremedia.iso.boxes.d next;
            long size = 16;
            Object parent = this;
            while (parent instanceof com.coremedia.iso.boxes.d) {
                com.coremedia.iso.boxes.d dVar = (com.coremedia.iso.boxes.d) parent;
                Iterator<com.coremedia.iso.boxes.d> it2 = dVar.getParent().l().iterator();
                while (it2.hasNext() && parent != (next = it2.next())) {
                    size += next.getSize();
                }
                parent = dVar.getParent();
            }
            return size;
        }

        @Override // com.coremedia.iso.boxes.d
        public long e() {
            throw new RuntimeException("Doesn't have any meaning for programmatically created boxes");
        }

        @Override // com.coremedia.iso.boxes.d
        public void f(j jVar) {
            this.f32837d = jVar;
        }

        @Override // com.coremedia.iso.boxes.d
        public j getParent() {
            return this.f32837d;
        }

        @Override // com.coremedia.iso.boxes.d
        public long getSize() {
            return this.f32838e + 16;
        }

        @Override // com.coremedia.iso.boxes.d
        public String getType() {
            return com.coremedia.iso.boxes.mdat.a.f24987h;
        }

        @Override // com.coremedia.iso.boxes.d
        public void i(com.googlecode.mp4parser.e eVar, ByteBuffer byteBuffer, long j10, com.coremedia.iso.c cVar) throws IOException {
        }

        /* synthetic */ C0612b(b bVar, com.googlecode.mp4parser.authoring.d dVar, Map map, long j10, C0612b c0612b) {
            this(dVar, map, j10);
        }
    }
}

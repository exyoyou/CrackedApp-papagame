package com.googlecode.mp4parser.authoring.builder;

import com.coremedia.iso.boxes.b1;
import com.coremedia.iso.boxes.d0;
import com.coremedia.iso.boxes.d1;
import com.coremedia.iso.boxes.e0;
import com.coremedia.iso.boxes.f0;
import com.coremedia.iso.boxes.f1;
import com.coremedia.iso.boxes.fragment.k;
import com.coremedia.iso.boxes.fragment.n;
import com.coremedia.iso.boxes.g1;
import com.coremedia.iso.boxes.h0;
import com.coremedia.iso.boxes.i0;
import com.coremedia.iso.boxes.j;
import com.coremedia.iso.boxes.j0;
import com.coremedia.iso.boxes.l;
import com.coremedia.iso.boxes.m1;
import com.coremedia.iso.boxes.o;
import com.coremedia.iso.boxes.q;
import com.coremedia.iso.boxes.r;
import com.coremedia.iso.boxes.r0;
import com.coremedia.iso.boxes.s;
import com.coremedia.iso.boxes.s0;
import com.coremedia.iso.boxes.t0;
import com.coremedia.iso.boxes.u0;
import com.coremedia.iso.boxes.v0;
import com.coremedia.iso.boxes.x;
import com.coremedia.iso.boxes.y;
import com.coremedia.iso.boxes.y0;
import com.coremedia.iso.boxes.z0;
import com.coremedia.iso.i;
import com.googlecode.mp4parser.util.m;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
public class d implements e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Logger f32840b = Logger.getLogger(d.class.getName());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final /* synthetic */ boolean f32841c = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected c f32842a;

    class a implements Comparator<com.googlecode.mp4parser.authoring.h> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final /* synthetic */ Map f32844c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final /* synthetic */ int f32845d;

        a(Map map, int i10) {
            this.f32844c = map;
            this.f32845d = i10;
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(com.googlecode.mp4parser.authoring.h hVar, com.googlecode.mp4parser.authoring.h hVar2) {
            long j10 = ((long[]) this.f32844c.get(hVar))[this.f32845d];
            long j11 = ((long[]) this.f32844c.get(hVar2))[this.f32845d];
            long[] jArrZ = hVar.Z();
            long[] jArrZ2 = hVar2.Z();
            long j12 = 0;
            for (int i10 = 1; i10 < j10; i10++) {
                j12 += jArrZ[i10 - 1];
            }
            long j13 = 0;
            for (int i11 = 1; i11 < j11; i11++) {
                j13 += jArrZ2[i11 - 1];
            }
            return (int) (((j12 / hVar.H().i()) - (j13 / hVar2.H().i())) * 100.0d);
        }
    }

    class b implements com.coremedia.iso.boxes.d {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        j f32846b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        long f32847c = -1;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final /* synthetic */ long f32849e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final /* synthetic */ long f32850f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final /* synthetic */ com.googlecode.mp4parser.authoring.h f32851g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final /* synthetic */ int f32852h;

        b(long j10, long j11, com.googlecode.mp4parser.authoring.h hVar, int i10) {
            this.f32849e = j10;
            this.f32850f = j11;
            this.f32851g = hVar;
            this.f32852h = i10;
        }

        @Override // com.coremedia.iso.boxes.d
        public void a(WritableByteChannel writableByteChannel) throws IOException {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
            i.i(byteBufferAllocate, com.googlecode.mp4parser.util.c.a(getSize()));
            byteBufferAllocate.put(com.coremedia.iso.f.t(getType()));
            byteBufferAllocate.rewind();
            writableByteChannel.write(byteBufferAllocate);
            Iterator<com.googlecode.mp4parser.authoring.f> it2 = d.this.H(this.f32849e, this.f32850f, this.f32851g, this.f32852h).iterator();
            while (it2.hasNext()) {
                it2.next().b(writableByteChannel);
            }
        }

        @Override // com.coremedia.iso.boxes.d
        public long e() {
            throw new RuntimeException("Doesn't have any meaning for programmatically created boxes");
        }

        @Override // com.coremedia.iso.boxes.d
        public void f(j jVar) {
            this.f32846b = jVar;
        }

        @Override // com.coremedia.iso.boxes.d
        public j getParent() {
            return this.f32846b;
        }

        @Override // com.coremedia.iso.boxes.d
        public long getSize() {
            long j10 = this.f32847c;
            if (j10 != -1) {
                return j10;
            }
            Iterator<com.googlecode.mp4parser.authoring.f> it2 = d.this.H(this.f32849e, this.f32850f, this.f32851g, this.f32852h).iterator();
            long size = 8;
            while (it2.hasNext()) {
                size += it2.next().getSize();
            }
            this.f32847c = size;
            return size;
        }

        @Override // com.coremedia.iso.boxes.d
        public String getType() {
            return com.coremedia.iso.boxes.mdat.a.f24987h;
        }

        @Override // com.coremedia.iso.boxes.d
        public void i(com.googlecode.mp4parser.e eVar, ByteBuffer byteBuffer, long j10, com.coremedia.iso.c cVar) throws IOException {
        }
    }

    private long I(com.googlecode.mp4parser.authoring.d dVar, com.googlecode.mp4parser.authoring.h hVar) {
        return (hVar.getDuration() * dVar.e()) / hVar.H().i();
    }

    protected void A(long j10, long j11, com.googlecode.mp4parser.authoring.h hVar, int i10, com.coremedia.iso.boxes.fragment.c cVar) {
        k kVar = new k();
        cVar.m(kVar);
        x(j10, j11, hVar, i10, kVar);
        w(j10, hVar, kVar);
        D(j10, j11, hVar, i10, kVar);
        if (hVar instanceof com.googlecode.mp4parser.authoring.tracks.g) {
            com.googlecode.mp4parser.authoring.tracks.g gVar = (com.googlecode.mp4parser.authoring.tracks.g) hVar;
            s(j10, j11, gVar, i10, kVar);
            t(j10, j11, gVar, i10, kVar);
            r(j10, j11, gVar, i10, kVar);
        }
        HashMap map = new HashMap();
        for (Map.Entry<com.googlecode.mp4parser.boxes.mp4.samplegrouping.b, long[]> entry : hVar.G().entrySet()) {
            String type = entry.getKey().getType();
            List arrayList = (List) map.get(type);
            if (arrayList == null) {
                arrayList = new ArrayList();
                map.put(type, arrayList);
            }
            arrayList.add(entry.getKey());
        }
        Iterator it2 = map.entrySet().iterator();
        while (it2.hasNext()) {
            Map.Entry entry2 = (Map.Entry) it2.next();
            com.googlecode.mp4parser.boxes.mp4.samplegrouping.e eVar = new com.googlecode.mp4parser.boxes.mp4.samplegrouping.e();
            String str = (String) entry2.getKey();
            eVar.z((List) entry2.getValue());
            com.googlecode.mp4parser.boxes.mp4.samplegrouping.f fVar = new com.googlecode.mp4parser.boxes.mp4.samplegrouping.f();
            fVar.z(str);
            long j12 = 1;
            com.googlecode.mp4parser.boxes.mp4.samplegrouping.f.a aVar = null;
            for (int iA = com.googlecode.mp4parser.util.c.a(j10 - 1); iA < com.googlecode.mp4parser.util.c.a(j11 - j12); iA++) {
                int i11 = 0;
                int i12 = 0;
                while (i11 < ((List) entry2.getValue()).size()) {
                    Iterator it3 = it2;
                    i12 = Arrays.binarySearch(hVar.G().get((com.googlecode.mp4parser.boxes.mp4.samplegrouping.b) ((List) entry2.getValue()).get(i11)), (long) iA) >= 0 ? i11 + 1 : i12;
                    i11++;
                    it2 = it3;
                    j12 = 1;
                }
                if (aVar == null || aVar.a() != i12) {
                    com.googlecode.mp4parser.boxes.mp4.samplegrouping.f.a aVar2 = new com.googlecode.mp4parser.boxes.mp4.samplegrouping.f.a(j12, i12);
                    fVar.v().add(aVar2);
                    aVar = aVar2;
                } else {
                    aVar.d(aVar.b() + j12);
                }
            }
            kVar.m(eVar);
            kVar.m(fVar);
        }
    }

    protected com.coremedia.iso.boxes.d B(com.googlecode.mp4parser.authoring.h hVar, com.googlecode.mp4parser.authoring.d dVar) {
        f32840b.fine("Creating Track " + hVar);
        f1 f1Var = new f1();
        f1Var.m(z(dVar, hVar));
        com.coremedia.iso.boxes.d dVarC = c(hVar, dVar);
        if (dVarC != null) {
            f1Var.m(dVarC);
        }
        f1Var.m(h(hVar, dVar));
        return f1Var;
    }

    protected com.coremedia.iso.boxes.d C(com.googlecode.mp4parser.authoring.d dVar, com.googlecode.mp4parser.authoring.h hVar) {
        com.coremedia.iso.boxes.fragment.i iVar = new com.coremedia.iso.boxes.fragment.i();
        iVar.F(hVar.H().j());
        iVar.B(1L);
        iVar.C(0L);
        iVar.E(0L);
        com.coremedia.iso.boxes.fragment.g gVar = new com.coremedia.iso.boxes.fragment.g();
        if ("soun".equals(hVar.getHandler()) || "subt".equals(hVar.getHandler())) {
            gVar.k(2);
            gVar.m(2);
        }
        iVar.D(gVar);
        return iVar;
    }

    protected void D(long j10, long j11, com.googlecode.mp4parser.authoring.h hVar, int i10, k kVar) {
        long[] jArr;
        long j12;
        n nVar = new n();
        nVar.setVersion(1);
        long[] jArrG = G(j10, j11, hVar, i10);
        nVar.L(true);
        nVar.N(true);
        ArrayList arrayList = new ArrayList(com.googlecode.mp4parser.util.c.a(j11 - j10));
        List<com.coremedia.iso.boxes.i.a> listE = hVar.E();
        com.coremedia.iso.boxes.i.a[] aVarArr = (listE == null || listE.size() <= 0) ? null : (com.coremedia.iso.boxes.i.a[]) listE.toArray(new com.coremedia.iso.boxes.i.a[listE.size()]);
        long jA = aVarArr != null ? aVarArr[0].a() : -1;
        nVar.K(jA > 0);
        long j13 = 1;
        int i11 = 0;
        while (j13 < j10) {
            long[] jArr2 = jArrG;
            if (aVarArr != null) {
                jA--;
                j12 = 0;
                if (jA == 0) {
                    if (aVarArr.length - i11 > 1) {
                        i11++;
                        jA = aVarArr[i11].a();
                    }
                }
                j13++;
                jArrG = jArr2;
            } else {
                j12 = 0;
            }
            j13++;
            jArrG = jArr2;
        }
        boolean z10 = ((hVar.h0() == null || hVar.h0().isEmpty()) && (hVar.N() == null || hVar.N().length == 0)) ? false : true;
        nVar.M(z10);
        int i12 = 0;
        while (i12 < jArrG.length) {
            n.a aVar = new n.a();
            aVar.p(jArrG[i12]);
            if (z10) {
                com.coremedia.iso.boxes.fragment.g gVar = new com.coremedia.iso.boxes.fragment.g();
                if (hVar.h0() != null && !hVar.h0().isEmpty()) {
                    r0.a aVar2 = hVar.h0().get(i12);
                    gVar.k(aVar2.c());
                    gVar.m(aVar2.e());
                    gVar.l(aVar2.d());
                }
                if (hVar.N() == null || hVar.N().length <= 0) {
                    jArr = jArrG;
                } else {
                    jArr = jArrG;
                    if (Arrays.binarySearch(hVar.N(), j10 + ((long) i12)) >= 0) {
                        gVar.n(false);
                        gVar.k(2);
                    } else {
                        gVar.n(true);
                        gVar.k(1);
                    }
                }
                aVar.o(gVar);
            } else {
                jArr = jArrG;
            }
            aVar.n(hVar.Z()[com.googlecode.mp4parser.util.c.a((j10 + ((long) i12)) - 1)]);
            if (aVarArr != null) {
                aVar.m(aVarArr[i11].b());
                jA--;
                if (jA == 0 && aVarArr.length - i11 > 1) {
                    i11++;
                    jA = aVarArr[i11].a();
                }
            }
            arrayList.add(aVar);
            i12++;
            jArrG = jArr;
        }
        nVar.I(arrayList);
        kVar.m(nVar);
    }

    public Date E() {
        return new Date();
    }

    public c F() {
        return this.f32842a;
    }

    protected long[] G(long j10, long j11, com.googlecode.mp4parser.authoring.h hVar, int i10) {
        List<com.googlecode.mp4parser.authoring.f> listH = H(j10, j11, hVar, i10);
        int size = listH.size();
        long[] jArr = new long[size];
        for (int i11 = 0; i11 < size; i11++) {
            jArr[i11] = listH.get(i11).getSize();
        }
        return jArr;
    }

    protected List<com.googlecode.mp4parser.authoring.f> H(long j10, long j11, com.googlecode.mp4parser.authoring.h hVar, int i10) {
        return hVar.U().subList(com.googlecode.mp4parser.util.c.a(j10) - 1, com.googlecode.mp4parser.util.c.a(j11) - 1);
    }

    public void J(c cVar) {
        this.f32842a = cVar;
    }

    protected List<com.googlecode.mp4parser.authoring.h> K(List<com.googlecode.mp4parser.authoring.h> list, int i10, Map<com.googlecode.mp4parser.authoring.h, long[]> map) {
        LinkedList linkedList = new LinkedList(list);
        Collections.sort(linkedList, new a(map, i10));
        return linkedList;
    }

    @Override // com.googlecode.mp4parser.authoring.builder.e
    public j a(com.googlecode.mp4parser.authoring.d dVar) {
        com.googlecode.mp4parser.authoring.h hVar;
        f32840b.fine("Creating movie " + dVar);
        if (this.f32842a == null) {
            Iterator<com.googlecode.mp4parser.authoring.h> it2 = dVar.g().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    hVar = null;
                    break;
                }
                com.googlecode.mp4parser.authoring.h next = it2.next();
                if (next.getHandler().equals("vide")) {
                    hVar = next;
                    break;
                }
            }
            this.f32842a = new g(dVar, hVar, -1);
        }
        com.googlecode.mp4parser.d dVar2 = new com.googlecode.mp4parser.d();
        dVar2.m(e(dVar));
        dVar2.m(o(dVar));
        Iterator<com.coremedia.iso.boxes.d> it3 = n(dVar).iterator();
        while (it3.hasNext()) {
            dVar2.m(it3.next());
        }
        dVar2.m(k(dVar, dVar2));
        return dVar2;
    }

    protected com.coremedia.iso.boxes.n b(com.googlecode.mp4parser.authoring.d dVar, com.googlecode.mp4parser.authoring.h hVar) {
        com.coremedia.iso.boxes.n nVar = new com.coremedia.iso.boxes.n();
        o oVar = new o();
        nVar.m(oVar);
        l lVar = new l();
        lVar.setFlags(1);
        oVar.m(lVar);
        return nVar;
    }

    protected com.coremedia.iso.boxes.d c(com.googlecode.mp4parser.authoring.h hVar, com.googlecode.mp4parser.authoring.d dVar) {
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

    protected int d(List<com.coremedia.iso.boxes.d> list, com.googlecode.mp4parser.authoring.h hVar, long[] jArr, int i10, int i11) {
        if (i10 >= jArr.length) {
            return i11;
        }
        long j10 = jArr[i10];
        int i12 = i10 + 1;
        long size = i12 < jArr.length ? jArr[i12] : hVar.U().size() + 1;
        if (j10 == size) {
            return i11;
        }
        long j11 = size;
        list.add(m(j10, j11, hVar, i11));
        int i13 = i11 + 1;
        list.add(f(j10, j11, hVar, i11));
        return i13;
    }

    public com.coremedia.iso.boxes.d e(com.googlecode.mp4parser.authoring.d dVar) {
        LinkedList linkedList = new LinkedList();
        linkedList.add("isom");
        linkedList.add("iso2");
        linkedList.add(com.coremedia.iso.boxes.sampleentry.h.f25109z);
        return new s("isom", 0L, linkedList);
    }

    protected com.coremedia.iso.boxes.d f(long j10, long j11, com.googlecode.mp4parser.authoring.h hVar, int i10) {
        return new b(j10, j11, hVar, i10);
    }

    protected com.coremedia.iso.boxes.d g(com.googlecode.mp4parser.authoring.d dVar, com.googlecode.mp4parser.authoring.h hVar) {
        e0 e0Var = new e0();
        e0Var.A(hVar.H().a());
        e0Var.D(E());
        e0Var.B(0L);
        e0Var.E(hVar.H().i());
        e0Var.C(hVar.H().e());
        return e0Var;
    }

    protected com.coremedia.iso.boxes.d h(com.googlecode.mp4parser.authoring.h hVar, com.googlecode.mp4parser.authoring.d dVar) {
        d0 d0Var = new d0();
        d0Var.m(g(dVar, hVar));
        d0Var.m(i(hVar, dVar));
        d0Var.m(l(hVar, dVar));
        return d0Var;
    }

    protected com.coremedia.iso.boxes.d i(com.googlecode.mp4parser.authoring.h hVar, com.googlecode.mp4parser.authoring.d dVar) {
        x xVar = new x();
        xVar.y(hVar.getHandler());
        return xVar;
    }

    protected void j(long j10, long j11, com.googlecode.mp4parser.authoring.h hVar, int i10, com.coremedia.iso.boxes.fragment.c cVar) {
        com.coremedia.iso.boxes.fragment.d dVar = new com.coremedia.iso.boxes.fragment.d();
        dVar.w(i10);
        cVar.m(dVar);
    }

    protected com.coremedia.iso.boxes.d k(com.googlecode.mp4parser.authoring.d dVar, j jVar) {
        com.coremedia.iso.boxes.fragment.e eVar = new com.coremedia.iso.boxes.fragment.e();
        Iterator<com.googlecode.mp4parser.authoring.h> it2 = dVar.g().iterator();
        while (it2.hasNext()) {
            eVar.m(y(it2.next(), jVar));
        }
        com.coremedia.iso.boxes.fragment.f fVar = new com.coremedia.iso.boxes.fragment.f();
        eVar.m(fVar);
        fVar.w(eVar.getSize());
        return eVar;
    }

    protected com.coremedia.iso.boxes.d l(com.googlecode.mp4parser.authoring.h hVar, com.googlecode.mp4parser.authoring.d dVar) {
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
        f0Var.m(b(dVar, hVar));
        f0Var.m(u(dVar, hVar));
        return f0Var;
    }

    protected com.coremedia.iso.boxes.d m(long j10, long j11, com.googlecode.mp4parser.authoring.h hVar, int i10) {
        com.coremedia.iso.boxes.fragment.c cVar = new com.coremedia.iso.boxes.fragment.c();
        j(j10, j11, hVar, i10, cVar);
        A(j10, j11, hVar, i10, cVar);
        n nVar = cVar.J().get(0);
        nVar.G(1);
        nVar.G((int) (cVar.getSize() + 8));
        return cVar;
    }

    protected List<com.coremedia.iso.boxes.d> n(com.googlecode.mp4parser.authoring.d dVar) {
        List<com.coremedia.iso.boxes.d> linkedList = new LinkedList<>();
        HashMap map = new HashMap();
        int iMax = 0;
        for (com.googlecode.mp4parser.authoring.h hVar : dVar.g()) {
            long[] jArrA = this.f32842a.a(hVar);
            map.put(hVar, jArrA);
            iMax = Math.max(iMax, jArrA.length);
        }
        int i10 = 1;
        int i11 = 0;
        while (i11 < iMax) {
            int iD = i10;
            for (com.googlecode.mp4parser.authoring.h hVar2 : K(dVar.g(), i11, map)) {
                iD = d(linkedList, hVar2, (long[]) map.get(hVar2), i11, iD);
            }
            i11++;
            i10 = iD;
        }
        return linkedList;
    }

    protected com.coremedia.iso.boxes.d o(com.googlecode.mp4parser.authoring.d dVar) {
        h0 h0Var = new h0();
        h0Var.m(q(dVar));
        Iterator<com.googlecode.mp4parser.authoring.h> it2 = dVar.g().iterator();
        while (it2.hasNext()) {
            h0Var.m(B(it2.next(), dVar));
        }
        h0Var.m(p(dVar));
        return h0Var;
    }

    protected com.coremedia.iso.boxes.d p(com.googlecode.mp4parser.authoring.d dVar) {
        com.coremedia.iso.boxes.fragment.a aVar = new com.coremedia.iso.boxes.fragment.a();
        com.coremedia.iso.boxes.fragment.b bVar = new com.coremedia.iso.boxes.fragment.b();
        bVar.setVersion(1);
        Iterator<com.googlecode.mp4parser.authoring.h> it2 = dVar.g().iterator();
        while (it2.hasNext()) {
            long jI = I(dVar, it2.next());
            if (bVar.v() < jI) {
                bVar.w(jI);
            }
        }
        aVar.m(bVar);
        Iterator<com.googlecode.mp4parser.authoring.h> it3 = dVar.g().iterator();
        while (it3.hasNext()) {
            aVar.m(C(dVar, it3.next()));
        }
        return aVar;
    }

    protected com.coremedia.iso.boxes.d q(com.googlecode.mp4parser.authoring.d dVar) {
        i0 i0Var = new i0();
        i0Var.setVersion(1);
        i0Var.J(E());
        i0Var.N(E());
        long j10 = 0;
        i0Var.L(0L);
        i0Var.V(dVar.e());
        for (com.googlecode.mp4parser.authoring.h hVar : dVar.g()) {
            if (j10 < hVar.H().j()) {
                j10 = hVar.H().j();
            }
        }
        i0Var.O(j10 + 1);
        return i0Var;
    }

    protected void r(long j10, long j11, com.googlecode.mp4parser.authoring.tracks.g gVar, int i10, k kVar) {
        com.coremedia.iso.boxes.d next;
        com.mp4parser.iso14496.part12.b bVar = new com.mp4parser.iso14496.part12.b();
        kVar.m(bVar);
        bVar.y("cenc");
        bVar.setFlags(1);
        long jX = 8;
        for (com.coremedia.iso.boxes.d dVar : kVar.l()) {
            if (dVar instanceof com.googlecode.mp4parser.boxes.dece.d) {
                jX += (long) ((com.googlecode.mp4parser.boxes.dece.d) dVar).x();
                break;
            }
            jX += dVar.getSize();
        }
        long size = jX + 16;
        Iterator<com.coremedia.iso.boxes.d> it2 = ((com.coremedia.iso.boxes.fragment.c) kVar.getParent()).l().iterator();
        while (it2.hasNext() && (next = it2.next()) != kVar) {
            size += next.getSize();
        }
        bVar.A(new long[]{size});
    }

    protected void s(long j10, long j11, com.googlecode.mp4parser.authoring.tracks.g gVar, int i10, k kVar) {
        s0 s0VarF = gVar.F();
        com.mp4parser.iso23001.part7.c cVar = (com.mp4parser.iso23001.part7.c) m.e(s0VarF, "enc.[0]/sinf[0]/schi[0]/tenc[0]");
        com.mp4parser.iso14496.part12.c cVar2 = new com.mp4parser.iso14496.part12.c();
        cVar2.B("cenc");
        cVar2.setFlags(1);
        if (gVar.V()) {
            int iA = com.googlecode.mp4parser.util.c.a(j11 - j10);
            short[] sArr = new short[iA];
            List<com.mp4parser.iso23001.part7.a> listSubList = gVar.b0().subList(com.googlecode.mp4parser.util.c.a(j10 - 1), com.googlecode.mp4parser.util.c.a(j11 - 1));
            for (int i11 = 0; i11 < iA; i11++) {
                sArr[i11] = (short) listSubList.get(i11).b();
            }
            cVar2.F(sArr);
        } else {
            cVar2.D(cVar.w());
            cVar2.E(com.googlecode.mp4parser.util.c.a(j11 - j10));
        }
        kVar.m(cVar2);
    }

    protected void t(long j10, long j11, com.googlecode.mp4parser.authoring.tracks.g gVar, int i10, k kVar) {
        com.googlecode.mp4parser.boxes.dece.d dVar = new com.googlecode.mp4parser.boxes.dece.d();
        dVar.C(gVar.V());
        dVar.B(gVar.b0().subList(com.googlecode.mp4parser.util.c.a(j10 - 1), com.googlecode.mp4parser.util.c.a(j11 - 1)));
        kVar.m(dVar);
    }

    protected com.coremedia.iso.boxes.d u(com.googlecode.mp4parser.authoring.d dVar, com.googlecode.mp4parser.authoring.h hVar) {
        u0 u0Var = new u0();
        v(hVar, u0Var);
        u0Var.m(new d1());
        u0Var.m(new v0());
        u0Var.m(new t0());
        u0Var.m(new z0());
        return u0Var;
    }

    protected void v(com.googlecode.mp4parser.authoring.h hVar, u0 u0Var) {
        u0Var.m(hVar.F());
    }

    protected void w(long j10, com.googlecode.mp4parser.authoring.h hVar, k kVar) {
        com.coremedia.iso.boxes.fragment.j jVar = new com.coremedia.iso.boxes.fragment.j();
        jVar.setVersion(1);
        long[] jArrZ = hVar.Z();
        long j11 = 0;
        for (int i10 = 1; i10 < j10; i10++) {
            j11 += jArrZ[i10 - 1];
        }
        jVar.w(j11);
        kVar.m(jVar);
    }

    protected void x(long j10, long j11, com.googlecode.mp4parser.authoring.h hVar, int i10, k kVar) {
        com.coremedia.iso.boxes.fragment.l lVar = new com.coremedia.iso.boxes.fragment.l();
        lVar.L(new com.coremedia.iso.boxes.fragment.g());
        lVar.I(-1L);
        lVar.P(hVar.H().j());
        lVar.J(true);
        kVar.m(lVar);
    }

    protected com.coremedia.iso.boxes.d y(com.googlecode.mp4parser.authoring.h hVar, j jVar) {
        LinkedList linkedList;
        com.coremedia.iso.boxes.fragment.m mVar = new com.coremedia.iso.boxes.fragment.m();
        mVar.setVersion(1);
        LinkedList linkedList2 = new LinkedList();
        iVar = null;
        for (com.coremedia.iso.boxes.fragment.i iVar : m.h(jVar, "moov/mvex/trex")) {
            com.coremedia.iso.boxes.fragment.i iVar2 = iVar;
            mVar = mVar;
            linkedList2 = linkedList2;
            if (iVar.A() != hVar.H().j()) {
                iVar = iVar2;
            }
        }
        Iterator<com.coremedia.iso.boxes.d> it2 = jVar.l().iterator();
        long size = 0;
        long j10 = 0;
        while (it2.hasNext()) {
            com.coremedia.iso.boxes.d next = it2.next();
            if (next instanceof com.coremedia.iso.boxes.fragment.c) {
                List listC = ((com.coremedia.iso.boxes.fragment.c) next).c(k.class);
                int i10 = 0;
                int i11 = 0;
                while (i11 < listC.size()) {
                    k kVar = (k) listC.get(i11);
                    if (kVar.v().A() == hVar.H().j()) {
                        List listC2 = kVar.c(n.class);
                        int i12 = 0;
                        while (i12 < listC2.size()) {
                            LinkedList linkedList3 = new LinkedList();
                            n nVar = (n) listC2.get(i12);
                            long j11 = j10;
                            int i13 = 0;
                            while (i13 < nVar.w().size()) {
                                n.a aVar = nVar.w().get(i13);
                                com.coremedia.iso.boxes.fragment.g gVarX = (i13 == 0 && nVar.B()) ? nVar.x() : nVar.E() ? aVar.k() : iVar.x();
                                if (gVarX == null && hVar.getHandler().equals("vide")) {
                                    throw new RuntimeException("Cannot find SampleFlags for video track but it's required to build tfra");
                                }
                                if (gVarX == null || gVarX.d() == 2) {
                                    linkedList = linkedList3;
                                    linkedList.add(new com.coremedia.iso.boxes.fragment.m.a(j11, size, i11 + 1, i12 + 1, i13 + 1));
                                } else {
                                    linkedList = linkedList3;
                                }
                                j11 += aVar.j();
                                i13++;
                                listC = listC;
                                linkedList3 = linkedList;
                                mVar = mVar;
                                linkedList2 = linkedList2;
                                iVar = iVar;
                                it2 = it2;
                                next = next;
                                i12 = i12;
                                i11 = i11;
                                listC2 = listC2;
                                i10 = 0;
                            }
                            if (linkedList3.size() != nVar.w().size() || nVar.w().size() <= 0) {
                                linkedList2.addAll(linkedList3);
                            } else {
                                linkedList2.add((com.coremedia.iso.boxes.fragment.m.a) linkedList3.get(i10));
                            }
                            i12++;
                            j10 = j11;
                        }
                    }
                    i11++;
                    listC = listC;
                    mVar = mVar;
                    linkedList2 = linkedList2;
                    iVar = iVar;
                    it2 = it2;
                    next = next;
                    i10 = 0;
                }
            }
            size += next.getSize();
            mVar = mVar;
            linkedList2 = linkedList2;
            iVar = iVar;
            it2 = it2;
        }
        mVar.C(linkedList2);
        mVar.G(hVar.H().j());
        return mVar;
    }

    protected com.coremedia.iso.boxes.d z(com.googlecode.mp4parser.authoring.d dVar, com.googlecode.mp4parser.authoring.h hVar) {
        g1 g1Var = new g1();
        g1Var.setVersion(1);
        g1Var.setFlags(7);
        g1Var.J(hVar.H().b());
        g1Var.K(hVar.H().a());
        g1Var.L(0L);
        g1Var.N(hVar.H().d());
        g1Var.W(hVar.H().l());
        g1Var.R(hVar.H().f());
        g1Var.T(E());
        g1Var.U(hVar.H().j());
        g1Var.V(hVar.H().k());
        return g1Var;
    }
}

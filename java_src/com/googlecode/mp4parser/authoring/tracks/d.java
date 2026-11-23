package com.googlecode.mp4parser.authoring.tracks;

import com.coremedia.iso.boxes.a1;
import com.coremedia.iso.boxes.r0;
import com.coremedia.iso.boxes.s0;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.channels.Channels;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class d extends com.googlecode.mp4parser.authoring.a {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static com.googlecode.mp4parser.util.j f33086g = com.googlecode.mp4parser.util.j.a(d.class);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    com.googlecode.mp4parser.authoring.h[] f33087e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    s0 f33088f;

    public d(com.googlecode.mp4parser.authoring.h... hVarArr) throws IOException {
        super(a(hVarArr));
        this.f33087e = hVarArr;
        for (com.googlecode.mp4parser.authoring.h hVar : hVarArr) {
            s0 s0Var = this.f33088f;
            if (s0Var == null) {
                s0 s0Var2 = new s0();
                this.f33088f = s0Var2;
                s0Var2.m((com.coremedia.iso.boxes.d) hVar.F().c(com.coremedia.iso.boxes.sampleentry.f.class).get(0));
            } else {
                this.f33088f = e(s0Var, hVar.F());
            }
        }
    }

    public static String a(com.googlecode.mp4parser.authoring.h... hVarArr) {
        String str = "";
        for (com.googlecode.mp4parser.authoring.h hVar : hVarArr) {
            str = String.valueOf(str) + hVar.getName() + " + ";
        }
        return str.substring(0, str.length() - 3);
    }

    private com.coremedia.iso.boxes.sampleentry.c b(com.coremedia.iso.boxes.sampleentry.c cVar, com.coremedia.iso.boxes.sampleentry.c cVar2) {
        com.coremedia.iso.boxes.sampleentry.c cVar3 = new com.coremedia.iso.boxes.sampleentry.c(cVar2.getType());
        if (cVar.v() != cVar2.v()) {
            f33086g.c("BytesPerFrame differ");
            return null;
        }
        cVar3.c0(cVar.v());
        if (cVar.y() == cVar2.y()) {
            cVar3.d0(cVar.y());
            if (cVar.z() == cVar2.z()) {
                cVar3.e0(cVar.z());
                if (cVar.I() == cVar2.I()) {
                    cVar3.f0(cVar.I());
                    if (cVar.K() == cVar2.K()) {
                        cVar3.i0(cVar.K());
                        if (cVar.J() == cVar2.J()) {
                            cVar3.g0(cVar.J());
                            if (cVar.O() == cVar2.O()) {
                                cVar3.l0(cVar.O());
                                if (cVar.P() == cVar2.P()) {
                                    cVar3.m0(cVar.P());
                                    if (cVar.Q() == cVar2.Q()) {
                                        cVar3.n0(cVar.Q());
                                        if (cVar.R() == cVar2.R()) {
                                            cVar3.o0(cVar.R());
                                            if (Arrays.equals(cVar.a0(), cVar2.a0())) {
                                                cVar3.p0(cVar.a0());
                                                if (cVar.l().size() == cVar2.l().size()) {
                                                    Iterator<com.coremedia.iso.boxes.d> it2 = cVar2.l().iterator();
                                                    for (com.coremedia.iso.boxes.d dVar : cVar.l()) {
                                                        com.coremedia.iso.boxes.d next = it2.next();
                                                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                                                        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                                                        try {
                                                            dVar.a(Channels.newChannel(byteArrayOutputStream));
                                                            next.a(Channels.newChannel(byteArrayOutputStream2));
                                                            if (Arrays.equals(byteArrayOutputStream.toByteArray(), byteArrayOutputStream2.toByteArray())) {
                                                                cVar3.m(dVar);
                                                            } else if (com.googlecode.mp4parser.boxes.mp4.b.A.equals(dVar.getType()) && com.googlecode.mp4parser.boxes.mp4.b.A.equals(next.getType())) {
                                                                com.googlecode.mp4parser.boxes.mp4.b bVar = (com.googlecode.mp4parser.boxes.mp4.b) dVar;
                                                                bVar.z(c(bVar.A(), ((com.googlecode.mp4parser.boxes.mp4.b) next).A()));
                                                                cVar3.m(dVar);
                                                            }
                                                        } catch (IOException e10) {
                                                            f33086g.d(e10.getMessage());
                                                            return null;
                                                        }
                                                    }
                                                }
                                                return cVar3;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        return null;
                    }
                    f33086g.c("ChannelCount differ");
                }
                return null;
            }
            f33086g.c("BytesPerSample differ");
        }
        return null;
    }

    private com.googlecode.mp4parser.boxes.mp4.objectdescriptors.g c(com.googlecode.mp4parser.boxes.mp4.objectdescriptors.b bVar, com.googlecode.mp4parser.boxes.mp4.objectdescriptors.b bVar2) {
        if (!(bVar instanceof com.googlecode.mp4parser.boxes.mp4.objectdescriptors.g) || !(bVar2 instanceof com.googlecode.mp4parser.boxes.mp4.objectdescriptors.g)) {
            f33086g.c("I can only merge ESDescriptors");
            return null;
        }
        com.googlecode.mp4parser.boxes.mp4.objectdescriptors.g gVar = (com.googlecode.mp4parser.boxes.mp4.objectdescriptors.g) bVar;
        com.googlecode.mp4parser.boxes.mp4.objectdescriptors.g gVar2 = (com.googlecode.mp4parser.boxes.mp4.objectdescriptors.g) bVar2;
        if (gVar.o() != gVar2.o()) {
            return null;
        }
        gVar.p();
        gVar2.p();
        if (gVar.h() != gVar2.h() || gVar.i() != gVar2.i() || gVar.r() != gVar2.r() || gVar.s() != gVar2.s() || gVar.k() != gVar2.k() || gVar.m() != gVar2.m()) {
            return null;
        }
        gVar.n();
        gVar2.n();
        if (gVar.q() != null) {
            gVar.q().equals(gVar2.q());
        } else {
            gVar2.q();
        }
        if (gVar.g() == null ? gVar2.g() != null : !gVar.g().equals(gVar2.g())) {
            com.googlecode.mp4parser.boxes.mp4.objectdescriptors.e eVarG = gVar.g();
            com.googlecode.mp4parser.boxes.mp4.objectdescriptors.e eVarG2 = gVar2.g();
            if (eVarG.g() != null && eVarG2.g() != null && !eVarG.g().equals(eVarG2.g())) {
                return null;
            }
            if (eVarG.h() != eVarG2.h()) {
                eVarG.s((eVarG.h() + eVarG2.h()) / 2);
            }
            eVarG.i();
            eVarG2.i();
            if (eVarG.j() == null ? eVarG2.j() != null : !eVarG.j().equals(eVarG2.j())) {
                return null;
            }
            if (eVarG.k() != eVarG2.k()) {
                eVarG.u(Math.max(eVarG.k(), eVarG2.k()));
            }
            if (!eVarG.m().equals(eVarG2.m()) || eVarG.l() != eVarG2.l() || eVarG.n() != eVarG2.n() || eVarG.o() != eVarG2.o()) {
                return null;
            }
        }
        if (gVar.j() == null ? gVar2.j() != null : !gVar.j().equals(gVar2.j())) {
            return null;
        }
        if (gVar.l() == null ? gVar2.l() == null : gVar.l().equals(gVar2.l())) {
            return gVar;
        }
        return null;
    }

    private com.coremedia.iso.boxes.sampleentry.f d(com.coremedia.iso.boxes.sampleentry.f fVar, com.coremedia.iso.boxes.sampleentry.f fVar2) {
        if (!fVar.getType().equals(fVar2.getType())) {
            return null;
        }
        if ((fVar instanceof com.coremedia.iso.boxes.sampleentry.h) && (fVar2 instanceof com.coremedia.iso.boxes.sampleentry.h)) {
            return f((com.coremedia.iso.boxes.sampleentry.h) fVar, (com.coremedia.iso.boxes.sampleentry.h) fVar2);
        }
        if ((fVar instanceof com.coremedia.iso.boxes.sampleentry.c) && (fVar2 instanceof com.coremedia.iso.boxes.sampleentry.c)) {
            return b((com.coremedia.iso.boxes.sampleentry.c) fVar, (com.coremedia.iso.boxes.sampleentry.c) fVar2);
        }
        return null;
    }

    private s0 e(s0 s0Var, s0 s0Var2) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
        try {
            s0Var.a(Channels.newChannel(byteArrayOutputStream));
            s0Var2.a(Channels.newChannel(byteArrayOutputStream2));
            if (!Arrays.equals(byteArrayOutputStream2.toByteArray(), byteArrayOutputStream.toByteArray())) {
                com.coremedia.iso.boxes.sampleentry.f fVarD = d((com.coremedia.iso.boxes.sampleentry.f) s0Var.c(com.coremedia.iso.boxes.sampleentry.f.class).get(0), (com.coremedia.iso.boxes.sampleentry.f) s0Var2.c(com.coremedia.iso.boxes.sampleentry.f.class).get(0));
                if (fVarD == null) {
                    throw new IOException("Cannot merge " + s0Var.c(com.coremedia.iso.boxes.sampleentry.f.class).get(0) + " and " + s0Var2.c(com.coremedia.iso.boxes.sampleentry.f.class).get(0));
                }
                s0Var.b(Collections.singletonList(fVarD));
            }
            return s0Var;
        } catch (IOException e10) {
            f33086g.c(e10.getMessage());
            return null;
        }
    }

    private com.coremedia.iso.boxes.sampleentry.h f(com.coremedia.iso.boxes.sampleentry.h hVar, com.coremedia.iso.boxes.sampleentry.h hVar2) {
        com.coremedia.iso.boxes.sampleentry.h hVar3 = new com.coremedia.iso.boxes.sampleentry.h();
        if (hVar.J() != hVar2.J()) {
            f33086g.c("Horizontal Resolution differs");
            return null;
        }
        hVar3.R(hVar.J());
        hVar3.M(hVar.v());
        if (hVar.y() != hVar2.y()) {
            f33086g.c("Depth differs");
            return null;
        }
        hVar3.O(hVar.y());
        if (hVar.z() != hVar2.z()) {
            f33086g.c("frame count differs");
            return null;
        }
        hVar3.P(hVar.z());
        if (hVar.I() != hVar2.I()) {
            f33086g.c("height differs");
            return null;
        }
        hVar3.Q(hVar.I());
        if (hVar.L() != hVar2.L()) {
            f33086g.c("width differs");
            return null;
        }
        hVar3.d0(hVar.L());
        if (hVar.K() != hVar2.K()) {
            f33086g.c("vert resolution differs");
            return null;
        }
        hVar3.c0(hVar.K());
        if (hVar.J() != hVar2.J()) {
            f33086g.c("horizontal resolution differs");
            return null;
        }
        hVar3.R(hVar.J());
        if (hVar.l().size() == hVar2.l().size()) {
            Iterator<com.coremedia.iso.boxes.d> it2 = hVar2.l().iterator();
            for (com.coremedia.iso.boxes.d dVar : hVar.l()) {
                com.coremedia.iso.boxes.d next = it2.next();
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                try {
                    dVar.a(Channels.newChannel(byteArrayOutputStream));
                    next.a(Channels.newChannel(byteArrayOutputStream2));
                    if (Arrays.equals(byteArrayOutputStream.toByteArray(), byteArrayOutputStream2.toByteArray())) {
                        hVar3.m(dVar);
                    } else if ((dVar instanceof com.googlecode.mp4parser.boxes.mp4.a) && (next instanceof com.googlecode.mp4parser.boxes.mp4.a)) {
                        com.googlecode.mp4parser.boxes.mp4.a aVar = (com.googlecode.mp4parser.boxes.mp4.a) dVar;
                        aVar.z(c(aVar.w(), ((com.googlecode.mp4parser.boxes.mp4.a) next).w()));
                        hVar3.m(dVar);
                    }
                } catch (IOException e10) {
                    f33086g.d(e10.getMessage());
                    return null;
                }
            }
        }
        return hVar3;
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public List<com.coremedia.iso.boxes.i.a> E() {
        if (this.f33087e[0].E() == null || this.f33087e[0].E().isEmpty()) {
            return null;
        }
        LinkedList<int[]> linkedList = new LinkedList();
        for (com.googlecode.mp4parser.authoring.h hVar : this.f33087e) {
            linkedList.add(com.coremedia.iso.boxes.i.v(hVar.E()));
        }
        LinkedList linkedList2 = new LinkedList();
        for (int[] iArr : linkedList) {
            for (int i10 : iArr) {
                if (linkedList2.isEmpty() || ((com.coremedia.iso.boxes.i.a) linkedList2.getLast()).b() != i10) {
                    linkedList2.add(new com.coremedia.iso.boxes.i.a(1, i10));
                } else {
                    com.coremedia.iso.boxes.i.a aVar = (com.coremedia.iso.boxes.i.a) linkedList2.getLast();
                    aVar.c(aVar.a() + 1);
                }
            }
        }
        return linkedList2;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public s0 F() {
        return this.f33088f;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public com.googlecode.mp4parser.authoring.i H() {
        return this.f33087e[0].H();
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public long[] N() {
        if (this.f33087e[0].N() == null || this.f33087e[0].N().length <= 0) {
            return null;
        }
        int length = 0;
        for (com.googlecode.mp4parser.authoring.h hVar : this.f33087e) {
            length += hVar.N().length;
        }
        long[] jArr = new long[length];
        long size = 0;
        int i10 = 0;
        for (com.googlecode.mp4parser.authoring.h hVar2 : this.f33087e) {
            long[] jArrN = hVar2.N();
            int length2 = jArrN.length;
            int i11 = 0;
            while (i11 < length2) {
                jArr[i10] = jArrN[i11] + size;
                i11++;
                i10++;
            }
            size += (long) hVar2.U().size();
        }
        return jArr;
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public a1 S() {
        return this.f33087e[0].S();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<com.googlecode.mp4parser.authoring.f> U() {
        ArrayList arrayList = new ArrayList();
        for (com.googlecode.mp4parser.authoring.h hVar : this.f33087e) {
            arrayList.addAll(hVar.U());
        }
        return arrayList;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public synchronized long[] Z() {
        long[] jArr;
        int length = 0;
        for (com.googlecode.mp4parser.authoring.h hVar : this.f33087e) {
            length += hVar.Z().length;
        }
        jArr = new long[length];
        int i10 = 0;
        for (com.googlecode.mp4parser.authoring.h hVar2 : this.f33087e) {
            long[] jArrZ = hVar2.Z();
            int length2 = jArrZ.length;
            int i11 = 0;
            while (i11 < length2) {
                jArr[i10] = jArrZ[i11];
                i11++;
                i10++;
            }
        }
        return jArr;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        for (com.googlecode.mp4parser.authoring.h hVar : this.f33087e) {
            hVar.close();
        }
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public String getHandler() {
        return this.f33087e[0].getHandler();
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public List<r0.a> h0() {
        if (this.f33087e[0].h0() == null || this.f33087e[0].h0().isEmpty()) {
            return null;
        }
        LinkedList linkedList = new LinkedList();
        for (com.googlecode.mp4parser.authoring.h hVar : this.f33087e) {
            linkedList.addAll(hVar.h0());
        }
        return linkedList;
    }
}

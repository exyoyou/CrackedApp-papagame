package com.googlecode.mp4parser.authoring;

import com.coremedia.iso.boxes.f1;
import com.coremedia.iso.boxes.fragment.k;
import com.coremedia.iso.boxes.fragment.n;
import com.coremedia.iso.boxes.h0;
import com.googlecode.mp4parser.util.m;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes5.dex */
public class b extends e implements com.googlecode.mp4parser.authoring.tracks.g {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    static final /* synthetic */ boolean f32820r = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private List<com.mp4parser.iso23001.part7.a> f32821p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private UUID f32822q;

    private class a {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        static final /* synthetic */ boolean f32823e = false;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private com.coremedia.iso.boxes.j f32824a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private com.mp4parser.iso14496.part12.c f32825b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private com.mp4parser.iso14496.part12.b f32826c;

        public a(com.coremedia.iso.boxes.j jVar) {
            this.f32824a = jVar;
        }

        public com.mp4parser.iso14496.part12.b c() {
            return this.f32826c;
        }

        public com.mp4parser.iso14496.part12.c d() {
            return this.f32825b;
        }

        public a e() {
            List listC = this.f32824a.c(com.mp4parser.iso14496.part12.c.class);
            List listC2 = this.f32824a.c(com.mp4parser.iso14496.part12.b.class);
            this.f32825b = null;
            this.f32826c = null;
            for (int i10 = 0; i10 < listC.size(); i10++) {
                if ((this.f32825b == null && ((com.mp4parser.iso14496.part12.c) listC.get(i10)).v() == null) || "cenc".equals(((com.mp4parser.iso14496.part12.c) listC.get(i10)).v())) {
                    this.f32825b = (com.mp4parser.iso14496.part12.c) listC.get(i10);
                } else {
                    com.mp4parser.iso14496.part12.c cVar = this.f32825b;
                    if (cVar == null || cVar.v() != null || !"cenc".equals(((com.mp4parser.iso14496.part12.c) listC.get(i10)).v())) {
                        throw new RuntimeException("Are there two cenc labeled saiz?");
                    }
                    this.f32825b = (com.mp4parser.iso14496.part12.c) listC.get(i10);
                }
                if ((this.f32826c == null && ((com.mp4parser.iso14496.part12.b) listC2.get(i10)).v() == null) || "cenc".equals(((com.mp4parser.iso14496.part12.b) listC2.get(i10)).v())) {
                    this.f32826c = (com.mp4parser.iso14496.part12.b) listC2.get(i10);
                } else {
                    com.mp4parser.iso14496.part12.b bVar = this.f32826c;
                    if (bVar == null || bVar.v() != null || !"cenc".equals(((com.mp4parser.iso14496.part12.b) listC2.get(i10)).v())) {
                        throw new RuntimeException("Are there two cenc labeled saio?");
                    }
                    this.f32826c = (com.mp4parser.iso14496.part12.b) listC2.get(i10);
                }
            }
            return this;
        }
    }

    public b(String str, f1 f1Var, com.coremedia.iso.f... fVarArr) throws IOException {
        long jA;
        long j10;
        int iY;
        com.coremedia.iso.boxes.j parent;
        long jV;
        int i10;
        super(str, f1Var, fVarArr);
        this.f32821p = new ArrayList();
        long jC = f1Var.z().C();
        if (f1Var.getParent().c(com.coremedia.iso.boxes.fragment.a.class).size() <= 0) {
            com.mp4parser.iso23001.part7.c cVar = (com.mp4parser.iso23001.part7.c) m.e(f1Var, "mdia[0]/minf[0]/stbl[0]/stsd[0]/enc.[0]/sinf[0]/schi[0]/tenc[0]");
            this.f32822q = cVar.x();
            com.coremedia.iso.boxes.f fVar = (com.coremedia.iso.boxes.f) m.e(f1Var, "mdia[0]/minf[0]/stbl[0]/stco[0]");
            long[] jArrV = f1Var.y().J().v((fVar == null ? (com.coremedia.iso.boxes.f) m.e(f1Var, "mdia[0]/minf[0]/stbl[0]/co64[0]") : fVar).v().length);
            a aVarE = new a((com.coremedia.iso.boxes.j) m.e(f1Var, "mdia[0]/minf[0]/stbl[0]")).e();
            com.mp4parser.iso14496.part12.b bVar = aVarE.f32826c;
            com.mp4parser.iso14496.part12.c cVar2 = aVarE.f32825b;
            com.coremedia.iso.boxes.j parent2 = ((h0) f1Var.getParent()).getParent();
            if (bVar.x().length == 1) {
                long j11 = bVar.x()[0];
                if (cVar2.x() > 0) {
                    iY = (cVar2.y() * cVar2.x()) + 0;
                } else {
                    iY = 0;
                    for (int i11 = 0; i11 < cVar2.y(); i11++) {
                        iY += cVar2.z()[i11];
                    }
                }
                ByteBuffer byteBufferG = parent2.g(j11, iY);
                for (int i12 = 0; i12 < cVar2.y(); i12++) {
                    this.f32821p.add(b(cVar.w(), byteBufferG, cVar2.A(i12)));
                }
                return;
            }
            if (bVar.x().length != jArrV.length) {
                throw new RuntimeException("Number of saio offsets must be either 1 or number of chunks");
            }
            int i13 = 0;
            for (int i14 = 0; i14 < jArrV.length; i14++) {
                long j12 = bVar.x()[i14];
                if (cVar2.x() > 0) {
                    jA = (((long) cVar2.y()) * jArrV[i14]) + 0;
                } else {
                    jA = 0;
                    for (int i15 = 0; i15 < jArrV[i14]; i15++) {
                        jA += (long) cVar2.A(i13 + i15);
                    }
                }
                ByteBuffer byteBufferG2 = parent2.g(j12, jA);
                int i16 = 0;
                while (true) {
                    long j13 = i16;
                    j10 = jArrV[i14];
                    if (j13 >= j10) {
                        break;
                    }
                    this.f32821p.add(b(cVar.w(), byteBufferG2, cVar2.A(i13 + i16)));
                    i16++;
                }
                i13 = (int) (((long) i13) + j10);
            }
            return;
        }
        Iterator it2 = ((com.coremedia.iso.boxes.d) f1Var.getParent()).getParent().c(com.coremedia.iso.boxes.fragment.c.class).iterator();
        while (it2.hasNext()) {
            com.coremedia.iso.boxes.fragment.c cVar3 = (com.coremedia.iso.boxes.fragment.c) it2.next();
            Iterator it3 = cVar3.c(k.class).iterator();
            while (it3.hasNext()) {
                k kVar = (k) it3.next();
                if (kVar.v().A() == jC) {
                    com.mp4parser.iso23001.part7.c cVar4 = (com.mp4parser.iso23001.part7.c) m.e(f1Var, "mdia[0]/minf[0]/stbl[0]/stsd[0]/enc.[0]/sinf[0]/schi[0]/tenc[0]");
                    this.f32822q = cVar4.x();
                    if (kVar.v().B()) {
                        parent = ((com.coremedia.iso.boxes.d) f1Var.getParent()).getParent();
                        jV = kVar.v().v();
                    } else {
                        parent = cVar3;
                        jV = 0;
                    }
                    a aVarE2 = new a(kVar).e();
                    com.mp4parser.iso14496.part12.b bVarC = aVarE2.c();
                    com.mp4parser.iso14496.part12.c cVarD = aVarE2.d();
                    long[] jArrX = bVarC.x();
                    List listC = kVar.c(n.class);
                    long j14 = jC;
                    int i17 = 0;
                    int i18 = 0;
                    while (i17 < jArrX.length) {
                        int size = ((n) listC.get(i17)).w().size();
                        long j15 = jArrX[i17];
                        Iterator it4 = it2;
                        long[] jArr = jArrX;
                        List list = listC;
                        int i19 = i18;
                        long jA2 = 0;
                        while (true) {
                            i10 = i18 + size;
                            if (i19 >= i10) {
                                break;
                            }
                            jA2 += (long) cVarD.A(i19);
                            i19++;
                            cVar3 = cVar3;
                            it3 = it3;
                        }
                        ByteBuffer byteBufferG3 = parent.g(jV + j15, jA2);
                        int i20 = i18;
                        while (i20 < i10) {
                            this.f32821p.add(b(cVar4.w(), byteBufferG3, cVarD.A(i20)));
                            i20++;
                            i10 = i10;
                            cVar3 = cVar3;
                            it3 = it3;
                        }
                        i17++;
                        jArrX = jArr;
                        i18 = i10;
                        listC = list;
                        it2 = it4;
                    }
                    jC = j14;
                }
            }
        }
    }

    private com.mp4parser.iso23001.part7.a b(int i10, ByteBuffer byteBuffer, long j10) {
        com.mp4parser.iso23001.part7.a aVar = new com.mp4parser.iso23001.part7.a();
        if (j10 > 0) {
            byte[] bArr = new byte[i10];
            aVar.f75728a = bArr;
            byteBuffer.get(bArr);
            if (j10 > i10) {
                aVar.f75729b = new com.mp4parser.iso23001.part7.a.k[com.coremedia.iso.g.i(byteBuffer)];
                int i11 = 0;
                while (true) {
                    com.mp4parser.iso23001.part7.a.k[] kVarArr = aVar.f75729b;
                    if (i11 >= kVarArr.length) {
                        break;
                    }
                    kVarArr[i11] = aVar.a(com.coremedia.iso.g.i(byteBuffer), com.coremedia.iso.g.l(byteBuffer));
                    i11++;
                }
            }
        }
        return aVar;
    }

    @Override // com.googlecode.mp4parser.authoring.tracks.g
    public boolean V() {
        return false;
    }

    @Override // com.googlecode.mp4parser.authoring.tracks.g
    public UUID Y() {
        return this.f32822q;
    }

    @Override // com.googlecode.mp4parser.authoring.tracks.g
    public List<com.mp4parser.iso23001.part7.a> b0() {
        return this.f32821p;
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public String getName() {
        return "enc(" + super.getName() + ")";
    }

    public String toString() {
        return "CencMp4TrackImpl{handler='" + getHandler() + "'}";
    }
}

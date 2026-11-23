package com.googlecode.mp4parser.boxes.mp4.objectdescriptors;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
@Descriptor(tags = {3})
public class g extends b {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static Logger f33616r = Logger.getLogger(g.class.getName());

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f33617e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f33618f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f33619g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int f33620h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    int f33621i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    String f33623k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    int f33624l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    int f33625m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    int f33626n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    e f33627o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    n f33628p;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    int f33622j = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    List<b> f33629q = new ArrayList();

    public void A(int i10) {
        this.f33618f = i10;
    }

    public void B(int i10) {
        this.f33621i = i10;
    }

    public void C(int i10) {
        this.f33619g = i10;
    }

    public void D(int i10) {
        this.f33622j = i10;
    }

    public void E(String str) {
        this.f33623k = str;
    }

    public void F(int i10) {
        this.f33626n = i10;
    }

    public void G(int i10) {
        this.f33620h = i10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        g gVar = (g) obj;
        if (this.f33619g != gVar.f33619g || this.f33622j != gVar.f33622j || this.f33625m != gVar.f33625m || this.f33617e != gVar.f33617e || this.f33626n != gVar.f33626n || this.f33620h != gVar.f33620h || this.f33624l != gVar.f33624l || this.f33618f != gVar.f33618f || this.f33621i != gVar.f33621i) {
            return false;
        }
        String str = this.f33623k;
        if (str == null ? gVar.f33623k != null : !str.equals(gVar.f33623k)) {
            return false;
        }
        e eVar = this.f33627o;
        if (eVar == null ? gVar.f33627o != null : !eVar.equals(gVar.f33627o)) {
            return false;
        }
        List<b> list = this.f33629q;
        if (list == null ? gVar.f33629q != null : !list.equals(gVar.f33629q)) {
            return false;
        }
        n nVar = this.f33628p;
        n nVar2 = gVar.f33628p;
        return nVar == null ? nVar2 == null : nVar.equals(nVar2);
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.b
    public void f(ByteBuffer byteBuffer) throws IOException {
        this.f33617e = com.coremedia.iso.g.i(byteBuffer);
        int iP = com.coremedia.iso.g.p(byteBuffer);
        int i10 = iP >>> 7;
        this.f33618f = i10;
        this.f33619g = (iP >>> 6) & 1;
        this.f33620h = (iP >>> 5) & 1;
        this.f33621i = iP & 31;
        if (i10 == 1) {
            this.f33625m = com.coremedia.iso.g.i(byteBuffer);
        }
        if (this.f33619g == 1) {
            int iP2 = com.coremedia.iso.g.p(byteBuffer);
            this.f33622j = iP2;
            this.f33623k = com.coremedia.iso.g.h(byteBuffer, iP2);
        }
        if (this.f33620h == 1) {
            this.f33626n = com.coremedia.iso.g.i(byteBuffer);
        }
        int iB = b() + 1 + 2 + 1 + (this.f33618f == 1 ? 2 : 0) + (this.f33619g == 1 ? this.f33622j + 1 : 0) + (this.f33620h == 1 ? 2 : 0);
        int iPosition = byteBuffer.position();
        if (a() > iB + 2) {
            b bVarA = l.a(-1, byteBuffer);
            long jPosition = byteBuffer.position() - iPosition;
            Logger logger = f33616r;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(bVarA);
            sb2.append(" - ESDescriptor1 read: ");
            sb2.append(jPosition);
            sb2.append(", size: ");
            sb2.append(bVarA != null ? Integer.valueOf(bVarA.a()) : null);
            logger.finer(sb2.toString());
            if (bVarA != null) {
                int iA = bVarA.a();
                byteBuffer.position(iPosition + iA);
                iB += iA;
            } else {
                iB = (int) (((long) iB) + jPosition);
            }
            if (bVarA instanceof e) {
                this.f33627o = (e) bVarA;
            }
        }
        int iPosition2 = byteBuffer.position();
        if (a() > iB + 2) {
            b bVarA2 = l.a(-1, byteBuffer);
            long jPosition2 = byteBuffer.position() - iPosition2;
            Logger logger2 = f33616r;
            StringBuilder sb3 = new StringBuilder();
            sb3.append(bVarA2);
            sb3.append(" - ESDescriptor2 read: ");
            sb3.append(jPosition2);
            sb3.append(", size: ");
            sb3.append(bVarA2 != null ? Integer.valueOf(bVarA2.a()) : null);
            logger2.finer(sb3.toString());
            if (bVarA2 != null) {
                int iA2 = bVarA2.a();
                byteBuffer.position(iPosition2 + iA2);
                iB += iA2;
            } else {
                iB = (int) (((long) iB) + jPosition2);
            }
            if (bVarA2 instanceof n) {
                this.f33628p = (n) bVarA2;
            }
        } else {
            f33616r.warning("SLConfigDescriptor is missing!");
        }
        while (a() - iB > 2) {
            int iPosition3 = byteBuffer.position();
            b bVarA3 = l.a(-1, byteBuffer);
            long jPosition3 = byteBuffer.position() - iPosition3;
            Logger logger3 = f33616r;
            StringBuilder sb4 = new StringBuilder();
            sb4.append(bVarA3);
            sb4.append(" - ESDescriptor3 read: ");
            sb4.append(jPosition3);
            sb4.append(", size: ");
            sb4.append(bVarA3 != null ? Integer.valueOf(bVarA3.a()) : null);
            logger3.finer(sb4.toString());
            if (bVarA3 != null) {
                int iA3 = bVarA3.a();
                byteBuffer.position(iPosition3 + iA3);
                iB += iA3;
            } else {
                iB = (int) (((long) iB) + jPosition3);
            }
            this.f33629q.add(bVarA3);
        }
    }

    public e g() {
        return this.f33627o;
    }

    public int h() {
        return this.f33625m;
    }

    public int hashCode() {
        int i10 = ((((((((((this.f33617e * 31) + this.f33618f) * 31) + this.f33619g) * 31) + this.f33620h) * 31) + this.f33621i) * 31) + this.f33622j) * 31;
        String str = this.f33623k;
        int iHashCode = (((((((i10 + (str != null ? str.hashCode() : 0)) * 31) + this.f33624l) * 31) + this.f33625m) * 31) + this.f33626n) * 31;
        e eVar = this.f33627o;
        int iHashCode2 = (iHashCode + (eVar != null ? eVar.hashCode() : 0)) * 31;
        n nVar = this.f33628p;
        int iHashCode3 = (iHashCode2 + (nVar != null ? nVar.hashCode() : 0)) * 31;
        List<b> list = this.f33629q;
        return iHashCode3 + (list != null ? list.hashCode() : 0);
    }

    public int i() {
        return this.f33617e;
    }

    public List<b> j() {
        return this.f33629q;
    }

    public int k() {
        return this.f33624l;
    }

    public n l() {
        return this.f33628p;
    }

    public int m() {
        return this.f33618f;
    }

    public int n() {
        return this.f33621i;
    }

    public int o() {
        return this.f33619g;
    }

    public int p() {
        return this.f33622j;
    }

    public String q() {
        return this.f33623k;
    }

    public int r() {
        return this.f33626n;
    }

    public int s() {
        return this.f33620h;
    }

    public ByteBuffer t() {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(u());
        com.coremedia.iso.i.m(byteBufferAllocate, 3);
        com.coremedia.iso.i.m(byteBufferAllocate, u() - 2);
        com.coremedia.iso.i.f(byteBufferAllocate, this.f33617e);
        com.coremedia.iso.i.m(byteBufferAllocate, (this.f33618f << 7) | (this.f33619g << 6) | (this.f33620h << 5) | (this.f33621i & 31));
        if (this.f33618f > 0) {
            com.coremedia.iso.i.f(byteBufferAllocate, this.f33625m);
        }
        if (this.f33619g > 0) {
            com.coremedia.iso.i.m(byteBufferAllocate, this.f33622j);
            com.coremedia.iso.i.n(byteBufferAllocate, this.f33623k);
        }
        if (this.f33620h > 0) {
            com.coremedia.iso.i.f(byteBufferAllocate, this.f33626n);
        }
        ByteBuffer byteBufferP = this.f33627o.p();
        ByteBuffer byteBufferH = this.f33628p.h();
        byteBufferAllocate.put(byteBufferP.array());
        byteBufferAllocate.put(byteBufferH.array());
        return byteBufferAllocate;
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.b
    public String toString() {
        return "ESDescriptor{esId=" + this.f33617e + ", streamDependenceFlag=" + this.f33618f + ", URLFlag=" + this.f33619g + ", oCRstreamFlag=" + this.f33620h + ", streamPriority=" + this.f33621i + ", URLLength=" + this.f33622j + ", URLString='" + this.f33623k + "', remoteODFlag=" + this.f33624l + ", dependsOnEsId=" + this.f33625m + ", oCREsId=" + this.f33626n + ", decoderConfigDescriptor=" + this.f33627o + ", slConfigDescriptor=" + this.f33628p + '}';
    }

    public int u() {
        int i10 = this.f33618f > 0 ? 7 : 5;
        if (this.f33619g > 0) {
            i10 += this.f33622j + 1;
        }
        if (this.f33620h > 0) {
            i10 += 2;
        }
        return i10 + this.f33627o.q() + this.f33628p.i();
    }

    public void v(e eVar) {
        this.f33627o = eVar;
    }

    public void w(int i10) {
        this.f33625m = i10;
    }

    public void x(int i10) {
        this.f33617e = i10;
    }

    public void y(int i10) {
        this.f33624l = i10;
    }

    public void z(n nVar) {
        this.f33628p = nVar;
    }
}

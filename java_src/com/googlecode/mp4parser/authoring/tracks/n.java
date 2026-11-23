package com.googlecode.mp4parser.authoring.tracks;

import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.coremedia.iso.boxes.s0;
import com.uc.crashsdk.export.LogType;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class n extends com.googlecode.mp4parser.authoring.a {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final int f33209m = 3;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final int f33210n = 1;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final int[] f33211o = {44100, 48000, LogType.UNEXP_KNOWN_REASON, 0};

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final int[] f33212p = {0, LogType.UNEXP_KNOWN_REASON, 40000, 48000, 56000, 64000, MediationConstant.ErrorCode.ADN_INIT_FAIL, 96000, 112000, 128000, 160000, 192000, 224000, 256000, 320000, 0};

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final int f33213q = 1152;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final int f33214r = 107;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final int f33215s = 5;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.googlecode.mp4parser.e f33216e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    com.googlecode.mp4parser.authoring.i f33217f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    s0 f33218g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    a f33219h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    long f33220i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    long f33221j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private List<com.googlecode.mp4parser.authoring.f> f33222k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long[] f33223l;

    class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f33224a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f33225b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f33226c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f33227d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f33228e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f33229f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        int f33230g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        int f33231h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        int f33232i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        int f33233j;

        a() {
        }

        int a() {
            return ((this.f33228e * 144) / this.f33230g) + this.f33231h;
        }
    }

    public n(com.googlecode.mp4parser.e eVar) throws IOException {
        this(eVar, "eng");
    }

    private a a(com.googlecode.mp4parser.e eVar) throws IOException {
        a aVar = new a();
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        while (byteBufferAllocate.position() < 4) {
            if (eVar.read(byteBufferAllocate) == -1) {
                return null;
            }
        }
        com.googlecode.mp4parser.boxes.mp4.objectdescriptors.c cVar = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.c((ByteBuffer) byteBufferAllocate.rewind());
        if (cVar.c(11) != 2047) {
            throw new IOException("Expected Start Word 0x7ff");
        }
        int iC = cVar.c(2);
        aVar.f33224a = iC;
        if (iC != 3) {
            throw new IOException("Expected MPEG Version 1 (ISO/IEC 11172-3)");
        }
        int iC2 = cVar.c(2);
        aVar.f33225b = iC2;
        if (iC2 != 1) {
            throw new IOException("Expected Layer III");
        }
        aVar.f33226c = cVar.c(1);
        int iC3 = cVar.c(4);
        aVar.f33227d = iC3;
        int i10 = f33212p[iC3];
        aVar.f33228e = i10;
        if (i10 == 0) {
            throw new IOException("Unexpected (free/bad) bit rate");
        }
        int iC4 = cVar.c(2);
        aVar.f33229f = iC4;
        int i11 = f33211o[iC4];
        aVar.f33230g = i11;
        if (i11 == 0) {
            throw new IOException("Unexpected (reserved) sample rate frequency");
        }
        aVar.f33231h = cVar.c(1);
        cVar.c(1);
        int iC5 = cVar.c(2);
        aVar.f33232i = iC5;
        aVar.f33233j = iC5 == 3 ? 1 : 2;
        return aVar;
    }

    private a b(com.googlecode.mp4parser.e eVar) throws IOException {
        a aVar = null;
        while (true) {
            long jPosition = eVar.position();
            a aVarA = a(eVar);
            if (aVarA == null) {
                return aVar;
            }
            if (aVar == null) {
                aVar = aVarA;
            }
            eVar.W(jPosition);
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(aVarA.a());
            eVar.read(byteBufferAllocate);
            byteBufferAllocate.rewind();
            this.f33222k.add(new com.googlecode.mp4parser.authoring.g(byteBufferAllocate));
        }
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public s0 F() {
        return this.f33218g;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public com.googlecode.mp4parser.authoring.i H() {
        return this.f33217f;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<com.googlecode.mp4parser.authoring.f> U() {
        return this.f33222k;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long[] Z() {
        return this.f33223l;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f33216e.close();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public String getHandler() {
        return "soun";
    }

    public String toString() {
        return "MP3TrackImpl";
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public n(com.googlecode.mp4parser.e eVar, String str) throws IOException {
        super(eVar.toString());
        this.f33217f = new com.googlecode.mp4parser.authoring.i();
        this.f33216e = eVar;
        this.f33222k = new LinkedList();
        a aVarB = b(eVar);
        this.f33219h = aVarB;
        double d10 = ((double) aVarB.f33230g) / 1152.0d;
        double size = ((double) this.f33222k.size()) / d10;
        LinkedList linkedList = new LinkedList();
        Iterator<com.googlecode.mp4parser.authoring.f> it2 = this.f33222k.iterator();
        long j10 = 0;
        while (true) {
            int iIntValue = 0;
            if (!it2.hasNext()) {
                this.f33221j = (int) ((j10 * 8) / size);
                this.f33218g = new s0();
                com.coremedia.iso.boxes.sampleentry.c cVar = new com.coremedia.iso.boxes.sampleentry.c(com.coremedia.iso.boxes.sampleentry.c.E);
                cVar.f0(this.f33219h.f33233j);
                cVar.l0(this.f33219h.f33230g);
                cVar.j(1);
                cVar.m0(16);
                com.googlecode.mp4parser.boxes.mp4.b bVar = new com.googlecode.mp4parser.boxes.mp4.b();
                com.googlecode.mp4parser.boxes.mp4.objectdescriptors.g gVar = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.g();
                gVar.x(0);
                com.googlecode.mp4parser.boxes.mp4.objectdescriptors.n nVar = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.n();
                nVar.j(2);
                gVar.z(nVar);
                com.googlecode.mp4parser.boxes.mp4.objectdescriptors.e eVar2 = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.e();
                eVar2.v(107);
                eVar2.w(5);
                eVar2.u(this.f33220i);
                eVar2.s(this.f33221j);
                gVar.v(eVar2);
                bVar.y(gVar.t());
                cVar.m(bVar);
                this.f33218g.m(cVar);
                this.f33217f.m(new Date());
                this.f33217f.s(new Date());
                this.f33217f.p(str);
                this.f33217f.v(1.0f);
                this.f33217f.t(this.f33219h.f33230g);
                long[] jArr = new long[this.f33222k.size()];
                this.f33223l = jArr;
                Arrays.fill(jArr, 1152L);
                return;
            }
            int size2 = (int) it2.next().getSize();
            j10 += (long) size2;
            linkedList.add(Integer.valueOf(size2));
            while (linkedList.size() > d10) {
                linkedList.pop();
            }
            if (linkedList.size() == ((int) d10)) {
                Iterator it3 = linkedList.iterator();
                while (it3.hasNext()) {
                    iIntValue += ((Integer) it3.next()).intValue();
                }
                double size3 = ((((double) iIntValue) * 8.0d) / ((double) linkedList.size())) * d10;
                if (size3 > this.f33220i) {
                    this.f33220i = (int) size3;
                }
            }
        }
    }
}

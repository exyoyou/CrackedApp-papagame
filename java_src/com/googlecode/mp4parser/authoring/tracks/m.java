package com.googlecode.mp4parser.authoring.tracks;

import com.coremedia.iso.boxes.a1;
import com.coremedia.iso.boxes.r0;
import com.coremedia.iso.boxes.s0;
import com.uc.crashsdk.export.LogType;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class m extends com.googlecode.mp4parser.authoring.a {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final long f33183m = 20;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.googlecode.mp4parser.e f33184e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    com.googlecode.mp4parser.authoring.i f33185f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    s0 f33186g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f33187h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f33188i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private List<b> f33189j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private List<com.googlecode.mp4parser.authoring.f> f33190k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long[] f33191l;

    class a implements com.googlecode.mp4parser.authoring.f {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final /* synthetic */ int f33193b;

        a(int i10) {
            this.f33193b = i10;
        }

        @Override // com.googlecode.mp4parser.authoring.f
        public ByteBuffer a() {
            try {
                return m.this.f33184e.r(this.f33193b, m.this.f33188i);
            } catch (IOException e10) {
                throw new RuntimeException(e10);
            }
        }

        @Override // com.googlecode.mp4parser.authoring.f
        public void b(WritableByteChannel writableByteChannel) throws IOException {
            m.this.f33184e.w(this.f33193b, m.this.f33188i, writableByteChannel);
        }

        @Override // com.googlecode.mp4parser.authoring.f
        public long getSize() {
            return m.this.f33188i;
        }
    }

    public static class b extends com.googlecode.mp4parser.boxes.e.a {

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f33194j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f33195k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public int f33196l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public int f33197m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public int f33198n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public int f33199o;

        @Override // com.googlecode.mp4parser.boxes.e.a
        public String toString() {
            return "BitStreamInfo{frameSize=" + this.f33194j + ", substreamid=" + this.f33195k + ", bitrate=" + this.f33196l + ", samplerate=" + this.f33197m + ", strmtyp=" + this.f33198n + ", chanmap=" + this.f33199o + '}';
        }
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
    public m(com.googlecode.mp4parser.e eVar) throws IOException {
        super(eVar.toString());
        this.f33185f = new com.googlecode.mp4parser.authoring.i();
        this.f33189j = new LinkedList();
        this.f33184e = eVar;
        boolean z10 = false;
        while (!z10) {
            b bVarE = e();
            if (bVarE == null) {
                throw new IOException();
            }
            for (b bVar : this.f33189j) {
                if (bVarE.f33198n != 1 && bVar.f33195k == bVarE.f33195k) {
                    z10 = true;
                }
            }
            if (!z10) {
                this.f33189j.add(bVarE);
            }
        }
        if (this.f33189j.size() == 0) {
            throw new IOException();
        }
        int i10 = this.f33189j.get(0).f33197m;
        this.f33186g = new s0();
        com.coremedia.iso.boxes.sampleentry.c cVar = new com.coremedia.iso.boxes.sampleentry.c(com.coremedia.iso.boxes.sampleentry.c.J);
        cVar.f0(2);
        long j10 = i10;
        cVar.l0(j10);
        cVar.j(1);
        cVar.m0(16);
        com.googlecode.mp4parser.boxes.e eVar2 = new com.googlecode.mp4parser.boxes.e();
        int[] iArr = new int[this.f33189j.size()];
        int[] iArr2 = new int[this.f33189j.size()];
        for (b bVar2 : this.f33189j) {
            if (bVar2.f33198n == 1) {
                int i11 = bVar2.f33195k;
                iArr[i11] = iArr[i11] + 1;
                int i12 = bVar2.f33199o;
                iArr2[i11] = ((i12 >> 5) & 255) | ((i12 >> 6) & 256);
            }
        }
        for (b bVar3 : this.f33189j) {
            if (bVar3.f33198n != 1) {
                com.googlecode.mp4parser.boxes.e.a aVar = new com.googlecode.mp4parser.boxes.e.a();
                aVar.f33498a = bVar3.f33498a;
                aVar.f33499b = bVar3.f33499b;
                aVar.f33500c = bVar3.f33500c;
                aVar.f33501d = bVar3.f33501d;
                aVar.f33502e = bVar3.f33502e;
                aVar.f33503f = 0;
                int i13 = bVar3.f33195k;
                aVar.f33504g = iArr[i13];
                aVar.f33505h = iArr2[i13];
                aVar.f33506i = 0;
                eVar2.s(aVar);
            }
            this.f33187h += bVar3.f33196l;
            this.f33188i += bVar3.f33194j;
        }
        eVar2.x(this.f33187h / 1000);
        cVar.m(eVar2);
        this.f33186g.m(cVar);
        this.f33185f.m(new Date());
        this.f33185f.s(new Date());
        this.f33185f.t(j10);
        this.f33185f.v(1.0f);
        eVar.W(0L);
        List<com.googlecode.mp4parser.authoring.f> listD = d();
        this.f33190k = listD;
        long[] jArr = new long[listD.size()];
        this.f33191l = jArr;
        Arrays.fill(jArr, 1536L);
    }

    private List<com.googlecode.mp4parser.authoring.f> d() throws IOException {
        int iA = com.googlecode.mp4parser.util.c.a((this.f33184e.size() - this.f33184e.position()) / ((long) this.f33188i));
        ArrayList arrayList = new ArrayList(iA);
        for (int i10 = 0; i10 < iA; i10++) {
            arrayList.add(new a(this.f33188i * i10));
        }
        return arrayList;
    }

    private b e() throws IOException {
        int iC;
        int iC2;
        int i10;
        long jPosition = this.f33184e.position();
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(200);
        this.f33184e.read(byteBufferAllocate);
        byteBufferAllocate.rewind();
        com.googlecode.mp4parser.boxes.mp4.objectdescriptors.c cVar = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.c(byteBufferAllocate);
        if (cVar.c(16) != 2935) {
            return null;
        }
        b bVar = new b();
        bVar.f33198n = cVar.c(2);
        bVar.f33195k = cVar.c(3);
        bVar.f33194j = (cVar.c(11) + 1) * 2;
        int iC3 = cVar.c(2);
        bVar.f33498a = iC3;
        if (iC3 == 3) {
            iC2 = cVar.c(2);
            iC = 3;
        } else {
            iC = cVar.c(2);
            iC2 = -1;
        }
        if (iC == 0) {
            i10 = 1;
        } else if (iC == 1) {
            i10 = 2;
        } else if (iC != 2) {
            i10 = iC != 3 ? 0 : 6;
        } else {
            i10 = 3;
        }
        bVar.f33194j *= 6 / i10;
        bVar.f33501d = cVar.c(3);
        bVar.f33502e = cVar.c(1);
        bVar.f33499b = cVar.c(5);
        cVar.c(5);
        if (1 == cVar.c(1)) {
            cVar.c(8);
        }
        if (bVar.f33501d == 0) {
            cVar.c(5);
            if (1 == cVar.c(1)) {
                cVar.c(8);
            }
        }
        if (1 == bVar.f33198n && 1 == cVar.c(1)) {
            bVar.f33199o = cVar.c(16);
        }
        if (1 == cVar.c(1)) {
            if (bVar.f33501d > 2) {
                cVar.c(2);
            }
            int i11 = bVar.f33501d;
            if (1 == (i11 & 1) && i11 > 2) {
                cVar.c(3);
                cVar.c(3);
            }
            if ((bVar.f33501d & 4) > 0) {
                cVar.c(3);
                cVar.c(3);
            }
            if (1 == bVar.f33502e && 1 == cVar.c(1)) {
                cVar.c(5);
            }
            if (bVar.f33198n == 0) {
                if (1 == cVar.c(1)) {
                    cVar.c(6);
                }
                if (bVar.f33501d == 0 && 1 == cVar.c(1)) {
                    cVar.c(6);
                }
                if (1 == cVar.c(1)) {
                    cVar.c(6);
                }
                int iC4 = cVar.c(2);
                if (1 == iC4) {
                    cVar.c(5);
                } else if (2 == iC4) {
                    cVar.c(12);
                } else if (3 == iC4) {
                    int iC5 = cVar.c(5);
                    if (1 == cVar.c(1)) {
                        cVar.c(5);
                        if (1 == cVar.c(1)) {
                            cVar.c(4);
                        }
                        if (1 == cVar.c(1)) {
                            cVar.c(4);
                        }
                        if (1 == cVar.c(1)) {
                            cVar.c(4);
                        }
                        if (1 == cVar.c(1)) {
                            cVar.c(4);
                        }
                        if (1 == cVar.c(1)) {
                            cVar.c(4);
                        }
                        if (1 == cVar.c(1)) {
                            cVar.c(4);
                        }
                        if (1 == cVar.c(1)) {
                            cVar.c(4);
                        }
                        if (1 == cVar.c(1)) {
                            if (1 == cVar.c(1)) {
                                cVar.c(4);
                            }
                            if (1 == cVar.c(1)) {
                                cVar.c(4);
                            }
                        }
                    }
                    if (1 == cVar.c(1)) {
                        cVar.c(5);
                        if (1 == cVar.c(1)) {
                            cVar.c(7);
                            if (1 == cVar.c(1)) {
                                cVar.c(8);
                            }
                        }
                    }
                    for (int i12 = 0; i12 < iC5 + 2; i12++) {
                        cVar.c(8);
                    }
                    cVar.a();
                }
                if (bVar.f33501d < 2) {
                    if (1 == cVar.c(1)) {
                        cVar.c(14);
                    }
                    if (bVar.f33501d == 0 && 1 == cVar.c(1)) {
                        cVar.c(14);
                    }
                    if (1 == cVar.c(1)) {
                        if (iC == 0) {
                            cVar.c(5);
                        } else {
                            for (int i13 = 0; i13 < i10; i13++) {
                                if (1 == cVar.c(1)) {
                                    cVar.c(5);
                                }
                            }
                        }
                    }
                }
            }
        }
        if (1 == cVar.c(1)) {
            bVar.f33500c = cVar.c(3);
        }
        int i14 = bVar.f33498a;
        if (i14 == 0) {
            bVar.f33197m = 48000;
        } else if (i14 == 1) {
            bVar.f33197m = 44100;
        } else if (i14 == 2) {
            bVar.f33197m = LogType.UNEXP_KNOWN_REASON;
        } else if (i14 == 3) {
            if (iC2 == 0) {
                bVar.f33197m = 24000;
            } else if (iC2 == 1) {
                bVar.f33197m = 22050;
            } else if (iC2 == 2) {
                bVar.f33197m = 16000;
            } else if (iC2 == 3) {
                bVar.f33197m = 0;
            }
        }
        int i15 = bVar.f33197m;
        if (i15 == 0) {
            return null;
        }
        int i16 = bVar.f33194j;
        bVar.f33196l = (int) ((((double) i15) / 1536.0d) * ((double) i16) * 8.0d);
        this.f33184e.W(jPosition + ((long) i16));
        return bVar;
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public List<com.coremedia.iso.boxes.i.a> E() {
        return null;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public s0 F() {
        return this.f33186g;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public com.googlecode.mp4parser.authoring.i H() {
        return this.f33185f;
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public long[] N() {
        return null;
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public a1 S() {
        return null;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<com.googlecode.mp4parser.authoring.f> U() {
        return this.f33190k;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long[] Z() {
        return this.f33191l;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f33184e.close();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public String getHandler() {
        return "soun";
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public List<r0.a> h0() {
        return null;
    }

    public String toString() {
        return "EC3TrackImpl{bitrate=" + this.f33187h + ", bitStreamInfos=" + this.f33189j + '}';
    }
}

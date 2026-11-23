package com.googlecode.mp4parser.authoring.tracks;

import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
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
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class a extends com.googlecode.mp4parser.authoring.a {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    static Map<Integer, String> f33034o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static Map<Integer, Integer> f33035p;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    com.googlecode.mp4parser.authoring.i f33036e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    s0 f33037f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    long[] f33038g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    b f33039h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    int f33040i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    long f33041j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    long f33042k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private com.googlecode.mp4parser.e f33043l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private List<com.googlecode.mp4parser.authoring.f> f33044m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private String f33045n;

    /* JADX INFO: renamed from: com.googlecode.mp4parser.authoring.tracks.a$a, reason: collision with other inner class name */
    class C0614a implements com.googlecode.mp4parser.authoring.f {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final /* synthetic */ long f33047b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final /* synthetic */ long f33048c;

        C0614a(long j10, long j11) {
            this.f33047b = j10;
            this.f33048c = j11;
        }

        @Override // com.googlecode.mp4parser.authoring.f
        public ByteBuffer a() {
            try {
                return a.this.f33043l.r(this.f33047b, this.f33048c);
            } catch (IOException e10) {
                throw new RuntimeException(e10);
            }
        }

        @Override // com.googlecode.mp4parser.authoring.f
        public void b(WritableByteChannel writableByteChannel) throws IOException {
            a.this.f33043l.w(this.f33047b, this.f33048c, writableByteChannel);
        }

        @Override // com.googlecode.mp4parser.authoring.f
        public long getSize() {
            return this.f33048c;
        }
    }

    class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f33049a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f33050b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f33051c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f33052d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f33053e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f33054f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        int f33055g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        int f33056h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        int f33057i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        int f33058j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        int f33059k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        int f33060l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        int f33061m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        int f33062n;

        b() {
        }

        int a() {
            return (this.f33052d == 0 ? 2 : 0) + 7;
        }
    }

    static {
        HashMap map = new HashMap();
        f33034o = map;
        map.put(1, "AAC Main");
        f33034o.put(2, "AAC LC (Low Complexity)");
        f33034o.put(3, "AAC SSR (Scalable Sample Rate)");
        f33034o.put(4, "AAC LTP (Long Term Prediction)");
        f33034o.put(5, "SBR (Spectral Band Replication)");
        f33034o.put(6, "AAC Scalable");
        f33034o.put(7, "TwinVQ");
        f33034o.put(8, "CELP (Code Excited Linear Prediction)");
        f33034o.put(9, "HXVC (Harmonic Vector eXcitation Coding)");
        f33034o.put(10, "Reserved");
        f33034o.put(11, "Reserved");
        f33034o.put(12, "TTSI (Text-To-Speech Interface)");
        f33034o.put(13, "Main Synthesis");
        f33034o.put(14, "Wavetable Synthesis");
        f33034o.put(15, "General MIDI");
        f33034o.put(16, "Algorithmic Synthesis and Audio Effects");
        f33034o.put(17, "ER (Error Resilient) AAC LC");
        f33034o.put(18, "Reserved");
        f33034o.put(19, "ER AAC LTP");
        f33034o.put(20, "ER AAC Scalable");
        f33034o.put(21, "ER TwinVQ");
        f33034o.put(22, "ER BSAC (Bit-Sliced Arithmetic Coding)");
        f33034o.put(23, "ER AAC LD (Low Delay)");
        f33034o.put(24, "ER CELP");
        f33034o.put(25, "ER HVXC");
        f33034o.put(26, "ER HILN (Harmonic and Individual Lines plus Noise)");
        f33034o.put(27, "ER Parametric");
        f33034o.put(28, "SSC (SinuSoidal Coding)");
        f33034o.put(29, "PS (Parametric Stereo)");
        f33034o.put(30, "MPEG Surround");
        f33034o.put(31, "(Escape value)");
        f33034o.put(32, "Layer-1");
        f33034o.put(33, "Layer-2");
        f33034o.put(34, "Layer-3");
        f33034o.put(35, "DST (Direct Stream Transfer)");
        f33034o.put(36, "ALS (Audio Lossless)");
        f33034o.put(37, "SLS (Scalable LosslesS)");
        f33034o.put(38, "SLS non-core");
        f33034o.put(39, "ER AAC ELD (Enhanced Low Delay)");
        f33034o.put(40, "SMR (Symbolic Music Representation) Simple");
        f33034o.put(41, "SMR Main");
        f33034o.put(42, "USAC (Unified Speech and Audio Coding) (no SBR)");
        f33034o.put(43, "SAOC (Spatial Audio Object Coding)");
        f33034o.put(44, "LD MPEG Surround");
        f33034o.put(45, "USAC");
        HashMap map2 = new HashMap();
        f33035p = map2;
        map2.put(96000, 0);
        f33035p.put(88200, 1);
        f33035p.put(64000, 2);
        f33035p.put(48000, 3);
        f33035p.put(44100, 4);
        f33035p.put(Integer.valueOf(LogType.UNEXP_KNOWN_REASON), 5);
        f33035p.put(24000, 6);
        f33035p.put(22050, 7);
        f33035p.put(16000, 8);
        f33035p.put(12000, 9);
        f33035p.put(11025, 10);
        f33035p.put(Integer.valueOf(AVMDLDataLoader.KeyIsLiveSetLoaderType), 11);
        f33035p.put(0, 96000);
        f33035p.put(1, 88200);
        f33035p.put(2, 64000);
        f33035p.put(3, 48000);
        f33035p.put(4, 44100);
        f33035p.put(5, Integer.valueOf(LogType.UNEXP_KNOWN_REASON));
        f33035p.put(6, 24000);
        f33035p.put(7, 22050);
        f33035p.put(8, 16000);
        f33035p.put(9, 12000);
        f33035p.put(10, 11025);
        f33035p.put(11, Integer.valueOf(AVMDLDataLoader.KeyIsLiveSetLoaderType));
    }

    public a(com.googlecode.mp4parser.e eVar) throws IOException {
        this(eVar, "eng");
    }

    private b b(com.googlecode.mp4parser.e eVar) throws IOException {
        b bVar = new b();
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(7);
        while (byteBufferAllocate.position() < 7) {
            if (eVar.read(byteBufferAllocate) == -1) {
                return null;
            }
        }
        com.googlecode.mp4parser.boxes.mp4.objectdescriptors.c cVar = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.c((ByteBuffer) byteBufferAllocate.rewind());
        if (cVar.c(12) != 4095) {
            throw new IOException("Expected Start Word 0xfff");
        }
        bVar.f33050b = cVar.c(1);
        bVar.f33051c = cVar.c(2);
        bVar.f33052d = cVar.c(1);
        bVar.f33053e = cVar.c(2) + 1;
        int iC = cVar.c(4);
        bVar.f33049a = iC;
        bVar.f33054f = f33035p.get(Integer.valueOf(iC)).intValue();
        cVar.c(1);
        bVar.f33055g = cVar.c(3);
        bVar.f33056h = cVar.c(1);
        bVar.f33057i = cVar.c(1);
        bVar.f33058j = cVar.c(1);
        bVar.f33059k = cVar.c(1);
        bVar.f33060l = cVar.c(13);
        bVar.f33061m = cVar.c(11);
        int iC2 = cVar.c(2) + 1;
        bVar.f33062n = iC2;
        if (iC2 != 1) {
            throw new IOException("This muxer can only work with 1 AAC frame per ADTS frame");
        }
        if (bVar.f33052d == 0) {
            eVar.read(ByteBuffer.allocate(2));
        }
        return bVar;
    }

    private b c(com.googlecode.mp4parser.e eVar) throws IOException {
        b bVar = null;
        while (true) {
            b bVarB = b(eVar);
            if (bVarB == null) {
                return bVar;
            }
            if (bVar == null) {
                bVar = bVarB;
            }
            this.f33044m.add(new C0614a(eVar.position(), bVarB.f33060l - bVarB.a()));
            eVar.W((eVar.position() + ((long) bVarB.f33060l)) - ((long) bVarB.a()));
        }
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public List<com.coremedia.iso.boxes.i.a> E() {
        return null;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public s0 F() {
        return this.f33037f;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public com.googlecode.mp4parser.authoring.i H() {
        return this.f33036e;
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
        return this.f33044m;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long[] Z() {
        return this.f33038g;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f33043l.close();
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
        return "AACTrackImpl{sampleRate=" + this.f33039h.f33054f + ", channelconfig=" + this.f33039h.f33055g + '}';
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
    public a(com.googlecode.mp4parser.e eVar, String str) throws IOException {
        super(eVar.toString());
        this.f33036e = new com.googlecode.mp4parser.authoring.i();
        this.f33045n = str;
        this.f33043l = eVar;
        this.f33044m = new ArrayList();
        b bVarC = c(eVar);
        this.f33039h = bVarC;
        double d10 = ((double) bVarC.f33054f) / 1024.0d;
        double size = ((double) this.f33044m.size()) / d10;
        LinkedList linkedList = new LinkedList();
        Iterator<com.googlecode.mp4parser.authoring.f> it2 = this.f33044m.iterator();
        long j10 = 0;
        while (true) {
            int iIntValue = 0;
            if (!it2.hasNext()) {
                break;
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
                if (size3 > this.f33041j) {
                    this.f33041j = (int) size3;
                }
            }
        }
        this.f33042k = (int) ((j10 * 8) / size);
        this.f33040i = 1536;
        this.f33037f = new s0();
        com.coremedia.iso.boxes.sampleentry.c cVar = new com.coremedia.iso.boxes.sampleentry.c(com.coremedia.iso.boxes.sampleentry.c.E);
        int i10 = this.f33039h.f33055g;
        if (i10 == 7) {
            cVar.f0(8);
        } else {
            cVar.f0(i10);
        }
        cVar.l0(this.f33039h.f33054f);
        cVar.j(1);
        cVar.m0(16);
        com.googlecode.mp4parser.boxes.mp4.b bVar = new com.googlecode.mp4parser.boxes.mp4.b();
        com.googlecode.mp4parser.boxes.mp4.objectdescriptors.g gVar = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.g();
        gVar.x(0);
        com.googlecode.mp4parser.boxes.mp4.objectdescriptors.n nVar = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.n();
        nVar.j(2);
        gVar.z(nVar);
        com.googlecode.mp4parser.boxes.mp4.objectdescriptors.e eVar2 = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.e();
        eVar2.v(64);
        eVar2.w(5);
        eVar2.t(this.f33040i);
        eVar2.u(this.f33041j);
        eVar2.s(this.f33042k);
        com.googlecode.mp4parser.boxes.mp4.objectdescriptors.a aVar = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.a();
        aVar.v(2);
        aVar.y(this.f33039h.f33049a);
        aVar.w(this.f33039h.f33055g);
        eVar2.r(aVar);
        gVar.v(eVar2);
        ByteBuffer byteBufferT = gVar.t();
        bVar.B(gVar);
        bVar.y(byteBufferT);
        cVar.m(bVar);
        this.f33037f.m(cVar);
        this.f33036e.m(new Date());
        this.f33036e.s(new Date());
        this.f33036e.p(str);
        this.f33036e.v(1.0f);
        this.f33036e.t(this.f33039h.f33054f);
        long[] jArr = new long[this.f33044m.size()];
        this.f33038g = jArr;
        Arrays.fill(jArr, 1024L);
    }
}

package com.googlecode.mp4parser.authoring.tracks;

import com.android.dx.io.Opcodes;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.coremedia.iso.boxes.r0;
import com.coremedia.iso.boxes.s0;
import com.haima.hmcp.proto.GSSDK;
import com.uc.crashsdk.export.LogType;
import java.io.EOFException;
import java.io.IOException;
import java.io.PrintStream;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import kotlin.UShort;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: loaded from: classes5.dex */
public class k extends com.googlecode.mp4parser.authoring.a {
    private static final int Q = 67108864;
    int A;
    int B;
    int C;
    int D;
    int E;
    int F;
    int G;
    int H;
    int I;
    int J;
    int K;
    int L;
    int M;
    int N;
    String O;
    private String P;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    com.googlecode.mp4parser.authoring.i f33149e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    s0 f33150f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f33151g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int f33152h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    int f33153i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    int f33154j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    int f33155k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    int f33156l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long[] f33157m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f33158n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    com.googlecode.mp4parser.boxes.d f33159o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private com.googlecode.mp4parser.e f33160p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private List<com.googlecode.mp4parser.authoring.f> f33161q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    boolean f33162r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    boolean f33163s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    boolean f33164t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    int f33165u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    int f33166v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    int f33167w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    int f33168x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    int f33169y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    int f33170z;

    class a implements com.googlecode.mp4parser.authoring.f {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final /* synthetic */ ByteBuffer f33172b;

        a(ByteBuffer byteBuffer) {
            this.f33172b = byteBuffer;
        }

        @Override // com.googlecode.mp4parser.authoring.f
        public ByteBuffer a() {
            return this.f33172b;
        }

        @Override // com.googlecode.mp4parser.authoring.f
        public void b(WritableByteChannel writableByteChannel) throws IOException {
            writableByteChannel.write((ByteBuffer) this.f33172b.rewind());
        }

        @Override // com.googlecode.mp4parser.authoring.f
        public long getSize() {
            return this.f33172b.rewind().remaining();
        }
    }

    class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f33173a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        long f33174b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f33175c = 0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        com.googlecode.mp4parser.e f33176d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        long f33177e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        ByteBuffer f33178f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        long f33179g;

        b(com.googlecode.mp4parser.e eVar, long j10, long j11, int i10) throws IOException {
            this.f33176d = eVar;
            this.f33174b = j10;
            this.f33177e = j11 + j10;
            this.f33173a = i10;
            d();
        }

        private void a() {
            this.f33175c++;
        }

        private void b() {
            long j10 = this.f33174b;
            int i10 = this.f33175c;
            this.f33179g = j10 + ((long) i10);
            this.f33175c = i10 + 4;
        }

        private void c() {
            this.f33175c += 4;
        }

        private void d() throws IOException {
            System.err.println("Fill Buffer");
            com.googlecode.mp4parser.e eVar = this.f33176d;
            long j10 = this.f33174b;
            this.f33178f = eVar.r(j10, Math.min(this.f33177e - j10, 67108864L));
        }

        private ByteBuffer f() {
            long j10 = this.f33179g;
            long j11 = this.f33174b;
            if (j10 < j11) {
                throw new RuntimeException("damn! NAL exceeds buffer");
            }
            this.f33178f.position((int) (j10 - j11));
            ByteBuffer byteBufferSlice = this.f33178f.slice();
            byteBufferSlice.limit((int) (((long) this.f33175c) - (this.f33179g - this.f33174b)));
            return byteBufferSlice;
        }

        private boolean g(byte b10, byte b11, byte b12, byte b13) throws IOException {
            int iLimit = this.f33178f.limit();
            int i10 = this.f33175c;
            if (iLimit - i10 >= 4) {
                return this.f33178f.get(i10) == b10 && this.f33178f.get(this.f33175c + 1) == b11 && this.f33178f.get(this.f33175c + 2) == b12 && this.f33178f.get(this.f33175c + 3) == b13;
            }
            if (this.f33174b + ((long) i10) + 4 < this.f33176d.size()) {
                return false;
            }
            throw new EOFException();
        }

        private boolean h() throws IOException {
            return g((byte) 100, com.sigmob.sdk.archives.tar.e.S, (byte) 32, (byte) 37);
        }

        private boolean i() throws IOException {
            return l((byte) 100, com.sigmob.sdk.archives.tar.e.S, (byte) 32, (byte) 37);
        }

        private boolean j() throws IOException {
            return g(ByteCompanionObject.MAX_VALUE, (byte) -2, (byte) -128, (byte) 1);
        }

        private boolean k() throws IOException {
            return l(ByteCompanionObject.MAX_VALUE, (byte) -2, (byte) -128, (byte) 1);
        }

        private boolean l(byte b10, byte b11, byte b12, byte b13) throws IOException {
            int iLimit = this.f33178f.limit();
            int i10 = this.f33175c;
            if (iLimit - i10 >= 4) {
                if ((this.f33174b + ((long) i10)) % 1048576 == 0) {
                    PrintStream printStream = System.err;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(((this.f33174b + ((long) this.f33175c)) / 1024) / 1024);
                    printStream.println(sb2.toString());
                }
                return this.f33178f.get(this.f33175c) == b10 && this.f33178f.get(this.f33175c + 1) == b11 && this.f33178f.get(this.f33175c + 2) == b12 && this.f33178f.get(this.f33175c + 3) == b13;
            }
            long j10 = this.f33174b;
            long j11 = ((long) i10) + j10 + 4;
            long j12 = this.f33177e;
            if (j11 > j12) {
                return j10 + ((long) i10) == j12;
            }
            this.f33174b = this.f33179g;
            this.f33175c = 0;
            d();
            return j();
        }

        public ByteBuffer e() throws IOException {
            while (true) {
                try {
                    if (this.f33173a == 1) {
                        if (j()) {
                            break;
                        }
                        a();
                    } else {
                        if (h()) {
                            break;
                        }
                        a();
                    }
                } catch (EOFException unused) {
                    return null;
                }
            }
            b();
            while (true) {
                if (this.f33173a == 1) {
                    if (k()) {
                        break;
                    }
                    c();
                } else {
                    if (i()) {
                        break;
                    }
                    c();
                }
            }
            return f();
        }
    }

    public k(com.googlecode.mp4parser.e eVar, String str) throws IOException {
        super(eVar.toString());
        this.f33149e = new com.googlecode.mp4parser.authoring.i();
        this.f33153i = 0;
        this.f33158n = 0;
        this.f33159o = new com.googlecode.mp4parser.boxes.d();
        this.f33162r = false;
        this.f33163s = false;
        this.f33164t = false;
        this.f33165u = 0;
        this.f33166v = 0;
        this.f33167w = 0;
        this.f33168x = 0;
        this.f33169y = 0;
        this.f33170z = 0;
        this.A = 0;
        this.B = 0;
        this.C = 0;
        this.D = 0;
        this.E = 0;
        this.F = 0;
        this.G = 0;
        this.H = 0;
        this.I = 0;
        this.J = 0;
        this.K = 0;
        this.L = 0;
        this.M = 0;
        this.N = 0;
        this.O = "none";
        this.P = str;
        this.f33160p = eVar;
        d();
    }

    private List<com.googlecode.mp4parser.authoring.f> a(com.googlecode.mp4parser.e eVar, int i10, long j10, int i11) throws IOException {
        b bVar = new b(eVar, i10, j10, i11);
        ArrayList arrayList = new ArrayList();
        while (true) {
            ByteBuffer byteBufferE = bVar.e();
            if (byteBufferE == null) {
                System.err.println("all samples found");
                return arrayList;
            }
            arrayList.add(new a(byteBufferE));
        }
    }

    private int b(int i10) throws IOException {
        switch (i10) {
            case 0:
                return 32;
            case 1:
                return 56;
            case 2:
                return 64;
            case 3:
                return 96;
            case 4:
                return 112;
            case 5:
                return 128;
            case 6:
                return 192;
            case 7:
                return Opcodes.SHL_INT_LIT8;
            case 8:
                return 256;
            case 9:
                return 320;
            case 10:
                return 384;
            case 11:
                return com.xinzhu.overmind.utils.l.f90098b;
            case 12:
                return 512;
            case 13:
                return 576;
            case 14:
                return MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FRAME_DTS_CHECK;
            case 15:
                return 768;
            case 16:
                return 960;
            case 17:
                return 1024;
            case 18:
                return GSSDK.OneInputOPData.InputOP.OP_TOUCH_MOVE_VALUE;
            case 19:
                return LogType.UNEXP_ANR;
            case 20:
                return 1344;
            case 21:
                return 1408;
            case 22:
                return 1411;
            case 23:
                return 1472;
            case 24:
                return 1536;
            case 25:
                return -1;
            default:
                throw new IOException("Unknown bitrate value");
        }
    }

    private int c(int i10) throws IOException {
        switch (i10) {
            case 1:
                return AVMDLDataLoader.KeyIsLiveSetLoaderType;
            case 2:
                return 16000;
            case 3:
                return LogType.UNEXP_KNOWN_REASON;
            case 4:
            case 5:
            case 9:
            case 10:
            default:
                throw new IOException("Unknown Sample Rate");
            case 6:
                return 11025;
            case 7:
                return 22050;
            case 8:
                return 44100;
            case 11:
                return 12000;
            case 12:
                return 24000;
            case 13:
                return 48000;
        }
    }

    private void d() throws IOException {
        if (!j()) {
            throw new IOException();
        }
        this.f33150f = new s0();
        com.coremedia.iso.boxes.sampleentry.c cVar = new com.coremedia.iso.boxes.sampleentry.c(this.O);
        cVar.f0(this.f33156l);
        cVar.l0(this.f33151g);
        cVar.j(1);
        cVar.m0(16);
        cVar.m(this.f33159o);
        this.f33150f.m(cVar);
        this.f33149e.m(new Date());
        this.f33149e.s(new Date());
        this.f33149e.p(this.P);
        this.f33149e.t(this.f33151g);
    }

    private boolean e(int i10, ByteBuffer byteBuffer) {
        int i11;
        byteBuffer.get();
        short s10 = byteBuffer.getShort();
        this.D = (byteBuffer.get() << 16) | (byteBuffer.getShort() & UShort.MAX_VALUE);
        this.F = byteBuffer.getInt();
        this.G = byteBuffer.getShort();
        this.H = (byteBuffer.get() << 32) | (byteBuffer.getInt() & 65535);
        this.I = byteBuffer.getShort();
        this.J = byteBuffer.getShort();
        if ((s10 & 3) == 3) {
            this.K = (byteBuffer.get() << 16) | (byteBuffer.getShort() & UShort.MAX_VALUE);
            this.L = byteBuffer.getShort();
            this.M = byteBuffer.getShort();
            i11 = 28;
        } else {
            i11 = 21;
        }
        if ((s10 & 4) > 0) {
            this.N = byteBuffer.get();
            i11++;
        }
        if ((s10 & 8) > 0) {
            this.E = 1;
        }
        while (i11 < i10) {
            byteBuffer.get();
            i11++;
        }
        return true;
    }

    private boolean f(int i10, ByteBuffer byteBuffer) {
        this.f33166v = (byteBuffer.get() << 16) | (byteBuffer.getShort() & UShort.MAX_VALUE);
        this.f33167w = byteBuffer.getShort();
        this.f33168x = byteBuffer.getShort();
        this.f33169y = byteBuffer.getInt();
        for (int i11 = 11; i11 < i10; i11++) {
            byteBuffer.get();
        }
        return true;
    }

    private void g(int i10, ByteBuffer byteBuffer) {
        byteBuffer.getInt();
        byteBuffer.get();
        byteBuffer.getInt();
        byteBuffer.get();
        short s10 = byteBuffer.getShort();
        byteBuffer.get();
        byte b10 = byteBuffer.get();
        this.f33165u = b10;
        if ((s10 & 1) == 1) {
            this.f33162r = true;
        }
        if ((s10 & 8) == 8) {
            this.f33163s = true;
        }
        if ((s10 & 16) == 16) {
            this.f33164t = true;
            this.f33165u = b10 + 1;
        } else {
            this.f33165u = 0;
        }
        for (int i11 = 14; i11 < i10; i11++) {
            byteBuffer.get();
        }
    }

    private boolean h(int i10, ByteBuffer byteBuffer) {
        int i11;
        this.f33170z = (byteBuffer.get() << 16) | (byteBuffer.getShort() & UShort.MAX_VALUE);
        if (this.f33162r) {
            this.A = (byteBuffer.get() << 16) | (byteBuffer.getShort() & UShort.MAX_VALUE);
            this.B = byteBuffer.getShort();
            i11 = 8;
        } else {
            this.C = byteBuffer.getInt();
            i11 = 7;
        }
        while (i11 < i10) {
            byteBuffer.get();
            i11++;
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:56:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:68:0x00ca  */
    private boolean j() throws IOException {
        int i10;
        int i11;
        boolean z10;
        boolean z11;
        int i12;
        boolean z12;
        ByteBuffer byteBufferR = this.f33160p.r(0L, 25000L);
        int i13 = byteBufferR.getInt();
        int i14 = byteBufferR.getInt();
        if (i13 != 1146377032 || i14 != 1145586770) {
            throw new IOException("data does not start with 'DTSHDHDR' as required for a DTS-HD file");
        }
        while (true) {
            if ((i13 == 1398035021 && i14 == 1145132097) || byteBufferR.remaining() <= 100) {
                break;
            }
            int i15 = (int) byteBufferR.getLong();
            if (i13 == 1146377032 && i14 == 1145586770) {
                g(i15, byteBufferR);
            } else if (i13 == 1129271877 && i14 == 1397968196) {
                if (!f(i15, byteBufferR)) {
                    return false;
                }
            } else {
                if (i13 == 1096110162 && i14 == 759710802) {
                    if (!e(i15, byteBufferR)) {
                        return false;
                    }
                } else if (i13 == 1163416659 && i14 == 1398754628) {
                    if (!h(i15, byteBufferR)) {
                        return false;
                    }
                } else {
                    for (int i16 = 0; i16 < i15; i16++) {
                        byteBufferR.get();
                    }
                }
            }
            i13 = byteBufferR.getInt();
            i14 = byteBufferR.getInt();
        }
        long j10 = byteBufferR.getLong();
        this.f33158n = byteBufferR.position();
        int i17 = -1;
        boolean z13 = false;
        int i18 = -1;
        int i19 = -1;
        byte b10 = -1;
        boolean z14 = false;
        boolean z15 = false;
        int i20 = 0;
        boolean z16 = false;
        boolean z17 = false;
        boolean z18 = false;
        int iC = 0;
        boolean z19 = false;
        boolean z20 = false;
        while (!z13) {
            boolean z21 = z19;
            boolean z22 = z20;
            int iPosition = byteBufferR.position();
            int i21 = byteBufferR.getInt();
            boolean z23 = z13;
            if (i21 != 2147385345) {
                long j11 = j10;
                int i22 = 20;
                if (i21 != 1683496997) {
                    throw new IOException("No DTS_SYNCWORD_* found at " + byteBufferR.position());
                }
                if (i18 == -1) {
                    this.f33155k = this.G;
                    i18 = 0;
                }
                com.googlecode.mp4parser.boxes.mp4.objectdescriptors.c cVar = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.c(byteBufferR);
                int i23 = 8;
                cVar.c(8);
                cVar.c(2);
                b10 = 1;
                if (cVar.c(1) == 0) {
                    i22 = 16;
                } else {
                    i23 = 12;
                }
                int iC2 = cVar.c(i23) + 1;
                int iC3 = cVar.c(i22) + 1;
                byteBufferR.position(iPosition + iC2);
                int i24 = byteBufferR.getInt();
                if (i24 == 1515870810) {
                    if (z15) {
                        z23 = true;
                    }
                    z19 = z21;
                    z12 = z22;
                    z15 = true;
                } else if (i24 == 1191201283) {
                    if (z18) {
                        z23 = true;
                    }
                    z19 = z21;
                    z12 = z22;
                    z18 = true;
                } else if (i24 == 496366178) {
                    if (z21) {
                        z23 = true;
                    }
                    z12 = z22;
                    z19 = true;
                } else if (i24 == 1700671838) {
                    if (z22) {
                        z23 = true;
                    }
                    z19 = z21;
                    z12 = true;
                } else {
                    z12 = z22;
                    if (i24 == 176167201) {
                        if (z16) {
                            z23 = true;
                        }
                        z19 = z21;
                        z16 = true;
                    } else if (i24 == 1101174087) {
                        if (z14) {
                            z23 = true;
                        }
                        z19 = z21;
                        z14 = true;
                    } else if (i24 == 45126241) {
                        if (z17) {
                            z23 = true;
                        }
                        z19 = z21;
                        z17 = true;
                    } else {
                        z19 = z21;
                    }
                }
                if (!z23) {
                    this.f33153i += iC3;
                }
                byteBufferR.position(iPosition + iC3);
                z20 = z12;
                z13 = z23;
                j10 = j11;
                i17 = -1;
            } else if (i18 == 1) {
                z19 = z21;
                z20 = z22;
                i17 = -1;
                z13 = true;
            } else {
                com.googlecode.mp4parser.boxes.mp4.objectdescriptors.c cVar2 = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.c(byteBufferR);
                int iC4 = cVar2.c(1);
                int iC5 = cVar2.c(5);
                int iC6 = cVar2.c(1);
                if (iC4 != 1 || iC5 != 31 || iC6 != 0) {
                    return false;
                }
                this.f33155k = (cVar2.c(7) + 1) * 32;
                int iC7 = cVar2.c(14);
                this.f33153i += iC7 + 1;
                int iC8 = cVar2.c(6);
                this.f33151g = c(cVar2.c(4));
                this.f33152h = b(cVar2.c(5));
                if (cVar2.c(1) != 0) {
                    return false;
                }
                cVar2.c(1);
                cVar2.c(1);
                cVar2.c(1);
                cVar2.c(1);
                iC = cVar2.c(3);
                int iC9 = cVar2.c(1);
                cVar2.c(1);
                long j12 = j10;
                cVar2.c(2);
                cVar2.c(1);
                if (iC6 == 1) {
                    cVar2.c(16);
                }
                cVar2.c(1);
                int iC10 = cVar2.c(4);
                cVar2.c(2);
                int iC11 = cVar2.c(3);
                if (iC11 == 0 || iC11 == 1) {
                    this.f33154j = 16;
                } else if (iC11 == 2 || iC11 == 3) {
                    this.f33154j = 20;
                } else {
                    if (iC11 != 5 && iC11 != 6) {
                        return false;
                    }
                    this.f33154j = 24;
                }
                cVar2.c(1);
                cVar2.c(1);
                if (iC10 == 6 || iC10 != 7) {
                    cVar2.c(4);
                } else {
                    cVar2.c(4);
                }
                byteBufferR.position(iPosition + iC7 + 1);
                z19 = z21;
                z20 = z22;
                z13 = z23;
                j10 = j12;
                i17 = -1;
                i18 = 1;
                i20 = iC9;
                i19 = iC8;
            }
        }
        int i25 = this.f33155k;
        if (i25 == 512) {
            i10 = 0;
        } else if (i25 == 1024) {
            i10 = 1;
        } else if (i25 != 2048) {
            i10 = i25 != 4096 ? -1 : 3;
        } else {
            i10 = 2;
        }
        if (i10 == i17) {
            return false;
        }
        if (i19 != 0 && i19 != 2) {
            switch (i19) {
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                    break;
                default:
                    i19 = 31;
                    break;
            }
        }
        if (i18 == 0) {
            if (z14) {
                if (z17) {
                    this.O = com.coremedia.iso.boxes.sampleentry.c.M;
                    i11 = 21;
                } else {
                    this.O = com.coremedia.iso.boxes.sampleentry.c.L;
                    i11 = 17;
                }
            } else if (z16) {
                this.O = com.coremedia.iso.boxes.sampleentry.c.N;
                i11 = 18;
            } else if (z17) {
                this.O = com.coremedia.iso.boxes.sampleentry.c.M;
                if (!z18 && !z14) {
                    i11 = 19;
                } else if (z18 && !z14) {
                    i11 = 20;
                } else if (z18 || !z14) {
                    i11 = 0;
                } else {
                    i11 = 21;
                }
            } else {
                i11 = 0;
            }
            this.f33151g = this.D;
            this.f33154j = 24;
        } else if (b10 >= 1) {
            int i26 = iC;
            this.O = com.coremedia.iso.boxes.sampleentry.c.M;
            if (i20 == 0) {
                if (z17 || !z18) {
                    z10 = z19;
                    z11 = z20;
                } else {
                    z10 = z19;
                    z11 = z20;
                    if (!z10 && !z11 && !z14 && !z16) {
                        i11 = 5;
                    }
                }
                if (!z17 && !z18 && !z10 && z11 && !z14 && !z16) {
                    i11 = 6;
                } else if (!z17 && z18 && !z10 && z11 && !z14 && !z16) {
                    i11 = 9;
                } else if (!z17 && !z18 && z10 && !z11 && !z14 && !z16) {
                    i11 = 10;
                } else if (!z17 && z18 && z10 && !z11 && !z14 && !z16) {
                    i11 = 13;
                } else if (z17 || z18 || z10 || z11 || !z14 || z16) {
                    i11 = 0;
                } else {
                    i11 = 14;
                }
            } else {
                boolean z24 = z19;
                boolean z25 = z20;
                if (i26 == 0 && !z17 && !z18 && !z24 && z25 && !z14 && !z16) {
                    i11 = 7;
                } else if (i26 == 6 && !z17 && !z18 && !z24 && z25 && !z14 && !z16) {
                    i11 = 8;
                } else if (i26 == 0 && !z17 && !z18 && z24 && !z25 && !z14 && !z16) {
                    i11 = 11;
                } else if (i26 == 6 && !z17 && !z18 && z24 && !z25 && !z14 && !z16) {
                    i11 = 12;
                } else if (i26 == 0 && !z17 && !z18 && !z24 && !z25 && z14 && !z16) {
                    i11 = 15;
                } else if (i26 != 2 || z17 || z18 || z24 || z25 || !z14 || z16) {
                    i11 = 0;
                } else {
                    i11 = 16;
                }
            }
        } else if (i20 > 0) {
            int i27 = iC;
            if (i27 == 0) {
                this.O = "dtsc";
                i11 = 2;
            } else if (i27 == 2) {
                this.O = "dtsc";
                i11 = 4;
            } else if (i27 != 6) {
                this.O = com.coremedia.iso.boxes.sampleentry.c.M;
                i11 = 0;
            } else {
                this.O = com.coremedia.iso.boxes.sampleentry.c.M;
                i11 = 3;
            }
        } else {
            this.O = "dtsc";
            i11 = 1;
        }
        this.f33159o.P(this.D);
        if (this.f33162r) {
            this.f33159o.S((this.f33167w + this.A) * 1000);
        } else {
            this.f33159o.S((this.f33167w + this.f33170z) * 1000);
        }
        this.f33159o.K((this.f33167w + this.f33170z) * 1000);
        this.f33159o.U(this.f33154j);
        this.f33159o.Q(i10);
        this.f33159o.Z(i11);
        int i28 = this.f33168x;
        if ((i28 & 8) > 0 || (i28 & 4096) > 0) {
            this.f33159o.M(1);
        } else {
            this.f33159o.M(0);
        }
        this.f33159o.N(i19);
        this.f33159o.O(this.f33169y);
        this.f33159o.Y(0);
        this.f33159o.V(4);
        this.f33159o.L(this.I);
        if (this.f33166v <= 0 || this.f33170z <= 0) {
            i12 = 0;
            this.f33159o.T(0);
        } else {
            this.f33159o.T(1);
            i12 = 0;
        }
        this.f33159o.R(this.E);
        this.f33159o.X(i12);
        this.f33156l = i12;
        for (int i29 = 0; i29 < 16; i29++) {
            if (((this.I >> i29) & 1) == 1) {
                if (i29 == 0 || i29 == 12 || i29 == 14 || i29 == 3 || i29 == 4 || i29 == 7 || i29 == 8) {
                    this.f33156l++;
                } else {
                    this.f33156l += 2;
                }
            }
        }
        List<com.googlecode.mp4parser.authoring.f> listA = a(this.f33160p, this.f33158n, j10, i18);
        this.f33161q = listA;
        long[] jArr = new long[listA.size()];
        this.f33157m = jArr;
        Arrays.fill(jArr, this.f33155k);
        return true;
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public List<com.coremedia.iso.boxes.i.a> E() {
        return null;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public s0 F() {
        return this.f33150f;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public com.googlecode.mp4parser.authoring.i H() {
        return this.f33149e;
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public long[] N() {
        return null;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<com.googlecode.mp4parser.authoring.f> U() {
        return this.f33161q;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long[] Z() {
        return this.f33157m;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f33160p.close();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public String getHandler() {
        return "soun";
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public List<r0.a> h0() {
        return null;
    }

    public k(com.googlecode.mp4parser.e eVar) throws IOException {
        super(eVar.toString());
        this.f33149e = new com.googlecode.mp4parser.authoring.i();
        this.f33153i = 0;
        this.f33158n = 0;
        this.f33159o = new com.googlecode.mp4parser.boxes.d();
        this.f33162r = false;
        this.f33163s = false;
        this.f33164t = false;
        this.f33165u = 0;
        this.f33166v = 0;
        this.f33167w = 0;
        this.f33168x = 0;
        this.f33169y = 0;
        this.f33170z = 0;
        this.A = 0;
        this.B = 0;
        this.C = 0;
        this.D = 0;
        this.E = 0;
        this.F = 0;
        this.G = 0;
        this.H = 0;
        this.I = 0;
        this.J = 0;
        this.K = 0;
        this.L = 0;
        this.M = 0;
        this.N = 0;
        this.O = "none";
        this.P = "eng";
        this.f33160p = eVar;
        d();
    }
}

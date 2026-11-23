package com.googlecode.mp4parser.boxes.mp4.objectdescriptors;

import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.uc.crashsdk.export.LogType;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
@Descriptor(objectTypeIndication = 64, tags = {5})
public class a extends com.googlecode.mp4parser.boxes.mp4.objectdescriptors.b {
    public static Map<Integer, Integer> W = new HashMap();
    public static Map<Integer, String> X = new HashMap();
    public int A;
    public int B;
    public boolean C;
    public boolean D;
    public boolean E;
    public int F;
    public boolean G;
    public int H;
    public int I;
    public int J;
    public int K;
    public int L;
    public int M;
    public int N;
    public int O;
    public int P;
    public int Q;
    public int R;
    public int S;
    public int T;
    public int U;
    public boolean V;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    byte[] f33547e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public C0621a f33548f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f33549g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f33550h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f33551i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f33552j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f33553k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f33554l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f33555m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f33556n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f33557o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f33558p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f33559q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f33560r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f33561s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f33562t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f33563u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f33564v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f33565w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f33566x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f33567y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f33568z;

    /* JADX INFO: renamed from: com.googlecode.mp4parser.boxes.mp4.objectdescriptors.a$a, reason: collision with other inner class name */
    public class C0621a {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private static final int f33569i = 0;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f33570a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f33571b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f33572c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f33573d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f33574e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f33575f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public boolean f33576g;

        public C0621a(int i10, c cVar) {
            int iC;
            this.f33570a = cVar.d();
            this.f33571b = cVar.d();
            this.f33572c = cVar.d();
            this.f33573d = cVar.d();
            boolean zD = cVar.d();
            this.f33574e = zD;
            if (zD) {
                this.f33575f = cVar.d();
                this.f33576g = cVar.d();
                a(i10, cVar);
            }
            while (cVar.c(4) != 0) {
                int iC2 = cVar.c(4);
                if (iC2 == 15) {
                    iC = cVar.c(8);
                    iC2 += iC;
                } else {
                    iC = 0;
                }
                if (iC == 255) {
                    iC2 += cVar.c(16);
                }
                for (int i11 = 0; i11 < iC2; i11++) {
                    cVar.c(8);
                }
            }
        }

        public void a(int i10, c cVar) {
            int i11;
            switch (i10) {
                case 1:
                case 2:
                    i11 = 1;
                    break;
                case 3:
                    i11 = 2;
                    break;
                case 4:
                case 5:
                case 6:
                    i11 = 3;
                    break;
                case 7:
                    i11 = 4;
                    break;
                default:
                    i11 = 0;
                    break;
            }
            for (int i12 = 0; i12 < i11; i12++) {
                a.this.new b(cVar);
            }
        }
    }

    public class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f33578a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f33579b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f33580c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f33581d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f33582e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f33583f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public boolean f33584g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f33585h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public boolean f33586i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f33587j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f33588k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public int f33589l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public boolean f33590m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public boolean f33591n;

        public b(c cVar) {
            this.f33578a = cVar.d();
            this.f33579b = cVar.c(4);
            this.f33580c = cVar.c(4);
            this.f33581d = cVar.c(3);
            this.f33582e = cVar.c(2);
            this.f33583f = cVar.d();
            this.f33584g = cVar.d();
            if (this.f33583f) {
                this.f33585h = cVar.c(2);
                this.f33586i = cVar.d();
                this.f33587j = cVar.c(2);
            }
            if (this.f33584g) {
                this.f33588k = cVar.c(2);
                this.f33589l = cVar.c(2);
                this.f33590m = cVar.d();
            }
            this.f33591n = cVar.d();
        }
    }

    static {
        W.put(0, 96000);
        W.put(1, 88200);
        W.put(2, 64000);
        W.put(3, 48000);
        W.put(4, 44100);
        W.put(5, Integer.valueOf(LogType.UNEXP_KNOWN_REASON));
        W.put(6, 24000);
        W.put(7, 22050);
        W.put(8, 16000);
        W.put(9, 12000);
        W.put(10, 11025);
        W.put(11, Integer.valueOf(AVMDLDataLoader.KeyIsLiveSetLoaderType));
        X.put(1, "AAC main");
        X.put(2, "AAC LC");
        X.put(3, "AAC SSR");
        X.put(4, "AAC LTP");
        X.put(5, "SBR");
        X.put(6, "AAC Scalable");
        X.put(7, "TwinVQ");
        X.put(8, "CELP");
        X.put(9, "HVXC");
        X.put(10, "(reserved)");
        X.put(11, "(reserved)");
        X.put(12, "TTSI");
        X.put(13, "Main synthetic");
        X.put(14, "Wavetable synthesis");
        X.put(15, "General MIDI");
        X.put(16, "Algorithmic Synthesis and Audio FX");
        X.put(17, "ER AAC LC");
        X.put(18, "(reserved)");
        X.put(19, "ER AAC LTP");
        X.put(20, "ER AAC Scalable");
        X.put(21, "ER TwinVQ");
        X.put(22, "ER BSAC");
        X.put(23, "ER AAC LD");
        X.put(24, "ER CELP");
        X.put(25, "ER HVXC");
        X.put(26, "ER HILN");
        X.put(27, "ER Parametric");
        X.put(28, "SSC");
        X.put(29, "PS");
        X.put(30, "MPEG Surround");
        X.put(31, "(escape)");
        X.put(32, "Layer-1");
        X.put(33, "Layer-2");
        X.put(34, "Layer-3");
        X.put(35, "DST");
        X.put(36, "ALS");
        X.put(37, "SLS");
        X.put(38, "SLS non-core");
        X.put(39, "ER AAC ELD");
        X.put(40, "SMR Simple");
        X.put(41, "SMR Main");
    }

    private int g() {
        return 0;
    }

    private int i(c cVar) throws IOException {
        int iC = cVar.c(5);
        return iC == 31 ? cVar.c(6) + 32 : iC;
    }

    private void n(int i10, int i11, int i12, c cVar) throws IOException {
        this.K = cVar.c(1);
        this.L = cVar.c(2);
        int iC = cVar.c(1);
        this.M = iC;
        if (iC == 1) {
            this.N = cVar.c(1);
        }
    }

    private void o(int i10, int i11, int i12, c cVar) throws IOException {
        this.f33564v = cVar.c(1);
        int iC = cVar.c(1);
        this.f33565w = iC;
        if (iC == 1) {
            this.f33566x = cVar.c(14);
        }
        this.f33567y = cVar.c(1);
        if (i11 == 0) {
            throw new UnsupportedOperationException("can't parse program_config_element yet");
        }
        if (i12 == 6 || i12 == 20) {
            this.f33568z = cVar.c(3);
        }
        if (this.f33567y == 1) {
            if (i12 == 22) {
                this.A = cVar.c(5);
                this.B = cVar.c(11);
            }
            if (i12 == 17 || i12 == 19 || i12 == 20 || i12 == 23) {
                this.C = cVar.d();
                this.D = cVar.d();
                this.E = cVar.d();
            }
            this.F = cVar.c(1);
        }
        this.G = true;
    }

    private void p(int i10, int i11, int i12, c cVar) throws IOException {
        this.O = cVar.c(1);
        this.P = cVar.c(8);
        this.Q = cVar.c(4);
        this.R = cVar.c(12);
        this.S = cVar.c(2);
    }

    private void q(int i10, int i11, int i12, c cVar) throws IOException {
        int iC = cVar.c(1);
        this.T = iC;
        if (iC == 1) {
            this.U = cVar.c(2);
        }
    }

    private void r(int i10, int i11, int i12, c cVar) throws IOException {
        int iC = cVar.c(2);
        this.I = iC;
        if (iC != 1) {
            n(i10, i11, i12, cVar);
        }
        if (this.I != 0) {
            p(i10, i11, i12, cVar);
        }
        this.J = cVar.c(1);
        this.V = true;
    }

    private void s(int i10, int i11, int i12, c cVar) throws IOException {
        int iC = cVar.c(1);
        this.H = iC;
        if (iC == 1) {
            r(i10, i11, i12, cVar);
        } else {
            q(i10, i11, i12, cVar);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return this.D == aVar.D && this.C == aVar.C && this.E == aVar.E && this.f33549g == aVar.f33549g && this.f33552j == aVar.f33552j && this.f33566x == aVar.f33566x && this.f33565w == aVar.f33565w && this.f33562t == aVar.f33562t && this.f33561s == aVar.f33561s && this.M == aVar.M && this.f33553k == aVar.f33553k && this.f33558p == aVar.f33558p && this.f33567y == aVar.f33567y && this.F == aVar.F && this.f33557o == aVar.f33557o && this.f33556n == aVar.f33556n && this.f33560r == aVar.f33560r && this.f33564v == aVar.f33564v && this.G == aVar.G && this.S == aVar.S && this.T == aVar.T && this.U == aVar.U && this.R == aVar.R && this.P == aVar.P && this.O == aVar.O && this.Q == aVar.Q && this.L == aVar.L && this.K == aVar.K && this.H == aVar.H && this.f33568z == aVar.f33568z && this.B == aVar.B && this.A == aVar.A && this.J == aVar.J && this.I == aVar.I && this.V == aVar.V && this.f33555m == aVar.f33555m && this.f33559q == aVar.f33559q && this.f33551i == aVar.f33551i && this.f33550h == aVar.f33550h && this.f33554l == aVar.f33554l && this.f33563u == aVar.f33563u && this.N == aVar.N && Arrays.equals(this.f33547e, aVar.f33547e);
    }

    /* JADX WARN: Code duplicated, block: B:57:0x011b  */
    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.b
    public void f(ByteBuffer byteBuffer) throws IOException {
        int iC;
        ByteBuffer byteBufferSlice = byteBuffer.slice();
        byteBufferSlice.limit(this.f33595b);
        byteBuffer.position(byteBuffer.position() + this.f33595b);
        byte[] bArr = new byte[this.f33595b];
        this.f33547e = bArr;
        byteBufferSlice.get(bArr);
        byteBufferSlice.rewind();
        c cVar = new c(byteBufferSlice);
        this.f33549g = i(cVar);
        int iC2 = cVar.c(4);
        this.f33550h = iC2;
        if (iC2 == 15) {
            this.f33551i = cVar.c(24);
        }
        this.f33552j = cVar.c(4);
        int i10 = this.f33549g;
        if (i10 == 5 || i10 == 29) {
            this.f33553k = 5;
            this.f33554l = true;
            if (i10 == 29) {
                this.f33555m = true;
            }
            int iC3 = cVar.c(4);
            this.f33556n = iC3;
            if (iC3 == 15) {
                this.f33557o = cVar.c(24);
            }
            int i11 = i(cVar);
            this.f33549g = i11;
            if (i11 == 22) {
                this.f33558p = cVar.c(4);
            }
        } else {
            this.f33553k = 0;
        }
        int i12 = this.f33549g;
        switch (i12) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 6:
            case 7:
            case 17:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
                o(this.f33550h, this.f33552j, i12, cVar);
                break;
            case 8:
                throw new UnsupportedOperationException("can't parse CelpSpecificConfig yet");
            case 9:
                throw new UnsupportedOperationException("can't parse HvxcSpecificConfig yet");
            case 12:
                throw new UnsupportedOperationException("can't parse TTSSpecificConfig yet");
            case 13:
            case 14:
            case 15:
            case 16:
                throw new UnsupportedOperationException("can't parse StructuredAudioSpecificConfig yet");
            case 24:
                throw new UnsupportedOperationException("can't parse ErrorResilientCelpSpecificConfig yet");
            case 25:
                throw new UnsupportedOperationException("can't parse ErrorResilientHvxcSpecificConfig yet");
            case 26:
            case 27:
                s(this.f33550h, this.f33552j, i12, cVar);
                break;
            case 28:
                throw new UnsupportedOperationException("can't parse SSCSpecificConfig yet");
            case 30:
                this.f33559q = cVar.c(1);
                throw new UnsupportedOperationException("can't parse SpatialSpecificConfig yet");
            case 32:
            case 33:
            case 34:
                throw new UnsupportedOperationException("can't parse MPEG_1_2_SpecificConfig yet");
            case 35:
                throw new UnsupportedOperationException("can't parse DSTSpecificConfig yet");
            case 36:
                this.f33560r = cVar.c(5);
                throw new UnsupportedOperationException("can't parse ALSSpecificConfig yet");
            case 37:
            case 38:
                throw new UnsupportedOperationException("can't parse SLSSpecificConfig yet");
            case 39:
                this.f33548f = new C0621a(this.f33552j, cVar);
                break;
            case 40:
            case 41:
                throw new UnsupportedOperationException("can't parse SymbolicMusicSpecificConfig yet");
        }
        int i13 = this.f33549g;
        if (i13 != 17 && i13 != 39) {
            switch (i13) {
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                    iC = cVar.c(2);
                    this.f33561s = iC;
                    if (iC != 2) {
                        break;
                    }
                    throw new UnsupportedOperationException("can't parse ErrorProtectionSpecificConfig yet");
            }
        }
        iC = cVar.c(2);
        this.f33561s = iC;
        if (iC != 2 || iC == 3) {
            throw new UnsupportedOperationException("can't parse ErrorProtectionSpecificConfig yet");
        }
        if (iC == 3) {
            int iC4 = cVar.c(1);
            this.f33562t = iC4;
            if (iC4 == 0) {
                throw new RuntimeException("not implemented");
            }
        }
        if (this.f33553k == 5 || cVar.e() < 16) {
            return;
        }
        int iC5 = cVar.c(11);
        this.f33563u = iC5;
        if (iC5 == 695) {
            int i14 = i(cVar);
            this.f33553k = i14;
            if (i14 == 5) {
                boolean zD = cVar.d();
                this.f33554l = zD;
                if (zD) {
                    int iC6 = cVar.c(4);
                    this.f33556n = iC6;
                    if (iC6 == 15) {
                        this.f33557o = cVar.c(24);
                    }
                    if (cVar.e() >= 12) {
                        int iC7 = cVar.c(11);
                        this.f33563u = iC7;
                        if (iC7 == 1352) {
                            this.f33555m = cVar.d();
                        }
                    }
                }
            }
            if (this.f33553k == 22) {
                boolean zD2 = cVar.d();
                this.f33554l = zD2;
                if (zD2) {
                    int iC8 = cVar.c(4);
                    this.f33556n = iC8;
                    if (iC8 == 15) {
                        this.f33557o = cVar.c(24);
                    }
                }
                this.f33558p = cVar.c(4);
            }
        }
    }

    public int h() {
        return this.f33549g;
    }

    public int hashCode() {
        byte[] bArr = this.f33547e;
        return ((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((bArr != null ? Arrays.hashCode(bArr) : 0) * 31) + this.f33549g) * 31) + this.f33550h) * 31) + this.f33551i) * 31) + this.f33552j) * 31) + this.f33553k) * 31) + (this.f33554l ? 1 : 0)) * 31) + (this.f33555m ? 1 : 0)) * 31) + this.f33556n) * 31) + this.f33557o) * 31) + this.f33558p) * 31) + this.f33559q) * 31) + this.f33560r) * 31) + this.f33561s) * 31) + this.f33562t) * 31) + this.f33563u) * 31) + this.f33564v) * 31) + this.f33565w) * 31) + this.f33566x) * 31) + this.f33567y) * 31) + this.f33568z) * 31) + this.A) * 31) + this.B) * 31) + (this.C ? 1 : 0)) * 31) + (this.D ? 1 : 0)) * 31) + (this.E ? 1 : 0)) * 31) + this.F) * 31) + (this.G ? 1 : 0)) * 31) + this.H) * 31) + this.I) * 31) + this.J) * 31) + this.K) * 31) + this.L) * 31) + this.M) * 31) + this.N) * 31) + this.O) * 31) + this.P) * 31) + this.Q) * 31) + this.R) * 31) + this.S) * 31) + this.T) * 31) + this.U) * 31) + (this.V ? 1 : 0);
    }

    public int j() {
        return this.f33552j;
    }

    public byte[] k() {
        return this.f33547e;
    }

    public int l() {
        return this.f33553k;
    }

    public int m() {
        int i10 = this.f33550h;
        return i10 == 15 ? this.f33551i : W.get(Integer.valueOf(i10)).intValue();
    }

    public ByteBuffer t() {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(u());
        com.coremedia.iso.i.m(byteBufferAllocate, 5);
        com.coremedia.iso.i.m(byteBufferAllocate, u() - 2);
        d dVar = new d(byteBufferAllocate);
        dVar.a(this.f33549g, 5);
        dVar.a(this.f33550h, 4);
        if (this.f33550h == 15) {
            throw new UnsupportedOperationException("can't serialize that yet");
        }
        dVar.a(this.f33552j, 4);
        return byteBufferAllocate;
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.objectdescriptors.b
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("AudioSpecificConfig");
        sb2.append("{configBytes=");
        sb2.append(com.coremedia.iso.e.b(this.f33547e));
        sb2.append(", audioObjectType=");
        sb2.append(this.f33549g);
        sb2.append(" (");
        sb2.append(X.get(Integer.valueOf(this.f33549g)));
        sb2.append(")");
        sb2.append(", samplingFrequencyIndex=");
        sb2.append(this.f33550h);
        sb2.append(" (");
        sb2.append(W.get(Integer.valueOf(this.f33550h)));
        sb2.append(")");
        sb2.append(", samplingFrequency=");
        sb2.append(this.f33551i);
        sb2.append(", channelConfiguration=");
        sb2.append(this.f33552j);
        if (this.f33553k > 0) {
            sb2.append(", extensionAudioObjectType=");
            sb2.append(this.f33553k);
            sb2.append(" (");
            sb2.append(X.get(Integer.valueOf(this.f33553k)));
            sb2.append(")");
            sb2.append(", sbrPresentFlag=");
            sb2.append(this.f33554l);
            sb2.append(", psPresentFlag=");
            sb2.append(this.f33555m);
            sb2.append(", extensionSamplingFrequencyIndex=");
            sb2.append(this.f33556n);
            sb2.append(" (");
            sb2.append(W.get(Integer.valueOf(this.f33556n)));
            sb2.append(")");
            sb2.append(", extensionSamplingFrequency=");
            sb2.append(this.f33557o);
            sb2.append(", extensionChannelConfiguration=");
            sb2.append(this.f33558p);
        }
        sb2.append(", syncExtensionType=");
        sb2.append(this.f33563u);
        if (this.G) {
            sb2.append(", frameLengthFlag=");
            sb2.append(this.f33564v);
            sb2.append(", dependsOnCoreCoder=");
            sb2.append(this.f33565w);
            sb2.append(", coreCoderDelay=");
            sb2.append(this.f33566x);
            sb2.append(", extensionFlag=");
            sb2.append(this.f33567y);
            sb2.append(", layerNr=");
            sb2.append(this.f33568z);
            sb2.append(", numOfSubFrame=");
            sb2.append(this.A);
            sb2.append(", layer_length=");
            sb2.append(this.B);
            sb2.append(", aacSectionDataResilienceFlag=");
            sb2.append(this.C);
            sb2.append(", aacScalefactorDataResilienceFlag=");
            sb2.append(this.D);
            sb2.append(", aacSpectralDataResilienceFlag=");
            sb2.append(this.E);
            sb2.append(", extensionFlag3=");
            sb2.append(this.F);
        }
        if (this.V) {
            sb2.append(", isBaseLayer=");
            sb2.append(this.H);
            sb2.append(", paraMode=");
            sb2.append(this.I);
            sb2.append(", paraExtensionFlag=");
            sb2.append(this.J);
            sb2.append(", hvxcVarMode=");
            sb2.append(this.K);
            sb2.append(", hvxcRateMode=");
            sb2.append(this.L);
            sb2.append(", erHvxcExtensionFlag=");
            sb2.append(this.M);
            sb2.append(", var_ScalableFlag=");
            sb2.append(this.N);
            sb2.append(", hilnQuantMode=");
            sb2.append(this.O);
            sb2.append(", hilnMaxNumLine=");
            sb2.append(this.P);
            sb2.append(", hilnSampleRateCode=");
            sb2.append(this.Q);
            sb2.append(", hilnFrameLength=");
            sb2.append(this.R);
            sb2.append(", hilnContMode=");
            sb2.append(this.S);
            sb2.append(", hilnEnhaLayer=");
            sb2.append(this.T);
            sb2.append(", hilnEnhaQuantMode=");
            sb2.append(this.U);
        }
        sb2.append('}');
        return sb2.toString();
    }

    public int u() {
        if (this.f33549g == 2) {
            return g() + 4;
        }
        throw new UnsupportedOperationException("can't serialize that yet");
    }

    public void v(int i10) {
        this.f33549g = i10;
    }

    public void w(int i10) {
        this.f33552j = i10;
    }

    public void x(int i10) {
        this.f33551i = i10;
    }

    public void y(int i10) {
        this.f33550h = i10;
    }
}

package com.googlecode.mp4parser.authoring.tracks;

import com.coremedia.iso.boxes.a1;
import com.coremedia.iso.boxes.r0;
import com.coremedia.iso.boxes.s0;
import com.uc.crashsdk.export.LogType;
import java.io.IOException;
import java.lang.reflect.Array;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import okio.Utf8;

/* JADX INFO: loaded from: classes5.dex */
public class b extends com.googlecode.mp4parser.authoring.a {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    static int[][][][] f33064j;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.googlecode.mp4parser.e f33065e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private List<com.googlecode.mp4parser.authoring.f> f33066f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long[] f33067g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private com.googlecode.mp4parser.authoring.i f33068h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private s0 f33069i;

    class a implements com.googlecode.mp4parser.authoring.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final long f33070a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final long f33071b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final com.googlecode.mp4parser.e f33072c;

        public a(long j10, long j11, com.googlecode.mp4parser.e eVar) {
            this.f33070a = j10;
            this.f33071b = j11;
            this.f33072c = eVar;
        }

        @Override // com.googlecode.mp4parser.authoring.f
        public ByteBuffer a() {
            try {
                return this.f33072c.r(this.f33070a, this.f33071b);
            } catch (IOException e10) {
                throw new RuntimeException(e10);
            }
        }

        @Override // com.googlecode.mp4parser.authoring.f
        public void b(WritableByteChannel writableByteChannel) throws IOException {
            this.f33072c.w(this.f33070a, this.f33071b, writableByteChannel);
        }

        @Override // com.googlecode.mp4parser.authoring.f
        public long getSize() {
            return this.f33071b;
        }
    }

    static {
        int[][][][] iArr = (int[][][][]) Array.newInstance((Class<?>) Integer.TYPE, 19, 2, 3, 2);
        f33064j = iArr;
        int[][][] iArr2 = iArr[0];
        int[][] iArr3 = iArr2[0];
        int[] iArr4 = iArr3[0];
        iArr4[0] = 32;
        int[][] iArr5 = iArr2[1];
        int[] iArr6 = iArr5[0];
        iArr6[0] = 32;
        iArr4[1] = 64;
        iArr6[1] = 64;
        int[][][] iArr7 = iArr[1];
        int[][] iArr8 = iArr7[0];
        int[] iArr9 = iArr8[0];
        iArr9[0] = 40;
        int[][] iArr10 = iArr7[1];
        int[] iArr11 = iArr10[0];
        iArr11[0] = 40;
        iArr9[1] = 80;
        iArr11[1] = 80;
        int[][][] iArr12 = iArr[2];
        int[][] iArr13 = iArr12[0];
        int[] iArr14 = iArr13[0];
        iArr14[0] = 48;
        int[][] iArr15 = iArr12[1];
        int[] iArr16 = iArr15[0];
        iArr16[0] = 48;
        iArr14[1] = 96;
        iArr16[1] = 96;
        int[][][] iArr17 = iArr[3];
        int[][] iArr18 = iArr17[0];
        int[] iArr19 = iArr18[0];
        iArr19[0] = 56;
        int[][] iArr20 = iArr17[1];
        int[] iArr21 = iArr20[0];
        iArr21[0] = 56;
        iArr19[1] = 112;
        iArr21[1] = 112;
        int[][][] iArr22 = iArr[4];
        int[][] iArr23 = iArr22[0];
        int[] iArr24 = iArr23[0];
        iArr24[0] = 64;
        int[][] iArr25 = iArr22[1];
        int[] iArr26 = iArr25[0];
        iArr26[0] = 64;
        iArr24[1] = 128;
        iArr26[1] = 128;
        int[][][] iArr27 = iArr[5];
        int[][] iArr28 = iArr27[0];
        int[] iArr29 = iArr28[0];
        iArr29[0] = 80;
        int[][] iArr30 = iArr27[1];
        int[] iArr31 = iArr30[0];
        iArr31[0] = 80;
        iArr29[1] = 160;
        iArr31[1] = 160;
        int[][][] iArr32 = iArr[6];
        int[][] iArr33 = iArr32[0];
        int[] iArr34 = iArr33[0];
        iArr34[0] = 96;
        int[][] iArr35 = iArr32[1];
        int[] iArr36 = iArr35[0];
        iArr36[0] = 96;
        iArr34[1] = 192;
        iArr36[1] = 192;
        int[][][] iArr37 = iArr[7];
        int[][] iArr38 = iArr37[0];
        int[] iArr39 = iArr38[0];
        iArr39[0] = 112;
        int[][] iArr40 = iArr37[1];
        int[] iArr41 = iArr40[0];
        iArr41[0] = 112;
        iArr39[1] = 224;
        iArr41[1] = 224;
        int[][][] iArr42 = iArr[8];
        int[][] iArr43 = iArr42[0];
        int[] iArr44 = iArr43[0];
        iArr44[0] = 128;
        int[][] iArr45 = iArr42[1];
        int[] iArr46 = iArr45[0];
        iArr46[0] = 128;
        iArr44[1] = 256;
        iArr46[1] = 256;
        int[][][] iArr47 = iArr[9];
        int[][] iArr48 = iArr47[0];
        int[] iArr49 = iArr48[0];
        iArr49[0] = 160;
        int[][] iArr50 = iArr47[1];
        int[] iArr51 = iArr50[0];
        iArr51[0] = 160;
        iArr49[1] = 320;
        iArr51[1] = 320;
        int[][][] iArr52 = iArr[10];
        int[][] iArr53 = iArr52[0];
        int[] iArr54 = iArr53[0];
        iArr54[0] = 192;
        int[][] iArr55 = iArr52[1];
        int[] iArr56 = iArr55[0];
        iArr56[0] = 192;
        iArr54[1] = 384;
        iArr56[1] = 384;
        int[][][] iArr57 = iArr[11];
        int[][] iArr58 = iArr57[0];
        int[] iArr59 = iArr58[0];
        iArr59[0] = 224;
        int[][] iArr60 = iArr57[1];
        int[] iArr61 = iArr60[0];
        iArr61[0] = 224;
        iArr59[1] = 448;
        iArr61[1] = 448;
        int[][][] iArr62 = iArr[12];
        int[][] iArr63 = iArr62[0];
        int[] iArr64 = iArr63[0];
        iArr64[0] = 256;
        int[][] iArr65 = iArr62[1];
        int[] iArr66 = iArr65[0];
        iArr66[0] = 256;
        iArr64[1] = 512;
        iArr66[1] = 512;
        int[][][] iArr67 = iArr[13];
        int[][] iArr68 = iArr67[0];
        int[] iArr69 = iArr68[0];
        iArr69[0] = 320;
        int[][] iArr70 = iArr67[1];
        int[] iArr71 = iArr70[0];
        iArr71[0] = 320;
        iArr69[1] = 640;
        iArr71[1] = 640;
        int[][][] iArr72 = iArr[14];
        int[][] iArr73 = iArr72[0];
        int[] iArr74 = iArr73[0];
        iArr74[0] = 384;
        int[][] iArr75 = iArr72[1];
        int[] iArr76 = iArr75[0];
        iArr76[0] = 384;
        iArr74[1] = 768;
        iArr76[1] = 768;
        int[][][] iArr77 = iArr[15];
        int[][] iArr78 = iArr77[0];
        int[] iArr79 = iArr78[0];
        iArr79[0] = 448;
        int[][] iArr80 = iArr77[1];
        int[] iArr81 = iArr80[0];
        iArr81[0] = 448;
        iArr79[1] = 896;
        iArr81[1] = 896;
        int[][][] iArr82 = iArr[16];
        int[][] iArr83 = iArr82[0];
        int[] iArr84 = iArr83[0];
        iArr84[0] = 512;
        int[][] iArr85 = iArr82[1];
        int[] iArr86 = iArr85[0];
        iArr86[0] = 512;
        iArr84[1] = 1024;
        iArr86[1] = 1024;
        int[][][] iArr87 = iArr[17];
        int[][] iArr88 = iArr87[0];
        int[] iArr89 = iArr88[0];
        iArr89[0] = 576;
        int[][] iArr90 = iArr87[1];
        int[] iArr91 = iArr90[0];
        iArr91[0] = 576;
        iArr89[1] = 1152;
        iArr91[1] = 1152;
        int[][][] iArr92 = iArr[18];
        int[][] iArr93 = iArr92[0];
        int[] iArr94 = iArr93[0];
        iArr94[0] = 640;
        int[][] iArr95 = iArr92[1];
        int[] iArr96 = iArr95[0];
        iArr96[0] = 640;
        iArr94[1] = 1280;
        iArr96[1] = 1280;
        int[] iArr97 = iArr3[1];
        iArr97[0] = 32;
        int[] iArr98 = iArr5[1];
        iArr98[0] = 32;
        iArr97[1] = 69;
        iArr98[1] = 70;
        int[] iArr99 = iArr8[1];
        iArr99[0] = 40;
        int[] iArr100 = iArr10[1];
        iArr100[0] = 40;
        iArr99[1] = 87;
        iArr100[1] = 88;
        int[] iArr101 = iArr13[1];
        iArr101[0] = 48;
        int[] iArr102 = iArr15[1];
        iArr102[0] = 48;
        iArr101[1] = 104;
        iArr102[1] = 105;
        int[] iArr103 = iArr18[1];
        iArr103[0] = 56;
        int[] iArr104 = iArr20[1];
        iArr104[0] = 56;
        iArr103[1] = 121;
        iArr104[1] = 122;
        int[] iArr105 = iArr23[1];
        iArr105[0] = 64;
        int[] iArr106 = iArr25[1];
        iArr106[0] = 64;
        iArr105[1] = 139;
        iArr106[1] = 140;
        int[] iArr107 = iArr28[1];
        iArr107[0] = 80;
        int[] iArr108 = iArr30[1];
        iArr108[0] = 80;
        iArr107[1] = 174;
        iArr108[1] = 175;
        int[] iArr109 = iArr33[1];
        iArr109[0] = 96;
        int[] iArr110 = iArr35[1];
        iArr110[0] = 96;
        iArr109[1] = 208;
        iArr110[1] = 209;
        int[] iArr111 = iArr38[1];
        iArr111[0] = 112;
        int[] iArr112 = iArr40[1];
        iArr112[0] = 112;
        iArr111[1] = 243;
        iArr112[1] = 244;
        int[] iArr113 = iArr43[1];
        iArr113[0] = 128;
        int[] iArr114 = iArr45[1];
        iArr114[0] = 128;
        iArr113[1] = 278;
        iArr114[1] = 279;
        int[] iArr115 = iArr48[1];
        iArr115[0] = 160;
        int[] iArr116 = iArr50[1];
        iArr116[0] = 160;
        iArr115[1] = 348;
        iArr116[1] = 349;
        int[] iArr117 = iArr53[1];
        iArr117[0] = 192;
        int[] iArr118 = iArr55[1];
        iArr118[0] = 192;
        iArr117[1] = 417;
        iArr118[1] = 418;
        int[] iArr119 = iArr58[1];
        iArr119[0] = 224;
        int[] iArr120 = iArr60[1];
        iArr120[0] = 224;
        iArr119[1] = 487;
        iArr120[1] = 488;
        int[] iArr121 = iArr63[1];
        iArr121[0] = 256;
        int[] iArr122 = iArr65[1];
        iArr122[0] = 256;
        iArr121[1] = 557;
        iArr122[1] = 558;
        int[] iArr123 = iArr68[1];
        iArr123[0] = 320;
        int[] iArr124 = iArr70[1];
        iArr124[0] = 320;
        iArr123[1] = 696;
        iArr124[1] = 697;
        int[] iArr125 = iArr73[1];
        iArr125[0] = 384;
        int[] iArr126 = iArr75[1];
        iArr126[0] = 384;
        iArr125[1] = 835;
        iArr126[1] = 836;
        int[] iArr127 = iArr78[1];
        iArr127[0] = 448;
        int[] iArr128 = iArr80[1];
        iArr128[0] = 448;
        iArr127[1] = 975;
        iArr128[1] = 975;
        int[] iArr129 = iArr83[1];
        iArr129[0] = 512;
        int[] iArr130 = iArr85[1];
        iArr130[0] = 512;
        iArr129[1] = 1114;
        iArr130[1] = 1115;
        int[] iArr131 = iArr88[1];
        iArr131[0] = 576;
        int[] iArr132 = iArr90[1];
        iArr132[0] = 576;
        iArr131[1] = 1253;
        iArr132[1] = 1254;
        int[] iArr133 = iArr93[1];
        iArr133[0] = 640;
        int[] iArr134 = iArr95[1];
        iArr134[0] = 640;
        iArr133[1] = 1393;
        iArr134[1] = 1394;
        int[] iArr135 = iArr3[2];
        iArr135[0] = 32;
        int[] iArr136 = iArr5[2];
        iArr136[0] = 32;
        iArr135[1] = 96;
        iArr136[1] = 96;
        int[] iArr137 = iArr8[2];
        iArr137[0] = 40;
        int[] iArr138 = iArr10[2];
        iArr138[0] = 40;
        iArr137[1] = 120;
        iArr138[1] = 120;
        int[] iArr139 = iArr13[2];
        iArr139[0] = 48;
        int[] iArr140 = iArr15[2];
        iArr140[0] = 48;
        iArr139[1] = 144;
        iArr140[1] = 144;
        int[] iArr141 = iArr18[2];
        iArr141[0] = 56;
        int[] iArr142 = iArr20[2];
        iArr142[0] = 56;
        iArr141[1] = 168;
        iArr142[1] = 168;
        int[] iArr143 = iArr23[2];
        iArr143[0] = 64;
        int[] iArr144 = iArr25[2];
        iArr144[0] = 64;
        iArr143[1] = 192;
        iArr144[1] = 192;
        int[] iArr145 = iArr28[2];
        iArr145[0] = 80;
        int[] iArr146 = iArr30[2];
        iArr146[0] = 80;
        iArr145[1] = 240;
        iArr146[1] = 240;
        int[] iArr147 = iArr33[2];
        iArr147[0] = 96;
        int[] iArr148 = iArr35[2];
        iArr148[0] = 96;
        iArr147[1] = 288;
        iArr148[1] = 288;
        int[] iArr149 = iArr38[2];
        iArr149[0] = 112;
        int[] iArr150 = iArr40[2];
        iArr150[0] = 112;
        iArr149[1] = 336;
        iArr150[1] = 336;
        int[] iArr151 = iArr43[2];
        iArr151[0] = 128;
        int[] iArr152 = iArr45[2];
        iArr152[0] = 128;
        iArr151[1] = 384;
        iArr152[1] = 384;
        int[] iArr153 = iArr48[2];
        iArr153[0] = 160;
        int[] iArr154 = iArr50[2];
        iArr154[0] = 160;
        iArr153[1] = 480;
        iArr154[1] = 480;
        int[] iArr155 = iArr53[2];
        iArr155[0] = 192;
        int[] iArr156 = iArr55[2];
        iArr156[0] = 192;
        iArr155[1] = 576;
        iArr156[1] = 576;
        int[] iArr157 = iArr58[2];
        iArr157[0] = 224;
        int[] iArr158 = iArr60[2];
        iArr158[0] = 224;
        iArr157[1] = 672;
        iArr158[1] = 672;
        int[] iArr159 = iArr63[2];
        iArr159[0] = 256;
        int[] iArr160 = iArr65[2];
        iArr160[0] = 256;
        iArr159[1] = 768;
        iArr160[1] = 768;
        int[] iArr161 = iArr68[2];
        iArr161[0] = 320;
        int[] iArr162 = iArr70[2];
        iArr162[0] = 320;
        iArr161[1] = 960;
        iArr162[1] = 960;
        int[] iArr163 = iArr73[2];
        iArr163[0] = 384;
        int[] iArr164 = iArr75[2];
        iArr164[0] = 384;
        iArr163[1] = 1152;
        iArr164[1] = 1152;
        int[] iArr165 = iArr78[2];
        iArr165[0] = 448;
        int[] iArr166 = iArr80[2];
        iArr166[0] = 448;
        iArr165[1] = 1344;
        iArr166[1] = 1344;
        int[] iArr167 = iArr83[2];
        iArr167[0] = 512;
        int[] iArr168 = iArr85[2];
        iArr168[0] = 512;
        iArr167[1] = 1536;
        iArr168[1] = 1536;
        int[] iArr169 = iArr88[2];
        iArr169[0] = 576;
        int[] iArr170 = iArr90[2];
        iArr170[0] = 576;
        iArr169[1] = 1728;
        iArr170[1] = 1728;
        int[] iArr171 = iArr93[2];
        iArr171[0] = 640;
        int[] iArr172 = iArr95[2];
        iArr172[0] = 640;
        iArr171[1] = 1920;
        iArr172[1] = 1920;
    }

    public b(com.googlecode.mp4parser.e eVar) throws IOException {
        this(eVar, "eng");
    }

    private com.coremedia.iso.boxes.sampleentry.c b() throws IOException {
        int i10;
        com.googlecode.mp4parser.boxes.mp4.objectdescriptors.c cVar = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.c(this.f33066f.get(0).a());
        if (cVar.c(16) != 2935) {
            throw new RuntimeException("Stream doesn't seem to be AC3");
        }
        cVar.c(16);
        int iC = cVar.c(2);
        if (iC == 0) {
            i10 = 48000;
        } else if (iC == 1) {
            i10 = 44100;
        } else {
            if (iC != 2) {
                throw new RuntimeException("Unsupported Sample Rate");
            }
            i10 = LogType.UNEXP_KNOWN_REASON;
        }
        int iC2 = cVar.c(6);
        int iC3 = cVar.c(5);
        int iC4 = cVar.c(3);
        int iC5 = cVar.c(3);
        if (iC3 == 16) {
            throw new RuntimeException("You cannot read E-AC-3 track with AC3TrackImpl.class - user EC3TrackImpl.class");
        }
        if (iC3 == 9) {
            i10 /= 2;
        } else if (iC3 != 8 && iC3 != 6) {
            throw new RuntimeException("Unsupported bsid");
        }
        if (iC5 != 1 && (iC5 & 1) == 1) {
            cVar.c(2);
        }
        if ((iC5 & 4) != 0) {
            cVar.c(2);
        }
        if (iC5 == 2) {
            cVar.c(2);
        }
        switch (iC5) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
                int iC6 = cVar.c(1);
                com.coremedia.iso.boxes.sampleentry.c cVar2 = new com.coremedia.iso.boxes.sampleentry.c(com.coremedia.iso.boxes.sampleentry.c.I);
                cVar2.f0(2);
                cVar2.l0(i10);
                cVar2.j(1);
                cVar2.m0(16);
                com.googlecode.mp4parser.boxes.a aVar = new com.googlecode.mp4parser.boxes.a();
                aVar.A(iC5);
                aVar.B(iC2 >> 1);
                aVar.C(iC3);
                aVar.D(iC4);
                aVar.E(iC);
                aVar.F(iC6);
                aVar.G(0);
                cVar2.m(aVar);
                return cVar2;
            default:
                throw new RuntimeException("Unsupported acmod");
        }
    }

    private int c(int i10, int i11) {
        int i12 = i10 >>> 1;
        int i13 = i10 & 1;
        if (i12 > 18 || i13 > 1 || i11 > 2) {
            throw new RuntimeException("Cannot determine framesize of current sample");
        }
        return f33064j[i12][i13][i11][1] * 2;
    }

    private List<com.googlecode.mp4parser.authoring.f> d() throws IOException {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(5);
        ArrayList arrayList = new ArrayList();
        while (-1 != this.f33065e.read(byteBufferAllocate)) {
            long jC = c(byteBufferAllocate.get(4) & Utf8.REPLACEMENT_BYTE, byteBufferAllocate.get(4) >> 6);
            arrayList.add(new a(this.f33065e.position() - 5, jC, this.f33065e));
            com.googlecode.mp4parser.e eVar = this.f33065e;
            eVar.W((eVar.position() - 5) + jC);
            byteBufferAllocate.rewind();
        }
        long[] jArr = new long[arrayList.size()];
        this.f33067g = jArr;
        Arrays.fill(jArr, 1536L);
        return arrayList;
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public List<com.coremedia.iso.boxes.i.a> E() {
        return null;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public s0 F() {
        return this.f33069i;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public com.googlecode.mp4parser.authoring.i H() {
        return this.f33068h;
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
        return this.f33066f;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public synchronized long[] Z() {
        return this.f33067g;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f33065e.close();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public String getHandler() {
        return "soun";
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public List<r0.a> h0() {
        return null;
    }

    public b(com.googlecode.mp4parser.e eVar, String str) throws IOException {
        super(eVar.toString());
        com.googlecode.mp4parser.authoring.i iVar = new com.googlecode.mp4parser.authoring.i();
        this.f33068h = iVar;
        this.f33065e = eVar;
        iVar.p(str);
        this.f33066f = d();
        this.f33069i = new s0();
        com.coremedia.iso.boxes.sampleentry.c cVarB = b();
        this.f33069i.m(cVarB);
        this.f33068h.m(new Date());
        this.f33068h.s(new Date());
        this.f33068h.p(str);
        this.f33068h.t(cVarB.O());
        this.f33068h.v(1.0f);
    }
}

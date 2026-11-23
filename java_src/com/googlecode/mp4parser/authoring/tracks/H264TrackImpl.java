package com.googlecode.mp4parser.authoring.tracks;

import com.coremedia.iso.boxes.r0;
import com.coremedia.iso.boxes.s0;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
public class H264TrackImpl extends com.googlecode.mp4parser.authoring.tracks.c {
    private static final Logger F = Logger.getLogger(H264TrackImpl.class.getName());
    private int A;
    private c B;
    int C;
    private boolean D;
    private String E;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    Map<Integer, byte[]> f32935l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    Map<Integer, f5.h> f32936m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    Map<Integer, byte[]> f32937n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    Map<Integer, f5.e> f32938o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    s0 f32939p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private List<com.googlecode.mp4parser.authoring.f> f32940q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    f5.h f32941r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    f5.e f32942s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    f5.h f32943t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    f5.e f32944u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    com.googlecode.mp4parser.util.n<Integer, byte[]> f32945v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    com.googlecode.mp4parser.util.n<Integer, byte[]> f32946w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f32947x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f32948y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private long f32949z;

    public static class SliceHeader {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f32950a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public SliceType f32951b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f32952c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f32953d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f32954e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f32955f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public boolean f32956g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f32957h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f32958i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f32959j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f32960k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public int f32961l;

        public enum SliceType {
            P,
            B,
            I,
            SP,
            SI;

            /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
            public static SliceType[] valuesCustom() {
                SliceType[] sliceTypeArrValuesCustom = values();
                int length = sliceTypeArrValuesCustom.length;
                SliceType[] sliceTypeArr = new SliceType[length];
                System.arraycopy(sliceTypeArrValuesCustom, 0, sliceTypeArr, 0, length);
                return sliceTypeArr;
            }
        }

        public SliceHeader(InputStream inputStream, Map<Integer, f5.h> map, Map<Integer, f5.e> map2, boolean z10) {
            this.f32955f = false;
            this.f32956g = false;
            try {
                inputStream.read();
                com.googlecode.mp4parser.h264.read.b bVar = new com.googlecode.mp4parser.h264.read.b(inputStream);
                this.f32950a = bVar.y("SliceHeader: first_mb_in_slice");
                switch (bVar.y("SliceHeader: slice_type")) {
                    case 0:
                    case 5:
                        this.f32951b = SliceType.P;
                        break;
                    case 1:
                    case 6:
                        this.f32951b = SliceType.B;
                        break;
                    case 2:
                    case 7:
                        this.f32951b = SliceType.I;
                        break;
                    case 3:
                    case 8:
                        this.f32951b = SliceType.SP;
                        break;
                    case 4:
                    case 9:
                        this.f32951b = SliceType.SI;
                        break;
                }
                int iY = bVar.y("SliceHeader: pic_parameter_set_id");
                this.f32952c = iY;
                f5.e eVar = map2.get(Integer.valueOf(iY));
                f5.h hVar = map.get(Integer.valueOf(eVar.f91061f));
                if (hVar.A) {
                    this.f32953d = bVar.w(2, "SliceHeader: colour_plane_id");
                }
                this.f32954e = bVar.w(hVar.f91096j + 4, "SliceHeader: frame_num");
                if (!hVar.F) {
                    boolean zP = bVar.p("SliceHeader: field_pic_flag");
                    this.f32955f = zP;
                    if (zP) {
                        this.f32956g = bVar.p("SliceHeader: bottom_field_flag");
                    }
                }
                if (z10) {
                    this.f32957h = bVar.y("SliceHeader: idr_pic_id");
                }
                if (hVar.f91087a == 0) {
                    this.f32958i = bVar.w(hVar.f91097k + 4, "SliceHeader: pic_order_cnt_lsb");
                    if (eVar.f91062g && !this.f32955f) {
                        this.f32959j = bVar.t("SliceHeader: delta_pic_order_cnt_bottom");
                    }
                }
                if (hVar.f91087a != 1 || hVar.f91089c) {
                    return;
                }
                this.f32960k = bVar.t("delta_pic_order_cnt_0");
                if (!eVar.f91062g || this.f32955f) {
                    return;
                }
                this.f32961l = bVar.t("delta_pic_order_cnt_1");
            } catch (IOException e10) {
                throw new RuntimeException(e10);
            }
        }

        public String toString() {
            return "SliceHeader{first_mb_in_slice=" + this.f32950a + ", slice_type=" + this.f32951b + ", pic_parameter_set_id=" + this.f32952c + ", colour_plane_id=" + this.f32953d + ", frame_num=" + this.f32954e + ", field_pic_flag=" + this.f32955f + ", bottom_field_flag=" + this.f32956g + ", idr_pic_id=" + this.f32957h + ", pic_order_cnt_lsb=" + this.f32958i + ", delta_pic_order_cnt_bottom=" + this.f32959j + '}';
        }
    }

    class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f32962a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f32963b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f32964c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f32965d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f32966e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f32967f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        int f32968g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        int f32969h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        int f32970i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        int f32971j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        boolean f32972k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        int f32973l;

        public a(ByteBuffer byteBuffer, int i10, int i11) {
            SliceHeader sliceHeader = new SliceHeader(com.googlecode.mp4parser.authoring.tracks.c.a(H264TrackImpl.this.new b(byteBuffer)), H264TrackImpl.this.f32936m, H264TrackImpl.this.f32938o, i11 == 5);
            this.f32962a = sliceHeader.f32954e;
            int i12 = sliceHeader.f32952c;
            this.f32963b = i12;
            this.f32964c = sliceHeader.f32955f;
            this.f32965d = sliceHeader.f32956g;
            this.f32966e = i10;
            this.f32967f = H264TrackImpl.this.f32936m.get(Integer.valueOf(H264TrackImpl.this.f32938o.get(Integer.valueOf(i12)).f91061f)).f91087a;
            this.f32968g = sliceHeader.f32959j;
            this.f32969h = sliceHeader.f32958i;
            this.f32970i = sliceHeader.f32960k;
            this.f32971j = sliceHeader.f32961l;
            this.f32973l = sliceHeader.f32957h;
        }

        boolean a(a aVar) {
            boolean z10;
            boolean z11;
            boolean z12;
            if (aVar.f32962a != this.f32962a || aVar.f32963b != this.f32963b || (z10 = aVar.f32964c) != this.f32964c) {
                return true;
            }
            if ((z10 && aVar.f32965d != this.f32965d) || aVar.f32966e != this.f32966e) {
                return true;
            }
            int i10 = aVar.f32967f;
            if (i10 == 0 && this.f32967f == 0 && (aVar.f32969h != this.f32969h || aVar.f32968g != this.f32968g)) {
                return true;
            }
            if (!(i10 == 1 && this.f32967f == 1 && (aVar.f32970i != this.f32970i || aVar.f32971j != this.f32971j)) && (z11 = aVar.f32972k) == (z12 = this.f32972k)) {
                return z11 && z12 && aVar.f32973l != this.f32973l;
            }
            return true;
        }
    }

    public class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f32977a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f32978b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f32979c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f32980d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f32981e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        boolean f32982f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        int f32983g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        int f32984h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        int f32985i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        int f32986j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        int f32987k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        int f32988l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        int f32989m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        int f32990n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        int f32991o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        int f32992p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        int f32993q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        int f32994r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        int f32995s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        f5.h f32996t;

        public c(InputStream inputStream, f5.h hVar) throws IOException {
            int i10;
            boolean z10 = false;
            this.f32977a = 0;
            this.f32978b = 0;
            this.f32996t = hVar;
            inputStream.read();
            int iAvailable = inputStream.available();
            int i11 = 0;
            while (i11 < iAvailable) {
                this.f32977a = z10 ? 1 : 0;
                this.f32978b = z10 ? 1 : 0;
                int i12 = inputStream.read();
                int i13 = i11 + 1;
                while (i12 == 255) {
                    this.f32977a += i12;
                    i12 = inputStream.read();
                    i13++;
                    z10 = false;
                }
                this.f32977a += i12;
                int i14 = inputStream.read();
                i11 = i13 + 1;
                while (i14 == 255) {
                    this.f32978b += i14;
                    i14 = inputStream.read();
                    i11++;
                    z10 = false;
                }
                int i15 = this.f32978b + i14;
                this.f32978b = i15;
                if (iAvailable - i11 < i15) {
                    i11 = iAvailable;
                } else if (this.f32977a == 1) {
                    f5.i iVar = hVar.M;
                    if (iVar == null || (iVar.f91134v == null && iVar.f91135w == null && !iVar.f91133u)) {
                        for (int i16 = 0; i16 < this.f32978b; i16++) {
                            inputStream.read();
                            i11++;
                        }
                    } else {
                        byte[] bArr = new byte[i15];
                        inputStream.read(bArr);
                        i11 += this.f32978b;
                        com.googlecode.mp4parser.h264.read.b bVar = new com.googlecode.mp4parser.h264.read.b(new ByteArrayInputStream(bArr));
                        f5.i iVar2 = hVar.M;
                        f5.d dVar = iVar2.f91134v;
                        if (dVar == null && iVar2.f91135w == null) {
                            this.f32979c = z10;
                        } else {
                            this.f32979c = true;
                            this.f32980d = bVar.w(dVar.f91053h + 1, "SEI: cpb_removal_delay");
                            this.f32981e = bVar.w(hVar.M.f91134v.f91054i + 1, "SEI: dpb_removal_delay");
                        }
                        if (hVar.M.f91133u) {
                            int iW = bVar.w(4, "SEI: pic_struct");
                            this.f32983g = iW;
                            switch (iW) {
                                case 3:
                                case 4:
                                case 7:
                                    i10 = 2;
                                    break;
                                case 5:
                                case 6:
                                case 8:
                                    i10 = 3;
                                    break;
                                default:
                                    i10 = 1;
                                    break;
                            }
                            for (int i17 = 0; i17 < i10; i17++) {
                                boolean zP = bVar.p("pic_timing SEI: clock_timestamp_flag[" + i17 + "]");
                                this.f32982f = zP;
                                if (zP) {
                                    this.f32984h = bVar.w(2, "pic_timing SEI: ct_type");
                                    this.f32985i = bVar.w(1, "pic_timing SEI: nuit_field_based_flag");
                                    this.f32986j = bVar.w(5, "pic_timing SEI: counting_type");
                                    this.f32987k = bVar.w(1, "pic_timing SEI: full_timestamp_flag");
                                    this.f32988l = bVar.w(1, "pic_timing SEI: discontinuity_flag");
                                    this.f32989m = bVar.w(1, "pic_timing SEI: cnt_dropped_flag");
                                    this.f32990n = bVar.w(8, "pic_timing SEI: n_frames");
                                    if (this.f32987k == 1) {
                                        this.f32991o = bVar.w(6, "pic_timing SEI: seconds_value");
                                        this.f32992p = bVar.w(6, "pic_timing SEI: minutes_value");
                                        this.f32993q = bVar.w(5, "pic_timing SEI: hours_value");
                                    } else if (bVar.p("pic_timing SEI: seconds_flag")) {
                                        this.f32991o = bVar.w(6, "pic_timing SEI: seconds_value");
                                        if (bVar.p("pic_timing SEI: minutes_flag")) {
                                            this.f32992p = bVar.w(6, "pic_timing SEI: minutes_value");
                                            if (bVar.p("pic_timing SEI: hours_flag")) {
                                                this.f32993q = bVar.w(5, "pic_timing SEI: hours_value");
                                            }
                                        }
                                    }
                                    f5.i iVar3 = hVar.M;
                                    f5.d dVar2 = iVar3.f91134v;
                                    if (dVar2 != null) {
                                        this.f32994r = dVar2.f91055j;
                                    } else {
                                        f5.d dVar3 = iVar3.f91135w;
                                        if (dVar3 != null) {
                                            this.f32994r = dVar3.f91055j;
                                        } else {
                                            this.f32994r = 24;
                                        }
                                    }
                                    this.f32995s = bVar.w(24, "pic_timing SEI: time_offset");
                                }
                            }
                        }
                    }
                } else {
                    for (int i18 = 0; i18 < this.f32978b; i18++) {
                        inputStream.read();
                        i11++;
                    }
                }
                H264TrackImpl.F.fine(toString());
                z10 = false;
            }
        }

        public String toString() {
            String str = "SEIMessage{payloadType=" + this.f32977a + ", payloadSize=" + this.f32978b;
            if (this.f32977a == 1) {
                f5.i iVar = this.f32996t.M;
                if (iVar.f91134v != null || iVar.f91135w != null) {
                    str = String.valueOf(str) + ", cpb_removal_delay=" + this.f32980d + ", dpb_removal_delay=" + this.f32981e;
                }
                if (this.f32996t.M.f91133u) {
                    str = String.valueOf(str) + ", pic_struct=" + this.f32983g;
                    if (this.f32982f) {
                        str = String.valueOf(str) + ", ct_type=" + this.f32984h + ", nuit_field_based_flag=" + this.f32985i + ", counting_type=" + this.f32986j + ", full_timestamp_flag=" + this.f32987k + ", discontinuity_flag=" + this.f32988l + ", cnt_dropped_flag=" + this.f32989m + ", n_frames=" + this.f32990n + ", seconds_value=" + this.f32991o + ", minutes_value=" + this.f32992p + ", hours_value=" + this.f32993q + ", time_offset_length=" + this.f32994r + ", time_offset=" + this.f32995s;
                    }
                }
            }
            return String.valueOf(str) + '}';
        }
    }

    public H264TrackImpl(com.googlecode.mp4parser.e eVar, String str, long j10, int i10) throws IOException {
        super(eVar);
        this.f32935l = new HashMap();
        this.f32936m = new HashMap();
        this.f32937n = new HashMap();
        this.f32938o = new HashMap();
        this.f32941r = null;
        this.f32942s = null;
        this.f32943t = null;
        this.f32944u = null;
        this.f32945v = new com.googlecode.mp4parser.util.n<>();
        this.f32946w = new com.googlecode.mp4parser.util.n<>();
        this.C = 0;
        this.D = true;
        this.E = str;
        this.f32949z = j10;
        this.A = i10;
        if (j10 > 0 && i10 > 0) {
            this.D = false;
        }
        j(new com.googlecode.mp4parser.authoring.tracks.c.a(eVar));
    }

    private void f() {
        if (this.D) {
            f5.i iVar = this.f32941r.M;
            if (iVar == null) {
                System.err.println("Warning: Can't determine frame rate. Guessing 25 fps");
                this.f32949z = com.baidu.oauth.sdkbqt.auth.i.f8197a;
                this.A = 3600;
                return;
            }
            long j10 = iVar.f91130r >> 1;
            this.f32949z = j10;
            int i10 = iVar.f91129q;
            this.A = i10;
            if (j10 == 0 || i10 == 0) {
                System.err.println("Warning: vuiParams contain invalid values: time_scale: " + this.f32949z + " and frame_tick: " + this.A + ". Setting frame rate to 25fps");
                this.f32949z = com.baidu.oauth.sdkbqt.auth.i.f8197a;
                this.A = 3600;
            }
        }
    }

    private void g(List<ByteBuffer> list) throws IOException {
        Iterator<ByteBuffer> it2 = list.iterator();
        int i10 = 0;
        boolean z10 = false;
        while (it2.hasNext()) {
            if ((it2.next().get(0) & 31) == 5) {
                z10 = true;
            }
        }
        int i11 = z10 ? 38 : 22;
        if (new SliceHeader(com.googlecode.mp4parser.authoring.tracks.c.a(new b(list.get(list.size() - 1))), this.f32936m, this.f32938o, z10).f32951b == SliceHeader.SliceType.B) {
            i11 += 4;
        }
        com.googlecode.mp4parser.authoring.f fVarB = b(list);
        list.clear();
        c cVar = this.B;
        if (cVar == null || cVar.f32990n == 0) {
            this.C = 0;
        }
        if (cVar != null && cVar.f32982f) {
            i10 = cVar.f32990n - this.C;
        } else if (cVar != null && cVar.f32979c) {
            i10 = cVar.f32981e / 2;
        }
        this.f33077g.add(new com.coremedia.iso.boxes.i.a(1, i10 * this.A));
        this.f33078h.add(new r0.a(i11));
        this.C++;
        this.f32940q.add(fVarB);
        if (z10) {
            this.f33079i.add(Integer.valueOf(this.f32940q.size()));
        }
    }

    private void h(ByteBuffer byteBuffer) throws IOException {
        b bVar = new b(byteBuffer);
        bVar.read();
        f5.e eVarB = f5.e.b(bVar);
        if (this.f32942s == null) {
            this.f32942s = eVarB;
        }
        this.f32944u = eVarB;
        byte[] bArrD = com.googlecode.mp4parser.authoring.tracks.c.d((ByteBuffer) byteBuffer.rewind());
        byte[] bArr = this.f32937n.get(Integer.valueOf(eVarB.f91060e));
        if (bArr != null && !Arrays.equals(bArr, bArrD)) {
            throw new RuntimeException("OMG - I got two SPS with same ID but different settings! (AVC3 is the solution)");
        }
        if (bArr == null) {
            this.f32946w.put(Integer.valueOf(this.f32940q.size()), bArrD);
        }
        this.f32937n.put(Integer.valueOf(eVarB.f91060e), bArrD);
        this.f32938o.put(Integer.valueOf(eVarB.f91060e), eVarB);
    }

    private void i(ByteBuffer byteBuffer) throws IOException {
        InputStream inputStreamA = com.googlecode.mp4parser.authoring.tracks.c.a(new b(byteBuffer));
        inputStreamA.read();
        f5.h hVarC = f5.h.c(inputStreamA);
        if (this.f32941r == null) {
            this.f32941r = hVarC;
            f();
        }
        this.f32943t = hVarC;
        byte[] bArrD = com.googlecode.mp4parser.authoring.tracks.c.d((ByteBuffer) byteBuffer.rewind());
        byte[] bArr = this.f32935l.get(Integer.valueOf(hVarC.f91112z));
        if (bArr != null && !Arrays.equals(bArr, bArrD)) {
            throw new RuntimeException("OMG - I got two SPS with same ID but different settings!");
        }
        if (bArr != null) {
            this.f32945v.put(Integer.valueOf(this.f32940q.size()), bArrD);
        }
        this.f32935l.put(Integer.valueOf(hVarC.f91112z), bArrD);
        this.f32936m.put(Integer.valueOf(hVarC.f91112z), hVarC);
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
    private void j(com.googlecode.mp4parser.authoring.tracks.c.a aVar) throws IOException {
        this.f32940q = new LinkedList();
        if (!k(aVar)) {
            throw new IOException();
        }
        if (!l()) {
            throw new IOException();
        }
        this.f32939p = new s0();
        com.coremedia.iso.boxes.sampleentry.h hVar = new com.coremedia.iso.boxes.sampleentry.h(com.coremedia.iso.boxes.sampleentry.h.f25109z);
        hVar.j(1);
        hVar.O(24);
        hVar.P(1);
        hVar.R(72.0d);
        hVar.c0(72.0d);
        hVar.d0(this.f32947x);
        hVar.Q(this.f32948y);
        hVar.M("AVC Coding");
        com.mp4parser.iso14496.part15.a aVar2 = new com.mp4parser.iso14496.part15.a();
        aVar2.T(new ArrayList(this.f32935l.values()));
        aVar2.Q(new ArrayList(this.f32937n.values()));
        aVar2.I(this.f32941r.f91111y);
        aVar2.J(this.f32941r.f91103q);
        aVar2.L(this.f32941r.f91100n);
        aVar2.K(this.f32941r.f91101o);
        aVar2.M(this.f32941r.f91095i.b());
        aVar2.N(1);
        aVar2.P(3);
        f5.h hVar2 = this.f32941r;
        aVar2.R((hVar2.f91105s ? 128 : 0) + (hVar2.f91106t ? 64 : 0) + (hVar2.f91107u ? 32 : 0) + (hVar2.f91108v ? 16 : 0) + (hVar2.f91109w ? 8 : 0) + ((int) (hVar2.f91104r & 3)));
        hVar.m(aVar2);
        this.f32939p.m(hVar);
        this.f33080j.m(new Date());
        this.f33080j.s(new Date());
        this.f33080j.p(this.E);
        this.f33080j.t(this.f32949z);
        this.f33080j.w(this.f32947x);
        this.f33080j.o(this.f32948y);
    }

    private boolean k(com.googlecode.mp4parser.authoring.tracks.c.a aVar) throws IOException {
        ArrayList arrayList = new ArrayList();
        a aVar2 = null;
        while (true) {
            ByteBuffer byteBufferC = c(aVar);
            if (byteBufferC != null) {
                byte b10 = byteBufferC.get(0);
                int i10 = (b10 >> 5) & 3;
                int i11 = b10 & 31;
                switch (i11) {
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                        a aVar3 = new a(byteBufferC, i10, i11);
                        if (aVar2 == null) {
                            aVar2 = aVar3;
                        } else if (aVar2.a(aVar3)) {
                            g(arrayList);
                            aVar2 = aVar3;
                        }
                        arrayList.add((ByteBuffer) byteBufferC.rewind());
                        continue;
                    case 6:
                        if (aVar2 != null) {
                            g(arrayList);
                            aVar2 = null;
                        }
                        this.B = new c(com.googlecode.mp4parser.authoring.tracks.c.a(new b(byteBufferC)), this.f32943t);
                        arrayList.add(byteBufferC);
                        continue;
                    case 7:
                        if (aVar2 != null) {
                            g(arrayList);
                            aVar2 = null;
                        }
                        i((ByteBuffer) byteBufferC.rewind());
                        continue;
                    case 8:
                        if (aVar2 != null) {
                            g(arrayList);
                            aVar2 = null;
                        }
                        h((ByteBuffer) byteBufferC.rewind());
                        continue;
                    case 9:
                        if (aVar2 != null) {
                            g(arrayList);
                            aVar2 = null;
                        }
                        arrayList.add(byteBufferC);
                        continue;
                    case 10:
                    case 11:
                        break;
                    case 12:
                    default:
                        System.err.println("Unknown NAL unit type: " + i11);
                        continue;
                    case 13:
                        throw new RuntimeException("Sequence parameter set extension is not yet handled. Needs TLC.");
                }
            }
        }
        g(arrayList);
        long[] jArr = new long[this.f32940q.size()];
        this.f33076f = jArr;
        Arrays.fill(jArr, this.A);
        return true;
    }

    private boolean l() {
        int iD;
        f5.h hVar = this.f32941r;
        this.f32947x = (hVar.f91099m + 1) * 16;
        int iC = hVar.F ? 1 : 2;
        this.f32948y = (hVar.f91098l + 1) * 16 * iC;
        if (hVar.G) {
            if ((!hVar.A ? hVar.f91095i.b() : 0) != 0) {
                iD = this.f32941r.f91095i.d();
                iC *= this.f32941r.f91095i.c();
            } else {
                iD = 1;
            }
            int i10 = this.f32947x;
            f5.h hVar2 = this.f32941r;
            this.f32947x = i10 - (iD * (hVar2.H + hVar2.I));
            this.f32948y -= iC * (hVar2.J + hVar2.K);
        }
        return true;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public s0 F() {
        return this.f32939p;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<com.googlecode.mp4parser.authoring.f> U() {
        return this.f32940q;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public String getHandler() {
        return "vide";
    }

    public class b extends InputStream {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final ByteBuffer f32975b;

        public b(ByteBuffer byteBuffer) {
            this.f32975b = byteBuffer.duplicate();
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            if (this.f32975b.hasRemaining()) {
                return this.f32975b.get() & 255;
            }
            return -1;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i10, int i11) throws IOException {
            if (!this.f32975b.hasRemaining()) {
                return -1;
            }
            int iMin = Math.min(i11, this.f32975b.remaining());
            this.f32975b.get(bArr, i10, iMin);
            return iMin;
        }
    }

    public H264TrackImpl(com.googlecode.mp4parser.e eVar, String str) throws IOException {
        this(eVar, str, -1L, -1);
    }

    public H264TrackImpl(com.googlecode.mp4parser.e eVar) throws IOException {
        this(eVar, "eng");
    }
}

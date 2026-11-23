package com.googlecode.mp4parser.authoring.tracks;

import java.io.EOFException;
import java.io.IOException;
import java.lang.reflect.Array;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class H265TrackImplOld {
    private static final int A = 4;
    private static final int B = 5;
    private static final int C = 6;
    private static final int D = 7;
    private static final int E = 8;
    private static final int F = 9;
    private static final int G = 16;
    private static final int H = 17;
    private static final int I = 18;
    private static final int J = 19;
    private static final int K = 20;
    private static final int L = 21;
    private static final long M = 1048576;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f32998f = 32;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int f32999g = 33;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f33000h = 34;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f33001i = 35;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int f33002j = 39;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int f33003k = 41;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int f33004l = 42;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int f33005m = 43;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int f33006n = 44;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int f33007o = 48;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final int f33008p = 49;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final int f33009q = 50;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final int f33010r = 51;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final int f33011s = 52;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final int f33012t = 53;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final int f33013u = 54;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final int f33014v = 55;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final int f33015w = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final int f33016x = 1;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final int f33017y = 2;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final int f33018z = 3;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    LinkedHashMap<Long, ByteBuffer> f33019a = new LinkedHashMap<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    LinkedHashMap<Long, ByteBuffer> f33020b = new LinkedHashMap<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    LinkedHashMap<Long, ByteBuffer> f33021c = new LinkedHashMap<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    List<Long> f33022d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    List<com.googlecode.mp4parser.authoring.f> f33023e = new ArrayList();

    public enum PARSE_STATE {
        AUD_SEI_SLICE,
        SEI_SLICE,
        SLICE_OES_EOB;

        /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
        public static PARSE_STATE[] valuesCustom() {
            PARSE_STATE[] parse_stateArrValuesCustom = values();
            int length = parse_stateArrValuesCustom.length;
            PARSE_STATE[] parse_stateArr = new PARSE_STATE[length];
            System.arraycopy(parse_stateArrValuesCustom, 0, parse_stateArr, 0, length);
            return parse_stateArr;
        }
    }

    class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        long f33024a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f33025b = 0;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        com.googlecode.mp4parser.e f33026c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        ByteBuffer f33027d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        long f33028e;

        a(com.googlecode.mp4parser.e eVar) throws IOException {
            this.f33026c = eVar;
            c();
        }

        void a() {
            this.f33025b++;
        }

        void b() {
            int i10 = this.f33025b + 3;
            this.f33025b = i10;
            this.f33028e = this.f33024a + ((long) i10);
        }

        public void c() throws IOException {
            com.googlecode.mp4parser.e eVar = this.f33026c;
            this.f33027d = eVar.r(this.f33024a, Math.min(eVar.size() - this.f33024a, 1048576L));
        }

        public ByteBuffer d() {
            long j10 = this.f33028e;
            long j11 = this.f33024a;
            if (j10 < j11) {
                throw new RuntimeException("damn! NAL exceeds buffer");
            }
            this.f33027d.position((int) (j10 - j11));
            ByteBuffer byteBufferSlice = this.f33027d.slice();
            byteBufferSlice.limit((int) (((long) this.f33025b) - (this.f33028e - this.f33024a)));
            return byteBufferSlice;
        }

        boolean e() throws IOException {
            int iLimit = this.f33027d.limit();
            int i10 = this.f33025b;
            if (iLimit - i10 >= 3) {
                return this.f33027d.get(i10) == 0 && this.f33027d.get(this.f33025b + 1) == 0 && (this.f33027d.get(this.f33025b + 2) == 0 || this.f33027d.get(this.f33025b + 2) == 1);
            }
            if (this.f33024a + ((long) i10) + 3 > this.f33026c.size()) {
                return this.f33024a + ((long) this.f33025b) == this.f33026c.size();
            }
            this.f33024a = this.f33028e;
            this.f33025b = 0;
            c();
            return e();
        }

        boolean f() throws IOException {
            int iLimit = this.f33027d.limit();
            int i10 = this.f33025b;
            if (iLimit - i10 >= 3) {
                return this.f33027d.get(i10) == 0 && this.f33027d.get(this.f33025b + 1) == 0 && this.f33027d.get(this.f33025b + 2) == 1;
            }
            if (this.f33024a + ((long) i10) == this.f33026c.size()) {
                throw new EOFException();
            }
            throw new RuntimeException("buffer repositioning require");
        }
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f33030a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f33031b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f33032c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f33033d;
    }

    public H265TrackImplOld(com.googlecode.mp4parser.e eVar) throws IOException {
        a aVar = new a(eVar);
        ArrayList arrayList = new ArrayList();
        long j10 = 1;
        int i10 = 0;
        while (true) {
            ByteBuffer byteBufferB = b(aVar);
            if (byteBufferB == null) {
                System.err.println("");
                com.mp4parser.iso14496.part15.d dVar = new com.mp4parser.iso14496.part15.d();
                dVar.y(c());
                dVar.z(0);
                return;
            }
            b bVarE = e(byteBufferB);
            switch (bVarE.f33031b) {
                case 32:
                    this.f33019a.put(Long.valueOf(j10), byteBufferB);
                    break;
                case 33:
                    this.f33020b.put(Long.valueOf(j10), byteBufferB);
                    break;
                case 34:
                    this.f33021c.put(Long.valueOf(j10), byteBufferB);
                    break;
            }
            int i11 = bVarE.f33031b;
            i10 = i11 < 32 ? i11 : i10;
            if (g(i11, byteBufferB, arrayList) && !arrayList.isEmpty()) {
                System.err.println("##########################");
                for (ByteBuffer byteBuffer : arrayList) {
                    b bVarE2 = e(byteBuffer);
                    System.err.println(String.format("type: %3d - layer: %3d - tempId: %3d - size: %3d", Integer.valueOf(bVarE2.f33031b), Integer.valueOf(bVarE2.f33032c), Integer.valueOf(bVarE2.f33033d), Integer.valueOf(byteBuffer.limit())));
                }
                System.err.println("                          ##########################");
                this.f33023e.add(a(arrayList));
                arrayList.clear();
                j10++;
            }
            arrayList.add(byteBufferB);
            if (i10 >= 16 && i10 <= 21) {
                this.f33022d.add(Long.valueOf(j10));
            }
        }
    }

    private ByteBuffer b(a aVar) throws IOException {
        while (!aVar.f()) {
            try {
                aVar.a();
            } catch (EOFException unused) {
                return null;
            }
        }
        aVar.b();
        while (!aVar.e()) {
            aVar.a();
        }
        return aVar.d();
    }

    private List<com.mp4parser.iso14496.part15.d.a> c() {
        com.mp4parser.iso14496.part15.d.a aVar = new com.mp4parser.iso14496.part15.d.a();
        aVar.f75654a = true;
        aVar.f75656c = 32;
        aVar.f75657d = new ArrayList();
        for (ByteBuffer byteBuffer : this.f33019a.values()) {
            byte[] bArr = new byte[byteBuffer.limit()];
            byteBuffer.position(0);
            byteBuffer.get(bArr);
            aVar.f75657d.add(bArr);
        }
        com.mp4parser.iso14496.part15.d.a aVar2 = new com.mp4parser.iso14496.part15.d.a();
        aVar2.f75654a = true;
        aVar2.f75656c = 33;
        aVar2.f75657d = new ArrayList();
        for (ByteBuffer byteBuffer2 : this.f33020b.values()) {
            byte[] bArr2 = new byte[byteBuffer2.limit()];
            byteBuffer2.position(0);
            byteBuffer2.get(bArr2);
            aVar2.f75657d.add(bArr2);
        }
        com.mp4parser.iso14496.part15.d.a aVar3 = new com.mp4parser.iso14496.part15.d.a();
        aVar3.f75654a = true;
        aVar3.f75656c = 33;
        aVar3.f75657d = new ArrayList();
        for (ByteBuffer byteBuffer3 : this.f33021c.values()) {
            byte[] bArr3 = new byte[byteBuffer3.limit()];
            byteBuffer3.position(0);
            byteBuffer3.get(bArr3);
            aVar3.f75657d.add(bArr3);
        }
        return Arrays.asList(aVar, aVar2, aVar3);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0064  */
    /* JADX WARN: Code duplicated, block: B:21:0x007f  */
    /* JADX WARN: Code duplicated, block: B:24:0x009a  */
    /* JADX WARN: Code duplicated, block: B:25:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:28:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:30:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:32:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:36:0x00f2 A[SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:19:0x0064, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:21:0x007f, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:24:0x009a, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:25:0x00b2, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:28:0x00cd, please report this as an issue */
    private void f(boolean z10, int i10, com.googlecode.mp4parser.h264.read.b bVar) throws IOException {
        boolean zP;
        boolean zP2;
        boolean zP3;
        boolean[] zArr;
        boolean[] zArr2;
        boolean[] zArr3;
        int[] iArr;
        int[] iArr2;
        boolean zP4;
        if (z10) {
            zP = bVar.p("nal_hrd_parameters_present_flag");
            zP2 = bVar.p("vcl_hrd_parameters_present_flag");
            if (zP || zP2) {
                zP3 = bVar.p("sub_pic_hrd_params_present_flag");
                if (zP3) {
                    bVar.w(8, "tick_divisor_minus2");
                    bVar.w(5, "du_cpb_removal_delay_increment_length_minus1");
                    bVar.p("sub_pic_cpb_params_in_pic_timing_sei_flag");
                    bVar.w(5, "dpb_output_delay_du_length_minus1");
                }
                bVar.w(4, "bit_rate_scale");
                bVar.w(4, "cpb_size_scale");
                if (zP3) {
                    bVar.w(4, "cpb_size_du_scale");
                }
                bVar.w(5, "initial_cpb_removal_delay_length_minus1");
                bVar.w(5, "au_cpb_removal_delay_length_minus1");
                bVar.w(5, "dpb_output_delay_length_minus1");
            }
            zArr = new boolean[i10];
            zArr2 = new boolean[i10];
            zArr3 = new boolean[i10];
            iArr = new int[i10];
            iArr2 = new int[i10];
            for (int i11 = 0; i11 <= i10; i11++) {
                zP4 = bVar.p("fixed_pic_rate_general_flag[" + i11 + "]");
                zArr[i11] = zP4;
                if (!zP4) {
                    zArr2[i11] = bVar.p("fixed_pic_rate_within_cvs_flag[" + i11 + "]");
                }
                if (zArr2[i11]) {
                    iArr2[i11] = bVar.y("elemental_duration_in_tc_minus1[" + i11 + "]");
                } else {
                    zArr3[i11] = bVar.p("low_delay_hrd_flag[" + i11 + "]");
                }
                if (!zArr3[i11]) {
                    iArr[i11] = bVar.y("cpb_cnt_minus1[" + i11 + "]");
                }
                if (zP) {
                    j(i11, iArr[i11], zP3, bVar);
                }
                if (zP2) {
                    j(i11, iArr[i11], zP3, bVar);
                }
            }
        }
        zP = false;
        zP2 = false;
        zP3 = false;
        zArr = new boolean[i10];
        zArr2 = new boolean[i10];
        zArr3 = new boolean[i10];
        iArr = new int[i10];
        iArr2 = new int[i10];
        while (i11 <= i10) {
            zP4 = bVar.p("fixed_pic_rate_general_flag[" + i11 + "]");
            zArr[i11] = zP4;
            if (!zP4) {
                zArr2[i11] = bVar.p("fixed_pic_rate_within_cvs_flag[" + i11 + "]");
            }
            if (zArr2[i11]) {
                iArr2[i11] = bVar.y("elemental_duration_in_tc_minus1[" + i11 + "]");
            } else {
                zArr3[i11] = bVar.p("low_delay_hrd_flag[" + i11 + "]");
            }
            if (!zArr3[i11]) {
                iArr[i11] = bVar.y("cpb_cnt_minus1[" + i11 + "]");
            }
            if (zP) {
                j(i11, iArr[i11], zP3, bVar);
            }
            if (zP2) {
                j(i11, iArr[i11], zP3, bVar);
            }
        }
    }

    public static void h(String[] strArr) throws IOException {
        new H265TrackImplOld(new com.googlecode.mp4parser.g("c:\\content\\test-UHD-HEVC_01_FMV_Med_track1.hvc"));
    }

    protected com.googlecode.mp4parser.authoring.f a(List<ByteBuffer> list) {
        byte[] bArr = new byte[list.size() * 4];
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        Iterator<ByteBuffer> it2 = list.iterator();
        while (it2.hasNext()) {
            byteBufferWrap.putInt(it2.next().remaining());
        }
        ByteBuffer[] byteBufferArr = new ByteBuffer[list.size() * 2];
        for (int i10 = 0; i10 < list.size(); i10++) {
            int i11 = i10 * 2;
            byteBufferArr[i11] = ByteBuffer.wrap(bArr, i10 * 4, 4);
            byteBufferArr[i11 + 1] = list.get(i10);
        }
        return new com.googlecode.mp4parser.authoring.g(byteBufferArr);
    }

    public int d(ByteBuffer byteBuffer) throws IOException {
        com.googlecode.mp4parser.h264.read.b bVar = new com.googlecode.mp4parser.h264.read.b(Channels.newInputStream(new com.googlecode.mp4parser.util.b((ByteBuffer) byteBuffer.position(0))));
        bVar.w(4, "vps_parameter_set_id");
        bVar.w(2, "vps_reserved_three_2bits");
        bVar.w(6, "vps_max_layers_minus1");
        int iW = bVar.w(3, "vps_max_sub_layers_minus1");
        bVar.p("vps_temporal_id_nesting_flag");
        bVar.w(16, "vps_reserved_0xffff_16bits");
        i(iW, bVar);
        boolean zP = bVar.p("vps_sub_layer_ordering_info_present_flag");
        int[] iArr = new int[zP ? 0 : iW];
        int[] iArr2 = new int[zP ? 0 : iW];
        int[] iArr3 = new int[zP ? 0 : iW];
        for (int i10 = zP ? 0 : iW; i10 <= iW; i10++) {
            iArr[i10] = bVar.y("vps_max_dec_pic_buffering_minus1[" + i10 + "]");
            iArr2[i10] = bVar.y("vps_max_dec_pic_buffering_minus1[" + i10 + "]");
            iArr3[i10] = bVar.y("vps_max_dec_pic_buffering_minus1[" + i10 + "]");
        }
        int iW2 = bVar.w(6, "vps_max_layer_id");
        int iY = bVar.y("vps_num_layer_sets_minus1");
        boolean[][] zArr = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, iY, iW2);
        for (int i11 = 1; i11 <= iY; i11++) {
            for (int i12 = 0; i12 <= iW2; i12++) {
                zArr[i11][i12] = bVar.p("layer_id_included_flag[" + i11 + "][" + i12 + "]");
            }
        }
        if (bVar.p("vps_timing_info_present_flag")) {
            bVar.w(32, "vps_num_units_in_tick");
            bVar.w(32, "vps_time_scale");
            if (bVar.p("vps_poc_proportional_to_timing_flag")) {
                bVar.y("vps_num_ticks_poc_diff_one_minus1");
            }
            int iY2 = bVar.y("vps_num_hrd_parameters");
            int[] iArr4 = new int[iY2];
            boolean[] zArr2 = new boolean[iY2];
            for (int i13 = 0; i13 < iY2; i13++) {
                iArr4[i13] = bVar.y("hrd_layer_set_idx[" + i13 + "]");
                if (i13 > 0) {
                    zArr2[i13] = bVar.p("cprms_present_flag[" + i13 + "]");
                } else {
                    zArr2[0] = true;
                }
                f(zArr2[i13], iW, bVar);
            }
        }
        if (bVar.p("vps_extension_flag")) {
            while (bVar.f()) {
                bVar.p("vps_extension_data_flag");
            }
        }
        bVar.v();
        return 0;
    }

    public b e(ByteBuffer byteBuffer) {
        byteBuffer.position(0);
        int i10 = com.coremedia.iso.g.i(byteBuffer);
        b bVar = new b();
        bVar.f33030a = (32768 & i10) >> 15;
        bVar.f33031b = (i10 & 32256) >> 9;
        bVar.f33032c = (i10 & 504) >> 3;
        bVar.f33033d = i10 & 7;
        return bVar;
    }

    boolean g(int i10, ByteBuffer byteBuffer, List<ByteBuffer> list) {
        if (list.isEmpty()) {
            return true;
        }
        boolean z10 = e(list.get(list.size() - 1)).f33031b <= 31;
        switch (i10) {
            case 32:
            case 33:
            case 34:
            case 35:
            case 39:
            case 41:
            case 42:
            case 43:
            case 44:
            case 48:
            case 49:
            case 50:
            case 51:
            case 52:
            case 53:
            case 54:
            case 55:
                if (z10) {
                    return true;
                }
                break;
        }
        switch (i10) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                break;
            default:
                switch (i10) {
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                        break;
                    default:
                        return false;
                }
                break;
        }
        byteBuffer.position(0);
        byteBuffer.get(new byte[50]);
        byteBuffer.position(2);
        return z10 && (com.coremedia.iso.g.p(byteBuffer) & 128) > 0;
    }

    public void i(int i10, com.googlecode.mp4parser.h264.read.b bVar) throws IOException {
        int i11 = 2;
        bVar.w(2, "general_profile_space ");
        bVar.p("general_tier_flag");
        bVar.w(5, "general_profile_idc");
        int i12 = 32;
        boolean[] zArr = new boolean[32];
        int i13 = 0;
        while (i13 < i12) {
            zArr[i13] = bVar.p("general_profile_compatibility_flag[" + i13 + "]");
            i13++;
            i12 = 32;
            i11 = 2;
        }
        bVar.p("general_progressive_source_flag");
        bVar.p("general_interlaced_source_flag");
        bVar.p("general_non_packed_constraint_flag");
        bVar.p("general_frame_only_constraint_flag");
        bVar.w(44, "general_reserved_zero_44bits");
        int i14 = 8;
        bVar.w(8, "general_level_idc");
        boolean[] zArr2 = new boolean[i10];
        boolean[] zArr3 = new boolean[i10];
        int i15 = 0;
        while (i15 < i10) {
            zArr2[i15] = bVar.p("sub_layer_profile_present_flag[" + i15 + "]");
            zArr3[i15] = bVar.p("sub_layer_level_present_flag[" + i15 + "]");
            i15++;
            i10 = i10;
            i12 = 32;
            i11 = 2;
            i14 = 8;
        }
        if (i10 > 0) {
            for (int i16 = i10; i16 < i14; i16++) {
                bVar.w(i11, "reserved_zero_2bits");
            }
        }
        int[] iArr = new int[i10];
        boolean[] zArr4 = new boolean[i10];
        int[] iArr2 = new int[i10];
        boolean[][] zArr5 = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, i10, i12);
        boolean[] zArr6 = new boolean[i10];
        boolean[] zArr7 = new boolean[i10];
        boolean[] zArr8 = new boolean[i10];
        boolean[] zArr9 = new boolean[i10];
        int[] iArr3 = new int[i10];
        int i17 = 0;
        while (i17 < i10) {
            if (zArr2[i17]) {
                iArr[i17] = bVar.w(2, "sub_layer_profile_space[" + i17 + "]");
                zArr4[i17] = bVar.p("sub_layer_tier_flag[" + i17 + "]");
                iArr2[i17] = bVar.w(5, "sub_layer_profile_idc[" + i17 + "]");
                int i18 = 0;
                while (i18 < 32) {
                    zArr5[i17][i18] = bVar.p("sub_layer_profile_compatibility_flag[" + i17 + "][" + i18 + "]");
                    i18++;
                    zArr6 = zArr6;
                }
                zArr6[i17] = bVar.p("sub_layer_progressive_source_flag[" + i17 + "]");
                zArr7[i17] = bVar.p("sub_layer_interlaced_source_flag[" + i17 + "]");
                zArr8[i17] = bVar.p("sub_layer_non_packed_constraint_flag[" + i17 + "]");
                zArr9[i17] = bVar.p("sub_layer_frame_only_constraint_flag[" + i17 + "]");
                bVar.s(44, "reserved");
            }
            boolean[] zArr10 = zArr6;
            if (zArr3[i17]) {
                iArr3[i17] = bVar.w(8, "sub_layer_level_idc");
            }
            i17++;
            i10 = i10;
            zArr6 = zArr10;
        }
    }

    void j(int i10, int i11, boolean z10, com.googlecode.mp4parser.h264.read.b bVar) throws IOException {
        int[] iArr = new int[i11];
        int[] iArr2 = new int[i11];
        int[] iArr3 = new int[i11];
        int[] iArr4 = new int[i11];
        boolean[] zArr = new boolean[i11];
        for (int i12 = 0; i12 <= i11; i12++) {
            iArr[i12] = bVar.y("bit_rate_value_minus1[" + i12 + "]");
            iArr2[i12] = bVar.y("cpb_size_value_minus1[" + i12 + "]");
            if (z10) {
                iArr3[i12] = bVar.y("cpb_size_du_value_minus1[" + i12 + "]");
                iArr4[i12] = bVar.y("bit_rate_du_value_minus1[" + i12 + "]");
            }
            zArr[i12] = bVar.p("cbr_flag[" + i12 + "]");
        }
    }
}

package f5;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes5.dex */
public class h extends b {
    public boolean A;
    public int B;
    public int C;
    public int D;
    public boolean E;
    public boolean F;
    public boolean G;
    public int H;
    public int I;
    public int J;
    public int K;
    public int[] L;
    public i M;
    public g N;
    public int O;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f91087a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f91088b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f91089c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f91090d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f91091e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f91092f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f91093g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f91094h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public c f91095i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f91096j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f91097k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f91098l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f91099m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f91100n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f91101o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f91102p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f91103q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public long f91104r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f91105s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f91106t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f91107u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f91108v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f91109w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f91110x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f91111y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public int f91112z;

    private static i b(com.googlecode.mp4parser.h264.read.b bVar) throws IOException {
        i iVar = new i();
        boolean zP = bVar.p("VUI: aspect_ratio_info_present_flag");
        iVar.f91113a = zP;
        if (zP) {
            a aVarA = a.a((int) bVar.s(8, "VUI: aspect_ratio"));
            iVar.f91137y = aVarA;
            if (aVarA == a.f91037b) {
                iVar.f91114b = (int) bVar.s(16, "VUI: sar_width");
                iVar.f91115c = (int) bVar.s(16, "VUI: sar_height");
            }
        }
        boolean zP2 = bVar.p("VUI: overscan_info_present_flag");
        iVar.f91116d = zP2;
        if (zP2) {
            iVar.f91117e = bVar.p("VUI: overscan_appropriate_flag");
        }
        boolean zP3 = bVar.p("VUI: video_signal_type_present_flag");
        iVar.f91118f = zP3;
        if (zP3) {
            iVar.f91119g = (int) bVar.s(3, "VUI: video_format");
            iVar.f91120h = bVar.p("VUI: video_full_range_flag");
            boolean zP4 = bVar.p("VUI: colour_description_present_flag");
            iVar.f91121i = zP4;
            if (zP4) {
                iVar.f91122j = (int) bVar.s(8, "VUI: colour_primaries");
                iVar.f91123k = (int) bVar.s(8, "VUI: transfer_characteristics");
                iVar.f91124l = (int) bVar.s(8, "VUI: matrix_coefficients");
            }
        }
        boolean zP5 = bVar.p("VUI: chroma_loc_info_present_flag");
        iVar.f91125m = zP5;
        if (zP5) {
            iVar.f91126n = bVar.y("VUI chroma_sample_loc_type_top_field");
            iVar.f91127o = bVar.y("VUI chroma_sample_loc_type_bottom_field");
        }
        boolean zP6 = bVar.p("VUI: timing_info_present_flag");
        iVar.f91128p = zP6;
        if (zP6) {
            iVar.f91129q = (int) bVar.s(32, "VUI: num_units_in_tick");
            iVar.f91130r = (int) bVar.s(32, "VUI: time_scale");
            iVar.f91131s = bVar.p("VUI: fixed_frame_rate_flag");
        }
        boolean zP7 = bVar.p("VUI: nal_hrd_parameters_present_flag");
        if (zP7) {
            iVar.f91134v = d(bVar);
        }
        boolean zP8 = bVar.p("VUI: vcl_hrd_parameters_present_flag");
        if (zP8) {
            iVar.f91135w = d(bVar);
        }
        if (zP7 || zP8) {
            iVar.f91132t = bVar.p("VUI: low_delay_hrd_flag");
        }
        iVar.f91133u = bVar.p("VUI: pic_struct_present_flag");
        if (bVar.p("VUI: bitstream_restriction_flag")) {
            i.a aVar = new i.a();
            iVar.f91136x = aVar;
            aVar.f91138a = bVar.p("VUI: motion_vectors_over_pic_boundaries_flag");
            iVar.f91136x.f91139b = bVar.y("VUI max_bytes_per_pic_denom");
            iVar.f91136x.f91140c = bVar.y("VUI max_bits_per_mb_denom");
            iVar.f91136x.f91141d = bVar.y("VUI log2_max_mv_length_horizontal");
            iVar.f91136x.f91142e = bVar.y("VUI log2_max_mv_length_vertical");
            iVar.f91136x.f91143f = bVar.y("VUI num_reorder_frames");
            iVar.f91136x.f91144g = bVar.y("VUI max_dec_frame_buffering");
        }
        return iVar;
    }

    public static h c(InputStream inputStream) throws IOException {
        com.googlecode.mp4parser.h264.read.b bVar = new com.googlecode.mp4parser.h264.read.b(inputStream);
        h hVar = new h();
        hVar.f91103q = (int) bVar.s(8, "SPS: profile_idc");
        hVar.f91105s = bVar.p("SPS: constraint_set_0_flag");
        hVar.f91106t = bVar.p("SPS: constraint_set_1_flag");
        hVar.f91107u = bVar.p("SPS: constraint_set_2_flag");
        hVar.f91108v = bVar.p("SPS: constraint_set_3_flag");
        hVar.f91109w = bVar.p("SPS: constraint_set_4_flag");
        hVar.f91110x = bVar.p("SPS: constraint_set_5_flag");
        hVar.f91104r = bVar.s(2, "SPS: reserved_zero_2bits");
        hVar.f91111y = (int) bVar.s(8, "SPS: level_idc");
        hVar.f91112z = bVar.y("SPS: seq_parameter_set_id");
        int i10 = hVar.f91103q;
        if (i10 == 100 || i10 == 110 || i10 == 122 || i10 == 144) {
            c cVarA = c.a(bVar.y("SPS: chroma_format_idc"));
            hVar.f91095i = cVarA;
            if (cVarA == c.f91042g) {
                hVar.A = bVar.p("SPS: residual_color_transform_flag");
            }
            hVar.f91100n = bVar.y("SPS: bit_depth_luma_minus8");
            hVar.f91101o = bVar.y("SPS: bit_depth_chroma_minus8");
            hVar.f91102p = bVar.p("SPS: qpprime_y_zero_transform_bypass_flag");
            if (bVar.p("SPS: seq_scaling_matrix_present_lag")) {
                e(bVar, hVar);
            }
        } else {
            hVar.f91095i = c.f91040e;
        }
        hVar.f91096j = bVar.y("SPS: log2_max_frame_num_minus4");
        int iY = bVar.y("SPS: pic_order_cnt_type");
        hVar.f91087a = iY;
        if (iY == 0) {
            hVar.f91097k = bVar.y("SPS: log2_max_pic_order_cnt_lsb_minus4");
        } else if (iY == 1) {
            hVar.f91089c = bVar.p("SPS: delta_pic_order_always_zero_flag");
            hVar.B = bVar.t("SPS: offset_for_non_ref_pic");
            hVar.C = bVar.t("SPS: offset_for_top_to_bottom_field");
            int iY2 = bVar.y("SPS: num_ref_frames_in_pic_order_cnt_cycle");
            hVar.O = iY2;
            hVar.L = new int[iY2];
            for (int i11 = 0; i11 < hVar.O; i11++) {
                hVar.L[i11] = bVar.t("SPS: offsetForRefFrame [" + i11 + "]");
            }
        }
        hVar.D = bVar.y("SPS: num_ref_frames");
        hVar.E = bVar.p("SPS: gaps_in_frame_num_value_allowed_flag");
        hVar.f91099m = bVar.y("SPS: pic_width_in_mbs_minus1");
        hVar.f91098l = bVar.y("SPS: pic_height_in_map_units_minus1");
        boolean zP = bVar.p("SPS: frame_mbs_only_flag");
        hVar.F = zP;
        if (!zP) {
            hVar.f91093g = bVar.p("SPS: mb_adaptive_frame_field_flag");
        }
        hVar.f91094h = bVar.p("SPS: direct_8x8_inference_flag");
        boolean zP2 = bVar.p("SPS: frame_cropping_flag");
        hVar.G = zP2;
        if (zP2) {
            hVar.H = bVar.y("SPS: frame_crop_left_offset");
            hVar.I = bVar.y("SPS: frame_crop_right_offset");
            hVar.J = bVar.y("SPS: frame_crop_top_offset");
            hVar.K = bVar.y("SPS: frame_crop_bottom_offset");
        }
        if (bVar.p("SPS: vui_parameters_present_flag")) {
            hVar.M = b(bVar);
        }
        bVar.v();
        return hVar;
    }

    private static d d(com.googlecode.mp4parser.h264.read.b bVar) throws IOException {
        d dVar = new d();
        dVar.f91046a = bVar.y("SPS: cpb_cnt_minus1");
        dVar.f91047b = (int) bVar.s(4, "HRD: bit_rate_scale");
        dVar.f91048c = (int) bVar.s(4, "HRD: cpb_size_scale");
        int i10 = dVar.f91046a;
        dVar.f91049d = new int[i10 + 1];
        dVar.f91050e = new int[i10 + 1];
        dVar.f91051f = new boolean[i10 + 1];
        for (int i11 = 0; i11 <= dVar.f91046a; i11++) {
            dVar.f91049d[i11] = bVar.y("HRD: bit_rate_value_minus1");
            dVar.f91050e[i11] = bVar.y("HRD: cpb_size_value_minus1");
            dVar.f91051f[i11] = bVar.p("HRD: cbr_flag");
        }
        dVar.f91052g = (int) bVar.s(5, "HRD: initial_cpb_removal_delay_length_minus1");
        dVar.f91053h = (int) bVar.s(5, "HRD: cpb_removal_delay_length_minus1");
        dVar.f91054i = (int) bVar.s(5, "HRD: dpb_output_delay_length_minus1");
        dVar.f91055j = (int) bVar.s(5, "HRD: time_offset_length");
        return dVar;
    }

    private static void e(com.googlecode.mp4parser.h264.read.b bVar, h hVar) throws IOException {
        hVar.N = new g();
        for (int i10 = 0; i10 < 8; i10++) {
            if (bVar.p("SPS: seqScalingListPresentFlag")) {
                g gVar = hVar.N;
                f[] fVarArr = new f[8];
                gVar.f91085a = fVarArr;
                f[] fVarArr2 = new f[8];
                gVar.f91086b = fVarArr2;
                if (i10 < 6) {
                    fVarArr[i10] = f.a(bVar, 16);
                } else {
                    fVarArr2[i10 - 6] = f.a(bVar, 64);
                }
            }
        }
    }

    private void f(d dVar, g5.b bVar) throws IOException {
        bVar.o(dVar.f91046a, "HRD: cpb_cnt_minus1");
        bVar.h(dVar.f91047b, 4, "HRD: bit_rate_scale");
        bVar.h(dVar.f91048c, 4, "HRD: cpb_size_scale");
        for (int i10 = 0; i10 <= dVar.f91046a; i10++) {
            bVar.o(dVar.f91049d[i10], "HRD: ");
            bVar.o(dVar.f91050e[i10], "HRD: ");
            bVar.g(dVar.f91051f[i10], "HRD: ");
        }
        bVar.h(dVar.f91052g, 5, "HRD: initial_cpb_removal_delay_length_minus1");
        bVar.h(dVar.f91053h, 5, "HRD: cpb_removal_delay_length_minus1");
        bVar.h(dVar.f91054i, 5, "HRD: dpb_output_delay_length_minus1");
        bVar.h(dVar.f91055j, 5, "HRD: time_offset_length");
    }

    private void g(i iVar, g5.b bVar) throws IOException {
        bVar.g(iVar.f91113a, "VUI: aspect_ratio_info_present_flag");
        if (iVar.f91113a) {
            bVar.h(iVar.f91137y.b(), 8, "VUI: aspect_ratio");
            if (iVar.f91137y == a.f91037b) {
                bVar.h(iVar.f91114b, 16, "VUI: sar_width");
                bVar.h(iVar.f91115c, 16, "VUI: sar_height");
            }
        }
        bVar.g(iVar.f91116d, "VUI: overscan_info_present_flag");
        if (iVar.f91116d) {
            bVar.g(iVar.f91117e, "VUI: overscan_appropriate_flag");
        }
        bVar.g(iVar.f91118f, "VUI: video_signal_type_present_flag");
        if (iVar.f91118f) {
            bVar.h(iVar.f91119g, 3, "VUI: video_format");
            bVar.g(iVar.f91120h, "VUI: video_full_range_flag");
            bVar.g(iVar.f91121i, "VUI: colour_description_present_flag");
            if (iVar.f91121i) {
                bVar.h(iVar.f91122j, 8, "VUI: colour_primaries");
                bVar.h(iVar.f91123k, 8, "VUI: transfer_characteristics");
                bVar.h(iVar.f91124l, 8, "VUI: matrix_coefficients");
            }
        }
        bVar.g(iVar.f91125m, "VUI: chroma_loc_info_present_flag");
        if (iVar.f91125m) {
            bVar.o(iVar.f91126n, "VUI: chroma_sample_loc_type_top_field");
            bVar.o(iVar.f91127o, "VUI: chroma_sample_loc_type_bottom_field");
        }
        bVar.g(iVar.f91128p, "VUI: timing_info_present_flag");
        if (iVar.f91128p) {
            bVar.h(iVar.f91129q, 32, "VUI: num_units_in_tick");
            bVar.h(iVar.f91130r, 32, "VUI: time_scale");
            bVar.g(iVar.f91131s, "VUI: fixed_frame_rate_flag");
        }
        bVar.g(iVar.f91134v != null, "VUI: ");
        d dVar = iVar.f91134v;
        if (dVar != null) {
            f(dVar, bVar);
        }
        bVar.g(iVar.f91135w != null, "VUI: ");
        d dVar2 = iVar.f91135w;
        if (dVar2 != null) {
            f(dVar2, bVar);
        }
        if (iVar.f91134v != null || iVar.f91135w != null) {
            bVar.g(iVar.f91132t, "VUI: low_delay_hrd_flag");
        }
        bVar.g(iVar.f91133u, "VUI: pic_struct_present_flag");
        bVar.g(iVar.f91136x != null, "VUI: ");
        i.a aVar = iVar.f91136x;
        if (aVar != null) {
            bVar.g(aVar.f91138a, "VUI: motion_vectors_over_pic_boundaries_flag");
            bVar.o(iVar.f91136x.f91139b, "VUI: max_bytes_per_pic_denom");
            bVar.o(iVar.f91136x.f91140c, "VUI: max_bits_per_mb_denom");
            bVar.o(iVar.f91136x.f91141d, "VUI: log2_max_mv_length_horizontal");
            bVar.o(iVar.f91136x.f91142e, "VUI: log2_max_mv_length_vertical");
            bVar.o(iVar.f91136x.f91143f, "VUI: num_reorder_frames");
            bVar.o(iVar.f91136x.f91144g, "VUI: max_dec_frame_buffering");
        }
    }

    @Override // f5.b
    public void a(OutputStream outputStream) throws IOException {
        g5.b bVar = new g5.b(outputStream);
        bVar.h(this.f91103q, 8, "SPS: profile_idc");
        bVar.g(this.f91105s, "SPS: constraint_set_0_flag");
        bVar.g(this.f91106t, "SPS: constraint_set_1_flag");
        bVar.g(this.f91107u, "SPS: constraint_set_2_flag");
        bVar.g(this.f91108v, "SPS: constraint_set_3_flag");
        bVar.h(0L, 4, "SPS: reserved");
        bVar.h(this.f91111y, 8, "SPS: level_idc");
        bVar.o(this.f91112z, "SPS: seq_parameter_set_id");
        int i10 = this.f91103q;
        if (i10 == 100 || i10 == 110 || i10 == 122 || i10 == 144) {
            bVar.o(this.f91095i.b(), "SPS: chroma_format_idc");
            if (this.f91095i == c.f91042g) {
                bVar.g(this.A, "SPS: residual_color_transform_flag");
            }
            bVar.o(this.f91100n, "SPS: ");
            bVar.o(this.f91101o, "SPS: ");
            bVar.g(this.f91102p, "SPS: qpprime_y_zero_transform_bypass_flag");
            bVar.g(this.N != null, "SPS: ");
            if (this.N != null) {
                for (int i11 = 0; i11 < 8; i11++) {
                    if (i11 < 6) {
                        bVar.g(this.N.f91085a[i11] != null, "SPS: ");
                        f fVar = this.N.f91085a[i11];
                        if (fVar != null) {
                            fVar.b(bVar);
                        }
                    } else {
                        int i12 = i11 - 6;
                        bVar.g(this.N.f91086b[i12] != null, "SPS: ");
                        f fVar2 = this.N.f91086b[i12];
                        if (fVar2 != null) {
                            fVar2.b(bVar);
                        }
                    }
                }
            }
        }
        bVar.o(this.f91096j, "SPS: log2_max_frame_num_minus4");
        bVar.o(this.f91087a, "SPS: pic_order_cnt_type");
        int i13 = this.f91087a;
        if (i13 == 0) {
            bVar.o(this.f91097k, "SPS: log2_max_pic_order_cnt_lsb_minus4");
        } else if (i13 == 1) {
            bVar.g(this.f91089c, "SPS: delta_pic_order_always_zero_flag");
            bVar.i(this.B, "SPS: offset_for_non_ref_pic");
            bVar.i(this.C, "SPS: offset_for_top_to_bottom_field");
            bVar.o(this.L.length, "SPS: ");
            int i14 = 0;
            while (true) {
                int[] iArr = this.L;
                if (i14 >= iArr.length) {
                    break;
                }
                bVar.i(iArr[i14], "SPS: ");
                i14++;
            }
        }
        bVar.o(this.D, "SPS: num_ref_frames");
        bVar.g(this.E, "SPS: gaps_in_frame_num_value_allowed_flag");
        bVar.o(this.f91099m, "SPS: pic_width_in_mbs_minus1");
        bVar.o(this.f91098l, "SPS: pic_height_in_map_units_minus1");
        bVar.g(this.F, "SPS: frame_mbs_only_flag");
        if (!this.F) {
            bVar.g(this.f91093g, "SPS: mb_adaptive_frame_field_flag");
        }
        bVar.g(this.f91094h, "SPS: direct_8x8_inference_flag");
        bVar.g(this.G, "SPS: frame_cropping_flag");
        if (this.G) {
            bVar.o(this.H, "SPS: frame_crop_left_offset");
            bVar.o(this.I, "SPS: frame_crop_right_offset");
            bVar.o(this.J, "SPS: frame_crop_top_offset");
            bVar.o(this.K, "SPS: frame_crop_bottom_offset");
        }
        bVar.g(this.M != null, "SPS: ");
        i iVar = this.M;
        if (iVar != null) {
            g(iVar, bVar);
        }
        bVar.k();
    }

    public String toString() {
        return "SeqParameterSet{ \n        pic_order_cnt_type=" + this.f91087a + ", \n        field_pic_flag=" + this.f91088b + ", \n        delta_pic_order_always_zero_flag=" + this.f91089c + ", \n        weighted_pred_flag=" + this.f91090d + ", \n        weighted_bipred_idc=" + this.f91091e + ", \n        entropy_coding_mode_flag=" + this.f91092f + ", \n        mb_adaptive_frame_field_flag=" + this.f91093g + ", \n        direct_8x8_inference_flag=" + this.f91094h + ", \n        chroma_format_idc=" + this.f91095i + ", \n        log2_max_frame_num_minus4=" + this.f91096j + ", \n        log2_max_pic_order_cnt_lsb_minus4=" + this.f91097k + ", \n        pic_height_in_map_units_minus1=" + this.f91098l + ", \n        pic_width_in_mbs_minus1=" + this.f91099m + ", \n        bit_depth_luma_minus8=" + this.f91100n + ", \n        bit_depth_chroma_minus8=" + this.f91101o + ", \n        qpprime_y_zero_transform_bypass_flag=" + this.f91102p + ", \n        profile_idc=" + this.f91103q + ", \n        constraint_set_0_flag=" + this.f91105s + ", \n        constraint_set_1_flag=" + this.f91106t + ", \n        constraint_set_2_flag=" + this.f91107u + ", \n        constraint_set_3_flag=" + this.f91108v + ", \n        constraint_set_4_flag=" + this.f91109w + ", \n        constraint_set_5_flag=" + this.f91110x + ", \n        level_idc=" + this.f91111y + ", \n        seq_parameter_set_id=" + this.f91112z + ", \n        residual_color_transform_flag=" + this.A + ", \n        offset_for_non_ref_pic=" + this.B + ", \n        offset_for_top_to_bottom_field=" + this.C + ", \n        num_ref_frames=" + this.D + ", \n        gaps_in_frame_num_value_allowed_flag=" + this.E + ", \n        frame_mbs_only_flag=" + this.F + ", \n        frame_cropping_flag=" + this.G + ", \n        frame_crop_left_offset=" + this.H + ", \n        frame_crop_right_offset=" + this.I + ", \n        frame_crop_top_offset=" + this.J + ", \n        frame_crop_bottom_offset=" + this.K + ", \n        offsetForRefFrame=" + this.L + ", \n        vuiParams=" + this.M + ", \n        scalingMatrix=" + this.N + ", \n        num_ref_frames_in_pic_order_cnt_cycle=" + this.O + '}';
    }
}

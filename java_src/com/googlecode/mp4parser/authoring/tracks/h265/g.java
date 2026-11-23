package com.googlecode.mp4parser.authoring.tracks.h265;

import java.io.IOException;
import java.lang.reflect.Array;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;

/* JADX INFO: loaded from: classes5.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    ByteBuffer f33141a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f33142b;

    public g(ByteBuffer byteBuffer) throws IOException {
        this.f33141a = byteBuffer;
        com.googlecode.mp4parser.h264.read.b bVar = new com.googlecode.mp4parser.h264.read.b(Channels.newInputStream(new com.googlecode.mp4parser.util.b((ByteBuffer) byteBuffer.position(0))));
        this.f33142b = bVar.w(4, "vps_parameter_set_id");
        bVar.w(2, "vps_reserved_three_2bits");
        bVar.w(6, "vps_max_layers_minus1");
        int iW = bVar.w(3, "vps_max_sub_layers_minus1");
        bVar.p("vps_temporal_id_nesting_flag");
        bVar.w(16, "vps_reserved_0xffff_16bits");
        b(iW, bVar);
        boolean zP = bVar.p("vps_sub_layer_ordering_info_present_flag");
        int[] iArr = new int[zP ? 1 : iW + 1];
        int[] iArr2 = new int[zP ? 1 : iW + 1];
        int[] iArr3 = new int[zP ? 1 : iW + 1];
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
                a(zArr2[i13], iW, bVar);
            }
        }
        if (bVar.p("vps_extension_flag")) {
            while (bVar.f()) {
                bVar.p("vps_extension_data_flag");
            }
        }
        bVar.v();
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
    private void a(boolean z10, int i10, com.googlecode.mp4parser.h264.read.b bVar) throws IOException {
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
                    c(i11, iArr[i11], zP3, bVar);
                }
                if (zP2) {
                    c(i11, iArr[i11], zP3, bVar);
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
                c(i11, iArr[i11], zP3, bVar);
            }
            if (zP2) {
                c(i11, iArr[i11], zP3, bVar);
            }
        }
    }

    public void b(int i10, com.googlecode.mp4parser.h264.read.b bVar) throws IOException {
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

    void c(int i10, int i11, boolean z10, com.googlecode.mp4parser.h264.read.b bVar) throws IOException {
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

    public ByteBuffer d() {
        return this.f33141a;
    }
}

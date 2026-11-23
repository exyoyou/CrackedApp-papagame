package com.googlecode.mp4parser.authoring.tracks.h265;

import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes5.dex */
public class f {
    public f(InputStream inputStream) throws IOException {
        com.googlecode.mp4parser.h264.read.b bVar = new com.googlecode.mp4parser.h264.read.b(inputStream);
        bVar.s(4, "sps_video_parameter_set_id");
        int iS = (int) bVar.s(3, "sps_max_sub_layers_minus1");
        bVar.p("sps_temporal_id_nesting_flag");
        a(iS, bVar);
        bVar.y("sps_seq_parameter_set_id");
        if (bVar.y("chroma_format_idc") == 3) {
            bVar.h();
            bVar.y("pic_width_in_luma_samples");
            bVar.y("pic_width_in_luma_samples");
            if (bVar.p("conformance_window_flag")) {
                bVar.y("conf_win_left_offset");
                bVar.y("conf_win_right_offset");
                bVar.y("conf_win_top_offset");
                bVar.y("conf_win_bottom_offset");
            }
        }
        bVar.y("bit_depth_luma_minus8");
        bVar.y("bit_depth_chroma_minus8");
        bVar.y("log2_max_pic_order_cnt_lsb_minus4");
        boolean zP = bVar.p("sps_sub_layer_ordering_info_present_flag");
        int i10 = (iS - (zP ? 0 : iS)) + 1;
        int[] iArr = new int[i10];
        int[] iArr2 = new int[i10];
        int[] iArr3 = new int[i10];
        for (int i11 = zP ? 0 : iS; i11 <= iS; i11++) {
            iArr[i11] = bVar.y("sps_max_dec_pic_buffering_minus1[" + i11 + "]");
            iArr2[i11] = bVar.y("sps_max_num_reorder_pics[" + i11 + "]");
            iArr3[i11] = bVar.y("sps_max_latency_increase_plus1[" + i11 + "]");
        }
        bVar.y("log2_min_luma_coding_block_size_minus3");
        bVar.y("log2_diff_max_min_luma_coding_block_size");
        bVar.y("log2_min_transform_block_size_minus2");
        bVar.y("log2_diff_max_min_transform_block_size");
        bVar.y("max_transform_hierarchy_depth_inter");
        bVar.y("max_transform_hierarchy_depth_intra");
        if (bVar.p("scaling_list_enabled_flag") && bVar.p("sps_scaling_list_data_present_flag")) {
            b(bVar);
        }
        bVar.p("amp_enabled_flag");
        bVar.p("sample_adaptive_offset_enabled_flag");
        if (bVar.p("pcm_enabled_flag")) {
            bVar.s(4, "pcm_sample_bit_depth_luma_minus1");
            bVar.s(4, "pcm_sample_bit_depth_chroma_minus1");
            bVar.y("log2_min_pcm_luma_coding_block_size_minus3");
        }
    }

    private void a(int i10, com.googlecode.mp4parser.h264.read.b bVar) throws IOException {
        long[] jArr;
        int i11 = 2;
        bVar.w(2, "general_profile_space");
        bVar.p("general_tier_flag");
        bVar.w(5, "general_profile_idc");
        int i12 = 32;
        boolean[] zArr = new boolean[32];
        int i13 = 0;
        while (i13 < i12) {
            zArr[i13] = bVar.i();
            i13++;
            i12 = 32;
            i11 = 2;
        }
        bVar.p("general_progressive_source_flag");
        bVar.p("general_interlaced_source_flag");
        bVar.p("general_non_packed_constraint_flag");
        bVar.p("general_frame_only_constraint_flag");
        bVar.s(44, "general_reserved_zero_44bits");
        bVar.j();
        boolean[] zArr2 = new boolean[i10];
        boolean[] zArr3 = new boolean[i10];
        int i14 = 0;
        while (i14 < i10) {
            zArr2[i14] = bVar.p("sub_layer_profile_present_flag[" + i14 + "]");
            zArr3[i14] = bVar.p("sub_layer_level_present_flag[" + i14 + "]");
            i14++;
            i10 = i10;
            i12 = 32;
            i11 = 2;
        }
        if (i10 > 0) {
            int[] iArr = new int[8];
            for (int i15 = i10; i15 < 8; i15++) {
                iArr[i15] = bVar.w(i11, "reserved_zero_2bits[" + i15 + "]");
            }
        }
        int[] iArr2 = new int[i10];
        boolean[] zArr4 = new boolean[i10];
        int[] iArr3 = new int[i10];
        boolean[][] zArr5 = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, i10, i12);
        boolean[] zArr6 = new boolean[i10];
        boolean[] zArr7 = new boolean[i10];
        boolean[] zArr8 = new boolean[i10];
        boolean[] zArr9 = new boolean[i10];
        long[] jArr2 = new long[i10];
        int[] iArr4 = new int[i10];
        int i16 = 0;
        while (i16 < i10) {
            if (zArr2[i16]) {
                iArr2[i16] = bVar.w(2, "sub_layer_profile_space[" + i16 + "]");
                zArr4[i16] = bVar.p("sub_layer_tier_flag[" + i16 + "]");
                iArr3[i16] = bVar.w(5, "sub_layer_profile_idc[" + i16 + "]");
                int i17 = 0;
                while (i17 < 32) {
                    zArr5[i16][i17] = bVar.p("sub_layer_profile_compatibility_flag[" + i16 + "][" + i17 + "]");
                    i17++;
                    jArr2 = jArr2;
                }
                zArr6[i16] = bVar.p("sub_layer_progressive_source_flag[" + i16 + "]");
                zArr7[i16] = bVar.p("sub_layer_interlaced_source_flag[" + i16 + "]");
                zArr8[i16] = bVar.p("sub_layer_non_packed_constraint_flag[" + i16 + "]");
                zArr9[i16] = bVar.p("sub_layer_frame_only_constraint_flag[" + i16 + "]");
                jArr2[i16] = bVar.k(44);
                jArr = jArr2;
            } else {
                jArr = jArr2;
            }
            if (zArr3[i16]) {
                iArr4[i16] = bVar.w(8, "sub_layer_level_idc[" + i16 + "]");
            }
            i16++;
            i10 = i10;
            zArr2 = zArr2;
            jArr2 = jArr;
        }
    }

    private void b(com.googlecode.mp4parser.h264.read.b bVar) throws IOException {
        int i10 = 4;
        boolean[][] zArr = new boolean[4][];
        int[][] iArr = new int[4][];
        int[][] iArr2 = new int[2][];
        int[][][] iArr3 = new int[4][][];
        int i11 = 0;
        while (i11 < i10) {
            int i12 = 0;
            while (true) {
                if (i12 >= (i11 == 3 ? 2 : 6)) {
                    break;
                }
                zArr[i11] = new boolean[i11 == 3 ? 2 : 6];
                iArr[i11] = new int[i11 == 3 ? 2 : 6];
                iArr3[i11] = new int[i11 == 3 ? 2 : 6][];
                zArr[i11][i12] = bVar.i();
                if (zArr[i11][i12]) {
                    int iMin = Math.min(64, 1 << ((i11 << 1) + i10));
                    int iT = 8;
                    if (i11 > 1) {
                        int i13 = i11 - 2;
                        iArr2[i13][i12] = bVar.t("scaling_list_dc_coef_minus8[" + i11 + "- 2][" + i12 + "]");
                        iT = 8 + iArr2[i13][i12];
                    }
                    iArr3[i11][i12] = new int[iMin];
                    for (int i14 = 0; i14 < iMin; i14++) {
                        iT = ((iT + bVar.t("scaling_list_delta_coef ")) + 256) % 256;
                        iArr3[i11][i12][i14] = iT;
                    }
                } else {
                    iArr[i11][i12] = bVar.y("scaling_list_pred_matrix_id_delta[" + i11 + "][" + i12 + "]");
                }
                i12++;
                i10 = 4;
            }
            i11++;
        }
    }
}

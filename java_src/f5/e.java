package f5;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class e extends b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f91056a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f91057b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f91058c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f91059d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f91060e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f91061f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f91062g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f91063h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f91064i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f91065j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f91066k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f91067l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f91068m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f91069n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f91070o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f91071p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f91072q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int[] f91073r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int[] f91074s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int[] f91075t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f91076u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int[] f91077v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public a f91078w;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f91079a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public g f91080b = new g();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f91081c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean[] f91082d;

        public String toString() {
            return "PPSExt{transform_8x8_mode_flag=" + this.f91079a + ", scalindMatrix=" + this.f91080b + ", second_chroma_qp_index_offset=" + this.f91081c + ", pic_scaling_list_present_flag=" + this.f91082d + '}';
        }
    }

    public static e b(InputStream inputStream) throws IOException {
        com.googlecode.mp4parser.h264.read.b bVar = new com.googlecode.mp4parser.h264.read.b(inputStream);
        e eVar = new e();
        eVar.f91060e = bVar.y("PPS: pic_parameter_set_id");
        eVar.f91061f = bVar.y("PPS: seq_parameter_set_id");
        eVar.f91056a = bVar.p("PPS: entropy_coding_mode_flag");
        eVar.f91062g = bVar.p("PPS: pic_order_present_flag");
        int iY = bVar.y("PPS: num_slice_groups_minus1");
        eVar.f91063h = iY;
        if (iY > 0) {
            int iY2 = bVar.y("PPS: slice_group_map_type");
            eVar.f91064i = iY2;
            int i10 = eVar.f91063h;
            eVar.f91073r = new int[i10 + 1];
            eVar.f91074s = new int[i10 + 1];
            eVar.f91075t = new int[i10 + 1];
            if (iY2 == 0) {
                for (int i11 = 0; i11 <= eVar.f91063h; i11++) {
                    eVar.f91075t[i11] = bVar.y("PPS: run_length_minus1");
                }
            } else if (iY2 == 2) {
                for (int i12 = 0; i12 < eVar.f91063h; i12++) {
                    eVar.f91073r[i12] = bVar.y("PPS: top_left");
                    eVar.f91074s[i12] = bVar.y("PPS: bottom_right");
                }
            } else {
                int i13 = 3;
                if (iY2 == 3 || iY2 == 4 || iY2 == 5) {
                    eVar.f91076u = bVar.p("PPS: slice_group_change_direction_flag");
                    eVar.f91059d = bVar.y("PPS: slice_group_change_rate_minus1");
                } else if (iY2 == 6) {
                    if (i10 + 1 <= 4) {
                        i13 = 1;
                        if (i10 + 1 > 2) {
                            i13 = 2;
                        }
                    }
                    int iY3 = bVar.y("PPS: pic_size_in_map_units_minus1");
                    eVar.f91077v = new int[iY3 + 1];
                    for (int i14 = 0; i14 <= iY3; i14++) {
                        eVar.f91077v[i14] = bVar.w(i13, "PPS: slice_group_id [" + i14 + "]f");
                    }
                }
            }
        }
        eVar.f91057b = bVar.y("PPS: num_ref_idx_l0_active_minus1");
        eVar.f91058c = bVar.y("PPS: num_ref_idx_l1_active_minus1");
        eVar.f91065j = bVar.p("PPS: weighted_pred_flag");
        eVar.f91066k = (int) bVar.s(2, "PPS: weighted_bipred_idc");
        eVar.f91067l = bVar.t("PPS: pic_init_qp_minus26");
        eVar.f91068m = bVar.t("PPS: pic_init_qs_minus26");
        eVar.f91069n = bVar.t("PPS: chroma_qp_index_offset");
        eVar.f91070o = bVar.p("PPS: deblocking_filter_control_present_flag");
        eVar.f91071p = bVar.p("PPS: constrained_intra_pred_flag");
        eVar.f91072q = bVar.p("PPS: redundant_pic_cnt_present_flag");
        if (bVar.f()) {
            a aVar = new a();
            eVar.f91078w = aVar;
            aVar.f91079a = bVar.p("PPS: transform_8x8_mode_flag");
            if (bVar.p("PPS: pic_scaling_matrix_present_flag")) {
                for (int i15 = 0; i15 < ((eVar.f91078w.f91079a ? 1 : 0) * 2) + 6; i15++) {
                    if (bVar.p("PPS: pic_scaling_list_present_flag")) {
                        g gVar = eVar.f91078w.f91080b;
                        f[] fVarArr = new f[8];
                        gVar.f91085a = fVarArr;
                        f[] fVarArr2 = new f[8];
                        gVar.f91086b = fVarArr2;
                        if (i15 < 6) {
                            fVarArr[i15] = f.a(bVar, 16);
                        } else {
                            fVarArr2[i15 - 6] = f.a(bVar, 64);
                        }
                    }
                }
            }
            eVar.f91078w.f91081c = bVar.t("PPS: second_chroma_qp_index_offset");
        }
        bVar.v();
        return eVar;
    }

    public static e c(byte[] bArr) throws IOException {
        return b(new ByteArrayInputStream(bArr));
    }

    @Override // f5.b
    public void a(OutputStream outputStream) throws IOException {
        g5.b bVar = new g5.b(outputStream);
        bVar.o(this.f91060e, "PPS: pic_parameter_set_id");
        bVar.o(this.f91061f, "PPS: seq_parameter_set_id");
        bVar.g(this.f91056a, "PPS: entropy_coding_mode_flag");
        bVar.g(this.f91062g, "PPS: pic_order_present_flag");
        bVar.o(this.f91063h, "PPS: num_slice_groups_minus1");
        if (this.f91063h > 0) {
            bVar.o(this.f91064i, "PPS: slice_group_map_type");
            int[] iArr = new int[1];
            int[] iArr2 = new int[1];
            int[] iArr3 = new int[1];
            int i10 = this.f91064i;
            if (i10 == 0) {
                for (int i11 = 0; i11 <= this.f91063h; i11++) {
                    bVar.o(iArr3[i11], "PPS: ");
                }
            } else if (i10 == 2) {
                for (int i12 = 0; i12 < this.f91063h; i12++) {
                    bVar.o(iArr[i12], "PPS: ");
                    bVar.o(iArr2[i12], "PPS: ");
                }
            } else {
                if (i10 == 3 || i10 == 4 || i10 == 5) {
                    bVar.g(this.f91076u, "PPS: slice_group_change_direction_flag");
                    bVar.o(this.f91059d, "PPS: slice_group_change_rate_minus1");
                } else if (i10 == 6) {
                    int i13 = this.f91063h;
                    int i14 = i13 + 1 <= 4 ? i13 + 1 > 2 ? 2 : 1 : 3;
                    bVar.o(this.f91077v.length, "PPS: ");
                    int i15 = 0;
                    while (true) {
                        int[] iArr4 = this.f91077v;
                        if (i15 > iArr4.length) {
                            break;
                        }
                        bVar.l(iArr4[i15], i14);
                        i15++;
                    }
                }
            }
        }
        bVar.o(this.f91057b, "PPS: num_ref_idx_l0_active_minus1");
        bVar.o(this.f91058c, "PPS: num_ref_idx_l1_active_minus1");
        bVar.g(this.f91065j, "PPS: weighted_pred_flag");
        bVar.h(this.f91066k, 2, "PPS: weighted_bipred_idc");
        bVar.i(this.f91067l, "PPS: pic_init_qp_minus26");
        bVar.i(this.f91068m, "PPS: pic_init_qs_minus26");
        bVar.i(this.f91069n, "PPS: chroma_qp_index_offset");
        bVar.g(this.f91070o, "PPS: deblocking_filter_control_present_flag");
        bVar.g(this.f91071p, "PPS: constrained_intra_pred_flag");
        bVar.g(this.f91072q, "PPS: redundant_pic_cnt_present_flag");
        a aVar = this.f91078w;
        if (aVar != null) {
            bVar.g(aVar.f91079a, "PPS: transform_8x8_mode_flag");
            bVar.g(this.f91078w.f91080b != null, "PPS: scalindMatrix");
            if (this.f91078w.f91080b != null) {
                int i16 = 0;
                while (true) {
                    a aVar2 = this.f91078w;
                    if (i16 >= ((aVar2.f91079a ? 1 : 0) * 2) + 6) {
                        break;
                    }
                    if (i16 < 6) {
                        bVar.g(aVar2.f91080b.f91085a[i16] != null, "PPS: ");
                        f fVar = this.f91078w.f91080b.f91085a[i16];
                        if (fVar != null) {
                            fVar.b(bVar);
                        }
                    } else {
                        int i17 = i16 - 6;
                        bVar.g(aVar2.f91080b.f91086b[i17] != null, "PPS: ");
                        f fVar2 = this.f91078w.f91080b.f91086b[i17];
                        if (fVar2 != null) {
                            fVar2.b(bVar);
                        }
                    }
                    i16++;
                }
            }
            bVar.i(this.f91078w.f91081c, "PPS: ");
        }
        bVar.k();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        if (!Arrays.equals(this.f91074s, eVar.f91074s) || this.f91069n != eVar.f91069n || this.f91071p != eVar.f91071p || this.f91070o != eVar.f91070o || this.f91056a != eVar.f91056a) {
            return false;
        }
        a aVar = this.f91078w;
        if (aVar == null) {
            if (eVar.f91078w != null) {
                return false;
            }
        } else if (!aVar.equals(eVar.f91078w)) {
            return false;
        }
        return this.f91057b == eVar.f91057b && this.f91058c == eVar.f91058c && this.f91063h == eVar.f91063h && this.f91067l == eVar.f91067l && this.f91068m == eVar.f91068m && this.f91062g == eVar.f91062g && this.f91060e == eVar.f91060e && this.f91072q == eVar.f91072q && Arrays.equals(this.f91075t, eVar.f91075t) && this.f91061f == eVar.f91061f && this.f91076u == eVar.f91076u && this.f91059d == eVar.f91059d && Arrays.equals(this.f91077v, eVar.f91077v) && this.f91064i == eVar.f91064i && Arrays.equals(this.f91073r, eVar.f91073r) && this.f91066k == eVar.f91066k && this.f91065j == eVar.f91065j;
    }

    public int hashCode() {
        int iHashCode = (((((((((Arrays.hashCode(this.f91074s) + 31) * 31) + this.f91069n) * 31) + (this.f91071p ? 1231 : 1237)) * 31) + (this.f91070o ? 1231 : 1237)) * 31) + (this.f91056a ? 1231 : 1237)) * 31;
        a aVar = this.f91078w;
        return ((((((((((((((((((((((((((((((((((iHashCode + (aVar == null ? 0 : aVar.hashCode())) * 31) + this.f91057b) * 31) + this.f91058c) * 31) + this.f91063h) * 31) + this.f91067l) * 31) + this.f91068m) * 31) + (this.f91062g ? 1231 : 1237)) * 31) + this.f91060e) * 31) + (this.f91072q ? 1231 : 1237)) * 31) + Arrays.hashCode(this.f91075t)) * 31) + this.f91061f) * 31) + (this.f91076u ? 1231 : 1237)) * 31) + this.f91059d) * 31) + Arrays.hashCode(this.f91077v)) * 31) + this.f91064i) * 31) + Arrays.hashCode(this.f91073r)) * 31) + this.f91066k) * 31) + (this.f91065j ? 1231 : 1237);
    }

    public String toString() {
        return "PictureParameterSet{\n       entropy_coding_mode_flag=" + this.f91056a + ",\n       num_ref_idx_l0_active_minus1=" + this.f91057b + ",\n       num_ref_idx_l1_active_minus1=" + this.f91058c + ",\n       slice_group_change_rate_minus1=" + this.f91059d + ",\n       pic_parameter_set_id=" + this.f91060e + ",\n       seq_parameter_set_id=" + this.f91061f + ",\n       pic_order_present_flag=" + this.f91062g + ",\n       num_slice_groups_minus1=" + this.f91063h + ",\n       slice_group_map_type=" + this.f91064i + ",\n       weighted_pred_flag=" + this.f91065j + ",\n       weighted_bipred_idc=" + this.f91066k + ",\n       pic_init_qp_minus26=" + this.f91067l + ",\n       pic_init_qs_minus26=" + this.f91068m + ",\n       chroma_qp_index_offset=" + this.f91069n + ",\n       deblocking_filter_control_present_flag=" + this.f91070o + ",\n       constrained_intra_pred_flag=" + this.f91071p + ",\n       redundant_pic_cnt_present_flag=" + this.f91072q + ",\n       top_left=" + this.f91073r + ",\n       bottom_right=" + this.f91074s + ",\n       run_length_minus1=" + this.f91075t + ",\n       slice_group_change_direction_flag=" + this.f91076u + ",\n       slice_group_id=" + this.f91077v + ",\n       extended=" + this.f91078w + '}';
    }
}

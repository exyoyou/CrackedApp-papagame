package com.join.android.app.mgsim.wufun;

import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.DataBinderMapper;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.join.android.app.mgsim.wufun.databinding.a60;
import com.join.android.app.mgsim.wufun.databinding.a70;
import com.join.android.app.mgsim.wufun.databinding.al;
import com.join.android.app.mgsim.wufun.databinding.ay;
import com.join.android.app.mgsim.wufun.databinding.b00;
import com.join.android.app.mgsim.wufun.databinding.b50;
import com.join.android.app.mgsim.wufun.databinding.bc;
import com.join.android.app.mgsim.wufun.databinding.bm0;
import com.join.android.app.mgsim.wufun.databinding.bx;
import com.join.android.app.mgsim.wufun.databinding.bx0;
import com.join.android.app.mgsim.wufun.databinding.bz;
import com.join.android.app.mgsim.wufun.databinding.c0;
import com.join.android.app.mgsim.wufun.databinding.c4;
import com.join.android.app.mgsim.wufun.databinding.c60;
import com.join.android.app.mgsim.wufun.databinding.ct0;
import com.join.android.app.mgsim.wufun.databinding.d00;
import com.join.android.app.mgsim.wufun.databinding.d50;
import com.join.android.app.mgsim.wufun.databinding.d7;
import com.join.android.app.mgsim.wufun.databinding.dj;
import com.join.android.app.mgsim.wufun.databinding.dp0;
import com.join.android.app.mgsim.wufun.databinding.dx;
import com.join.android.app.mgsim.wufun.databinding.dy;
import com.join.android.app.mgsim.wufun.databinding.e0;
import com.join.android.app.mgsim.wufun.databinding.em;
import com.join.android.app.mgsim.wufun.databinding.em0;
import com.join.android.app.mgsim.wufun.databinding.en0;
import com.join.android.app.mgsim.wufun.databinding.ez;
import com.join.android.app.mgsim.wufun.databinding.f50;
import com.join.android.app.mgsim.wufun.databinding.fp0;
import com.join.android.app.mgsim.wufun.databinding.fx;
import com.join.android.app.mgsim.wufun.databinding.fy;
import com.join.android.app.mgsim.wufun.databinding.g1;
import com.join.android.app.mgsim.wufun.databinding.g4;
import com.join.android.app.mgsim.wufun.databinding.gj;
import com.join.android.app.mgsim.wufun.databinding.gn0;
import com.join.android.app.mgsim.wufun.databinding.gp;
import com.join.android.app.mgsim.wufun.databinding.h10;
import com.join.android.app.mgsim.wufun.databinding.h3;
import com.join.android.app.mgsim.wufun.databinding.h50;
import com.join.android.app.mgsim.wufun.databinding.he;
import com.join.android.app.mgsim.wufun.databinding.hl;
import com.join.android.app.mgsim.wufun.databinding.hm0;
import com.join.android.app.mgsim.wufun.databinding.hx;
import com.join.android.app.mgsim.wufun.databinding.hy;
import com.join.android.app.mgsim.wufun.databinding.i0;
import com.join.android.app.mgsim.wufun.databinding.i4;
import com.join.android.app.mgsim.wufun.databinding.j3;
import com.join.android.app.mgsim.wufun.databinding.j50;
import com.join.android.app.mgsim.wufun.databinding.jc;
import com.join.android.app.mgsim.wufun.databinding.jm0;
import com.join.android.app.mgsim.wufun.databinding.jy;
import com.join.android.app.mgsim.wufun.databinding.jz;
import com.join.android.app.mgsim.wufun.databinding.ke;
import com.join.android.app.mgsim.wufun.databinding.ko;
import com.join.android.app.mgsim.wufun.databinding.l5;
import com.join.android.app.mgsim.wufun.databinding.l7;
import com.join.android.app.mgsim.wufun.databinding.lc;
import com.join.android.app.mgsim.wufun.databinding.lm0;
import com.join.android.app.mgsim.wufun.databinding.lx;
import com.join.android.app.mgsim.wufun.databinding.ly;
import com.join.android.app.mgsim.wufun.databinding.lz;
import com.join.android.app.mgsim.wufun.databinding.m0;
import com.join.android.app.mgsim.wufun.databinding.ml;
import com.join.android.app.mgsim.wufun.databinding.n10;
import com.join.android.app.mgsim.wufun.databinding.n5;
import com.join.android.app.mgsim.wufun.databinding.n7;
import com.join.android.app.mgsim.wufun.databinding.nc;
import com.join.android.app.mgsim.wufun.databinding.nm0;
import com.join.android.app.mgsim.wufun.databinding.ny;
import com.join.android.app.mgsim.wufun.databinding.nz;
import com.join.android.app.mgsim.wufun.databinding.o0;
import com.join.android.app.mgsim.wufun.databinding.o4;
import com.join.android.app.mgsim.wufun.databinding.op;
import com.join.android.app.mgsim.wufun.databinding.ow0;
import com.join.android.app.mgsim.wufun.databinding.p;
import com.join.android.app.mgsim.wufun.databinding.p5;
import com.join.android.app.mgsim.wufun.databinding.p7;
import com.join.android.app.mgsim.wufun.databinding.pc;
import com.join.android.app.mgsim.wufun.databinding.pm0;
import com.join.android.app.mgsim.wufun.databinding.pz;
import com.join.android.app.mgsim.wufun.databinding.q0;
import com.join.android.app.mgsim.wufun.databinding.qv;
import com.join.android.app.mgsim.wufun.databinding.r7;
import com.join.android.app.mgsim.wufun.databinding.rc;
import com.join.android.app.mgsim.wufun.databinding.ri;
import com.join.android.app.mgsim.wufun.databinding.rm0;
import com.join.android.app.mgsim.wufun.databinding.rz;
import com.join.android.app.mgsim.wufun.databinding.s0;
import com.join.android.app.mgsim.wufun.databinding.t40;
import com.join.android.app.mgsim.wufun.databinding.tc;
import com.join.android.app.mgsim.wufun.databinding.te;
import com.join.android.app.mgsim.wufun.databinding.tl0;
import com.join.android.app.mgsim.wufun.databinding.tm0;
import com.join.android.app.mgsim.wufun.databinding.to;
import com.join.android.app.mgsim.wufun.databinding.tz;
import com.join.android.app.mgsim.wufun.databinding.u0;
import com.join.android.app.mgsim.wufun.databinding.u00;
import com.join.android.app.mgsim.wufun.databinding.u1;
import com.join.android.app.mgsim.wufun.databinding.u4;
import com.join.android.app.mgsim.wufun.databinding.u50;
import com.join.android.app.mgsim.wufun.databinding.u7;
import com.join.android.app.mgsim.wufun.databinding.ux;
import com.join.android.app.mgsim.wufun.databinding.v40;
import com.join.android.app.mgsim.wufun.databinding.ve;
import com.join.android.app.mgsim.wufun.databinding.vl0;
import com.join.android.app.mgsim.wufun.databinding.vm0;
import com.join.android.app.mgsim.wufun.databinding.vn;
import com.join.android.app.mgsim.wufun.databinding.vo;
import com.join.android.app.mgsim.wufun.databinding.vz;
import com.join.android.app.mgsim.wufun.databinding.w0;
import com.join.android.app.mgsim.wufun.databinding.w4;
import com.join.android.app.mgsim.wufun.databinding.w50;
import com.join.android.app.mgsim.wufun.databinding.w7;
import com.join.android.app.mgsim.wufun.databinding.wx;
import com.join.android.app.mgsim.wufun.databinding.xl0;
import com.join.android.app.mgsim.wufun.databinding.xm0;
import com.join.android.app.mgsim.wufun.databinding.xw;
import com.join.android.app.mgsim.wufun.databinding.xz;
import com.join.android.app.mgsim.wufun.databinding.y;
import com.join.android.app.mgsim.wufun.databinding.y00;
import com.join.android.app.mgsim.wufun.databinding.y10;
import com.join.android.app.mgsim.wufun.databinding.y4;
import com.join.android.app.mgsim.wufun.databinding.y50;
import com.join.android.app.mgsim.wufun.databinding.y60;
import com.join.android.app.mgsim.wufun.databinding.y7;
import com.join.android.app.mgsim.wufun.databinding.yx;
import com.join.android.app.mgsim.wufun.databinding.z40;
import com.join.android.app.mgsim.wufun.databinding.zl0;
import com.join.android.app.mgsim.wufun.databinding.zw;
import com.join.android.app.mgsim.wufun.databinding.zw0;
import com.join.android.app.mgsim.wufun.databinding.zz;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class DataBinderMapperImpl extends DataBinderMapper {
    private static final int A = 27;
    private static final int A0 = 79;
    private static final int A1 = 131;
    private static final int B = 28;
    private static final int B0 = 80;
    private static final SparseIntArray B1;
    private static final int C = 29;
    private static final int C0 = 81;
    private static final int D = 30;
    private static final int D0 = 82;
    private static final int E = 31;
    private static final int E0 = 83;
    private static final int F = 32;
    private static final int F0 = 84;
    private static final int G = 33;
    private static final int G0 = 85;
    private static final int H = 34;
    private static final int H0 = 86;
    private static final int I = 35;
    private static final int I0 = 87;
    private static final int J = 36;
    private static final int J0 = 88;
    private static final int K = 37;
    private static final int K0 = 89;
    private static final int L = 38;
    private static final int L0 = 90;
    private static final int M = 39;
    private static final int M0 = 91;
    private static final int N = 40;
    private static final int N0 = 92;
    private static final int O = 41;
    private static final int O0 = 93;
    private static final int P = 42;
    private static final int P0 = 94;
    private static final int Q = 43;
    private static final int Q0 = 95;
    private static final int R = 44;
    private static final int R0 = 96;
    private static final int S = 45;
    private static final int S0 = 97;
    private static final int T = 46;
    private static final int T0 = 98;
    private static final int U = 47;
    private static final int U0 = 99;
    private static final int V = 48;
    private static final int V0 = 100;
    private static final int W = 49;
    private static final int W0 = 101;
    private static final int X = 50;
    private static final int X0 = 102;
    private static final int Y = 51;
    private static final int Y0 = 103;
    private static final int Z = 52;
    private static final int Z0 = 104;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f35367a = 1;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private static final int f35368a0 = 53;

    /* JADX INFO: renamed from: a1, reason: collision with root package name */
    private static final int f35369a1 = 105;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f35370b = 2;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private static final int f35371b0 = 54;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    private static final int f35372b1 = 106;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f35373c = 3;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private static final int f35374c0 = 55;

    /* JADX INFO: renamed from: c1, reason: collision with root package name */
    private static final int f35375c1 = 107;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f35376d = 4;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    private static final int f35377d0 = 56;

    /* JADX INFO: renamed from: d1, reason: collision with root package name */
    private static final int f35378d1 = 108;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f35379e = 5;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    private static final int f35380e0 = 57;

    /* JADX INFO: renamed from: e1, reason: collision with root package name */
    private static final int f35381e1 = 109;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f35382f = 6;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    private static final int f35383f0 = 58;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    private static final int f35384f1 = 110;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int f35385g = 7;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    private static final int f35386g0 = 59;

    /* JADX INFO: renamed from: g1, reason: collision with root package name */
    private static final int f35387g1 = 111;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int f35388h = 8;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    private static final int f35389h0 = 60;

    /* JADX INFO: renamed from: h1, reason: collision with root package name */
    private static final int f35390h1 = 112;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int f35391i = 9;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    private static final int f35392i0 = 61;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    private static final int f35393i1 = 113;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final int f35394j = 10;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    private static final int f35395j0 = 62;

    /* JADX INFO: renamed from: j1, reason: collision with root package name */
    private static final int f35396j1 = 114;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final int f35397k = 11;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    private static final int f35398k0 = 63;

    /* JADX INFO: renamed from: k1, reason: collision with root package name */
    private static final int f35399k1 = 115;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final int f35400l = 12;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    private static final int f35401l0 = 64;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    private static final int f35402l1 = 116;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final int f35403m = 13;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    private static final int f35404m0 = 65;

    /* JADX INFO: renamed from: m1, reason: collision with root package name */
    private static final int f35405m1 = 117;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final int f35406n = 14;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    private static final int f35407n0 = 66;

    /* JADX INFO: renamed from: n1, reason: collision with root package name */
    private static final int f35408n1 = 118;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final int f35409o = 15;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    private static final int f35410o0 = 67;

    /* JADX INFO: renamed from: o1, reason: collision with root package name */
    private static final int f35411o1 = 119;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final int f35412p = 16;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private static final int f35413p0 = 68;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    private static final int f35414p1 = 120;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final int f35415q = 17;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    private static final int f35416q0 = 69;

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    private static final int f35417q1 = 121;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final int f35418r = 18;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    private static final int f35419r0 = 70;

    /* JADX INFO: renamed from: r1, reason: collision with root package name */
    private static final int f35420r1 = 122;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final int f35421s = 19;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    private static final int f35422s0 = 71;

    /* JADX INFO: renamed from: s1, reason: collision with root package name */
    private static final int f35423s1 = 123;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final int f35424t = 20;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    private static final int f35425t0 = 72;

    /* JADX INFO: renamed from: t1, reason: collision with root package name */
    private static final int f35426t1 = 124;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final int f35427u = 21;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    private static final int f35428u0 = 73;

    /* JADX INFO: renamed from: u1, reason: collision with root package name */
    private static final int f35429u1 = 125;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final int f35430v = 22;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    private static final int f35431v0 = 74;

    /* JADX INFO: renamed from: v1, reason: collision with root package name */
    private static final int f35432v1 = 126;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final int f35433w = 23;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    private static final int f35434w0 = 75;

    /* JADX INFO: renamed from: w1, reason: collision with root package name */
    private static final int f35435w1 = 127;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final int f35436x = 24;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    private static final int f35437x0 = 76;

    /* JADX INFO: renamed from: x1, reason: collision with root package name */
    private static final int f35438x1 = 128;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final int f35439y = 25;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    private static final int f35440y0 = 77;

    /* JADX INFO: renamed from: y1, reason: collision with root package name */
    private static final int f35441y1 = 129;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final int f35442z = 26;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    private static final int f35443z0 = 78;

    /* JADX INFO: renamed from: z1, reason: collision with root package name */
    private static final int f35444z1 = 130;

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final SparseArray<String> f35445a;

        static {
            SparseArray<String> sparseArray = new SparseArray<>(55);
            f35445a = sparseArray;
            sparseArray.put(0, "_all");
            sparseArray.put(1, "adapter");
            sparseArray.put(2, "afterTextChange");
            sparseArray.put(3, "album");
            sparseArray.put(4, "archive");
            sparseArray.put(5, "beforTextChange");
            sparseArray.put(6, "bindingData");
            sparseArray.put(7, "buttonEnable");
            sparseArray.put(8, "click");
            sparseArray.put(9, "clickListener");
            sparseArray.put(10, "collapse");
            sparseArray.put(11, "data");
            sparseArray.put(12, "downMode");
            sparseArray.put(13, "downState");
            sparseArray.put(14, "downText");
            sparseArray.put(15, "emusClickListener");
            sparseArray.put(16, "fragmentManager");
            sparseArray.put(17, "fragments");
            sparseArray.put(18, "freeTimeStr");
            sparseArray.put(19, "gameIcon");
            sparseArray.put(20, "gameName");
            sparseArray.put(21, "iconResId");
            sparseArray.put(22, "isChoice");
            sparseArray.put(23, "isSelected");
            sparseArray.put(24, "isShowName");
            sparseArray.put(25, "isdiscount");
            sparseArray.put(26, "isshowWhite");
            sparseArray.put(27, "itemData");
            sparseArray.put(28, "listBean");
            sparseArray.put(29, "listener");
            sparseArray.put(30, "loadBindProxy");
            sparseArray.put(31, "maxLines");
            sparseArray.put(32, "message");
            sparseArray.put(33, "onClickListener");
            sparseArray.put(34, "picUrl");
            sparseArray.put(35, "picUrl1");
            sparseArray.put(36, "picUrl2");
            sparseArray.put(37, "picUrl3");
            sparseArray.put(38, "progress");
            sparseArray.put(39, "recyclerviewDatas");
            sparseArray.put(40, "recycleviewListener");
            sparseArray.put(41, "statusText");
            sparseArray.put(42, "timeStr");
            sparseArray.put(43, "timeVisible");
            sparseArray.put(44, "title");
            sparseArray.put(45, "titles");
            sparseArray.put(46, "totalTime");
            sparseArray.put(47, "uiMode");
            sparseArray.put(48, "videoData");
            sparseArray.put(49, "videoHelper");
            sparseArray.put(50, "viewModle");
            sparseArray.put(51, "viewPager");
            sparseArray.put(52, "vipTimeStr");
            sparseArray.put(53, "vipType");
            sparseArray.put(54, "vm");
        }

        private a() {
        }
    }

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final HashMap<String, Integer> f35446a;

        static {
            HashMap<String, Integer> map = new HashMap<>(131);
            f35446a = map;
            map.put("layout/activity_cloud_asset_record_0", Integer.valueOf(R.layout.activity_cloud_asset_record));
            map.put("layout/activity_collection_search_list_game_0", Integer.valueOf(R.layout.activity_collection_search_list_game));
            map.put("layout/activity_common_zone_0", Integer.valueOf(R.layout.activity_common_zone));
            map.put("layout/activity_couponlist_activity_0", Integer.valueOf(R.layout.activity_couponlist_activity));
            map.put("layout/activity_create_source_hope_0", Integer.valueOf(R.layout.activity_create_source_hope));
            map.put("layout/activity_discount_common_bottom_dialog_0", Integer.valueOf(R.layout.activity_discount_common_bottom_dialog));
            map.put("layout/activity_discount_game_detail_0", Integer.valueOf(R.layout.activity_discount_game_detail));
            map.put("layout/activity_discount_game_detail_coupon_0", Integer.valueOf(R.layout.activity_discount_game_detail_coupon));
            map.put("layout/activity_discount_game_detail_gift_0", Integer.valueOf(R.layout.activity_discount_game_detail_gift));
            map.put("layout/activity_discount_game_detail_info_bottom_dialog_0", Integer.valueOf(R.layout.activity_discount_game_detail_info_bottom_dialog));
            map.put("layout/activity_discount_game_detail_server_book_dialog_0", Integer.valueOf(R.layout.activity_discount_game_detail_server_book_dialog));
            map.put("layout/activity_end_game_slot_list_0", Integer.valueOf(R.layout.activity_end_game_slot_list));
            map.put("layout/activity_game_detail_comment_data_0", Integer.valueOf(R.layout.activity_game_detail_comment_data));
            map.put("layout/activity_nostalgia_game_0", Integer.valueOf(R.layout.activity_nostalgia_game));
            map.put("layout/activity_noticelist_activity_0", Integer.valueOf(R.layout.activity_noticelist_activity));
            map.put("layout/activity_quark_install_0", Integer.valueOf(R.layout.activity_quark_install));
            map.put("layout/activity_quark_search_result_0", Integer.valueOf(R.layout.activity_quark_search_result));
            map.put("layout/activity_quark_source_hope_list_0", Integer.valueOf(R.layout.activity_quark_source_hope_list));
            map.put("layout/activity_share_source_0", Integer.valueOf(R.layout.activity_share_source));
            map.put("layout/activity_source_save_0", Integer.valueOf(R.layout.activity_source_save));
            map.put("layout/activity_source_share_0", Integer.valueOf(R.layout.activity_source_share));
            map.put("layout/activity_source_share_detail_0", Integer.valueOf(R.layout.activity_source_share_detail));
            map.put("layout/activity_upload_source_hope_0", Integer.valueOf(R.layout.activity_upload_source_hope));
            map.put("layout/activity_userrecom_activity_0", Integer.valueOf(R.layout.activity_userrecom_activity));
            map.put("layout/activity_vasingle_game_index_0", Integer.valueOf(R.layout.activity_vasingle_game_index));
            map.put("layout/bindding_load_layout_include_0", Integer.valueOf(R.layout.bindding_load_layout_include));
            map.put("layout/bt_hrecyclerview_gamelist_layout_0", Integer.valueOf(R.layout.bt_hrecyclerview_gamelist_layout));
            map.put("layout/bt_listitem_0", Integer.valueOf(R.layout.bt_listitem));
            map.put("layout/bt_regin_activity_0", Integer.valueOf(R.layout.bt_regin_activity));
            map.put("layout/bt_select_item_0", Integer.valueOf(R.layout.bt_select_item));
            map.put("layout/bt_tag_recycview_layout_0", Integer.valueOf(R.layout.bt_tag_recycview_layout));
            map.put("layout/bt_video_item_layout_0", Integer.valueOf(R.layout.bt_video_item_layout));
            map.put("layout/bt_viewpager_layout_0", Integer.valueOf(R.layout.bt_viewpager_layout));
            map.put("layout/coupon_list_item_layout_0", Integer.valueOf(R.layout.coupon_list_item_layout));
            map.put("layout/datab_bt_hviewlist_0", Integer.valueOf(R.layout.datab_bt_hviewlist));
            map.put("layout/datab_gamelist_layout_0", Integer.valueOf(R.layout.datab_gamelist_layout));
            map.put("layout/databinding_hgamelist_item_0", Integer.valueOf(R.layout.databinding_hgamelist_item));
            map.put("layout/databinding_htaglist_item_0", Integer.valueOf(R.layout.databinding_htaglist_item));
            map.put("layout/databinding_line_layout_0", Integer.valueOf(R.layout.databinding_line_layout));
            map.put("layout/databinding_title_layout_0", Integer.valueOf(R.layout.databinding_title_layout));
            map.put("layout/dialog_cloud_birthday_setting_0", Integer.valueOf(R.layout.dialog_cloud_birthday_setting));
            map.put("layout/dialog_cloud_game_launch_tip_0", Integer.valueOf(R.layout.dialog_cloud_game_launch_tip));
            map.put("layout/dialog_cloud_sign_success_0", Integer.valueOf(R.layout.dialog_cloud_sign_success));
            map.put("layout/dialog_cloud_time_reward_success_0", Integer.valueOf(R.layout.dialog_cloud_time_reward_success));
            map.put("layout/download_archive_dialog_0", Integer.valueOf(R.layout.download_archive_dialog));
            map.put("layout/emus_archive_game_detail_list_item_0", Integer.valueOf(R.layout.emus_archive_game_detail_list_item));
            map.put("layout/everday_new_fragment_0", Integer.valueOf(R.layout.everday_new_fragment));
            map.put("layout/fragment_cloud_asset_record_0", Integer.valueOf(R.layout.fragment_cloud_asset_record));
            map.put("layout/fragment_comment_statistic_data_0", Integer.valueOf(R.layout.fragment_comment_statistic_data));
            map.put("layout/fragment_discount_game_detail_v2_0", Integer.valueOf(R.layout.fragment_discount_game_detail_v2));
            map.put("layout/fragment_game_detail_comment_list_0", Integer.valueOf(R.layout.fragment_game_detail_comment_list));
            map.put("layout/fragment_nostalgia_game_page_0", Integer.valueOf(R.layout.fragment_nostalgia_game_page));
            map.put("layout/fragment_search_list_game_0", Integer.valueOf(R.layout.fragment_search_list_game));
            map.put("layout/fragment_source_hope_0", Integer.valueOf(R.layout.fragment_source_hope));
            map.put("layout/fragment_source_share_0", Integer.valueOf(R.layout.fragment_source_share));
            map.put("layout/game_detail_emus_cloud_list_layout_databinding_0", Integer.valueOf(R.layout.game_detail_emus_cloud_list_layout_databinding));
            map.put("layout/game_detail_mod_cloud_list_layout_databinding_0", Integer.valueOf(R.layout.game_detail_mod_cloud_list_layout_databinding));
            map.put("layout/image_show_dialog_0", Integer.valueOf(R.layout.image_show_dialog));
            map.put("layout/item_cloud_asset_daoj_0", Integer.valueOf(R.layout.item_cloud_asset_daoj));
            map.put("layout/item_cloud_asset_time_0", Integer.valueOf(R.layout.item_cloud_asset_time));
            map.put("layout/item_cloud_asset_time_1_0", Integer.valueOf(R.layout.item_cloud_asset_time_1));
            map.put("layout/item_cloud_asset_yunb_0", Integer.valueOf(R.layout.item_cloud_asset_yunb));
            map.put("layout/item_cloud_asset_yunz_0", Integer.valueOf(R.layout.item_cloud_asset_yunz));
            map.put("layout/item_cloud_game_recent_game_0", Integer.valueOf(R.layout.item_cloud_game_recent_game));
            map.put("layout/item_collection_search_list_game_0", Integer.valueOf(R.layout.item_collection_search_list_game));
            map.put("layout/item_comment_statistic_data_layout_0", Integer.valueOf(R.layout.item_comment_statistic_data_layout));
            map.put("layout/item_common_zone_ad_0", Integer.valueOf(R.layout.item_common_zone_ad));
            map.put("layout/item_common_zone_default_0", Integer.valueOf(R.layout.item_common_zone_default));
            map.put("layout/item_common_zone_game_info_bottom_0", Integer.valueOf(R.layout.item_common_zone_game_info_bottom));
            map.put("layout/item_common_zone_game_info_bottom_card_0", Integer.valueOf(R.layout.item_common_zone_game_info_bottom_card));
            map.put("layout/item_common_zone_game_info_bottom_card_video_0", Integer.valueOf(R.layout.item_common_zone_game_info_bottom_card_video));
            map.put("layout/item_common_zone_game_info_inner_bottom_card_0", Integer.valueOf(R.layout.item_common_zone_game_info_inner_bottom_card));
            map.put("layout/item_common_zone_title_0", Integer.valueOf(R.layout.item_common_zone_title));
            map.put("layout/item_coupon_0", Integer.valueOf(R.layout.item_coupon));
            map.put("layout/item_coupon_game_detail_0", Integer.valueOf(R.layout.item_coupon_game_detail));
            map.put("layout/item_detail_banner_indicator_0", Integer.valueOf(R.layout.item_detail_banner_indicator));
            map.put("layout/item_detail_gift_0", Integer.valueOf(R.layout.item_detail_gift));
            map.put("layout/item_discount_game_detail_banner_pic_h_0", Integer.valueOf(R.layout.item_discount_game_detail_banner_pic_h));
            map.put("layout/item_discount_game_detail_banner_pic_v_0", Integer.valueOf(R.layout.item_discount_game_detail_banner_pic_v));
            map.put("layout/item_discount_game_detail_banner_pic_v_single_0", Integer.valueOf(R.layout.item_discount_game_detail_banner_pic_v_single));
            map.put("layout/item_discount_game_detail_banner_placeholder_0", Integer.valueOf(R.layout.item_discount_game_detail_banner_placeholder));
            map.put("layout/item_discount_game_detail_banner_video_0", Integer.valueOf(R.layout.item_discount_game_detail_banner_video));
            map.put("layout/item_discount_game_detail_dialog_info_list_0", Integer.valueOf(R.layout.item_discount_game_detail_dialog_info_list));
            map.put("layout/item_discount_game_detail_info_list_0", Integer.valueOf(R.layout.item_discount_game_detail_info_list));
            map.put("layout/item_discount_game_detail_server_list_0", Integer.valueOf(R.layout.item_discount_game_detail_server_list));
            map.put("layout/item_discount_game_detail_similar_game_0", Integer.valueOf(R.layout.item_discount_game_detail_similar_game));
            map.put("layout/item_discount_gift_content_0", Integer.valueOf(R.layout.item_discount_gift_content));
            map.put("layout/item_discount_gift_title_0", Integer.valueOf(R.layout.item_discount_gift_title));
            map.put("layout/item_end_game_slot_list_0", Integer.valueOf(R.layout.item_end_game_slot_list));
            map.put("layout/item_find_mini_recent_game_0", Integer.valueOf(R.layout.item_find_mini_recent_game));
            map.put("layout/item_game_comment_spinner_layout_0", Integer.valueOf(R.layout.item_game_comment_spinner_layout));
            map.put("layout/item_game_detail_comment_layout_0", Integer.valueOf(R.layout.item_game_detail_comment_layout));
            map.put("layout/item_game_detail_release_welfare_list_0", Integer.valueOf(R.layout.item_game_detail_release_welfare_list));
            map.put("layout/item_quark_search_result_0", Integer.valueOf(R.layout.item_quark_search_result));
            map.put("layout/item_quark_source_hope_0", Integer.valueOf(R.layout.item_quark_source_hope));
            map.put("layout/item_recommend_game_0", Integer.valueOf(R.layout.item_recommend_game));
            map.put("layout/item_recommend_game_1_0", Integer.valueOf(R.layout.item_recommend_game_1));
            map.put("layout/item_recommend_game_2_0", Integer.valueOf(R.layout.item_recommend_game_2));
            map.put("layout/item_recommend_game_3_0", Integer.valueOf(R.layout.item_recommend_game_3));
            map.put("layout/item_recommend_game_4_0", Integer.valueOf(R.layout.item_recommend_game_4));
            map.put("layout/item_recommend_title_0", Integer.valueOf(R.layout.item_recommend_title));
            map.put("layout/item_search_list_ad_grid_0", Integer.valueOf(R.layout.item_search_list_ad_grid));
            map.put("layout/item_search_list_ad_grid_item_0", Integer.valueOf(R.layout.item_search_list_ad_grid_item));
            map.put("layout/item_search_list_game_0", Integer.valueOf(R.layout.item_search_list_game));
            map.put("layout/item_search_list_more_0", Integer.valueOf(R.layout.item_search_list_more));
            map.put("layout/item_search_list_title_0", Integer.valueOf(R.layout.item_search_list_title));
            map.put("layout/item_source_hope_tag_0", Integer.valueOf(R.layout.item_source_hope_tag));
            map.put("layout/item_source_share_0", Integer.valueOf(R.layout.item_source_share));
            map.put("layout/mod_choice_archive_dialog_0", Integer.valueOf(R.layout.mod_choice_archive_dialog));
            map.put("layout/mod_choice_dialog_item_0", Integer.valueOf(R.layout.mod_choice_dialog_item));
            map.put("layout/mod_commentl_archive_dialog_0", Integer.valueOf(R.layout.mod_commentl_archive_dialog));
            map.put("layout/mod_del_archive_dialog_0", Integer.valueOf(R.layout.mod_del_archive_dialog));
            map.put("layout/mod_notice_archive_dialog_0", Integer.valueOf(R.layout.mod_notice_archive_dialog));
            map.put("layout/mod_redown_archive_dialog_0", Integer.valueOf(R.layout.mod_redown_archive_dialog));
            map.put("layout/mod_upload_archive_activity_0", Integer.valueOf(R.layout.mod_upload_archive_activity));
            map.put("layout/modarchive_game_detail_list_item_0", Integer.valueOf(R.layout.modarchive_game_detail_list_item));
            map.put("layout/modarchive_list_domain_0", Integer.valueOf(R.layout.modarchive_list_domain));
            map.put("layout/modarchive_list_domain2_0", Integer.valueOf(R.layout.modarchive_list_domain2));
            map.put("layout/modarchive_list_item_0", Integer.valueOf(R.layout.modarchive_list_item));
            map.put("layout/modarchive_list_item2_0", Integer.valueOf(R.layout.modarchive_list_item2));
            map.put("layout/modarchive_list_local_item_0", Integer.valueOf(R.layout.modarchive_list_local_item));
            map.put("layout/modarchive_list_local_item2_0", Integer.valueOf(R.layout.modarchive_list_local_item2));
            map.put("layout/modgame_cloud_archive_fragment_0", Integer.valueOf(R.layout.modgame_cloud_archive_fragment));
            map.put("layout/mustplay_item_layout_0", Integer.valueOf(R.layout.mustplay_item_layout));
            map.put("layout/mustplay_regin_activity_0", Integer.valueOf(R.layout.mustplay_regin_activity));
            map.put("layout/notice_item_item_0", Integer.valueOf(R.layout.notice_item_item));
            map.put("layout/notice_white_dialog_0", Integer.valueOf(R.layout.notice_white_dialog));
            map.put("layout/recyclerview_layout_databinding_0", Integer.valueOf(R.layout.recyclerview_layout_databinding));
            map.put("layout/unbind_thridpart_activity_0", Integer.valueOf(R.layout.unbind_thridpart_activity));
            map.put("layout/user_recomend_listitem_0", Integer.valueOf(R.layout.user_recomend_listitem));
            map.put("layout/video_dbs_layout_0", Integer.valueOf(R.layout.video_dbs_layout));
        }

        private b() {
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray(131);
        B1 = sparseIntArray;
        sparseIntArray.put(R.layout.activity_cloud_asset_record, 1);
        sparseIntArray.put(R.layout.activity_collection_search_list_game, 2);
        sparseIntArray.put(R.layout.activity_common_zone, 3);
        sparseIntArray.put(R.layout.activity_couponlist_activity, 4);
        sparseIntArray.put(R.layout.activity_create_source_hope, 5);
        sparseIntArray.put(R.layout.activity_discount_common_bottom_dialog, 6);
        sparseIntArray.put(R.layout.activity_discount_game_detail, 7);
        sparseIntArray.put(R.layout.activity_discount_game_detail_coupon, 8);
        sparseIntArray.put(R.layout.activity_discount_game_detail_gift, 9);
        sparseIntArray.put(R.layout.activity_discount_game_detail_info_bottom_dialog, 10);
        sparseIntArray.put(R.layout.activity_discount_game_detail_server_book_dialog, 11);
        sparseIntArray.put(R.layout.activity_end_game_slot_list, 12);
        sparseIntArray.put(R.layout.activity_game_detail_comment_data, 13);
        sparseIntArray.put(R.layout.activity_nostalgia_game, 14);
        sparseIntArray.put(R.layout.activity_noticelist_activity, 15);
        sparseIntArray.put(R.layout.activity_quark_install, 16);
        sparseIntArray.put(R.layout.activity_quark_search_result, 17);
        sparseIntArray.put(R.layout.activity_quark_source_hope_list, 18);
        sparseIntArray.put(R.layout.activity_share_source, 19);
        sparseIntArray.put(R.layout.activity_source_save, 20);
        sparseIntArray.put(R.layout.activity_source_share, 21);
        sparseIntArray.put(R.layout.activity_source_share_detail, 22);
        sparseIntArray.put(R.layout.activity_upload_source_hope, 23);
        sparseIntArray.put(R.layout.activity_userrecom_activity, 24);
        sparseIntArray.put(R.layout.activity_vasingle_game_index, 25);
        sparseIntArray.put(R.layout.bindding_load_layout_include, 26);
        sparseIntArray.put(R.layout.bt_hrecyclerview_gamelist_layout, 27);
        sparseIntArray.put(R.layout.bt_listitem, 28);
        sparseIntArray.put(R.layout.bt_regin_activity, 29);
        sparseIntArray.put(R.layout.bt_select_item, 30);
        sparseIntArray.put(R.layout.bt_tag_recycview_layout, 31);
        sparseIntArray.put(R.layout.bt_video_item_layout, 32);
        sparseIntArray.put(R.layout.bt_viewpager_layout, 33);
        sparseIntArray.put(R.layout.coupon_list_item_layout, 34);
        sparseIntArray.put(R.layout.datab_bt_hviewlist, 35);
        sparseIntArray.put(R.layout.datab_gamelist_layout, 36);
        sparseIntArray.put(R.layout.databinding_hgamelist_item, 37);
        sparseIntArray.put(R.layout.databinding_htaglist_item, 38);
        sparseIntArray.put(R.layout.databinding_line_layout, 39);
        sparseIntArray.put(R.layout.databinding_title_layout, 40);
        sparseIntArray.put(R.layout.dialog_cloud_birthday_setting, 41);
        sparseIntArray.put(R.layout.dialog_cloud_game_launch_tip, 42);
        sparseIntArray.put(R.layout.dialog_cloud_sign_success, 43);
        sparseIntArray.put(R.layout.dialog_cloud_time_reward_success, 44);
        sparseIntArray.put(R.layout.download_archive_dialog, 45);
        sparseIntArray.put(R.layout.emus_archive_game_detail_list_item, 46);
        sparseIntArray.put(R.layout.everday_new_fragment, 47);
        sparseIntArray.put(R.layout.fragment_cloud_asset_record, 48);
        sparseIntArray.put(R.layout.fragment_comment_statistic_data, 49);
        sparseIntArray.put(R.layout.fragment_discount_game_detail_v2, 50);
        sparseIntArray.put(R.layout.fragment_game_detail_comment_list, 51);
        sparseIntArray.put(R.layout.fragment_nostalgia_game_page, 52);
        sparseIntArray.put(R.layout.fragment_search_list_game, 53);
        sparseIntArray.put(R.layout.fragment_source_hope, 54);
        sparseIntArray.put(R.layout.fragment_source_share, 55);
        sparseIntArray.put(R.layout.game_detail_emus_cloud_list_layout_databinding, 56);
        sparseIntArray.put(R.layout.game_detail_mod_cloud_list_layout_databinding, 57);
        sparseIntArray.put(R.layout.image_show_dialog, 58);
        sparseIntArray.put(R.layout.item_cloud_asset_daoj, 59);
        sparseIntArray.put(R.layout.item_cloud_asset_time, 60);
        sparseIntArray.put(R.layout.item_cloud_asset_time_1, 61);
        sparseIntArray.put(R.layout.item_cloud_asset_yunb, 62);
        sparseIntArray.put(R.layout.item_cloud_asset_yunz, 63);
        sparseIntArray.put(R.layout.item_cloud_game_recent_game, 64);
        sparseIntArray.put(R.layout.item_collection_search_list_game, 65);
        sparseIntArray.put(R.layout.item_comment_statistic_data_layout, 66);
        sparseIntArray.put(R.layout.item_common_zone_ad, 67);
        sparseIntArray.put(R.layout.item_common_zone_default, 68);
        sparseIntArray.put(R.layout.item_common_zone_game_info_bottom, 69);
        sparseIntArray.put(R.layout.item_common_zone_game_info_bottom_card, 70);
        sparseIntArray.put(R.layout.item_common_zone_game_info_bottom_card_video, 71);
        sparseIntArray.put(R.layout.item_common_zone_game_info_inner_bottom_card, 72);
        sparseIntArray.put(R.layout.item_common_zone_title, 73);
        sparseIntArray.put(R.layout.item_coupon, 74);
        sparseIntArray.put(R.layout.item_coupon_game_detail, 75);
        sparseIntArray.put(R.layout.item_detail_banner_indicator, 76);
        sparseIntArray.put(R.layout.item_detail_gift, 77);
        sparseIntArray.put(R.layout.item_discount_game_detail_banner_pic_h, 78);
        sparseIntArray.put(R.layout.item_discount_game_detail_banner_pic_v, 79);
        sparseIntArray.put(R.layout.item_discount_game_detail_banner_pic_v_single, 80);
        sparseIntArray.put(R.layout.item_discount_game_detail_banner_placeholder, 81);
        sparseIntArray.put(R.layout.item_discount_game_detail_banner_video, 82);
        sparseIntArray.put(R.layout.item_discount_game_detail_dialog_info_list, 83);
        sparseIntArray.put(R.layout.item_discount_game_detail_info_list, 84);
        sparseIntArray.put(R.layout.item_discount_game_detail_server_list, 85);
        sparseIntArray.put(R.layout.item_discount_game_detail_similar_game, 86);
        sparseIntArray.put(R.layout.item_discount_gift_content, 87);
        sparseIntArray.put(R.layout.item_discount_gift_title, 88);
        sparseIntArray.put(R.layout.item_end_game_slot_list, 89);
        sparseIntArray.put(R.layout.item_find_mini_recent_game, 90);
        sparseIntArray.put(R.layout.item_game_comment_spinner_layout, 91);
        sparseIntArray.put(R.layout.item_game_detail_comment_layout, 92);
        sparseIntArray.put(R.layout.item_game_detail_release_welfare_list, 93);
        sparseIntArray.put(R.layout.item_quark_search_result, 94);
        sparseIntArray.put(R.layout.item_quark_source_hope, 95);
        sparseIntArray.put(R.layout.item_recommend_game, 96);
        sparseIntArray.put(R.layout.item_recommend_game_1, 97);
        sparseIntArray.put(R.layout.item_recommend_game_2, 98);
        sparseIntArray.put(R.layout.item_recommend_game_3, 99);
        sparseIntArray.put(R.layout.item_recommend_game_4, 100);
        sparseIntArray.put(R.layout.item_recommend_title, 101);
        sparseIntArray.put(R.layout.item_search_list_ad_grid, 102);
        sparseIntArray.put(R.layout.item_search_list_ad_grid_item, 103);
        sparseIntArray.put(R.layout.item_search_list_game, 104);
        sparseIntArray.put(R.layout.item_search_list_more, 105);
        sparseIntArray.put(R.layout.item_search_list_title, 106);
        sparseIntArray.put(R.layout.item_source_hope_tag, 107);
        sparseIntArray.put(R.layout.item_source_share, 108);
        sparseIntArray.put(R.layout.mod_choice_archive_dialog, 109);
        sparseIntArray.put(R.layout.mod_choice_dialog_item, 110);
        sparseIntArray.put(R.layout.mod_commentl_archive_dialog, 111);
        sparseIntArray.put(R.layout.mod_del_archive_dialog, 112);
        sparseIntArray.put(R.layout.mod_notice_archive_dialog, 113);
        sparseIntArray.put(R.layout.mod_redown_archive_dialog, 114);
        sparseIntArray.put(R.layout.mod_upload_archive_activity, 115);
        sparseIntArray.put(R.layout.modarchive_game_detail_list_item, 116);
        sparseIntArray.put(R.layout.modarchive_list_domain, 117);
        sparseIntArray.put(R.layout.modarchive_list_domain2, 118);
        sparseIntArray.put(R.layout.modarchive_list_item, 119);
        sparseIntArray.put(R.layout.modarchive_list_item2, 120);
        sparseIntArray.put(R.layout.modarchive_list_local_item, 121);
        sparseIntArray.put(R.layout.modarchive_list_local_item2, 122);
        sparseIntArray.put(R.layout.modgame_cloud_archive_fragment, 123);
        sparseIntArray.put(R.layout.mustplay_item_layout, 124);
        sparseIntArray.put(R.layout.mustplay_regin_activity, 125);
        sparseIntArray.put(R.layout.notice_item_item, 126);
        sparseIntArray.put(R.layout.notice_white_dialog, 127);
        sparseIntArray.put(R.layout.recyclerview_layout_databinding, 128);
        sparseIntArray.put(R.layout.unbind_thridpart_activity, 129);
        sparseIntArray.put(R.layout.user_recomend_listitem, 130);
        sparseIntArray.put(R.layout.video_dbs_layout, 131);
    }

    private final ViewDataBinding a(DataBindingComponent component, View view, int internalId, Object tag) {
        switch (internalId) {
            case 1:
                if ("layout/activity_cloud_asset_record_0".equals(tag)) {
                    return new p(component, view);
                }
                throw new IllegalArgumentException("The tag for activity_cloud_asset_record is invalid. Received: " + tag);
            case 2:
                if ("layout/activity_collection_search_list_game_0".equals(tag)) {
                    return new y(component, view);
                }
                throw new IllegalArgumentException("The tag for activity_collection_search_list_game is invalid. Received: " + tag);
            case 3:
                if ("layout/activity_common_zone_0".equals(tag)) {
                    return new c0(component, view);
                }
                throw new IllegalArgumentException("The tag for activity_common_zone is invalid. Received: " + tag);
            case 4:
                if ("layout/activity_couponlist_activity_0".equals(tag)) {
                    return new e0(component, view);
                }
                throw new IllegalArgumentException("The tag for activity_couponlist_activity is invalid. Received: " + tag);
            case 5:
                if ("layout/activity_create_source_hope_0".equals(tag)) {
                    return new i0(component, view);
                }
                throw new IllegalArgumentException("The tag for activity_create_source_hope is invalid. Received: " + tag);
            case 6:
                if ("layout/activity_discount_common_bottom_dialog_0".equals(tag)) {
                    return new m0(component, view);
                }
                throw new IllegalArgumentException("The tag for activity_discount_common_bottom_dialog is invalid. Received: " + tag);
            case 7:
                if ("layout/activity_discount_game_detail_0".equals(tag)) {
                    return new o0(component, view);
                }
                throw new IllegalArgumentException("The tag for activity_discount_game_detail is invalid. Received: " + tag);
            case 8:
                if ("layout/activity_discount_game_detail_coupon_0".equals(tag)) {
                    return new q0(component, view);
                }
                throw new IllegalArgumentException("The tag for activity_discount_game_detail_coupon is invalid. Received: " + tag);
            case 9:
                if ("layout/activity_discount_game_detail_gift_0".equals(tag)) {
                    return new s0(component, view);
                }
                throw new IllegalArgumentException("The tag for activity_discount_game_detail_gift is invalid. Received: " + tag);
            case 10:
                if ("layout/activity_discount_game_detail_info_bottom_dialog_0".equals(tag)) {
                    return new u0(component, view);
                }
                throw new IllegalArgumentException("The tag for activity_discount_game_detail_info_bottom_dialog is invalid. Received: " + tag);
            case 11:
                if ("layout/activity_discount_game_detail_server_book_dialog_0".equals(tag)) {
                    return new w0(component, view);
                }
                throw new IllegalArgumentException("The tag for activity_discount_game_detail_server_book_dialog is invalid. Received: " + tag);
            case 12:
                if ("layout/activity_end_game_slot_list_0".equals(tag)) {
                    return new g1(component, view);
                }
                throw new IllegalArgumentException("The tag for activity_end_game_slot_list is invalid. Received: " + tag);
            case 13:
                if ("layout/activity_game_detail_comment_data_0".equals(tag)) {
                    return new u1(component, view);
                }
                throw new IllegalArgumentException("The tag for activity_game_detail_comment_data is invalid. Received: " + tag);
            case 14:
                if ("layout/activity_nostalgia_game_0".equals(tag)) {
                    return new h3(component, view);
                }
                throw new IllegalArgumentException("The tag for activity_nostalgia_game is invalid. Received: " + tag);
            case 15:
                if ("layout/activity_noticelist_activity_0".equals(tag)) {
                    return new j3(component, view);
                }
                throw new IllegalArgumentException("The tag for activity_noticelist_activity is invalid. Received: " + tag);
            case 16:
                if ("layout/activity_quark_install_0".equals(tag)) {
                    return new c4(component, view);
                }
                throw new IllegalArgumentException("The tag for activity_quark_install is invalid. Received: " + tag);
            case 17:
                if ("layout/activity_quark_search_result_0".equals(tag)) {
                    return new g4(component, view);
                }
                throw new IllegalArgumentException("The tag for activity_quark_search_result is invalid. Received: " + tag);
            case 18:
                if ("layout/activity_quark_source_hope_list_0".equals(tag)) {
                    return new i4(component, view);
                }
                throw new IllegalArgumentException("The tag for activity_quark_source_hope_list is invalid. Received: " + tag);
            case 19:
                if ("layout/activity_share_source_0".equals(tag)) {
                    return new o4(component, view);
                }
                throw new IllegalArgumentException("The tag for activity_share_source is invalid. Received: " + tag);
            case 20:
                if ("layout/activity_source_save_0".equals(tag)) {
                    return new u4(component, view);
                }
                throw new IllegalArgumentException("The tag for activity_source_save is invalid. Received: " + tag);
            case 21:
                if ("layout/activity_source_share_0".equals(tag)) {
                    return new w4(component, view);
                }
                throw new IllegalArgumentException("The tag for activity_source_share is invalid. Received: " + tag);
            case 22:
                if ("layout/activity_source_share_detail_0".equals(tag)) {
                    return new y4(component, view);
                }
                throw new IllegalArgumentException("The tag for activity_source_share_detail is invalid. Received: " + tag);
            case 23:
                if ("layout/activity_upload_source_hope_0".equals(tag)) {
                    return new l5(component, view);
                }
                throw new IllegalArgumentException("The tag for activity_upload_source_hope is invalid. Received: " + tag);
            case 24:
                if ("layout/activity_userrecom_activity_0".equals(tag)) {
                    return new n5(component, view);
                }
                throw new IllegalArgumentException("The tag for activity_userrecom_activity is invalid. Received: " + tag);
            case 25:
                if ("layout/activity_vasingle_game_index_0".equals(tag)) {
                    return new p5(component, view);
                }
                throw new IllegalArgumentException("The tag for activity_vasingle_game_index is invalid. Received: " + tag);
            case 26:
                if ("layout/bindding_load_layout_include_0".equals(tag)) {
                    return new d7(component, view);
                }
                throw new IllegalArgumentException("The tag for bindding_load_layout_include is invalid. Received: " + tag);
            case 27:
                if ("layout/bt_hrecyclerview_gamelist_layout_0".equals(tag)) {
                    return new l7(component, view);
                }
                throw new IllegalArgumentException("The tag for bt_hrecyclerview_gamelist_layout is invalid. Received: " + tag);
            case 28:
                if ("layout/bt_listitem_0".equals(tag)) {
                    return new n7(component, view);
                }
                throw new IllegalArgumentException("The tag for bt_listitem is invalid. Received: " + tag);
            case 29:
                if ("layout/bt_regin_activity_0".equals(tag)) {
                    return new p7(component, view);
                }
                throw new IllegalArgumentException("The tag for bt_regin_activity is invalid. Received: " + tag);
            case 30:
                if ("layout/bt_select_item_0".equals(tag)) {
                    return new r7(component, view);
                }
                throw new IllegalArgumentException("The tag for bt_select_item is invalid. Received: " + tag);
            case 31:
                if ("layout/bt_tag_recycview_layout_0".equals(tag)) {
                    return new u7(component, view);
                }
                throw new IllegalArgumentException("The tag for bt_tag_recycview_layout is invalid. Received: " + tag);
            case 32:
                if ("layout/bt_video_item_layout_0".equals(tag)) {
                    return new w7(component, view);
                }
                throw new IllegalArgumentException("The tag for bt_video_item_layout is invalid. Received: " + tag);
            case 33:
                if ("layout/bt_viewpager_layout_0".equals(tag)) {
                    return new y7(component, view);
                }
                throw new IllegalArgumentException("The tag for bt_viewpager_layout is invalid. Received: " + tag);
            case 34:
                if ("layout/coupon_list_item_layout_0".equals(tag)) {
                    return new bc(component, view);
                }
                throw new IllegalArgumentException("The tag for coupon_list_item_layout is invalid. Received: " + tag);
            case 35:
                if ("layout/datab_bt_hviewlist_0".equals(tag)) {
                    return new jc(component, view);
                }
                throw new IllegalArgumentException("The tag for datab_bt_hviewlist is invalid. Received: " + tag);
            case 36:
                if ("layout/datab_gamelist_layout_0".equals(tag)) {
                    return new lc(component, view);
                }
                throw new IllegalArgumentException("The tag for datab_gamelist_layout is invalid. Received: " + tag);
            case 37:
                if ("layout/databinding_hgamelist_item_0".equals(tag)) {
                    return new nc(component, view);
                }
                throw new IllegalArgumentException("The tag for databinding_hgamelist_item is invalid. Received: " + tag);
            case 38:
                if ("layout/databinding_htaglist_item_0".equals(tag)) {
                    return new pc(component, view);
                }
                throw new IllegalArgumentException("The tag for databinding_htaglist_item is invalid. Received: " + tag);
            case 39:
                if ("layout/databinding_line_layout_0".equals(tag)) {
                    return new rc(component, view);
                }
                throw new IllegalArgumentException("The tag for databinding_line_layout is invalid. Received: " + tag);
            case 40:
                if ("layout/databinding_title_layout_0".equals(tag)) {
                    return new tc(component, view);
                }
                throw new IllegalArgumentException("The tag for databinding_title_layout is invalid. Received: " + tag);
            case 41:
                if ("layout/dialog_cloud_birthday_setting_0".equals(tag)) {
                    return new he(component, view);
                }
                throw new IllegalArgumentException("The tag for dialog_cloud_birthday_setting is invalid. Received: " + tag);
            case 42:
                if ("layout/dialog_cloud_game_launch_tip_0".equals(tag)) {
                    return new ke(component, view);
                }
                throw new IllegalArgumentException("The tag for dialog_cloud_game_launch_tip is invalid. Received: " + tag);
            case 43:
                if ("layout/dialog_cloud_sign_success_0".equals(tag)) {
                    return new te(component, view);
                }
                throw new IllegalArgumentException("The tag for dialog_cloud_sign_success is invalid. Received: " + tag);
            case 44:
                if ("layout/dialog_cloud_time_reward_success_0".equals(tag)) {
                    return new ve(component, view);
                }
                throw new IllegalArgumentException("The tag for dialog_cloud_time_reward_success is invalid. Received: " + tag);
            case 45:
                if ("layout/download_archive_dialog_0".equals(tag)) {
                    return new ri(component, view);
                }
                throw new IllegalArgumentException("The tag for download_archive_dialog is invalid. Received: " + tag);
            case 46:
                if ("layout/emus_archive_game_detail_list_item_0".equals(tag)) {
                    return new dj(component, view);
                }
                throw new IllegalArgumentException("The tag for emus_archive_game_detail_list_item is invalid. Received: " + tag);
            case 47:
                if ("layout/everday_new_fragment_0".equals(tag)) {
                    return new gj(component, view);
                }
                throw new IllegalArgumentException("The tag for everday_new_fragment is invalid. Received: " + tag);
            case 48:
                if ("layout/fragment_cloud_asset_record_0".equals(tag)) {
                    return new al(component, view);
                }
                throw new IllegalArgumentException("The tag for fragment_cloud_asset_record is invalid. Received: " + tag);
            case 49:
                if ("layout/fragment_comment_statistic_data_0".equals(tag)) {
                    return new hl(component, view);
                }
                throw new IllegalArgumentException("The tag for fragment_comment_statistic_data is invalid. Received: " + tag);
            case 50:
                if ("layout/fragment_discount_game_detail_v2_0".equals(tag)) {
                    return new ml(component, view);
                }
                throw new IllegalArgumentException("The tag for fragment_discount_game_detail_v2 is invalid. Received: " + tag);
            default:
                return null;
        }
    }

    private final ViewDataBinding b(DataBindingComponent component, View view, int internalId, Object tag) {
        switch (internalId) {
            case 51:
                if ("layout/fragment_game_detail_comment_list_0".equals(tag)) {
                    return new em(component, view);
                }
                throw new IllegalArgumentException("The tag for fragment_game_detail_comment_list is invalid. Received: " + tag);
            case 52:
                if ("layout/fragment_nostalgia_game_page_0".equals(tag)) {
                    return new vn(component, view);
                }
                throw new IllegalArgumentException("The tag for fragment_nostalgia_game_page is invalid. Received: " + tag);
            case 53:
                if ("layout/fragment_search_list_game_0".equals(tag)) {
                    return new ko(component, view);
                }
                throw new IllegalArgumentException("The tag for fragment_search_list_game is invalid. Received: " + tag);
            case 54:
                if ("layout/fragment_source_hope_0".equals(tag)) {
                    return new to(component, view);
                }
                throw new IllegalArgumentException("The tag for fragment_source_hope is invalid. Received: " + tag);
            case 55:
                if ("layout/fragment_source_share_0".equals(tag)) {
                    return new vo(component, view);
                }
                throw new IllegalArgumentException("The tag for fragment_source_share is invalid. Received: " + tag);
            case 56:
                if ("layout/game_detail_emus_cloud_list_layout_databinding_0".equals(tag)) {
                    return new gp(component, view);
                }
                throw new IllegalArgumentException("The tag for game_detail_emus_cloud_list_layout_databinding is invalid. Received: " + tag);
            case 57:
                if ("layout/game_detail_mod_cloud_list_layout_databinding_0".equals(tag)) {
                    return new op(component, view);
                }
                throw new IllegalArgumentException("The tag for game_detail_mod_cloud_list_layout_databinding is invalid. Received: " + tag);
            case 58:
                if ("layout/image_show_dialog_0".equals(tag)) {
                    return new qv(component, view);
                }
                throw new IllegalArgumentException("The tag for image_show_dialog is invalid. Received: " + tag);
            case 59:
                if ("layout/item_cloud_asset_daoj_0".equals(tag)) {
                    return new xw(component, view);
                }
                throw new IllegalArgumentException("The tag for item_cloud_asset_daoj is invalid. Received: " + tag);
            case 60:
                if ("layout/item_cloud_asset_time_0".equals(tag)) {
                    return new bx(component, view);
                }
                throw new IllegalArgumentException("The tag for item_cloud_asset_time is invalid. Received: " + tag);
            case 61:
                if ("layout/item_cloud_asset_time_1_0".equals(tag)) {
                    return new zw(component, view);
                }
                throw new IllegalArgumentException("The tag for item_cloud_asset_time_1 is invalid. Received: " + tag);
            case 62:
                if ("layout/item_cloud_asset_yunb_0".equals(tag)) {
                    return new dx(component, view);
                }
                throw new IllegalArgumentException("The tag for item_cloud_asset_yunb is invalid. Received: " + tag);
            case 63:
                if ("layout/item_cloud_asset_yunz_0".equals(tag)) {
                    return new fx(component, view);
                }
                throw new IllegalArgumentException("The tag for item_cloud_asset_yunz is invalid. Received: " + tag);
            case 64:
                if ("layout/item_cloud_game_recent_game_0".equals(tag)) {
                    return new hx(component, view);
                }
                throw new IllegalArgumentException("The tag for item_cloud_game_recent_game is invalid. Received: " + tag);
            case 65:
                if ("layout/item_collection_search_list_game_0".equals(tag)) {
                    return new lx(component, view);
                }
                throw new IllegalArgumentException("The tag for item_collection_search_list_game is invalid. Received: " + tag);
            case 66:
                if ("layout/item_comment_statistic_data_layout_0".equals(tag)) {
                    return new ux(component, view);
                }
                throw new IllegalArgumentException("The tag for item_comment_statistic_data_layout is invalid. Received: " + tag);
            case 67:
                if ("layout/item_common_zone_ad_0".equals(tag)) {
                    return new wx(component, view);
                }
                throw new IllegalArgumentException("The tag for item_common_zone_ad is invalid. Received: " + tag);
            case 68:
                if ("layout/item_common_zone_default_0".equals(tag)) {
                    return new yx(component, view);
                }
                throw new IllegalArgumentException("The tag for item_common_zone_default is invalid. Received: " + tag);
            case 69:
                if ("layout/item_common_zone_game_info_bottom_0".equals(tag)) {
                    return new ay(component, view);
                }
                throw new IllegalArgumentException("The tag for item_common_zone_game_info_bottom is invalid. Received: " + tag);
            case 70:
                if ("layout/item_common_zone_game_info_bottom_card_0".equals(tag)) {
                    return new dy(component, view);
                }
                throw new IllegalArgumentException("The tag for item_common_zone_game_info_bottom_card is invalid. Received: " + tag);
            case 71:
                if ("layout/item_common_zone_game_info_bottom_card_video_0".equals(tag)) {
                    return new fy(component, view);
                }
                throw new IllegalArgumentException("The tag for item_common_zone_game_info_bottom_card_video is invalid. Received: " + tag);
            case 72:
                if ("layout/item_common_zone_game_info_inner_bottom_card_0".equals(tag)) {
                    return new hy(component, view);
                }
                throw new IllegalArgumentException("The tag for item_common_zone_game_info_inner_bottom_card is invalid. Received: " + tag);
            case 73:
                if ("layout/item_common_zone_title_0".equals(tag)) {
                    return new jy(component, view);
                }
                throw new IllegalArgumentException("The tag for item_common_zone_title is invalid. Received: " + tag);
            case 74:
                if ("layout/item_coupon_0".equals(tag)) {
                    return new ly(component, view);
                }
                throw new IllegalArgumentException("The tag for item_coupon is invalid. Received: " + tag);
            case 75:
                if ("layout/item_coupon_game_detail_0".equals(tag)) {
                    return new ny(component, view);
                }
                throw new IllegalArgumentException("The tag for item_coupon_game_detail is invalid. Received: " + tag);
            case 76:
                if ("layout/item_detail_banner_indicator_0".equals(tag)) {
                    return new bz(component, view);
                }
                throw new IllegalArgumentException("The tag for item_detail_banner_indicator is invalid. Received: " + tag);
            case 77:
                if ("layout/item_detail_gift_0".equals(tag)) {
                    return new ez(component, view);
                }
                throw new IllegalArgumentException("The tag for item_detail_gift is invalid. Received: " + tag);
            case 78:
                if ("layout/item_discount_game_detail_banner_pic_h_0".equals(tag)) {
                    return new jz(component, view);
                }
                throw new IllegalArgumentException("The tag for item_discount_game_detail_banner_pic_h is invalid. Received: " + tag);
            case 79:
                if ("layout/item_discount_game_detail_banner_pic_v_0".equals(tag)) {
                    return new lz(component, view);
                }
                throw new IllegalArgumentException("The tag for item_discount_game_detail_banner_pic_v is invalid. Received: " + tag);
            case 80:
                if ("layout/item_discount_game_detail_banner_pic_v_single_0".equals(tag)) {
                    return new nz(component, view);
                }
                throw new IllegalArgumentException("The tag for item_discount_game_detail_banner_pic_v_single is invalid. Received: " + tag);
            case 81:
                if ("layout/item_discount_game_detail_banner_placeholder_0".equals(tag)) {
                    return new pz(component, view);
                }
                throw new IllegalArgumentException("The tag for item_discount_game_detail_banner_placeholder is invalid. Received: " + tag);
            case 82:
                if ("layout/item_discount_game_detail_banner_video_0".equals(tag)) {
                    return new rz(component, view);
                }
                throw new IllegalArgumentException("The tag for item_discount_game_detail_banner_video is invalid. Received: " + tag);
            case 83:
                if ("layout/item_discount_game_detail_dialog_info_list_0".equals(tag)) {
                    return new tz(component, view);
                }
                throw new IllegalArgumentException("The tag for item_discount_game_detail_dialog_info_list is invalid. Received: " + tag);
            case 84:
                if ("layout/item_discount_game_detail_info_list_0".equals(tag)) {
                    return new vz(component, view);
                }
                throw new IllegalArgumentException("The tag for item_discount_game_detail_info_list is invalid. Received: " + tag);
            case 85:
                if ("layout/item_discount_game_detail_server_list_0".equals(tag)) {
                    return new xz(component, view);
                }
                throw new IllegalArgumentException("The tag for item_discount_game_detail_server_list is invalid. Received: " + tag);
            case 86:
                if ("layout/item_discount_game_detail_similar_game_0".equals(tag)) {
                    return new zz(component, view);
                }
                throw new IllegalArgumentException("The tag for item_discount_game_detail_similar_game is invalid. Received: " + tag);
            case 87:
                if ("layout/item_discount_gift_content_0".equals(tag)) {
                    return new b00(component, view);
                }
                throw new IllegalArgumentException("The tag for item_discount_gift_content is invalid. Received: " + tag);
            case 88:
                if ("layout/item_discount_gift_title_0".equals(tag)) {
                    return new d00(component, view);
                }
                throw new IllegalArgumentException("The tag for item_discount_gift_title is invalid. Received: " + tag);
            case 89:
                if ("layout/item_end_game_slot_list_0".equals(tag)) {
                    return new u00(component, view);
                }
                throw new IllegalArgumentException("The tag for item_end_game_slot_list is invalid. Received: " + tag);
            case 90:
                if ("layout/item_find_mini_recent_game_0".equals(tag)) {
                    return new y00(component, view);
                }
                throw new IllegalArgumentException("The tag for item_find_mini_recent_game is invalid. Received: " + tag);
            case 91:
                if ("layout/item_game_comment_spinner_layout_0".equals(tag)) {
                    return new h10(component, view);
                }
                throw new IllegalArgumentException("The tag for item_game_comment_spinner_layout is invalid. Received: " + tag);
            case 92:
                if ("layout/item_game_detail_comment_layout_0".equals(tag)) {
                    return new n10(component, view);
                }
                throw new IllegalArgumentException("The tag for item_game_detail_comment_layout is invalid. Received: " + tag);
            case 93:
                if ("layout/item_game_detail_release_welfare_list_0".equals(tag)) {
                    return new y10(component, view);
                }
                throw new IllegalArgumentException("The tag for item_game_detail_release_welfare_list is invalid. Received: " + tag);
            case 94:
                if ("layout/item_quark_search_result_0".equals(tag)) {
                    return new t40(component, view);
                }
                throw new IllegalArgumentException("The tag for item_quark_search_result is invalid. Received: " + tag);
            case 95:
                if ("layout/item_quark_source_hope_0".equals(tag)) {
                    return new v40(component, view);
                }
                throw new IllegalArgumentException("The tag for item_quark_source_hope is invalid. Received: " + tag);
            case 96:
                if ("layout/item_recommend_game_0".equals(tag)) {
                    return new h50(component, view);
                }
                throw new IllegalArgumentException("The tag for item_recommend_game is invalid. Received: " + tag);
            case 97:
                if ("layout/item_recommend_game_1_0".equals(tag)) {
                    return new z40(component, view);
                }
                throw new IllegalArgumentException("The tag for item_recommend_game_1 is invalid. Received: " + tag);
            case 98:
                if ("layout/item_recommend_game_2_0".equals(tag)) {
                    return new b50(component, view);
                }
                throw new IllegalArgumentException("The tag for item_recommend_game_2 is invalid. Received: " + tag);
            case 99:
                if ("layout/item_recommend_game_3_0".equals(tag)) {
                    return new d50(component, view);
                }
                throw new IllegalArgumentException("The tag for item_recommend_game_3 is invalid. Received: " + tag);
            case 100:
                if ("layout/item_recommend_game_4_0".equals(tag)) {
                    return new f50(component, view);
                }
                throw new IllegalArgumentException("The tag for item_recommend_game_4 is invalid. Received: " + tag);
            default:
                return null;
        }
    }

    private final ViewDataBinding c(DataBindingComponent component, View view, int internalId, Object tag) {
        switch (internalId) {
            case 101:
                if ("layout/item_recommend_title_0".equals(tag)) {
                    return new j50(component, view);
                }
                throw new IllegalArgumentException("The tag for item_recommend_title is invalid. Received: " + tag);
            case 102:
                if ("layout/item_search_list_ad_grid_0".equals(tag)) {
                    return new u50(component, view);
                }
                throw new IllegalArgumentException("The tag for item_search_list_ad_grid is invalid. Received: " + tag);
            case 103:
                if ("layout/item_search_list_ad_grid_item_0".equals(tag)) {
                    return new w50(component, view);
                }
                throw new IllegalArgumentException("The tag for item_search_list_ad_grid_item is invalid. Received: " + tag);
            case 104:
                if ("layout/item_search_list_game_0".equals(tag)) {
                    return new y50(component, view);
                }
                throw new IllegalArgumentException("The tag for item_search_list_game is invalid. Received: " + tag);
            case 105:
                if ("layout/item_search_list_more_0".equals(tag)) {
                    return new a60(component, view);
                }
                throw new IllegalArgumentException("The tag for item_search_list_more is invalid. Received: " + tag);
            case 106:
                if ("layout/item_search_list_title_0".equals(tag)) {
                    return new c60(component, view);
                }
                throw new IllegalArgumentException("The tag for item_search_list_title is invalid. Received: " + tag);
            case 107:
                if ("layout/item_source_hope_tag_0".equals(tag)) {
                    return new y60(component, view);
                }
                throw new IllegalArgumentException("The tag for item_source_hope_tag is invalid. Received: " + tag);
            case 108:
                if ("layout/item_source_share_0".equals(tag)) {
                    return new a70(component, view);
                }
                throw new IllegalArgumentException("The tag for item_source_share is invalid. Received: " + tag);
            case 109:
                if ("layout/mod_choice_archive_dialog_0".equals(tag)) {
                    return new tl0(component, view);
                }
                throw new IllegalArgumentException("The tag for mod_choice_archive_dialog is invalid. Received: " + tag);
            case 110:
                if ("layout/mod_choice_dialog_item_0".equals(tag)) {
                    return new vl0(component, view);
                }
                throw new IllegalArgumentException("The tag for mod_choice_dialog_item is invalid. Received: " + tag);
            case 111:
                if ("layout/mod_commentl_archive_dialog_0".equals(tag)) {
                    return new xl0(component, view);
                }
                throw new IllegalArgumentException("The tag for mod_commentl_archive_dialog is invalid. Received: " + tag);
            case 112:
                if ("layout/mod_del_archive_dialog_0".equals(tag)) {
                    return new zl0(component, view);
                }
                throw new IllegalArgumentException("The tag for mod_del_archive_dialog is invalid. Received: " + tag);
            case 113:
                if ("layout/mod_notice_archive_dialog_0".equals(tag)) {
                    return new bm0(component, view);
                }
                throw new IllegalArgumentException("The tag for mod_notice_archive_dialog is invalid. Received: " + tag);
            case 114:
                if ("layout/mod_redown_archive_dialog_0".equals(tag)) {
                    return new em0(component, view);
                }
                throw new IllegalArgumentException("The tag for mod_redown_archive_dialog is invalid. Received: " + tag);
            case 115:
                if ("layout/mod_upload_archive_activity_0".equals(tag)) {
                    return new hm0(component, view);
                }
                throw new IllegalArgumentException("The tag for mod_upload_archive_activity is invalid. Received: " + tag);
            case 116:
                if ("layout/modarchive_game_detail_list_item_0".equals(tag)) {
                    return new jm0(component, view);
                }
                throw new IllegalArgumentException("The tag for modarchive_game_detail_list_item is invalid. Received: " + tag);
            case 117:
                if ("layout/modarchive_list_domain_0".equals(tag)) {
                    return new nm0(component, view);
                }
                throw new IllegalArgumentException("The tag for modarchive_list_domain is invalid. Received: " + tag);
            case 118:
                if ("layout/modarchive_list_domain2_0".equals(tag)) {
                    return new lm0(component, view);
                }
                throw new IllegalArgumentException("The tag for modarchive_list_domain2 is invalid. Received: " + tag);
            case 119:
                if ("layout/modarchive_list_item_0".equals(tag)) {
                    return new rm0(component, view);
                }
                throw new IllegalArgumentException("The tag for modarchive_list_item is invalid. Received: " + tag);
            case 120:
                if ("layout/modarchive_list_item2_0".equals(tag)) {
                    return new pm0(component, view);
                }
                throw new IllegalArgumentException("The tag for modarchive_list_item2 is invalid. Received: " + tag);
            case 121:
                if ("layout/modarchive_list_local_item_0".equals(tag)) {
                    return new vm0(component, view);
                }
                throw new IllegalArgumentException("The tag for modarchive_list_local_item is invalid. Received: " + tag);
            case 122:
                if ("layout/modarchive_list_local_item2_0".equals(tag)) {
                    return new tm0(component, view);
                }
                throw new IllegalArgumentException("The tag for modarchive_list_local_item2 is invalid. Received: " + tag);
            case 123:
                if ("layout/modgame_cloud_archive_fragment_0".equals(tag)) {
                    return new xm0(component, view);
                }
                throw new IllegalArgumentException("The tag for modgame_cloud_archive_fragment is invalid. Received: " + tag);
            case 124:
                if ("layout/mustplay_item_layout_0".equals(tag)) {
                    return new en0(component, view);
                }
                throw new IllegalArgumentException("The tag for mustplay_item_layout is invalid. Received: " + tag);
            case 125:
                if ("layout/mustplay_regin_activity_0".equals(tag)) {
                    return new gn0(component, view);
                }
                throw new IllegalArgumentException("The tag for mustplay_regin_activity is invalid. Received: " + tag);
            case 126:
                if ("layout/notice_item_item_0".equals(tag)) {
                    return new dp0(component, view);
                }
                throw new IllegalArgumentException("The tag for notice_item_item is invalid. Received: " + tag);
            case 127:
                if ("layout/notice_white_dialog_0".equals(tag)) {
                    return new fp0(component, view);
                }
                throw new IllegalArgumentException("The tag for notice_white_dialog is invalid. Received: " + tag);
            case 128:
                if ("layout/recyclerview_layout_databinding_0".equals(tag)) {
                    return new ct0(component, view);
                }
                throw new IllegalArgumentException("The tag for recyclerview_layout_databinding is invalid. Received: " + tag);
            case 129:
                if ("layout/unbind_thridpart_activity_0".equals(tag)) {
                    return new ow0(component, view);
                }
                throw new IllegalArgumentException("The tag for unbind_thridpart_activity is invalid. Received: " + tag);
            case 130:
                if ("layout/user_recomend_listitem_0".equals(tag)) {
                    return new zw0(component, view);
                }
                throw new IllegalArgumentException("The tag for user_recomend_listitem is invalid. Received: " + tag);
            case 131:
                if ("layout/video_dbs_layout_0".equals(tag)) {
                    return new bx0(component, view);
                }
                throw new IllegalArgumentException("The tag for video_dbs_layout is invalid. Received: " + tag);
            default:
                return null;
        }
    }

    @Override // androidx.databinding.DataBinderMapper
    public List<DataBinderMapper> collectDependencies() {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(new androidx.databinding.library.baseAdapters.DataBinderMapperImpl());
        return arrayList;
    }

    @Override // androidx.databinding.DataBinderMapper
    public String convertBrIdToString(int localId) {
        return a.f35445a.get(localId);
    }

    @Override // androidx.databinding.DataBinderMapper
    public ViewDataBinding getDataBinder(DataBindingComponent component, View view, int layoutId) {
        int i10 = B1.get(layoutId);
        if (i10 <= 0) {
            return null;
        }
        Object tag = view.getTag();
        if (tag == null) {
            throw new RuntimeException("view must have a tag");
        }
        int i11 = (i10 - 1) / 50;
        if (i11 == 0) {
            return a(component, view, i10, tag);
        }
        if (i11 == 1) {
            return b(component, view, i10, tag);
        }
        if (i11 != 2) {
            return null;
        }
        return c(component, view, i10, tag);
    }

    @Override // androidx.databinding.DataBinderMapper
    public int getLayoutId(String tag) {
        Integer num;
        if (tag == null || (num = b.f35446a.get(tag)) == null) {
            return 0;
        }
        return num.intValue();
    }

    @Override // androidx.databinding.DataBinderMapper
    public ViewDataBinding getDataBinder(DataBindingComponent component, View[] views, int layoutId) {
        if (views == null || views.length == 0 || B1.get(layoutId) <= 0 || views[0].getTag() != null) {
            return null;
        }
        throw new RuntimeException("view must have a tag");
    }
}

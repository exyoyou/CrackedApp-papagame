package com.join.mgps.joystick.map;

import com.sdk.base.module.manager.SDKManager;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class b {
    public static final Map<String, String> A;
    public static final String A0 = "MD_KEY_C";
    public static final String A1 = "N64_KEY_L1";
    public static final Map<Integer, String> B;
    public static final Map<String, String> B0;
    public static final String B1 = "N64_KEY_R1";
    public static final String C = "GBA_KEY_SELECT";
    public static final Map<Integer, String> C0;
    public static final String C1 = "N64_KEY_L2";
    public static final String D = "GBA_KEY_START";
    public static final String D0 = "PS_KEY_SELECT";
    public static final String D1 = "N64_KEY_R2";
    public static final String E = "GBA_KEY_A";
    public static final String E0 = "PS_KEY_START";
    public static final String E1 = "N64_KEY_ABC";
    public static final String F = "GBA_KEY_B";
    public static final String F0 = "PS_KEY_X";
    public static final Map<String, String> F1;
    public static final String G = "GBA_KEY_L";
    public static final String G0 = "PS_KEY_A";
    public static final String H = "GBA_KEY_R";
    public static final String H0 = "PS_KEY_Y";
    public static final String I = "GBA_KEY_TURBO_A";
    public static final String I0 = "PS_KEY_B";
    public static final String J = "GBA_KEY_TURBO_B";
    public static final String J0 = "PS_KEY_L1";
    public static final Map<String, String> K;
    public static final String K0 = "PS_KEY_R1";
    public static final Map<Integer, String> L;
    public static final String L0 = "PS_KEY_L2";
    public static final String M = "FBA_KEY_SELECT";
    public static final String M0 = "PS_KEY_R2";
    public static final String N = "FBA_KEY_START";
    public static final Map<String, String> N0;
    public static final String O = "FBA_KEY_A";
    public static final Map<Integer, String> O0;
    public static final String P = "FBA_KEY_B";
    public static final String P0 = "WSC_KEY_SELECT";
    public static final String Q = "FBA_KEY_C";
    public static final String Q0 = "WSC_KEY_START";
    public static final String R = "FBA_KEY_D";
    public static final String R0 = "WSC_KEY_A";
    public static final String S = "FBA_KEY_E";
    public static final String S0 = "WSC_KEY_B";
    public static final String T = "FBA_KEY_F";
    public static final String T0 = "WSC_KEY_L1";
    public static final String U = "FBA_KEY_AB";
    public static final String U0 = "WSC_KEY_R1";
    public static final String V = "FBA_KEY_CD";
    public static final String V0 = "WSC_KEY_L2";
    public static final String W = "FBA_KEY_ABC";
    public static final String W0 = "WSC_KEY_R2";
    public static final Map<String, String> X;
    public static final String X0 = "WSC_KEY_LEFT";
    public static final Map<Integer, String> Y;
    public static final String Y0 = "WSC_KEY_UP";
    public static final String Z = "SFC_KEY_SELECT";
    public static final String Z0 = "WSC_KEY_RIGHT";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Map<String, String> f71744a;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public static final String f71745a0 = "SFC_KEY_START";

    /* JADX INFO: renamed from: a1, reason: collision with root package name */
    public static final String f71746a1 = "WSC_KEY_DOWN";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Map<String, Integer> f71747b;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public static final String f71748b0 = "SFC_KEY_X";

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    public static final Map<String, String> f71749b1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f71750c = "KEY_SELECT";

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public static final String f71751c0 = "SFC_KEY_A";

    /* JADX INFO: renamed from: c1, reason: collision with root package name */
    public static final Map<Integer, String> f71752c1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f71753d = "KEY_START";

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public static final String f71754d0 = "SFC_KEY_Y";

    /* JADX INFO: renamed from: d1, reason: collision with root package name */
    public static final String f71755d1 = "GBC_KEY_SELECT";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f71756e = "KEY_X";

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public static final String f71757e0 = "SFC_KEY_B";

    /* JADX INFO: renamed from: e1, reason: collision with root package name */
    public static final String f71758e1 = "GBC_KEY_START";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f71759f = "KEY_Y";

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public static final String f71760f0 = "SFC_KEY_L";

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    public static final String f71761f1 = "GBC_KEY_A";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String f71762g = "KEY_A";

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public static final String f71763g0 = "SFC_KEY_R";

    /* JADX INFO: renamed from: g1, reason: collision with root package name */
    public static final String f71764g1 = "GBC_KEY_B";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final String f71765h = "KEY_B";

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public static final Map<String, String> f71766h0;

    /* JADX INFO: renamed from: h1, reason: collision with root package name */
    public static final String f71767h1 = "GBC_KEY_TURBO_A";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f71768i = "KEY_L1";

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public static final Map<Integer, String> f71769i0;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    public static final String f71770i1 = "GBC_KEY_TURBO_B";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String f71771j = "KEY_L2";

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public static final String f71772j0 = "PSP_KEY_SELECT";

    /* JADX INFO: renamed from: j1, reason: collision with root package name */
    public static final String f71773j1 = "GBC_KEY_AB";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String f71774k = "KEY_R1";

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public static final String f71775k0 = "PSP_KEY_START";

    /* JADX INFO: renamed from: k1, reason: collision with root package name */
    public static final Map<String, String> f71776k1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final String f71777l = "KEY_R2";

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public static final String f71778l0 = "PSP_KEY_X";

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    public static final Map<Integer, String> f71779l1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final String f71780m = "KEY_DPAD_LEFT";

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public static final String f71781m0 = "PSP_KEY_A";

    /* JADX INFO: renamed from: m1, reason: collision with root package name */
    public static final String f71782m1 = "DC_KEY_START";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final String f71783n = "KEY_DPAD_UP";

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public static final String f71784n0 = "PSP_KEY_Y";

    /* JADX INFO: renamed from: n1, reason: collision with root package name */
    public static final String f71785n1 = "DC_KEY_A";

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final String f71786o = "KEY_DPAD_DOWN";

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public static final String f71787o0 = "PSP_KEY_B";

    /* JADX INFO: renamed from: o1, reason: collision with root package name */
    public static final String f71788o1 = "DC_KEY_B";

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final String f71789p = "KEY_DPAD_RIGHT";

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public static final String f71790p0 = "PSP_KEY_L";

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    public static final String f71791p1 = "DC_KEY_X";

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final String f71792q = "KEY_BUTTON_THUMBL";

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public static final String f71793q0 = "PSP_KEY_R";

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    public static final String f71794q1 = "DC_KEY_Y";

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final String f71795r = "KEY_BUTTON_THUMBR";

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public static final Map<String, String> f71796r0;

    /* JADX INFO: renamed from: r1, reason: collision with root package name */
    public static final String f71797r1 = "DC_KEY_L1";

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final Map<Integer, String> f71798s;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public static final Map<Integer, String> f71799s0;

    /* JADX INFO: renamed from: s1, reason: collision with root package name */
    public static final String f71800s1 = "DC_KEY_R1";

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final String f71801t = "FC_KEY_SELECT";

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public static final String f71802t0 = "MD_KEY_SELECT";

    /* JADX INFO: renamed from: t1, reason: collision with root package name */
    public static final Map<String, String> f71803t1;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final String f71804u = "FC_KEY_START";

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public static final String f71805u0 = "MD_KEY_START";

    /* JADX INFO: renamed from: u1, reason: collision with root package name */
    public static final Map<Integer, String> f71806u1;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final String f71807v = "FC_KEY_A";

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public static final String f71808v0 = "MD_KEY_X";

    /* JADX INFO: renamed from: v1, reason: collision with root package name */
    public static final String f71809v1 = "N64_KEY_START";

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final String f71810w = "FC_KEY_B";

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public static final String f71811w0 = "MD_KEY_A";

    /* JADX INFO: renamed from: w1, reason: collision with root package name */
    public static final String f71812w1 = "N64_KEY_X";

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final String f71813x = "FC_KEY_TURBO_A";

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public static final String f71814x0 = "MD_KEY_Y";

    /* JADX INFO: renamed from: x1, reason: collision with root package name */
    public static final String f71815x1 = "N64_KEY_A";

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final String f71816y = "FC_KEY_TURBO_B";

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public static final String f71817y0 = "MD_KEY_B";

    /* JADX INFO: renamed from: y1, reason: collision with root package name */
    public static final String f71818y1 = "N64_KEY_Y";

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final String f71819z = "FC_KEY_AB";

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public static final String f71820z0 = "MD_KEY_Z";

    /* JADX INFO: renamed from: z1, reason: collision with root package name */
    public static final String f71821z1 = "N64_KEY_B";

    static {
        HashMap map = new HashMap();
        f71744a = map;
        map.put(f71750c, "select");
        map.put(f71753d, "start");
        map.put(f71756e, "X");
        map.put(f71759f, "Y");
        map.put(f71762g, "A");
        map.put(f71765h, SDKManager.ALGO_B_AES_SHA256_RSA);
        map.put(f71768i, "L1");
        map.put(f71771j, "L2");
        map.put(f71774k, "R1");
        map.put(f71777l, "R2");
        map.put(f71792q, "THUMBL");
        map.put(f71795r, "THUMBR");
        map.put(f71780m, "LEFT");
        map.put(f71783n, "UP");
        map.put(f71786o, "DOWN");
        map.put(f71789p, "RIGHT");
        HashMap map2 = new HashMap();
        f71747b = map2;
        map2.put(f71750c, 109);
        map2.put(f71753d, 108);
        map2.put(f71756e, 99);
        map2.put(f71759f, 100);
        map2.put(f71762g, 96);
        map2.put(f71765h, 97);
        map2.put(f71768i, 102);
        map2.put(f71771j, 104);
        map2.put(f71774k, 103);
        map2.put(f71777l, 105);
        map2.put(f71780m, 21);
        map2.put(f71783n, 19);
        map2.put(f71786o, 20);
        map2.put(f71789p, 22);
        map2.put(f71792q, 106);
        map2.put(f71795r, 107);
        f71798s = new HashMap();
        HashMap map3 = new HashMap();
        A = map3;
        String[] strArr = KeyMap.fcKeysKey;
        map3.put(f71801t, strArr[0]);
        map3.put(f71804u, strArr[1]);
        map3.put(f71816y, strArr[2]);
        map3.put(f71813x, strArr[3]);
        map3.put(f71810w, strArr[4]);
        map3.put(f71807v, strArr[5]);
        map3.put(f71819z, strArr[6]);
        HashMap map4 = new HashMap();
        B = map4;
        HashMap map5 = new HashMap();
        K = map5;
        String[] strArr2 = KeyMap.gbaKeysKey;
        map5.put(C, strArr2[0]);
        map5.put(D, strArr2[1]);
        map5.put(E, strArr2[5]);
        map5.put(F, strArr2[3]);
        map5.put(G, strArr2[7]);
        map5.put(H, strArr2[6]);
        map5.put(I, strArr2[2]);
        map5.put(J, strArr2[4]);
        map4.put(109, C);
        map4.put(108, D);
        map4.put(103, H);
        map4.put(96, E);
        map4.put(99, F);
        map4.put(102, G);
        map4.put(97, I);
        map4.put(100, J);
        HashMap map6 = new HashMap();
        L = map6;
        HashMap map7 = new HashMap();
        X = map7;
        String[] strArr3 = KeyMap.fbaKeysKey;
        map7.put(M, strArr3[0]);
        map7.put(N, strArr3[1]);
        map7.put(O, strArr3[2]);
        map7.put(P, strArr3[3]);
        map7.put(Q, strArr3[4]);
        map7.put(R, strArr3[5]);
        map7.put(S, strArr3[6]);
        map7.put(T, strArr3[7]);
        map7.put(U, strArr3[8]);
        map7.put(V, strArr3[9]);
        map7.put(W, strArr3[10]);
        map6.put(109, M);
        map6.put(108, N);
        map6.put(96, P);
        map6.put(97, R);
        map6.put(99, O);
        map6.put(100, Q);
        map6.put(103, U);
        map6.put(102, S);
        map6.put(105, V);
        map6.put(104, T);
        map6.put(107, W);
        HashMap map8 = new HashMap();
        Y = map8;
        HashMap map9 = new HashMap();
        f71766h0 = map9;
        String[] strArr4 = KeyMap.sfcKeysKey;
        map9.put(Z, strArr4[0]);
        map9.put(f71745a0, strArr4[1]);
        map9.put(f71748b0, strArr4[2]);
        map9.put(f71751c0, strArr4[3]);
        map9.put(f71754d0, strArr4[4]);
        map9.put(f71757e0, strArr4[5]);
        map9.put(f71760f0, strArr4[6]);
        map9.put(f71763g0, strArr4[7]);
        map8.put(109, Z);
        map8.put(108, f71745a0);
        map8.put(96, f71751c0);
        map8.put(97, f71757e0);
        map8.put(99, f71748b0);
        map8.put(100, f71754d0);
        map8.put(103, f71763g0);
        map8.put(102, f71760f0);
        HashMap map10 = new HashMap();
        f71769i0 = map10;
        HashMap map11 = new HashMap();
        f71796r0 = map11;
        String[] strArr5 = KeyMap.pspKeysKey;
        map11.put(f71772j0, strArr5[0]);
        map11.put(f71775k0, strArr5[1]);
        map11.put(f71778l0, strArr5[2]);
        map11.put(f71781m0, strArr5[3]);
        map11.put(f71784n0, strArr5[4]);
        map11.put(f71787o0, strArr5[5]);
        map11.put(f71790p0, strArr5[6]);
        map11.put(f71793q0, strArr5[7]);
        map10.put(109, f71772j0);
        map10.put(108, f71775k0);
        map10.put(99, f71778l0);
        map10.put(96, f71781m0);
        map10.put(100, f71784n0);
        map10.put(97, f71787o0);
        map10.put(102, f71790p0);
        map10.put(103, f71793q0);
        HashMap map12 = new HashMap();
        f71799s0 = map12;
        HashMap map13 = new HashMap();
        B0 = map13;
        String[] strArr6 = KeyMap.mdKeysKey;
        map13.put(f71802t0, strArr6[0]);
        map13.put(f71805u0, strArr6[1]);
        map13.put(f71814x0, strArr6[4]);
        map13.put(f71817y0, strArr6[3]);
        map13.put(f71808v0, strArr6[2]);
        map13.put(f71811w0, strArr6[5]);
        map13.put(A0, strArr6[6]);
        map13.put(f71820z0, strArr6[7]);
        map12.put(109, f71802t0);
        map12.put(108, f71805u0);
        map12.put(99, f71808v0);
        map12.put(97, f71817y0);
        map12.put(100, f71814x0);
        map12.put(96, f71811w0);
        map12.put(103, A0);
        map12.put(102, f71820z0);
        HashMap map14 = new HashMap();
        C0 = map14;
        HashMap map15 = new HashMap();
        N0 = map15;
        String[] strArr7 = KeyMap.psKeysKey;
        map15.put(D0, strArr7[0]);
        map15.put(E0, strArr7[1]);
        map15.put(F0, strArr7[2]);
        map15.put(G0, strArr7[3]);
        map15.put(H0, strArr7[4]);
        map15.put(I0, strArr7[5]);
        map15.put(J0, strArr7[6]);
        map15.put(K0, strArr7[7]);
        map15.put(L0, strArr7[8]);
        map15.put(M0, strArr7[9]);
        map14.put(109, D0);
        map14.put(108, E0);
        map14.put(99, F0);
        map14.put(97, I0);
        map14.put(100, H0);
        map14.put(96, G0);
        map14.put(103, K0);
        map14.put(102, J0);
        map14.put(105, M0);
        map14.put(104, L0);
        HashMap map16 = new HashMap();
        O0 = map16;
        HashMap map17 = new HashMap();
        f71749b1 = map17;
        String[] strArr8 = KeyMap.wscKeysKey;
        map17.put(P0, strArr8[0]);
        map17.put(Q0, strArr8[1]);
        map17.put(R0, strArr8[2]);
        map17.put(S0, strArr8[3]);
        map17.put(T0, strArr8[4]);
        map17.put(U0, strArr8[5]);
        map17.put(V0, strArr8[6]);
        map17.put(W0, strArr8[7]);
        map17.put(X0, strArr8[8]);
        map17.put(Y0, strArr8[9]);
        map17.put(Z0, strArr8[10]);
        map17.put(f71746a1, strArr8[11]);
        map16.put(109, P0);
        map16.put(108, Q0);
        map16.put(96, R0);
        map16.put(97, S0);
        map16.put(102, T0);
        map16.put(103, U0);
        map16.put(104, V0);
        map16.put(105, W0);
        map16.put(21, X0);
        map16.put(19, Y0);
        map16.put(22, Z0);
        map16.put(20, f71746a1);
        f71752c1 = new HashMap();
        HashMap map18 = new HashMap();
        f71776k1 = map18;
        String[] strArr9 = KeyMap.gbcKeysKey;
        map18.put(f71755d1, strArr9[0]);
        map18.put(f71758e1, strArr9[1]);
        map18.put(f71770i1, strArr9[2]);
        map18.put(f71767h1, strArr9[3]);
        map18.put(f71764g1, strArr9[4]);
        map18.put(f71761f1, strArr9[5]);
        map18.put(f71773j1, strArr9[6]);
        f71779l1 = new HashMap();
        HashMap map19 = new HashMap();
        f71803t1 = map19;
        String[] strArr10 = KeyMap.dcKeysKey;
        map19.put(f71782m1, strArr10[0]);
        map19.put(f71785n1, strArr10[1]);
        map19.put(f71788o1, strArr10[2]);
        map19.put(f71791p1, strArr10[3]);
        map19.put(f71794q1, strArr10[4]);
        map19.put(f71797r1, strArr10[5]);
        map19.put(f71800s1, strArr10[6]);
        HashMap map20 = new HashMap();
        f71806u1 = map20;
        HashMap map21 = new HashMap();
        F1 = map21;
        String[] strArr11 = KeyMap.n64KeysKey;
        map21.put(f71809v1, strArr11[0]);
        map21.put(f71815x1, strArr11[1]);
        map21.put(f71821z1, strArr11[2]);
        map21.put(f71812w1, strArr11[3]);
        map21.put(f71818y1, strArr11[4]);
        map21.put(A1, strArr11[5]);
        map21.put(B1, strArr11[6]);
        map21.put(C1, strArr11[7]);
        map21.put(D1, strArr11[8]);
        map21.put(E1, strArr11[9]);
        map20.put(108, f71809v1);
        map20.put(99, f71812w1);
        map20.put(97, f71821z1);
        map20.put(100, f71818y1);
        map20.put(96, f71815x1);
        map20.put(103, B1);
        map20.put(102, A1);
        map20.put(105, D1);
        map20.put(104, C1);
        map20.put(106, E1);
    }

    public b() {
        Map<Integer, String> map = f71798s;
        map.put(109, f71801t);
        map.put(108, f71804u);
        map.put(96, f71807v);
        map.put(97, f71810w);
        map.put(99, f71813x);
        map.put(100, f71816y);
        map.put(103, f71819z);
        Map<Integer, String> map2 = f71752c1;
        map2.put(109, f71755d1);
        map2.put(108, f71758e1);
        map2.put(96, f71761f1);
        map2.put(97, f71764g1);
        map2.put(99, f71767h1);
        map2.put(100, f71770i1);
        map2.put(103, f71773j1);
        Map<Integer, String> map3 = f71779l1;
        map3.put(108, f71782m1);
        map3.put(96, f71785n1);
        map3.put(97, f71788o1);
        map3.put(99, f71791p1);
        map3.put(100, f71794q1);
        map3.put(103, f71800s1);
        map3.put(102, f71797r1);
    }

    public static boolean a(String key) {
        return (key.equals(f71780m) || key.equals(f71789p) || key.equals(f71783n) || key.equals(f71786o) || key.equals(f71792q)) ? false : true;
    }

    public static boolean b(String key) {
        return !key.equals(f71792q);
    }

    public static Object c(Map map, Object value) {
        for (Map.Entry entry : map.entrySet()) {
            if (entry.getValue().equals(value)) {
                return entry.getKey();
            }
        }
        return null;
    }
}

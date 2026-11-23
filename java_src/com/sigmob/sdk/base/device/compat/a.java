package com.sigmob.sdk.base.device.compat;

import android.os.Build;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;

/* JADX INFO: loaded from: classes5.dex */
public final class a {
    static final String A = "BlackShark";
    static final String B = "Hisense";
    static final String C = "K-Touch";
    static final String D = "Meitu";
    static final String E = "NOKIA";
    static final String F = "Google";
    static final String G;
    private static final int H = 78837197;
    private static final String[] I;
    private static final int J = -1675632421;
    private static final String[] K;
    private static final int L = -934971466;
    private static final String[] M;
    private static final int N = 343319808;
    private static final String[] O;
    private static final int P = 2432928;
    private static final String[] Q;
    private static final int R = 3620012;
    private static final String[] S;
    private static final int T = 68924490;
    private static final String[] U;
    private static final int V = 2141820391;
    private static final String[] W;
    private static final int X = 73239724;
    private static final String[] Y;
    private static final int Z = -765372454;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final String f79340a = "Redmi";
    private static final String[] aA;
    private static final int aB = -1237951171;
    private static final String[] aC;
    private static final int aD = 2104242;
    private static final String[] aE;
    private static final int aF = 116903185;
    private static final String[] aG;
    private static final int aH = 344052550;
    private static final String[] aI;
    private static final int aJ = -1703827667;
    private static final String[] aK;
    private static final int aL = -787390691;
    private static final String[] aM;
    private static final int aN = 74224626;
    private static final String[] aO;
    private static final int aP = 74462530;
    private static final String[] aQ;
    private static final int aR = 2138589785;
    private static final String[] aS;
    private static final int aT;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private static final String[] f79341aa;

    /* JADX INFO: renamed from: ab, reason: collision with root package name */
    private static final int f79342ab = 105170387;

    /* JADX INFO: renamed from: ac, reason: collision with root package name */
    private static final String[] f79343ac;

    /* JADX INFO: renamed from: ad, reason: collision with root package name */
    private static final int f79344ad = 89163;
    private static final String[] ae;
    private static final int af = -151542385;
    private static final String[] ag;
    private static final int ah = -2022488749;
    private static final String[] ai;
    private static final int aj = 73265976;
    private static final String[] ak;
    private static final int al = 2018896;
    private static final String[] am;
    private static final int an = 2551079;
    private static final String[] ao;
    private static final int ap = 560537600;
    private static final String[] aq;
    private static final int ar = 50733;
    private static final String[] as;
    private static final int at = -1678088054;
    private static final String[] au;
    private static final int av = 2427;
    private static final String[] aw;
    private static final int ax = 71863;
    private static final String[] ay;
    private static final int az = 2133055169;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final String f79345b = "Xiaomi";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final String f79346c = "realme";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final String f79347d = "OnePlus";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final String f79348e = "OPPO";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final String f79349f = "vivo";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static final String f79350g = "HONOR";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static final String f79351h = "HUAWEI";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    static final String f79352i = "MEIZU";

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    static final String f79353j = "Samsung";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    static final String f79354k = "nubia";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    static final String f79355l = "ZTE";

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    static final String f79356m = "motorola";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    static final String f79357n = "Lenovo";

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    static final String f79358o = "LeEco";

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    static final String f79359p = "ASUS";

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    static final String f79360q = "SONY";

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    static final String f79361r = "Smartisan";

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    static final String f79362s = "360";

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    static final String f79363t = "Coolpad";

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    static final String f79364u = "LG";

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    static final String f79365v = "HTC";

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    static final String f79366w = "Gionee";

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    static final String f79367x = "Transsion";

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    static final String f79368y = "DOOV";

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    static final String f79369z = "PHILIPS";

    static {
        String str;
        int i10;
        String[] strArr = {"redmi"};
        I = strArr;
        String[] strArr2 = {MediationConstant.ADN_XIAOMI};
        K = strArr2;
        String[] strArr3 = {f79346c};
        M = strArr3;
        String[] strArr4 = {"oneplus"};
        O = strArr4;
        String[] strArr5 = {"oppo"};
        Q = strArr5;
        String[] strArr6 = {f79349f};
        S = strArr6;
        String[] strArr7 = {"honor"};
        U = strArr7;
        String[] strArr8 = {"huawei"};
        W = strArr8;
        String[] strArr9 = {"meizu"};
        Y = strArr9;
        String[] strArr10 = {"samsung"};
        f79341aa = strArr10;
        String[] strArr11 = {f79354k};
        f79343ac = strArr11;
        String[] strArr12 = {"zte"};
        ae = strArr12;
        String[] strArr13 = {f79356m};
        ag = strArr13;
        String[] strArr14 = {"lenovo", "zuk"};
        ai = strArr14;
        String[] strArr15 = {"leeco", "letv"};
        ak = strArr15;
        String[] strArr16 = {"asus"};
        am = strArr16;
        String[] strArr17 = {"sony"};
        ao = strArr17;
        String[] strArr18 = {"smartisan", "deltainno"};
        aq = strArr18;
        String[] strArr19 = {f79362s, "qiku"};
        as = strArr19;
        String[] strArr20 = {"coolpad", "yulong", com.alipay.sdk.app.statistic.c.f7067m};
        au = strArr20;
        String[] strArr21 = {"lg", "lge"};
        aw = strArr21;
        String[] strArr22 = {"htc"};
        ay = strArr22;
        String[] strArr23 = {"gionee", "amigo"};
        aA = strArr23;
        String[] strArr24 = {"infinix mobility limited", "itel", "tecno"};
        aC = strArr24;
        String[] strArr25 = {f79368y};
        aE = strArr25;
        String[] strArr26 = {"philips"};
        aG = strArr26;
        String[] strArr27 = {"blackshark"};
        aI = strArr27;
        String[] strArr28 = {"hisense"};
        aK = strArr28;
        String[] strArr29 = {"k-touch", "ktouch"};
        aM = strArr29;
        String[] strArr30 = {"meitu"};
        aO = strArr30;
        String[] strArr31 = {"nokia"};
        aQ = strArr31;
        String[] strArr32 = {"google"};
        aS = strArr32;
        String lowerCase = Build.BRAND.toLowerCase();
        String lowerCase2 = Build.MANUFACTURER.toLowerCase();
        if (a(lowerCase, lowerCase2, strArr)) {
            aT = H;
            str = f79340a;
        } else {
            if (!a(lowerCase, lowerCase2, strArr2)) {
                if (a(lowerCase, lowerCase2, strArr3)) {
                    G = f79346c;
                    i10 = L;
                } else if (a(lowerCase, lowerCase2, strArr4)) {
                    G = f79347d;
                    i10 = N;
                } else if (a(lowerCase, lowerCase2, strArr5)) {
                    aT = P;
                    str = "OPPO";
                } else if (a(lowerCase, lowerCase2, strArr6)) {
                    G = f79349f;
                    i10 = R;
                } else if (a(lowerCase, lowerCase2, strArr7)) {
                    aT = T;
                    str = f79350g;
                } else if (a(lowerCase, lowerCase2, strArr8)) {
                    aT = V;
                    str = f79351h;
                } else if (a(lowerCase, lowerCase2, strArr9)) {
                    aT = X;
                    str = f79352i;
                } else if (a(lowerCase, lowerCase2, strArr10)) {
                    aT = Z;
                    str = f79353j;
                } else {
                    if (a(lowerCase, lowerCase2, strArr11)) {
                        aT = f79342ab;
                        G = f79354k;
                        return;
                    }
                    if (a(lowerCase, lowerCase2, strArr12)) {
                        aT = f79344ad;
                        str = f79355l;
                    } else {
                        if (a(lowerCase, lowerCase2, strArr13)) {
                            aT = af;
                            G = f79356m;
                            return;
                        }
                        if (a(lowerCase, lowerCase2, strArr14)) {
                            aT = ah;
                            str = f79357n;
                        } else if (a(lowerCase, lowerCase2, strArr16)) {
                            aT = al;
                            str = f79359p;
                        } else if (a(lowerCase, lowerCase2, strArr17)) {
                            aT = an;
                            str = f79360q;
                        } else if (a(lowerCase, lowerCase2, strArr18)) {
                            aT = ap;
                            str = f79361r;
                        } else if (a(lowerCase, lowerCase2, strArr15)) {
                            aT = aj;
                            str = f79358o;
                        } else {
                            if (a(lowerCase, lowerCase2, strArr19)) {
                                aT = ar;
                                G = f79362s;
                                return;
                            }
                            if (a(lowerCase, lowerCase2, strArr20)) {
                                aT = at;
                                str = f79363t;
                            } else if (a(lowerCase, lowerCase2, strArr21)) {
                                aT = av;
                                str = f79364u;
                            } else if (a(lowerCase, lowerCase2, strArr22)) {
                                aT = ax;
                                str = f79365v;
                            } else if (a(lowerCase, lowerCase2, strArr23)) {
                                aT = az;
                                str = f79366w;
                            } else if (a(lowerCase, lowerCase2, strArr24)) {
                                aT = aB;
                                str = f79367x;
                            } else {
                                if (a(lowerCase, lowerCase2, strArr25)) {
                                    aT = aD;
                                    G = f79368y;
                                    return;
                                }
                                if (a(lowerCase, lowerCase2, strArr26)) {
                                    aT = aF;
                                    str = f79369z;
                                } else if (a(lowerCase, lowerCase2, strArr27)) {
                                    aT = aH;
                                    str = A;
                                } else if (a(lowerCase, lowerCase2, strArr28)) {
                                    aT = aJ;
                                    str = B;
                                } else if (a(lowerCase, lowerCase2, strArr29)) {
                                    aT = aL;
                                    str = C;
                                } else if (a(lowerCase, lowerCase2, strArr30)) {
                                    aT = aN;
                                    str = D;
                                } else if (a(lowerCase, lowerCase2, strArr31)) {
                                    aT = aP;
                                    str = E;
                                } else if (a(lowerCase, lowerCase2, strArr32)) {
                                    aT = aR;
                                    str = F;
                                } else {
                                    aT = 0;
                                    if (!TextUtils.isEmpty(lowerCase)) {
                                        G = lowerCase;
                                        return;
                                    } else {
                                        if (!TextUtils.isEmpty(lowerCase2)) {
                                            G = lowerCase2;
                                            return;
                                        }
                                        str = "";
                                    }
                                }
                            }
                        }
                    }
                }
                aT = i10;
                return;
            }
            aT = J;
            str = f79345b;
        }
        G = str;
    }

    public static boolean A() {
        return aT == aH;
    }

    public static boolean B() {
        return aT == aJ;
    }

    public static boolean C() {
        return aT == aL;
    }

    public static boolean D() {
        return aT == aN;
    }

    public static boolean E() {
        return aT == aP;
    }

    public static boolean F() {
        return aT == aR;
    }

    public static String G() {
        return G;
    }

    public static boolean a() {
        return aT == H;
    }

    public static boolean b() {
        return aT == J;
    }

    public static boolean c() {
        return aT == L;
    }

    public static boolean d() {
        return aT == N;
    }

    public static boolean e() {
        return aT == P;
    }

    public static boolean f() {
        return aT == R;
    }

    public static boolean g() {
        return aT == T;
    }

    public static boolean h() {
        return aT == V;
    }

    public static boolean i() {
        return aT == X;
    }

    public static boolean j() {
        return aT == Z;
    }

    public static boolean k() {
        return aT == f79342ab;
    }

    public static boolean l() {
        return aT == f79344ad;
    }

    public static boolean m() {
        return aT == af;
    }

    public static boolean n() {
        return aT == ah;
    }

    public static boolean o() {
        return aT == al;
    }

    public static boolean p() {
        return aT == an;
    }

    public static boolean q() {
        return aT == ap;
    }

    public static boolean r() {
        return aT == aj;
    }

    public static boolean s() {
        return aT == ar;
    }

    public static boolean t() {
        return aT == at;
    }

    public static boolean u() {
        return aT == av;
    }

    public static boolean v() {
        return aT == ax;
    }

    public static boolean w() {
        return aT == az;
    }

    public static boolean x() {
        return aT == aB;
    }

    public static boolean y() {
        return aT == aD;
    }

    public static boolean z() {
        return aT == aF;
    }

    private static boolean a(String brand, String manufacturer, String... names) {
        for (String str : names) {
            if (brand.contains(str) || manufacturer.contains(str)) {
                return true;
            }
        }
        return false;
    }
}

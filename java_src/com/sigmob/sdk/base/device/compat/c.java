package com.sigmob.sdk.base.device.compat;

import android.annotation.SuppressLint;
import android.os.Build;
import android.text.TextUtils;
import com.join.mgps.Util.o0;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public final class c {
    static final String[] A;
    static final int B = -294058204;
    static final String C = "FuntouchOS";
    static final String D = "ro.vivo.os.build.display.id";
    static final int E = -1801284559;
    static final String F = "MagicOS";
    static final String[] G;
    static final int H = -182666708;
    static final String I = "HarmonyOS NEXT AndroidCompatible";
    static final String J = "ro.sys.anco.product.software.version";
    static final String[] K;
    static final String[] L;
    static final int M = 1583864138;
    static final String N = "HarmonyOS";
    static final String[] O;
    static final String[] P;
    static final int Q = 2132284;
    static final String R = "EMUI";
    static final String S = "ro.build.version.emui";
    static final int T = 76334938;
    static final String U = "OneUI";
    static final String V = "ro.build.version.oneui";
    static final int W = -1363277916;
    static final String X = "OxygenOS";
    static final String Y = "ro.oxygen.version";
    static final int Z = 2195534;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final String f79396a = "\\d+(?:\\.\\d+)+";
    static final String aA = "ZUXOS";
    static final String[] aB;
    static final String aC = "ro.config.lgsi.os.name";
    static final int aD = 89198;
    static final String aE = "ZUI";
    static final String aF = "ro.com.zui.version";
    static final String[] aG;
    static final int aH = -2010470489;
    static final String aI = "nubiaUI";
    static final String aJ = "ro.build.nubia.rom.code";
    static final String aK = "ro.build.nubia.rom.name";
    static final int aL = 12510861;
    static final String aM = "ObricUI";
    static final String[] aN;
    static final String aO = "init.svc.bytecellular";
    static final int aP = 78153150;
    static final String aQ = "ROGUI";
    static final String aR = "ro.build.version.incremental";
    static final String aS = "ro.asus.rog";
    static final int aT = 48757121;
    static final String aU = "360UI";
    static final String aV = "ro.build.uiversion";
    private static int aW = 0;
    private static String aX = null;
    private static String aY = null;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    static final String f79397aa = "H2OS";

    /* JADX INFO: renamed from: ab, reason: collision with root package name */
    static final String f79398ab = "ro.rom.version";

    /* JADX INFO: renamed from: ac, reason: collision with root package name */
    static final int f79399ac = 67983659;

    /* JADX INFO: renamed from: ad, reason: collision with root package name */
    static final String f79400ad = "Flyme";
    static final String ae = "ro.build.display.id";
    static final String[] af;
    static final String ag = "ro.build.MiFavor_version";
    static final String ah = "ro.build.display.id";
    static final int ai = -417455456;
    static final String aj = "RedMagicOS";
    static final int ak = -1668450325;
    static final String al = "NebulaAIOS";
    static final int am = 2412720;
    static final String an = "MyOS";
    static final int ao = -203064298;
    static final String ap = "MifavorUI";
    static final String aq = "ro.build.MiFavor_version";
    static final int ar = 1805724132;
    static final String as = "SmartisanOS";
    static final String at = "ro.smartisan.version";
    static final String[] au;
    static final int av = 69017;
    static final String aw = "EUI";
    static final String ax = "ro.letv.release.version";
    static final String[] ay;
    static final int az = 85736225;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final String f79401b = "\\d+";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final String f79402c = "ro.build.version.incremental";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final String f79403d = "ro.build.display.id";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final String[] f79404e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final int f79405f = -1248529104;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static final String f79406g = "HyperOS";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static final String f79407h = "ro.mi.os.version.incremental";

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    static final String[] f79408i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    static final String[] f79409j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    static final int f79410k = 2366768;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    static final String f79411l = "MIUI";

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    static final String f79412m = "ro.build.version.incremental";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    static final String[] f79413n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    static final String[] f79414o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    static final int f79415p = -859411254;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    static final String f79416q = "realmeUI";

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    static final String f79417r = "ro.build.version.realmeui";

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    static final int f79418s = -1680767897;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    static final String f79419t = "ColorOS";

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    static final String f79420u = "ro.build.version.oplusrom";

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    static final String[] f79421v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    static final String f79422w = "ro.build.version.opporom";

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    static final String f79423x = "ro.vivo.os.build.display.id";

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    static final int f79424y = 1443687338;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    static final String f79425z = "OriginOS";

    /* JADX WARN: Code duplicated, block: B:102:0x0314  */
    /* JADX WARN: Code duplicated, block: B:104:0x031c  */
    /* JADX WARN: Code duplicated, block: B:105:0x0321  */
    /* JADX WARN: Code duplicated, block: B:107:0x0329  */
    /* JADX WARN: Code duplicated, block: B:108:0x0331  */
    /* JADX WARN: Code duplicated, block: B:110:0x0339  */
    /* JADX WARN: Code duplicated, block: B:113:0x034f  */
    /* JADX WARN: Code duplicated, block: B:11:0x0110  */
    /* JADX WARN: Code duplicated, block: B:124:0x0398  */
    /* JADX WARN: Code duplicated, block: B:129:0x03c0  */
    /* JADX WARN: Code duplicated, block: B:131:0x03c8  */
    /* JADX WARN: Code duplicated, block: B:13:0x011c  */
    /* JADX WARN: Code duplicated, block: B:155:0x045b  */
    /* JADX WARN: Code duplicated, block: B:15:0x012c  */
    /* JADX WARN: Code duplicated, block: B:171:0x04c4  */
    /* JADX WARN: Code duplicated, block: B:174:0x04ca  */
    /* JADX WARN: Code duplicated, block: B:176:0x025e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:178:0x0486 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:17:0x0137  */
    /* JADX WARN: Code duplicated, block: B:180:0x023b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:182:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:18:0x0140  */
    /* JADX WARN: Code duplicated, block: B:20:0x014c  */
    /* JADX WARN: Code duplicated, block: B:23:0x0159  */
    /* JADX WARN: Code duplicated, block: B:25:0x0165  */
    /* JADX WARN: Code duplicated, block: B:27:0x0171  */
    /* JADX WARN: Code duplicated, block: B:29:0x0181  */
    /* JADX WARN: Code duplicated, block: B:31:0x018d  */
    /* JADX WARN: Code duplicated, block: B:49:0x01f2  */
    /* JADX WARN: Code duplicated, block: B:56:0x021e  */
    /* JADX WARN: Code duplicated, block: B:58:0x022f  */
    /* JADX WARN: Code duplicated, block: B:63:0x0248  */
    /* JADX WARN: Code duplicated, block: B:65:0x0250  */
    /* JADX WARN: Code duplicated, block: B:72:0x0277 A[Catch: Exception -> 0x027f, TRY_LEAVE, TryCatch #0 {Exception -> 0x027f, blocks: (B:70:0x025e, B:72:0x0277), top: B:176:0x025e }] */
    /* JADX WARN: Code duplicated, block: B:77:0x0284  */
    /* JADX WARN: Code duplicated, block: B:79:0x0290  */
    /* JADX WARN: Code duplicated, block: B:82:0x02a3  */
    /* JADX WARN: Code duplicated, block: B:84:0x02af  */
    /* JADX WARN: Code duplicated, block: B:96:0x02f8  */
    /* JADX WARN: Code duplicated, block: B:98:0x0304  */
    static {
        String strA;
        Object objInvoke;
        String strA2;
        String strA3;
        String strA4;
        String strA5;
        String strA6;
        String lowerCase;
        String strA7;
        String str;
        String strA8;
        String strA9;
        String strA10;
        int i10;
        String strA11;
        String strA12;
        String strA13;
        String strA14;
        String strA15;
        String strA16;
        String[] strArr = {"ro.miui.build.region", "ro.miui.region", "ro.vendor.miui.region"};
        f79404e = strArr;
        String[] strArr2 = {"ro.mi.os.version.name", "ro.mi.os.version.code", f79407h};
        f79408i = strArr2;
        f79409j = strArr;
        String[] strArr3 = {"ro.miui.ui.version.name", "ro.miui.ui.version.code"};
        f79413n = strArr3;
        f79414o = strArr;
        String[] strArr4 = {"ro.build.display.id", "ro.build.display.id.show", "persist.sys.oplus.ota_ver_display", f79420u, "ro.build.version.oplusrom.confidential"};
        f79421v = strArr4;
        String[] strArr5 = {"ro.vivo.product.version", "ro.vivo.default.version", "ro.vivo.build.version.incremental", "ro.vivo.product.version.incremental", "ro.vivo.build.version", "ro.vivo.system.product.version", "ro.build.software.version"};
        A = strArr5;
        String[] strArr6 = {"msc.config.magic.version", "ro.build.version.magic"};
        G = strArr6;
        String[] strArr7 = {"ro.product.anco.devicetype", J, "ro.product.os.dist.anco.apiversion", "ro.product.os.dist.anco.releasetype"};
        K = strArr7;
        String[] strArr8 = {"ro.honor.build.display.id", "persist.sys.hiview.base_version", "ro.comp.hl.product_base_version", "ro.build.display.id"};
        L = strArr8;
        String[] strArr9 = {"ro.huawei.build.display.id", "ro.comp.hl.product_base_version", "persist.sys.hiview.base_version", "hw_sc.build.platform.version"};
        O = strArr9;
        String[] strArr10 = {"ro.build.ohos.devicetype", "persist.sys.ohos.osd.cloud.switch"};
        P = strArr10;
        af = new String[]{"ro.flyme.published", "ro.flyme.version.id"};
        au = new String[]{"ro.smartisan.sa", at};
        ay = new String[]{ax, "ro.letv.release.version_date", "ro.product.letv_model", "ro.product.letv_name", "sys.letv.fmodelaid", "persist.sys.leui.bootreason", "ro.config.leui_ringtone_slot2", "ro.leui_oem_unlock_enable"};
        aB = new String[]{"ro.config.lgsi.fp.incremental", "ro.config.lgsi.os.version"};
        aG = new String[]{aF, "ro.zui.version.status", "ro.zui.hardware.displayid", "persist.radio.zui.feature", "ro.config.zuisdk.enabled"};
        aN = new String[]{"ro.os.ota.version", "ro.system_ext.ota.version", "persist.sys.monitor.ota"};
        if (!d.c(strArr2)) {
            if (d.c(strArr3)) {
                aW = f79410k;
                aX = f79411l;
                strA = a("ro.build.version.incremental");
            }
            if (aX == null) {
                strA14 = d.a(f79417r);
                if (!TextUtils.isEmpty(strA14)) {
                    aW = f79415p;
                    aX = f79416q;
                    strA16 = a(strA14);
                } else if (d.b(f79420u)) {
                    aW = f79418s;
                    aX = f79419t;
                    strA16 = a(strArr4);
                } else {
                    strA15 = d.a(f79422w);
                    if (!TextUtils.isEmpty(strA15)) {
                        aW = f79418s;
                        aX = f79419t;
                        strA16 = a(strA15);
                    }
                }
                aY = strA16;
            }
            if (aX == null) {
                strA12 = d.a("ro.vivo.os.build.display.id");
                if (!TextUtils.isEmpty(strA12)) {
                    if (strA12.toLowerCase().contains("origin")) {
                        aW = f79424y;
                        aX = f79425z;
                        strA13 = a(strArr5);
                    } else if (strA12.toLowerCase().contains("funtouch")) {
                        aW = B;
                        aX = C;
                        strA13 = a("ro.vivo.os.build.display.id");
                    }
                    aY = strA13;
                }
            }
            if (aX == null && d.c(strArr6)) {
                aW = E;
                aX = F;
                aY = a(strArr8);
            }
            if (aX == null && d.c(strArr7)) {
                aW = H;
                aX = I;
                aY = a(J);
            }
            if (aX == null && d.c(strArr10)) {
                aW = M;
                aX = N;
                aY = a(strArr9);
            }
            if (aX == null) {
                strA11 = d.a(S);
                if (!TextUtils.isEmpty(strA11) && strA11.toLowerCase().contains("emotionui")) {
                    aW = Q;
                    aX = R;
                    aY = a(strA11);
                }
            }
            if (aX == null) {
                strA10 = d.a(V);
                if (!TextUtils.isEmpty(strA10)) {
                    aW = T;
                    aX = U;
                    if (strA10.matches(f79401b)) {
                        try {
                            aY = a(Integer.parseInt(strA10));
                        } catch (Exception unused) {
                        }
                    } else if (strA10.matches(f79396a)) {
                        aY = strA10;
                    }
                }
                if (aX != null || TextUtils.isEmpty(aY)) {
                    try {
                        Field declaredField = Build.VERSION.class.getDeclaredField("SEM_PLATFORM_INT");
                        declaredField.setAccessible(true);
                        i10 = declaredField.getInt(null);
                        aW = T;
                        aX = U;
                        if (i10 >= 90000) {
                            aY = a(i10 - 90000);
                        }
                    } catch (Exception unused2) {
                    }
                }
            }
            if (aX == null) {
                strA9 = d.a(Y);
                if (!TextUtils.isEmpty(strA9)) {
                    aW = W;
                    aX = X;
                    aY = a(strA9);
                }
            }
            if (aX == null) {
                strA8 = d.a(f79398ab);
                if (!TextUtils.isEmpty(strA8)) {
                    aW = Z;
                    aX = f79397aa;
                    aY = a(strA8);
                }
            }
            if (aX == null && d.c(af)) {
                aW = f79399ac;
                aX = f79400ad;
                aY = a("ro.build.display.id");
            }
            if (aX == null && d.b("ro.build.MiFavor_version")) {
                strA6 = d.a("ro.build.display.id");
                if (!TextUtils.isEmpty(strA6)) {
                    lowerCase = strA6.toLowerCase();
                    if (lowerCase.contains("nebulaaios")) {
                        aW = ak;
                        str = al;
                    } else if (lowerCase.contains("redmagicos")) {
                        aW = ai;
                        aX = aj;
                        strA7 = a(strA6);
                        aY = strA7;
                    } else if (lowerCase.contains("myos")) {
                        aW = am;
                        str = an;
                    } else if (lowerCase.contains("zte")) {
                        aW = ao;
                        aX = ap;
                        strA7 = a("ro.build.MiFavor_version");
                        aY = strA7;
                    }
                    aX = str;
                    strA7 = a(strA6);
                    aY = strA7;
                }
            }
            if (aX == null) {
                strA5 = d.a(aK);
                if (!TextUtils.isEmpty(strA5) && strA5.toLowerCase().contains("nubiaui")) {
                    aW = aH;
                    aX = aI;
                    aY = a(aJ);
                    if (Build.VERSION.SDK_INT >= 27 && d(Build.VERSION.RELEASE) - J() >= 5) {
                        aW = ai;
                        aX = aj;
                    }
                }
            }
            if (aX == null) {
                strA3 = d.a(aC);
                if (TextUtils.isEmpty(strA3) && strA3.toLowerCase().contains("zuxos")) {
                    aW = az;
                    aX = aA;
                    strA4 = a(aB);
                } else if (d.c(aG)) {
                    aW = aD;
                    aX = aE;
                    strA4 = a(aF);
                }
                aY = strA4;
            }
            if (aX == null && d.b(aO)) {
                aW = aL;
                aX = aM;
                aY = a(aN);
            }
            if (aX == null && d.b(aS)) {
                aW = aP;
                aX = aQ;
                aY = a("ro.build.version.incremental");
            }
            if (aX == null && d.c(au)) {
                aW = ar;
                aX = as;
                aY = a(at);
            }
            if (aX == null && d.c(ay)) {
                aW = av;
                aX = aw;
                aY = a(ax);
            }
            if (aX == null) {
                strA2 = d.a(aV);
                if (!TextUtils.isEmpty(strA2) && strA2.toLowerCase().contains("360ui")) {
                    aW = aT;
                    aX = aU;
                    aY = a(strA2);
                }
            }
            if (aX == null) {
                try {
                    Class<?> cls = Class.forName("com.huawei.system.BuildEx");
                    Method method = cls.getMethod("getOsBrand", new Class[0]);
                    method.setAccessible(true);
                    objInvoke = method.invoke(cls, new Object[0]);
                    if (objInvoke != null && String.valueOf(objInvoke).toLowerCase().contains("harmony")) {
                        aW = M;
                        aX = N;
                        aY = a(O);
                    }
                } catch (Exception unused3) {
                }
            }
            if (aX == null) {
                aX = "";
            }
            if (aY == null) {
                aY = "";
            }
        }
        aW = f79405f;
        aX = f79406g;
        strA = a(f79407h);
        aY = strA;
        if (aX == null) {
            strA14 = d.a(f79417r);
            if (!TextUtils.isEmpty(strA14)) {
                aW = f79415p;
                aX = f79416q;
                strA16 = a(strA14);
            } else if (d.b(f79420u)) {
                aW = f79418s;
                aX = f79419t;
                strA16 = a(strArr4);
            } else {
                strA15 = d.a(f79422w);
                if (!TextUtils.isEmpty(strA15)) {
                    aW = f79418s;
                    aX = f79419t;
                    strA16 = a(strA15);
                }
            }
            aY = strA16;
        }
        if (aX == null) {
            strA12 = d.a("ro.vivo.os.build.display.id");
            if (!TextUtils.isEmpty(strA12)) {
                if (strA12.toLowerCase().contains("origin")) {
                    aW = f79424y;
                    aX = f79425z;
                    strA13 = a(strArr5);
                } else if (strA12.toLowerCase().contains("funtouch")) {
                    aW = B;
                    aX = C;
                    strA13 = a("ro.vivo.os.build.display.id");
                }
                aY = strA13;
            }
        }
        if (aX == null) {
            aW = E;
            aX = F;
            aY = a(strArr8);
        }
        if (aX == null) {
            aW = H;
            aX = I;
            aY = a(J);
        }
        if (aX == null) {
            aW = M;
            aX = N;
            aY = a(strArr9);
        }
        if (aX == null) {
            strA11 = d.a(S);
            if (!TextUtils.isEmpty(strA11)) {
                aW = Q;
                aX = R;
                aY = a(strA11);
            }
        }
        if (aX == null) {
            strA10 = d.a(V);
            if (!TextUtils.isEmpty(strA10)) {
                aW = T;
                aX = U;
                if (strA10.matches(f79401b)) {
                    aY = a(Integer.parseInt(strA10));
                } else if (strA10.matches(f79396a)) {
                    aY = strA10;
                }
            }
            if (aX != null) {
                Field declaredField2 = Build.VERSION.class.getDeclaredField("SEM_PLATFORM_INT");
                declaredField2.setAccessible(true);
                i10 = declaredField2.getInt(null);
                aW = T;
                aX = U;
                if (i10 >= 90000) {
                    aY = a(i10 - 90000);
                }
            } else {
                Field declaredField3 = Build.VERSION.class.getDeclaredField("SEM_PLATFORM_INT");
                declaredField3.setAccessible(true);
                i10 = declaredField3.getInt(null);
                aW = T;
                aX = U;
                if (i10 >= 90000) {
                    aY = a(i10 - 90000);
                }
            }
        }
        if (aX == null) {
            strA9 = d.a(Y);
            if (!TextUtils.isEmpty(strA9)) {
                aW = W;
                aX = X;
                aY = a(strA9);
            }
        }
        if (aX == null) {
            strA8 = d.a(f79398ab);
            if (!TextUtils.isEmpty(strA8)) {
                aW = Z;
                aX = f79397aa;
                aY = a(strA8);
            }
        }
        if (aX == null) {
            aW = f79399ac;
            aX = f79400ad;
            aY = a("ro.build.display.id");
        }
        if (aX == null) {
            strA6 = d.a("ro.build.display.id");
            if (!TextUtils.isEmpty(strA6)) {
                lowerCase = strA6.toLowerCase();
                if (lowerCase.contains("nebulaaios")) {
                    aW = ak;
                    str = al;
                } else if (lowerCase.contains("redmagicos")) {
                    aW = ai;
                    aX = aj;
                    strA7 = a(strA6);
                    aY = strA7;
                } else if (lowerCase.contains("myos")) {
                    aW = am;
                    str = an;
                } else if (lowerCase.contains("zte")) {
                    aW = ao;
                    aX = ap;
                    strA7 = a("ro.build.MiFavor_version");
                    aY = strA7;
                }
                aX = str;
                strA7 = a(strA6);
                aY = strA7;
            }
        }
        if (aX == null) {
            strA5 = d.a(aK);
            if (!TextUtils.isEmpty(strA5)) {
                aW = aH;
                aX = aI;
                aY = a(aJ);
                if (Build.VERSION.SDK_INT >= 27) {
                    aW = ai;
                    aX = aj;
                }
            }
        }
        if (aX == null) {
            strA3 = d.a(aC);
            if (TextUtils.isEmpty(strA3)) {
                if (d.c(aG)) {
                    aW = aD;
                    aX = aE;
                    strA4 = a(aF);
                    aY = strA4;
                }
            } else if (d.c(aG)) {
                aW = aD;
                aX = aE;
                strA4 = a(aF);
                aY = strA4;
            }
        }
        if (aX == null) {
            aW = aL;
            aX = aM;
            aY = a(aN);
        }
        if (aX == null) {
            aW = aP;
            aX = aQ;
            aY = a("ro.build.version.incremental");
        }
        if (aX == null) {
            aW = ar;
            aX = as;
            aY = a(at);
        }
        if (aX == null) {
            aW = av;
            aX = aw;
            aY = a(ax);
        }
        if (aX == null) {
            strA2 = d.a(aV);
            if (!TextUtils.isEmpty(strA2)) {
                aW = aT;
                aX = aU;
                aY = a(strA2);
            }
        }
        if (aX == null) {
            Class<?> cls2 = Class.forName("com.huawei.system.BuildEx");
            Method method2 = cls2.getMethod("getOsBrand", new Class[0]);
            method2.setAccessible(true);
            objInvoke = method2.invoke(cls2, new Object[0]);
            if (objInvoke != null) {
                aW = M;
                aX = N;
                aY = a(O);
            }
        }
        if (aX == null) {
            aX = "";
        }
        if (aY == null) {
            aY = "";
        }
    }

    private c() {
    }

    public static boolean A() {
        return aW == av;
    }

    public static boolean B() {
        return aW == az;
    }

    public static boolean C() {
        return aW == aD;
    }

    public static boolean D() {
        return aW == aH;
    }

    public static boolean E() {
        return aW == aL;
    }

    public static boolean F() {
        return aW == aP;
    }

    public static boolean G() {
        return aW == aT;
    }

    public static String H() {
        String str = aX;
        return str != null ? str : "";
    }

    public static String I() {
        String str = aY;
        return str != null ? str : "";
    }

    public static int J() {
        return d(I());
    }

    @SuppressLint({"PrivateApi"})
    private static boolean K() {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            String strValueOf = String.valueOf(cls.getMethod("get", String.class, String.class).invoke(cls, "ro.miui.cts", ""));
            Method method = cls.getMethod("getBoolean", String.class, Boolean.TYPE);
            Object[] objArr = new Object[2];
            objArr[0] = "persist.sys.miui_optimization";
            objArr[1] = Boolean.valueOf("1".equals(strValueOf) ? false : true);
            return Boolean.parseBoolean(String.valueOf(method.invoke(cls, objArr)));
        } catch (Exception unused) {
            return true;
        }
    }

    private static String a(int oneUiVersionCode) {
        int i10 = oneUiVersionCode / 10000;
        int i11 = oneUiVersionCode % 10000;
        int i12 = oneUiVersionCode % 100;
        if (i12 <= 0) {
            return i10 + o0.f49827a + (i11 / 100);
        }
        return i10 + o0.f49827a + (i11 / 100) + o0.f49827a + i12;
    }

    private static String b(String text) {
        String strGroup;
        if (TextUtils.isEmpty(text)) {
            return "";
        }
        Matcher matcher = Pattern.compile("(\\d+(?:\\.\\d+)+)").matcher(text);
        return (!matcher.find() || matcher.groupCount() <= 0 || (strGroup = matcher.group(1)) == null) ? "" : strGroup;
    }

    private static int c(String text) {
        String strGroup;
        Matcher matcher = Pattern.compile("(\\d+)").matcher(text);
        if (!matcher.find() || matcher.groupCount() <= 0 || (strGroup = matcher.group(1)) == null) {
            return 0;
        }
        try {
            return Integer.parseInt(strGroup);
        } catch (Exception unused) {
            return 0;
        }
    }

    private static int d(String text) {
        if (text != null && !text.isEmpty()) {
            String[] strArrSplit = text.split("\\.");
            if (strArrSplit.length == 0) {
                return -1;
            }
            try {
                return Integer.parseInt(strArrSplit[0]);
            } catch (Exception unused) {
            }
        }
        return -1;
    }

    public static boolean e() {
        return aW == f79410k;
    }

    public static boolean f() {
        if (!e()) {
            return false;
        }
        for (String str : d.a(f79414o)) {
            if (str.equalsIgnoreCase("cn")) {
                return true;
            }
        }
        return false;
    }

    public static boolean g() {
        if (!e()) {
            return false;
        }
        for (String str : d.a(f79414o)) {
            if (str.equalsIgnoreCase("global")) {
                return true;
            }
        }
        return false;
    }

    public static boolean h() {
        return K();
    }

    public static boolean i() {
        return aW == f79415p;
    }

    public static boolean j() {
        return aW == f79418s;
    }

    public static boolean k() {
        return aW == f79424y;
    }

    public static boolean l() {
        return aW == B;
    }

    public static boolean m() {
        return aW == E;
    }

    public static boolean n() {
        return aW == M;
    }

    @Deprecated
    public static boolean o() {
        return p();
    }

    public static boolean p() {
        return aW == H;
    }

    public static boolean q() {
        return aW == Q;
    }

    public static boolean r() {
        return aW == T;
    }

    public static boolean s() {
        return aW == W;
    }

    public static boolean t() {
        return aW == Z;
    }

    public static boolean u() {
        return aW == f79399ac;
    }

    public static boolean v() {
        return aW == ai;
    }

    public static boolean w() {
        return aW == ak;
    }

    public static boolean x() {
        return aW == am;
    }

    public static boolean y() {
        return aW == ao;
    }

    public static boolean z() {
        return aW == ar;
    }

    private static String a(String text) {
        String strB = b(text);
        if (!TextUtils.isEmpty(strB)) {
            return strB;
        }
        int iC = c(text);
        if (iC <= 0) {
            return "";
        }
        return iC + ".0";
    }

    public static boolean b() {
        if (!a()) {
            return false;
        }
        for (String str : d.a(f79409j)) {
            if (str.equalsIgnoreCase("cn")) {
                return true;
            }
        }
        return false;
    }

    public static boolean c() {
        if (!a()) {
            return false;
        }
        for (String str : d.a(f79409j)) {
            if (str.equalsIgnoreCase("global")) {
                return true;
            }
        }
        return false;
    }

    public static boolean d() {
        return K();
    }

    private static String a(String... systemPropertyKeys) {
        for (String str : systemPropertyKeys) {
            String strB = b(d.a(str));
            if (!TextUtils.isEmpty(strB)) {
                return strB;
            }
        }
        for (String str2 : systemPropertyKeys) {
            int iC = c(d.a(str2));
            if (iC > 0) {
                return iC + ".0";
            }
        }
        return "";
    }

    public static boolean a() {
        return aW == f79405f;
    }
}

package com.beizi.ad.internal.e;

import android.content.Context;
import android.os.Build;
import android.system.Os;
import android.system.StructStat;
import android.system.StructTimespec;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.beizi.fusion.model.DevInfo;
import com.beizi.fusion.model.RequestInfo;
import com.beizi.fusion.tool.af;
import com.byazt.bv.BaseConstants;
import com.join.mgps.Util.o0;
import java.util.Locale;

/* JADX INFO: loaded from: classes6.dex */
public class a {
    private static a K = null;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static String f8917a = "SDK_UID_KEY";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static String f8918b = "SDK_UID_KEY_NEW";
    private String A;
    private String B;
    private String C;
    private String D;
    private long E;
    private long F;
    private String G;
    private Context H;
    private String I;
    private String J;
    private RequestInfo L;
    private DevInfo M;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f8921e;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f8925i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f8926j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f8927k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private String f8928l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private String f8929m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f8930n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f8931o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private String f8932p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private String f8933q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f8934r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f8935s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private String f8936t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private String f8937u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private String f8938v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private String f8939w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private String f8940x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private String f8941y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private String f8942z;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f8920d = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f8919c = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.beizi.ad.model.i.b f8922f = com.beizi.ad.model.i.b.DEVICE_OTHER;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f8923g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f8924h = null;

    private a() {
        Context contextE = com.beizi.fusion.c.b.a().e();
        this.H = contextE;
        if (contextE == null) {
            return;
        }
        RequestInfo requestInfo = RequestInfo.getInstance(contextE);
        this.L = requestInfo;
        if (requestInfo == null) {
            return;
        }
        if (!requestInfo.isInit) {
            requestInfo.init();
        }
        this.M = this.L.getDevInfo();
    }

    private void F() {
        try {
            WindowManager windowManager = (WindowManager) com.beizi.ad.internal.c.a().f8769j.getSystemService("window");
            DisplayMetrics displayMetrics = new DisplayMetrics();
            windowManager.getDefaultDisplay().getMetrics(displayMetrics);
            this.f8923g = displayMetrics.widthPixels + "_" + displayMetrics.heightPixels;
            float f10 = ((float) displayMetrics.heightPixels) / displayMetrics.ydpi;
            float f11 = ((float) displayMetrics.widthPixels) / displayMetrics.xdpi;
            double dSqrt = Math.sqrt((double) ((f11 * f11) + (f10 * f10)));
            double dPow = Math.pow(10.0d, 2.0d);
            this.f8924h = String.format("%.2f", Double.valueOf(Math.round(dSqrt * dPow) / dPow));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private boolean G() {
        if (!Build.MANUFACTURER.equalsIgnoreCase("HUAWEI")) {
            String str = Build.BRAND;
            if (!str.equalsIgnoreCase("HUAWEI") && !str.equalsIgnoreCase("HONOR")) {
                return false;
            }
        }
        return true;
    }

    private String H() {
        try {
            int i10 = Build.VERSION.SDK_INT;
            StructStat structStatStat = Os.stat("/data/data");
            if (structStatStat == null) {
                return "";
            }
            if (i10 < 27) {
                return structStatStat.st_atime + ".0";
            }
            StructTimespec structTimespec = structStatStat.st_atim;
            return structTimespec.tv_sec + o0.f49827a + structTimespec.tv_nsec;
        } catch (Throwable unused) {
            return "";
        }
    }

    private boolean I() {
        return Build.MANUFACTURER.equalsIgnoreCase("VIVO") || Build.BRAND.equalsIgnoreCase("VIVO");
    }

    private boolean J() {
        if (!Build.MANUFACTURER.equalsIgnoreCase(BaseConstants.ROM_OPPO_UPPER_CONSTANT)) {
            String str = Build.BRAND;
            if (!str.equalsIgnoreCase(BaseConstants.ROM_OPPO_UPPER_CONSTANT) && !str.equalsIgnoreCase("REALME")) {
                return false;
            }
        }
        return true;
    }

    private boolean K() {
        if (!Build.MANUFACTURER.equalsIgnoreCase("XIAOMI")) {
            String str = Build.BRAND;
            if (!str.equalsIgnoreCase("XIAOMI") && !str.equalsIgnoreCase("REDMI")) {
                return false;
            }
        }
        return true;
    }

    public static synchronized a a() {
        if (K == null) {
            synchronized (a.class) {
                if (K == null) {
                    K = new a();
                }
            }
        }
        return K;
    }

    public long A() {
        RequestInfo requestInfo;
        if (this.E == 0 && (requestInfo = this.L) != null) {
            try {
                this.E = Long.parseLong(requestInfo.getInstallTime());
            } catch (NumberFormatException e10) {
                e10.printStackTrace();
            }
        }
        return this.E;
    }

    public long B() {
        RequestInfo requestInfo;
        if (this.F == 0 && (requestInfo = this.L) != null) {
            try {
                this.F = Long.parseLong(requestInfo.getUpdateTime());
            } catch (NumberFormatException e10) {
                e10.printStackTrace();
            }
        }
        return this.F;
    }

    public String C() {
        RequestInfo requestInfo;
        if (TextUtils.isEmpty(this.G) && (requestInfo = this.L) != null) {
            this.G = requestInfo.getPackageName();
        }
        return this.G;
    }

    public String D() {
        if (TextUtils.isEmpty(this.I)) {
            try {
                if (com.beizi.fusion.c.b.a().q()) {
                    this.I = com.beizi.ad.lance.a.q.k(com.beizi.fusion.c.b.a().e());
                } else {
                    this.I = com.beizi.fusion.c.b.a().r();
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return this.I;
    }

    public String E() {
        try {
            if (com.beizi.fusion.c.b.a().w()) {
                return null;
            }
            if (TextUtils.isEmpty(this.J)) {
                if (I()) {
                    this.J = com.beizi.ad.lance.a.q.b(com.beizi.ad.internal.c.a().f8769j, "com.bbk.appstore");
                } else if (J()) {
                    this.J = com.beizi.ad.lance.a.q.b(com.beizi.ad.internal.c.a().f8769j, "com.heytap.market");
                } else if (K()) {
                    this.J = com.beizi.ad.lance.a.q.b(com.beizi.ad.internal.c.a().f8769j, "com.xiaomi.market");
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return this.J;
    }

    public String b() {
        if (TextUtils.isEmpty(this.f8926j)) {
            this.f8926j = H();
        }
        return this.f8926j;
    }

    public String c() {
        if (TextUtils.isEmpty(this.f8933q)) {
            DevInfo devInfo = this.M;
            if (devInfo != null) {
                this.f8933q = devInfo.getRomVersion();
            } else {
                try {
                    af afVarA = af.a();
                    afVarA.b();
                    this.f8933q = afVarA.c();
                } catch (Throwable unused) {
                }
            }
        }
        return this.f8933q;
    }

    public String d() {
        if (TextUtils.isEmpty(this.f8920d)) {
            DevInfo devInfo = this.M;
            if (devInfo != null) {
                this.f8920d = devInfo.getSdkUID();
            } else {
                this.f8920d = (String) l.b(com.beizi.ad.internal.c.a().f8769j, f8918b, "");
            }
        }
        return this.f8920d;
    }

    public String e() {
        if (TextUtils.isEmpty(this.f8925i)) {
            DevInfo devInfo = this.M;
            if (devInfo != null) {
                this.f8925i = devInfo.getDensity();
            } else {
                try {
                    if (TextUtils.isEmpty(this.f8925i)) {
                        this.f8925i = com.beizi.ad.internal.c.a().f8769j.getResources().getDisplayMetrics().density + "";
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
        return this.f8925i;
    }

    public String f() {
        if (TextUtils.isEmpty(this.f8921e)) {
            DevInfo devInfo = this.M;
            if (devInfo != null) {
                this.f8921e = devInfo.getRoot();
            } else {
                this.f8921e = com.beizi.ad.lance.a.q.a();
            }
        }
        return this.f8921e;
    }

    public String g() {
        if (TextUtils.isEmpty(this.f8923g)) {
            DevInfo devInfo = this.M;
            if (devInfo != null) {
                this.f8923g = devInfo.getResolution();
            } else {
                F();
            }
        }
        return this.f8923g;
    }

    public String h() {
        if (TextUtils.isEmpty(this.f8924h)) {
            DevInfo devInfo = this.M;
            if (devInfo != null) {
                this.f8924h = devInfo.getScreenSize();
            } else {
                F();
            }
        }
        return this.f8924h;
    }

    public String i() {
        if (TextUtils.isEmpty(this.f8927k)) {
            this.f8927k = com.beizi.ad.lance.a.q.j(com.beizi.ad.internal.c.a().f8769j);
        }
        return this.f8927k;
    }

    public String j() {
        if (TextUtils.isEmpty(this.f8928l)) {
            this.f8928l = com.beizi.ad.lance.a.q.b();
        }
        return this.f8928l;
    }

    public String k() {
        if (com.beizi.fusion.c.b.a().w()) {
            return null;
        }
        if (G() && TextUtils.isEmpty(this.f8929m)) {
            this.f8929m = com.beizi.ad.lance.a.q.b(com.beizi.ad.internal.c.a().f8769j);
        }
        return this.f8929m;
    }

    public String l() {
        if (com.beizi.fusion.c.b.a().w()) {
            return null;
        }
        if (G() && TextUtils.isEmpty(this.f8932p)) {
            this.f8932p = com.beizi.ad.lance.a.q.a(com.beizi.ad.internal.c.a().f8769j, "com.huawei.hwid");
        }
        return this.f8932p;
    }

    public synchronized boolean m() {
        if (this.f8931o) {
            return this.f8930n;
        }
        this.f8931o = true;
        boolean zA = com.beizi.ad.lance.a.i.a(com.beizi.ad.internal.c.a().f8769j, "com.tencent.mm");
        this.f8930n = zA;
        return zA;
    }

    public com.beizi.ad.model.i.b n() {
        com.beizi.ad.model.i.b bVar = this.f8922f;
        com.beizi.ad.model.i.b bVar2 = com.beizi.ad.model.i.b.DEVICE_OTHER;
        if (bVar == bVar2) {
            DevInfo devInfo = this.M;
            if (devInfo != null) {
                String devType = devInfo.getDevType();
                if ("1".equals(devType)) {
                    this.f8922f = com.beizi.ad.model.i.b.DEVICE_PHONE;
                } else if ("2".equals(devType)) {
                    this.f8922f = com.beizi.ad.model.i.b.DEVICE_FLAT;
                }
            } else if (bVar == bVar2) {
                try {
                    try {
                        if (((TelephonyManager) com.beizi.ad.internal.c.a().f8769j.getSystemService("phone")).getPhoneType() != 0) {
                            this.f8922f = com.beizi.ad.model.i.b.DEVICE_PHONE;
                        } else {
                            this.f8922f = com.beizi.ad.model.i.b.DEVICE_FLAT;
                        }
                    } catch (Throwable unused) {
                        int i10 = com.beizi.ad.internal.c.a().f8769j.getResources().getConfiguration().screenLayout & 15;
                        if (i10 == 4 || i10 == 3) {
                            this.f8922f = com.beizi.ad.model.i.b.DEVICE_FLAT;
                        } else {
                            this.f8922f = com.beizi.ad.model.i.b.DEVICE_PHONE;
                        }
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        }
        return this.f8922f;
    }

    public String o() {
        if (this.f8934r) {
            return this.f8936t;
        }
        this.f8934r = true;
        String strD = com.beizi.ad.lance.a.r.d();
        this.f8936t = strD;
        return strD;
    }

    public String p() {
        if (this.f8935s) {
            return this.f8937u;
        }
        this.f8935s = true;
        String strC = com.beizi.ad.lance.a.r.c();
        this.f8937u = strC;
        return strC;
    }

    public String q() {
        return com.beizi.ad.lance.a.r.b();
    }

    public String r() {
        if (TextUtils.isEmpty(this.f8938v)) {
            this.f8938v = Build.VERSION.SDK_INT + " (" + Build.VERSION.RELEASE + ")";
        }
        return this.f8938v;
    }

    public String s() {
        if (TextUtils.isEmpty(this.f8939w)) {
            DevInfo devInfo = this.M;
            if (devInfo != null) {
                this.f8939w = devInfo.getBrand();
            } else {
                this.f8939w = Build.BRAND;
            }
        }
        return this.f8939w;
    }

    public String t() {
        if (TextUtils.isEmpty(this.f8940x)) {
            DevInfo devInfo = this.M;
            if (devInfo != null) {
                this.f8940x = devInfo.getModel();
            } else {
                this.f8940x = Build.MODEL;
            }
        }
        return this.f8940x;
    }

    public String u() {
        if (TextUtils.isEmpty(this.f8941y)) {
            this.f8941y = com.beizi.fusion.tool.p.d();
        }
        return this.f8941y;
    }

    public String v() {
        if (TextUtils.isEmpty(this.f8942z)) {
            DevInfo devInfo = this.M;
            if (devInfo != null) {
                this.f8942z = devInfo.getLanguage();
            } else {
                this.f8942z = Locale.getDefault().getLanguage();
            }
        }
        return this.f8942z;
    }

    public String w() {
        if (TextUtils.isEmpty(this.A)) {
            this.A = com.beizi.ad.lance.a.o.a(this.H);
        }
        return this.A;
    }

    public String x() {
        if (TextUtils.isEmpty(this.B)) {
            this.B = com.beizi.ad.lance.a.o.b(this.H);
        }
        return this.B;
    }

    public String y() {
        RequestInfo requestInfo;
        if (TextUtils.isEmpty(this.C) && (requestInfo = this.L) != null) {
            this.C = requestInfo.getAppVersion();
        }
        return this.C;
    }

    public String z() {
        RequestInfo requestInfo;
        if (TextUtils.isEmpty(this.D) && (requestInfo = this.L) != null) {
            this.D = requestInfo.getSdkVersion();
        }
        return this.D;
    }
}

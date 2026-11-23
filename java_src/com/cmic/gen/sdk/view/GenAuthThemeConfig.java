package com.cmic.gen.sdk.view;

import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes9.dex */
public class GenAuthThemeConfig {
    public static final String PLACEHOLDER = "$$运营商条款$$";
    private int A;
    private int B;
    private int C;
    private int D;
    private int E;
    private int F;
    private String G;
    private boolean H;
    private GenBackPressedListener I;
    private GenLoginClickListener J;
    private GenCheckBoxListener K;
    private GenCheckedChangeListener L;
    private GenAuthLoginListener M;
    private String N;
    private String O;
    private int P;
    private int Q;
    private boolean R;
    private String S;
    private String T;
    private String U;
    private String V;
    private String W;
    private String X;
    private String Y;
    private String Z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f24513a;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private String f24514aa;

    /* JADX INFO: renamed from: ab, reason: collision with root package name */
    private int f24515ab;

    /* JADX INFO: renamed from: ac, reason: collision with root package name */
    private boolean f24516ac;

    /* JADX INFO: renamed from: ad, reason: collision with root package name */
    private int f24517ad;
    private int ae;
    private boolean af;
    private int ag;
    private int ah;
    private int ai;
    private int aj;
    private int ak;
    private boolean al;
    private String am;
    private String an;
    private String ao;
    private String ap;
    private int aq;
    private int ar;
    private int as;
    private int at;
    private int au;
    private int av;
    private int aw;
    private boolean ax;
    private boolean ay;
    private String az;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f24518b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f24519c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private View f24520d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f24521e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f24522f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f24523g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f24524h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f24525i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f24526j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f24527k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f24528l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f24529m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private ImageView.ScaleType f24530n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f24531o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f24532p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f24533q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f24534r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f24535s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f24536t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private String f24537u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f24538v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f24539w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f24540x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f24541y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private String f24542z;

    public String getActivityIn() {
        return this.ap;
    }

    public String getActivityOut() {
        return this.an;
    }

    public int getAppLanguageType() {
        return this.aw;
    }

    public String getAuthPageActIn() {
        return this.am;
    }

    public String getAuthPageActOut() {
        return this.ao;
    }

    public int getCheckBoxLocation() {
        return this.ag;
    }

    public String getCheckTipText() {
        String str;
        if (this.H) {
            int i10 = this.aw;
            if (i10 == 1) {
                str = "請勾選同意服務條款";
            } else {
                str = i10 == 2 ? "Please check to agree to the terms of service" : "请勾选同意服务条款";
            }
            this.G = str;
        }
        return this.G;
    }

    public int getCheckedImgHeight() {
        return this.Q;
    }

    public String getCheckedImgPath() {
        return this.N;
    }

    public int getCheckedImgWidth() {
        return this.P;
    }

    public int getClauseBaseColor() {
        return this.f24517ad;
    }

    public int getClauseColor() {
        return this.ae;
    }

    public int getClauseLayoutResID() {
        return this.f24522f;
    }

    public String getClauseLayoutReturnID() {
        return this.f24523g;
    }

    public String getClauseName() {
        return this.T;
    }

    public String getClauseName2() {
        return this.V;
    }

    public String getClauseName3() {
        return this.X;
    }

    public String getClauseName4() {
        return this.Z;
    }

    public String getClauseUrl() {
        return this.U;
    }

    public String getClauseUrl2() {
        return this.W;
    }

    public String getClauseUrl3() {
        return this.Y;
    }

    public String getClauseUrl4() {
        return this.f24514aa;
    }

    public View getContentView() {
        return this.f24520d;
    }

    public GenAuthLoginListener getGenAuthLoginListener() {
        return this.M;
    }

    public GenBackPressedListener getGenBackPressedListener() {
        return this.I;
    }

    public GenCheckBoxListener getGenCheckBoxListener() {
        return this.K;
    }

    public GenCheckedChangeListener getGenCheckedChangeListener() {
        return this.L;
    }

    public GenLoginClickListener getGenLoginClickListener() {
        return this.J;
    }

    public int getLayoutResID() {
        return this.f24521e;
    }

    public String getLogBtnBackgroundPath() {
        return this.f24542z;
    }

    public int getLogBtnHeight() {
        return this.B;
    }

    public int getLogBtnMarginLeft() {
        return this.C;
    }

    public int getLogBtnMarginRight() {
        return this.D;
    }

    public int getLogBtnOffsetY() {
        return this.E;
    }

    public int getLogBtnOffsetY_B() {
        return this.F;
    }

    public String getLogBtnText() {
        String str;
        if (this.f24538v) {
            int i10 = this.aw;
            if (i10 == 1) {
                str = "本機號碼登錄";
            } else {
                str = i10 == 2 ? "Login" : this.f24537u;
            }
            this.f24537u = str;
        }
        return this.f24537u;
    }

    public int getLogBtnTextColor() {
        return this.f24541y;
    }

    public int getLogBtnTextSize() {
        return this.f24539w;
    }

    public int getLogBtnWidth() {
        return this.A;
    }

    public int getNavColor() {
        return this.f24526j;
    }

    public int getNavReturnImgHeight() {
        return this.f24529m;
    }

    public String getNavReturnImgPath() {
        return this.f24527k;
    }

    public ImageView.ScaleType getNavReturnImgScaleType() {
        return this.f24530n;
    }

    public int getNavReturnImgWidth() {
        return this.f24528l;
    }

    public int getNavTextColor() {
        return this.f24525i;
    }

    public int getNavTextSize() {
        return this.f24524h;
    }

    public int getNumFieldOffsetY() {
        return this.f24535s;
    }

    public int getNumFieldOffsetY_B() {
        return this.f24536t;
    }

    public int getNumberColor() {
        return this.f24533q;
    }

    public int getNumberOffsetX() {
        return this.f24534r;
    }

    public int getNumberSize() {
        return this.f24531o;
    }

    public String getPrivacy() {
        return this.S;
    }

    public String getPrivacyAnimation() {
        return this.az;
    }

    public int getPrivacyMarginLeft() {
        return this.ah;
    }

    public int getPrivacyMarginRight() {
        return this.ai;
    }

    public int getPrivacyOffsetY() {
        return this.aj;
    }

    public int getPrivacyOffsetY_B() {
        return this.ak;
    }

    public int getPrivacyTextSize() {
        return this.f24515ab;
    }

    public int getStatusBarColor() {
        return this.f24518b;
    }

    public int getThemeId() {
        return this.av;
    }

    public String getUncheckedImgPath() {
        return this.O;
    }

    public boolean getWebStorage() {
        return this.f24513a;
    }

    public int getWindowBottom() {
        return this.au;
    }

    public int getWindowHeight() {
        return this.ar;
    }

    public int getWindowWidth() {
        return this.aq;
    }

    public int getWindowX() {
        return this.as;
    }

    public int getWindowY() {
        return this.at;
    }

    public boolean isBackButton() {
        return this.ay;
    }

    public boolean isFitsSystemWindows() {
        return this.ax;
    }

    public boolean isLightColor() {
        return this.f24519c;
    }

    public boolean isLogBtnTextBold() {
        return this.f24540x;
    }

    public boolean isNumberBold() {
        return this.f24532p;
    }

    public boolean isPrivacyBookSymbol() {
        return this.al;
    }

    public boolean isPrivacyState() {
        return this.R;
    }

    public boolean isPrivacyTextBold() {
        return this.f24516ac;
    }

    public boolean isPrivacyTextGravityCenter() {
        return this.af;
    }

    private GenAuthThemeConfig(Builder builder) {
        this.f24538v = true;
        this.X = null;
        this.Y = null;
        this.Z = null;
        this.f24514aa = null;
        this.f24518b = builder.f24548b;
        this.f24519c = builder.f24549c;
        this.f24520d = builder.f24550d;
        this.f24521e = builder.f24551e;
        this.f24522f = builder.f24552f;
        this.f24523g = builder.f24553g;
        this.f24524h = builder.f24554h;
        this.f24525i = builder.f24555i;
        this.f24526j = builder.f24556j;
        this.f24527k = builder.f24557k;
        this.f24528l = builder.f24558l;
        this.f24529m = builder.f24559m;
        this.f24530n = builder.f24560n;
        this.f24531o = builder.f24561o;
        this.f24532p = builder.f24562p;
        this.f24533q = builder.f24563q;
        this.f24534r = builder.f24564r;
        this.f24535s = builder.f24565s;
        this.f24536t = builder.f24566t;
        this.f24537u = builder.f24567u;
        this.f24538v = builder.f24568v;
        this.f24539w = builder.f24569w;
        this.f24540x = builder.f24570x;
        this.f24541y = builder.f24571y;
        this.f24542z = builder.f24572z;
        this.A = builder.A;
        this.B = builder.B;
        this.C = builder.C;
        this.D = builder.D;
        this.E = builder.E;
        this.F = builder.F;
        this.G = builder.G;
        this.H = builder.H;
        this.I = builder.I;
        this.J = builder.J;
        this.K = builder.K;
        this.L = builder.L;
        this.N = builder.N;
        this.O = builder.O;
        this.P = builder.P;
        this.Q = builder.Q;
        this.R = builder.R;
        this.S = builder.S;
        this.T = builder.T;
        this.U = builder.U;
        this.V = builder.V;
        this.W = builder.W;
        this.X = builder.X;
        this.Y = builder.Y;
        this.Z = builder.Z;
        this.f24514aa = builder.f24544aa;
        this.f24515ab = builder.f24545ab;
        this.f24516ac = builder.f24546ac;
        this.f24517ad = builder.f24547ad;
        this.ae = builder.ae;
        this.af = builder.af;
        this.ah = builder.ag;
        this.ai = builder.ah;
        this.aj = builder.ai;
        this.ak = builder.aj;
        this.al = builder.ak;
        this.ag = builder.al;
        this.am = builder.am;
        this.an = builder.an;
        this.ao = builder.ao;
        this.ap = builder.ap;
        this.aq = builder.aq;
        this.ar = builder.ar;
        this.as = builder.as;
        this.at = builder.at;
        this.au = builder.au;
        this.av = builder.av;
        this.aw = builder.aw;
        this.ax = builder.ax;
        this.ay = builder.ay;
        this.az = builder.az;
        this.f24513a = builder.f24543a;
        this.M = builder.M;
    }

    public static class Builder {
        private String G;
        private boolean H;
        private GenBackPressedListener I;
        private GenLoginClickListener J;
        private GenCheckBoxListener K;
        private GenCheckedChangeListener L;
        private GenAuthLoginListener M;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f24543a;
        private int al;
        private String am;
        private String an;
        private String ao;
        private String ap;
        private int aq;
        private int ar;
        private int as;
        private int at;
        private String az;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String f24553g;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f24548b = 0;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f24549c = false;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private View f24550d = null;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f24551e = -1;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f24552f = -1;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f24554h = 17;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f24555i = -1;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private int f24556j = -16742704;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private String f24557k = "return_bg";

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private int f24558l = -2;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private int f24559m = -2;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private ImageView.ScaleType f24560n = ImageView.ScaleType.CENTER;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private int f24561o = 18;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private boolean f24562p = false;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private int f24563q = -16742704;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private int f24564r = 0;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private int f24565s = 184;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private int f24566t = 0;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        private String f24567u = "本机号码一键登录";

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        private boolean f24568v = true;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        private int f24569w = 15;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        private boolean f24570x = false;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        private int f24571y = -1;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        private String f24572z = "umcsdk_login_btn_bg";
        private int A = -1;
        private int B = 36;
        private int C = 46;
        private int D = 46;
        private int E = 254;
        private int F = 0;
        private String N = "umcsdk_check_image";
        private String O = "umcsdk_uncheck_image";
        private int P = 9;
        private int Q = 9;
        private boolean R = false;
        private String S = "登录即同意$$运营商条款$$并使用本机号码登录";
        private String T = null;
        private String U = null;
        private String V = null;
        private String W = null;
        private String X = null;
        private String Y = null;
        private String Z = null;

        /* JADX INFO: renamed from: aa, reason: collision with root package name */
        private String f24544aa = null;

        /* JADX INFO: renamed from: ab, reason: collision with root package name */
        private int f24545ab = 10;

        /* JADX INFO: renamed from: ac, reason: collision with root package name */
        private boolean f24546ac = false;

        /* JADX INFO: renamed from: ad, reason: collision with root package name */
        private int f24547ad = -10066330;
        private int ae = -16007674;
        private boolean af = false;
        private int ag = 52;
        private int ah = 52;
        private int ai = 0;
        private int aj = 30;
        private boolean ak = true;
        private int au = 0;
        private int av = -1;
        private int aw = 0;
        private boolean ax = true;
        private boolean ay = true;

        public GenAuthThemeConfig build() {
            return new GenAuthThemeConfig(this);
        }

        public Builder setAppLanguageType(int i10) {
            this.aw = i10;
            return this;
        }

        public Builder setAuthContentView(View view) {
            this.f24550d = view;
            this.f24551e = -1;
            return this;
        }

        public Builder setAuthLayoutResID(int i10) {
            this.f24551e = i10;
            this.f24550d = null;
            return this;
        }

        public Builder setAuthPageActIn(String str, String str2) {
            this.am = str;
            this.an = str2;
            return this;
        }

        public Builder setAuthPageActOut(String str, String str2) {
            this.ao = str2;
            this.ap = str;
            return this;
        }

        public Builder setAuthPageWindowMode(int i10, int i11) {
            this.aq = i10;
            this.ar = i11;
            return this;
        }

        public Builder setAuthPageWindowOffset(int i10, int i11) {
            this.as = i10;
            this.at = i11;
            return this;
        }

        public Builder setBackButton(boolean z10) {
            this.ay = z10;
            return this;
        }

        public Builder setCheckBoxImgPath(String str, String str2, int i10, int i11) {
            this.N = str;
            this.O = str2;
            this.P = i10;
            this.Q = i11;
            return this;
        }

        public Builder setCheckBoxLocation(int i10) {
            this.al = i10;
            return this;
        }

        public Builder setCheckTipText(String str) {
            boolean z10 = TextUtils.isEmpty(str) || str.length() > 100;
            this.H = z10;
            if (z10) {
                str = "请勾选同意服务条款";
            }
            this.G = str;
            return this;
        }

        public Builder setCheckedImgPath(String str) {
            this.N = str;
            return this;
        }

        public Builder setClauseColor(int i10, int i11) {
            this.f24547ad = i10;
            this.ae = i11;
            return this;
        }

        public Builder setClauseLayoutResID(int i10, String str) {
            this.f24552f = i10;
            this.f24553g = str;
            return this;
        }

        public Builder setFitsSystemWindows(boolean z10) {
            this.ax = z10;
            return this;
        }

        public Builder setGenAuthLoginListener(GenAuthLoginListener genAuthLoginListener) {
            this.M = genAuthLoginListener;
            return this;
        }

        public Builder setGenBackPressedListener(GenBackPressedListener genBackPressedListener) {
            this.I = genBackPressedListener;
            return this;
        }

        public Builder setGenCheckBoxListener(GenCheckBoxListener genCheckBoxListener) {
            this.K = genCheckBoxListener;
            return this;
        }

        public Builder setGenCheckedChangeListener(GenCheckedChangeListener genCheckedChangeListener) {
            this.L = genCheckedChangeListener;
            return this;
        }

        public Builder setLogBtn(int i10, int i11) {
            this.A = i10;
            this.B = i11;
            return this;
        }

        public Builder setLogBtnClickListener(GenLoginClickListener genLoginClickListener) {
            this.J = genLoginClickListener;
            return this;
        }

        public Builder setLogBtnImgPath(String str) {
            this.f24572z = str;
            return this;
        }

        public Builder setLogBtnMargin(int i10, int i11) {
            this.C = i10;
            this.D = i11;
            return this;
        }

        public Builder setLogBtnOffsetY(int i10) {
            this.E = i10;
            this.F = 0;
            return this;
        }

        public Builder setLogBtnOffsetY_B(int i10) {
            this.F = i10;
            this.E = 0;
            return this;
        }

        public Builder setLogBtnText(String str) {
            if (!TextUtils.isEmpty(str) && !Pattern.compile("^\\s*\\n*$").matcher(str).matches()) {
                this.f24567u = str;
                this.f24568v = false;
            }
            return this;
        }

        public Builder setLogBtnTextColor(int i10) {
            this.f24571y = i10;
            return this;
        }

        public Builder setNavColor(int i10) {
            this.f24556j = i10;
            return this;
        }

        public Builder setNavTextColor(int i10) {
            this.f24555i = i10;
            return this;
        }

        public Builder setNavTextSize(int i10) {
            this.f24554h = i10;
            return this;
        }

        public Builder setNumFieldOffsetY(int i10) {
            this.f24565s = i10;
            this.f24566t = 0;
            return this;
        }

        public Builder setNumFieldOffsetY_B(int i10) {
            this.f24566t = i10;
            this.f24565s = 0;
            return this;
        }

        public Builder setNumberColor(int i10) {
            this.f24563q = i10;
            return this;
        }

        public Builder setNumberOffsetX(int i10) {
            this.f24564r = i10;
            return this;
        }

        public Builder setNumberSize(int i10, boolean z10) {
            if (i10 > 8) {
                this.f24561o = i10;
                this.f24562p = z10;
            }
            return this;
        }

        public Builder setPrivacyAlignment(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
            if (str.contains(GenAuthThemeConfig.PLACEHOLDER)) {
                this.S = str;
                this.T = str2;
                this.U = str3;
                this.V = str4;
                this.W = str5;
                this.X = str6;
                this.Y = str7;
                this.Z = str8;
                this.f24544aa = str9;
            }
            return this;
        }

        public Builder setPrivacyAnimation(String str) {
            this.az = str;
            return this;
        }

        public Builder setPrivacyBookSymbol(boolean z10) {
            this.ak = z10;
            return this;
        }

        public Builder setPrivacyMargin(int i10, int i11) {
            this.ag = i10;
            this.ah = i11;
            return this;
        }

        public Builder setPrivacyOffsetY(int i10) {
            this.ai = i10;
            this.aj = 0;
            return this;
        }

        public Builder setPrivacyOffsetY_B(int i10) {
            this.aj = i10;
            this.ai = 0;
            return this;
        }

        public Builder setPrivacyState(boolean z10) {
            this.R = z10;
            return this;
        }

        public Builder setPrivacyText(int i10, int i11, int i12, boolean z10, boolean z11) {
            this.f24545ab = i10;
            this.f24547ad = i11;
            this.ae = i12;
            this.af = z10;
            this.f24546ac = z11;
            return this;
        }

        public Builder setStatusBar(int i10, boolean z10) {
            this.f24548b = i10;
            this.f24549c = z10;
            return this;
        }

        public Builder setThemeId(int i10) {
            this.av = i10;
            return this;
        }

        public Builder setUncheckedImgPath(String str) {
            this.O = str;
            return this;
        }

        public Builder setWebDomStorage(boolean z10) {
            this.f24543a = z10;
            return this;
        }

        public Builder setWindowBottom(int i10) {
            this.au = i10;
            return this;
        }

        public Builder setLogBtnText(String str, int i10, int i11, boolean z10) {
            if (!TextUtils.isEmpty(str) && !Pattern.compile("^\\s*\\n*$").matcher(str).matches()) {
                this.f24567u = str;
                this.f24568v = false;
            }
            this.f24571y = i10;
            this.f24569w = i11;
            this.f24570x = z10;
            return this;
        }
    }
}

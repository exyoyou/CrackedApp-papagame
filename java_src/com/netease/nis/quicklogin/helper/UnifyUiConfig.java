package com.netease.nis.quicklogin.helper;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import com.cmic.gen.sdk.auth.GenAuthnHelper;
import com.cmic.gen.sdk.view.GenAuthThemeConfig;
import com.cmic.gen.sdk.view.GenLoginClickListener;
import com.netease.nis.basesdk.Logger;
import com.netease.nis.quicklogin.R;
import com.netease.nis.quicklogin.listener.ActivityLifecycleCallbacks;
import com.netease.nis.quicklogin.listener.ActivityResultCallbacks;
import com.netease.nis.quicklogin.listener.ClickEventListener;
import com.netease.nis.quicklogin.listener.LoginListener;
import com.netease.nis.quicklogin.listener.MaskNumberListener;
import com.netease.nis.quicklogin.utils.LoginUiHelper;
import com.netease.nis.quicklogin.utils.h;
import com.netease.nis.quicklogin.utils.i;
import java.util.ArrayList;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class UnifyUiConfig {
    public static final int CHECKBOX_CHECKED = 1;
    public static final int CHECKBOX_UNCHECKED = 0;
    public static final int CLICK_CHECKBOX = 2;
    public static final int CLICK_LOGIN_BUTTON = 4;
    public static final int CLICK_PRIVACY = 1;
    public static final int CLICK_TOP_LEFT_BACK_BUTTON = 3;
    public static final int POSITION_IN_BODY = 0;
    public static final int POSITION_IN_ROOT = 2;
    public static final int POSITION_IN_TITLE_BAR = 1;
    private final String activityEnterAnimation;
    private final String activityExitAnimation;
    private final ActivityLifecycleCallbacks activityLifecycleCallbacks;
    private final ActivityResultCallbacks activityResultCallbacks;
    private final boolean backPressedAvailable;
    private final String backgroundGif;
    private final Drawable backgroundGifDrawable;
    private final String backgroundImage;
    private final Drawable backgroundImageDrawable;
    private final View backgroundShadow;
    private final String backgroundVideo;
    private final String backgroundVideoImage;
    private final Drawable backgroundVideoImageDrawable;
    private final int checkBoxGravity;
    private final Drawable checkedImageDrawable;
    private final String checkedImageName;
    private final ClickEventListener clickEventListener;
    private GenAuthThemeConfig cmAuthThemeConfig;
    private final String cmProtocolNavTitle;
    private final Context context;
    private final String ctProtocolNavTitle;
    private final String cuProtocolNavTitle;
    private final String customProtocol2NavTitle;
    private final String customProtocol3NavTitle;
    private final String customProtocolNavTitle;
    private final ArrayList<LoginUiHelper.a> customViewHolders;
    private final int dialogHeight;
    private final int dialogWidth;
    private final int dialogX;
    private final int dialogY;
    private final boolean isBottomDialog;
    private final boolean isDialogMode;
    private final boolean isHideBackIcon;
    private final boolean isHideLogo;
    private final boolean isHideNav;
    private final boolean isHidePrivacyCheckBox;
    private final boolean isHidePrivacySmh;
    private final boolean isLandscape;
    private final boolean isNavTitleBold;
    private final boolean isPrivacyTextGravityCenter;
    private final boolean isProtocolDialogMode;
    private final boolean isStatusBarDarkColor;
    private final ViewGroup loadingView;
    private final boolean loadingVisible;
    private final Drawable loginBtnBackgroundDrawable;
    private final String loginBtnBackgroundRes;
    private final int loginBtnBottomYOffset;
    private final int loginBtnHeight;
    private final String loginBtnText;
    private final int loginBtnTextColor;
    private final int loginBtnTextDpSize;
    private final int loginBtnTextSize;
    private final int loginBtnTopYOffset;
    private final int loginBtnWidth;
    private final int loginBtnXOffset;
    private final LoginListener loginListener;
    private final int logoBottomYOffset;
    private final int logoHeight;
    private final Drawable logoIconDrawable;
    private final String logoIconName;
    private final int logoTopYOffset;
    private final int logoWidth;
    private final int logoXOffset;
    private final String maskNumberBackgroundRes;
    private final int maskNumberBottomYOffset;
    private final int maskNumberColor;
    private final int maskNumberDpSize;
    private final MaskNumberListener maskNumberListener;
    private final int maskNumberSize;
    private final Typeface maskNumberTf;
    private final int maskNumberTopYOffset;
    private final int maskNumberXOffset;
    private final String navBackIcon;
    private final Drawable navBackIconDrawable;
    private final int navBackIconGravity;
    private final int navBackIconHeight;
    private final int navBackIconMargin;
    private final int navBackIconWidth;
    private final int navBackgroundColor;
    private final int navHeight;
    private final String navTitle;
    private final int navTitleColor;
    private final int navTitleDpSize;
    private final Drawable navTitleDrawable;
    private final int navTitleDrawablePadding;
    private final int navTitleSize;
    private final int privacyBottomYOffset;
    private final int privacyCheckBoxHeight;
    private final int privacyCheckBoxWidth;
    private final boolean privacyDialogAuto;
    private final String privacyDialogText;
    private final float privacyDialogTextSize;
    private final int privacyDpSize;
    private final float privacyLineSpacingAdd;
    private final float privacyLineSpacingMul;
    private final int privacyMarginLeft;
    private final int privacyMarginRight;
    private final int privacyProtocolColor;
    private final int privacySize;
    private final boolean privacyState;
    private final int privacyTextColor;
    private final String privacyTextEnd;
    private final int privacyTextLayoutGravity;
    private final int privacyTextMarginLeft;
    private final String privacyTextStart;
    private final float privacyTextStartSize;
    private final int privacyTopYOffset;
    private final String protocol2Link;
    private final String protocol2Text;
    private final String protocol3Link;
    private final String protocol3Text;
    private final String protocolBackgroundImage;
    private final String protocolConnect;
    private final String protocolLink;
    private final String protocolNavBackIcon;
    private final Drawable protocolNavBackIconDrawable;
    private final int protocolNavBackIconHeight;
    private final int protocolNavBackIconMargin;
    private final int protocolNavBackIconWidth;
    private final int protocolNavColor;
    private final int protocolNavHeight;
    private final String protocolNavTitle;
    private final int protocolNavTitleColor;
    private final int protocolNavTitleDpSize;
    private final int protocolNavTitleSize;
    private final String protocolText;
    private final int sloganBottomYOffset;
    private final int sloganColor;
    private final int sloganDpSize;
    private final int sloganSize;
    private final int sloganTopYOffset;
    private final int sloganXOffset;
    private final int statusBarColor;
    private final String unCheckedImageName;
    private final Drawable unCheckedImageNameDrawable;
    private final String userProtocolConnect;

    public static class Builder {
        private int B;
        private int C;
        private String C0;
        private ViewGroup C1;
        private int D;
        private String D0;
        private Typeface E;
        private int F;
        private int G;
        private String G0;
        private int H;
        private String H0;
        private String I;
        private String I0;
        private int J;
        private String J0;
        private int K;
        private String L0;
        private int M;
        private String M0;
        private int N;
        private String N0;
        private int O;
        private String O0;
        private String P0;
        private int Q;
        private String Q0;
        private int R;
        private String R0;
        private int S0;
        private int T;
        private int T0;
        private int U;
        private int U0;
        private String V;
        private int V0;
        private Drawable W;
        private int X;
        private int Y;
        private String Y0;
        private int Z;
        private Drawable Z0;

        /* JADX INFO: renamed from: a1, reason: collision with root package name */
        private int f75958a1;

        /* JADX INFO: renamed from: b1, reason: collision with root package name */
        private int f75961b1;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f75962c;

        /* JADX INFO: renamed from: c0, reason: collision with root package name */
        private int f75963c0;

        /* JADX INFO: renamed from: c1, reason: collision with root package name */
        private boolean f75964c1;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Drawable f75965d;

        /* JADX INFO: renamed from: d0, reason: collision with root package name */
        private int f75966d0;

        /* JADX INFO: renamed from: d1, reason: collision with root package name */
        private int f75967d1;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f75968e;

        /* JADX INFO: renamed from: e0, reason: collision with root package name */
        private int f75969e0;

        /* JADX INFO: renamed from: e1, reason: collision with root package name */
        private int f75970e1;

        /* JADX INFO: renamed from: f0, reason: collision with root package name */
        private int f75972f0;

        /* JADX INFO: renamed from: f1, reason: collision with root package name */
        private int f75973f1;

        /* JADX INFO: renamed from: g0, reason: collision with root package name */
        private int f75975g0;

        /* JADX INFO: renamed from: g1, reason: collision with root package name */
        private int f75976g1;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f75977h;

        /* JADX INFO: renamed from: h0, reason: collision with root package name */
        private int f75978h0;

        /* JADX INFO: renamed from: h1, reason: collision with root package name */
        private boolean f75979h1;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f75980i;

        /* JADX INFO: renamed from: i1, reason: collision with root package name */
        private boolean f75982i1;
        public boolean isLandscape;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private int f75983j;

        /* JADX INFO: renamed from: j1, reason: collision with root package name */
        private String f75985j1;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private String f75986k;

        /* JADX INFO: renamed from: k1, reason: collision with root package name */
        private String f75988k1;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private int f75989l;

        /* JADX INFO: renamed from: l1, reason: collision with root package name */
        private Drawable f75991l1;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private int f75992m;

        /* JADX INFO: renamed from: m0, reason: collision with root package name */
        private int f75993m0;

        /* JADX INFO: renamed from: m1, reason: collision with root package name */
        private String f75994m1;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private int f75995n;

        /* JADX INFO: renamed from: n0, reason: collision with root package name */
        private int f75996n0;

        /* JADX INFO: renamed from: n1, reason: collision with root package name */
        private Drawable f75997n1;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private int f75998o;

        /* JADX INFO: renamed from: o0, reason: collision with root package name */
        private int f75999o0;

        /* JADX INFO: renamed from: o1, reason: collision with root package name */
        private String f76000o1;

        /* JADX INFO: renamed from: p0, reason: collision with root package name */
        private int f76002p0;

        /* JADX INFO: renamed from: p1, reason: collision with root package name */
        private String f76003p1;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private boolean f76004q;

        /* JADX INFO: renamed from: q0, reason: collision with root package name */
        private int f76005q0;

        /* JADX INFO: renamed from: q1, reason: collision with root package name */
        private Drawable f76006q1;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private Drawable f76007r;

        /* JADX INFO: renamed from: r1, reason: collision with root package name */
        private String f76009r1;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private int f76010s;

        /* JADX INFO: renamed from: s0, reason: collision with root package name */
        private Drawable f76011s0;

        /* JADX INFO: renamed from: s1, reason: collision with root package name */
        private String f76012s1;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private String f76013t;

        /* JADX INFO: renamed from: t1, reason: collision with root package name */
        private MaskNumberListener f76015t1;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        private Drawable f76016u;

        /* JADX INFO: renamed from: u0, reason: collision with root package name */
        private Drawable f76017u0;

        /* JADX INFO: renamed from: u1, reason: collision with root package name */
        private LoginListener f76018u1;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        private int f76019v;

        /* JADX INFO: renamed from: v0, reason: collision with root package name */
        private String f76020v0;

        /* JADX INFO: renamed from: v1, reason: collision with root package name */
        private ClickEventListener f76021v1;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        private int f76022w;

        /* JADX INFO: renamed from: w0, reason: collision with root package name */
        private boolean f76023w0;

        /* JADX INFO: renamed from: w1, reason: collision with root package name */
        private View f76024w1;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        private int f76025x;

        /* JADX INFO: renamed from: x1, reason: collision with root package name */
        private ArrayList<LoginUiHelper.a> f76027x1;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        private int f76028y;

        /* JADX INFO: renamed from: y1, reason: collision with root package name */
        private ActivityLifecycleCallbacks f76030y1;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        private int f76031z;

        /* JADX INFO: renamed from: z1, reason: collision with root package name */
        private ActivityResultCallbacks f76033z1;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f75956a = -1;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f75959b = false;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f75971f = 25;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f75974g = 25;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private boolean f76001p = false;
        private boolean A = false;
        private int L = Color.parseColor("#9A9A9A");
        private String P = "本机号码一键登录";
        private int S = -1;

        /* JADX INFO: renamed from: a0, reason: collision with root package name */
        private int f75957a0 = Color.parseColor("#292929");

        /* JADX INFO: renamed from: b0, reason: collision with root package name */
        private int f75960b0 = -7829368;

        /* JADX INFO: renamed from: i0, reason: collision with root package name */
        private boolean f75981i0 = true;

        /* JADX INFO: renamed from: j0, reason: collision with root package name */
        private boolean f75984j0 = false;

        /* JADX INFO: renamed from: k0, reason: collision with root package name */
        private boolean f75987k0 = false;

        /* JADX INFO: renamed from: l0, reason: collision with root package name */
        private boolean f75990l0 = false;

        /* JADX INFO: renamed from: r0, reason: collision with root package name */
        private String f76008r0 = "yd_checkbox_checked";

        /* JADX INFO: renamed from: t0, reason: collision with root package name */
        private String f76014t0 = "yd_checkbox_unchecked";

        /* JADX INFO: renamed from: x0, reason: collision with root package name */
        private float f76026x0 = 0.0f;

        /* JADX INFO: renamed from: y0, reason: collision with root package name */
        private String f76029y0 = "登录即同意";

        /* JADX INFO: renamed from: z0, reason: collision with root package name */
        private float f76032z0 = 0.0f;
        private float A0 = 0.0f;
        private float B0 = 0.0f;
        private String E0 = "和";
        private String F0 = "、";
        private String K0 = "且授权使用本机号码登录";
        private int W0 = 25;
        private int X0 = 25;
        private boolean A1 = true;
        private boolean B1 = true;

        public Builder addCustomView(View view, String str, int i10, LoginUiHelper.CustomViewListener customViewListener) {
            if (view == null) {
                return this;
            }
            if (this.f76027x1 == null) {
                this.f76027x1 = new ArrayList<>();
            }
            LoginUiHelper.a aVar = new LoginUiHelper.a();
            aVar.f76131a = view;
            aVar.f76132b = i10;
            aVar.f76133c = customViewListener;
            this.f76027x1.add(aVar);
            return this;
        }

        public UnifyUiConfig build(Context context) {
            return new UnifyUiConfig(this, context, null);
        }

        public Builder setActivityLifecycleCallbacks(ActivityLifecycleCallbacks activityLifecycleCallbacks) {
            this.f76030y1 = activityLifecycleCallbacks;
            return this;
        }

        public Builder setActivityResultCallbacks(ActivityResultCallbacks activityResultCallbacks) {
            this.f76033z1 = activityResultCallbacks;
            return this;
        }

        public Builder setActivityTranslateAnimation(String str, String str2) {
            this.f76009r1 = str;
            this.f76012s1 = str2;
            return this;
        }

        public Builder setBackPressedAvailable(boolean z10) {
            this.A1 = z10;
            return this;
        }

        public Builder setBackgroundGif(String str) {
            this.f75994m1 = str;
            return this;
        }

        public Builder setBackgroundGifDrawable(Drawable drawable) {
            this.f75997n1 = drawable;
            return this;
        }

        public Builder setBackgroundImage(String str) {
            this.f75985j1 = str;
            return this;
        }

        public Builder setBackgroundImageDrawable(Drawable drawable) {
            this.f75991l1 = drawable;
            return this;
        }

        public Builder setBackgroundShadowView(View view) {
            this.f76024w1 = view;
            return this;
        }

        public Builder setBackgroundVideo(String str, String str2) {
            this.f76000o1 = str;
            this.f76003p1 = str2;
            return this;
        }

        public Builder setBottomDialog(boolean z10) {
            this.f75979h1 = z10;
            return this;
        }

        public Builder setCheckBoxGravity(int i10) {
            this.f75999o0 = i10;
            return this;
        }

        public Builder setCheckedImageDrawable(Drawable drawable) {
            this.f76011s0 = drawable;
            return this;
        }

        public Builder setCheckedImageName(String str) {
            this.f76008r0 = str;
            return this;
        }

        public Builder setClickEventListener(ClickEventListener clickEventListener) {
            this.f76021v1 = clickEventListener;
            return this;
        }

        public Builder setDialogHeight(int i10) {
            this.f75970e1 = i10;
            return this;
        }

        public Builder setDialogMode(boolean z10) {
            this.f75964c1 = z10;
            return this;
        }

        public Builder setDialogWidth(int i10) {
            this.f75967d1 = i10;
            return this;
        }

        public Builder setDialogX(int i10) {
            this.f75973f1 = i10;
            return this;
        }

        public Builder setDialogY(int i10) {
            this.f75976g1 = i10;
            return this;
        }

        public Builder setHideLogo(boolean z10) {
            this.A = z10;
            return this;
        }

        public Builder setHideNavigation(boolean z10) {
            this.f76001p = z10;
            return this;
        }

        public Builder setHideNavigationBackIcon(boolean z10) {
            this.f75968e = z10;
            return this;
        }

        public Builder setHidePrivacyCheckBox(boolean z10) {
            this.f75984j0 = z10;
            return this;
        }

        public Builder setHidePrivacySmh(boolean z10) {
            this.f75987k0 = z10;
            return this;
        }

        public Builder setLandscape(boolean z10) {
            this.isLandscape = z10;
            return this;
        }

        public Builder setLoadingView(ViewGroup viewGroup) {
            this.C1 = viewGroup;
            return this;
        }

        public Builder setLoadingVisible(boolean z10) {
            this.B1 = z10;
            return this;
        }

        public Builder setLoginBtnBackgroundDrawable(Drawable drawable) {
            this.W = drawable;
            return this;
        }

        public Builder setLoginBtnBackgroundRes(String str) {
            this.V = str;
            return this;
        }

        public Builder setLoginBtnBottomYOffset(int i10) {
            this.Y = i10;
            return this;
        }

        public Builder setLoginBtnHeight(int i10) {
            this.U = i10;
            return this;
        }

        public Builder setLoginBtnText(String str) {
            this.P = str;
            return this;
        }

        public Builder setLoginBtnTextColor(int i10) {
            this.S = i10;
            return this;
        }

        public Builder setLoginBtnTextDpSize(int i10) {
            this.R = i10;
            return this;
        }

        public Builder setLoginBtnTextSize(int i10) {
            this.Q = i10;
            return this;
        }

        public Builder setLoginBtnTopYOffset(int i10) {
            this.X = i10;
            return this;
        }

        public Builder setLoginBtnWidth(int i10) {
            this.T = i10;
            return this;
        }

        public Builder setLoginBtnXOffset(int i10) {
            this.Z = i10;
            return this;
        }

        public Builder setLoginListener(LoginListener loginListener) {
            this.f76018u1 = loginListener;
            return this;
        }

        public Builder setLogoBottomYOffset(int i10) {
            this.f76028y = i10;
            return this;
        }

        public Builder setLogoHeight(int i10) {
            this.f76022w = i10;
            return this;
        }

        public Builder setLogoIconDrawable(Drawable drawable) {
            this.f76016u = drawable;
            return this;
        }

        public Builder setLogoIconName(String str) {
            this.f76013t = str;
            return this;
        }

        public Builder setLogoTopYOffset(int i10) {
            this.f76025x = i10;
            return this;
        }

        public Builder setLogoWidth(int i10) {
            this.f76019v = i10;
            return this;
        }

        public Builder setLogoXOffset(int i10) {
            this.f76031z = i10;
            return this;
        }

        public Builder setMaskNumberBackgroundRes(String str) {
            this.I = str;
            return this;
        }

        public Builder setMaskNumberBottomYOffset(int i10) {
            this.G = i10;
            return this;
        }

        public Builder setMaskNumberColor(int i10) {
            this.B = i10;
            return this;
        }

        public Builder setMaskNumberDpSize(int i10) {
            this.D = i10;
            return this;
        }

        public Builder setMaskNumberListener(MaskNumberListener maskNumberListener) {
            this.f76015t1 = maskNumberListener;
            return this;
        }

        public Builder setMaskNumberSize(int i10) {
            this.C = i10;
            return this;
        }

        public Builder setMaskNumberTopYOffset(int i10) {
            this.F = i10;
            return this;
        }

        public Builder setMaskNumberTypeface(Typeface typeface) {
            this.E = typeface;
            return this;
        }

        public Builder setMaskNumberXOffset(int i10) {
            this.H = i10;
            return this;
        }

        public Builder setNavTitleBold(boolean z10) {
            this.f76004q = z10;
            return this;
        }

        public Builder setNavTitleDpSize(int i10) {
            this.f75998o = i10;
            return this;
        }

        public Builder setNavTitleDrawable(Drawable drawable) {
            this.f76007r = drawable;
            return this;
        }

        public Builder setNavTitleDrawablePadding(int i10) {
            this.f76010s = i10;
            return this;
        }

        public Builder setNavTitleSize(int i10) {
            this.f75995n = i10;
            return this;
        }

        public Builder setNavigationBackIconHeight(int i10) {
            this.f75974g = i10;
            return this;
        }

        public Builder setNavigationBackIconWidth(int i10) {
            this.f75971f = i10;
            return this;
        }

        public Builder setNavigationBackgroundColor(int i10) {
            this.f75983j = i10;
            return this;
        }

        public Builder setNavigationHeight(int i10) {
            this.f75989l = i10;
            return this;
        }

        public Builder setNavigationIcon(String str) {
            this.f75962c = str;
            return this;
        }

        public Builder setNavigationIconDrawable(Drawable drawable) {
            this.f75965d = drawable;
            return this;
        }

        public Builder setNavigationIconGravity(int i10) {
            this.f75977h = i10;
            return this;
        }

        public Builder setNavigationIconMargin(int i10) {
            this.f75980i = i10;
            return this;
        }

        public Builder setNavigationTitle(String str) {
            this.f75986k = str;
            return this;
        }

        public Builder setNavigationTitleColor(int i10) {
            this.f75992m = i10;
            return this;
        }

        public Builder setPrivacyBottomYOffset(int i10) {
            this.f75972f0 = i10;
            return this;
        }

        public Builder setPrivacyCheckBoxHeight(int i10) {
            this.f76005q0 = i10;
            return this;
        }

        public Builder setPrivacyCheckBoxWidth(int i10) {
            this.f76002p0 = i10;
            return this;
        }

        public Builder setPrivacyDialogAuto(boolean z10) {
            this.f76023w0 = z10;
            return this;
        }

        public Builder setPrivacyDialogText(String str) {
            this.f76020v0 = str;
            return this;
        }

        public Builder setPrivacyDialogTextSize(float f10) {
            this.f76026x0 = f10;
            return this;
        }

        public Builder setPrivacyDpSize(int i10) {
            this.f75966d0 = i10;
            return this;
        }

        public Builder setPrivacyLineSpacing(float f10, float f11) {
            this.A0 = f10;
            this.B0 = f11;
            return this;
        }

        public Builder setPrivacyMarginLeft(int i10) {
            this.f75975g0 = i10;
            return this;
        }

        public Builder setPrivacyMarginRight(int i10) {
            this.f75978h0 = i10;
            return this;
        }

        public Builder setPrivacyProtocolColor(int i10) {
            this.f75960b0 = i10;
            return this;
        }

        public Builder setPrivacySize(int i10) {
            this.f75963c0 = i10;
            return this;
        }

        public Builder setPrivacyState(boolean z10) {
            this.f75981i0 = z10;
            return this;
        }

        public Builder setPrivacyTextColor(int i10) {
            this.f75957a0 = i10;
            return this;
        }

        public Builder setPrivacyTextEnd(String str) {
            this.K0 = str;
            return this;
        }

        public Builder setPrivacyTextGravityCenter(boolean z10) {
            this.f75990l0 = z10;
            return this;
        }

        public Builder setPrivacyTextLayoutGravity(int i10) {
            this.f75993m0 = i10;
            return this;
        }

        public Builder setPrivacyTextMarginLeft(int i10) {
            this.f75996n0 = i10;
            return this;
        }

        public Builder setPrivacyTextStart(String str) {
            this.f76029y0 = str;
            return this;
        }

        public Builder setPrivacyTextStartSize(float f10) {
            this.f76032z0 = f10;
            return this;
        }

        public Builder setPrivacyTopYOffset(int i10) {
            this.f75969e0 = i10;
            return this;
        }

        public Builder setProtocol2Link(String str) {
            this.H0 = str;
            return this;
        }

        public Builder setProtocol2Text(String str) {
            this.G0 = str;
            return this;
        }

        public Builder setProtocol3Link(String str) {
            this.J0 = str;
            return this;
        }

        public Builder setProtocol3Text(String str) {
            this.I0 = str;
            return this;
        }

        public Builder setProtocolBackgroundImage(String str) {
            this.f75988k1 = str;
            return this;
        }

        public Builder setProtocolConnect(String str) {
            this.E0 = str;
            return this;
        }

        public Builder setProtocolDialogMode(boolean z10) {
            this.f75982i1 = z10;
            return this;
        }

        public Builder setProtocolLink(String str) {
            this.D0 = str;
            return this;
        }

        public Builder setProtocolPageNavBackIcon(String str) {
            this.Y0 = str;
            return this;
        }

        public Builder setProtocolPageNavBackIconDrawable(Drawable drawable) {
            this.Z0 = drawable;
            return this;
        }

        public Builder setProtocolPageNavBackIconHeight(int i10) {
            this.X0 = i10;
            return this;
        }

        public Builder setProtocolPageNavBackIconMargin(int i10) {
            this.f75958a1 = i10;
            return this;
        }

        public Builder setProtocolPageNavBackIconWidth(int i10) {
            this.W0 = i10;
            return this;
        }

        public Builder setProtocolPageNavColor(int i10) {
            this.f75961b1 = i10;
            return this;
        }

        public Builder setProtocolPageNavHeight(int i10) {
            this.S0 = i10;
            return this;
        }

        @Deprecated
        public Builder setProtocolPageNavTitle(String str) {
            this.L0 = str;
            return this;
        }

        public Builder setProtocolPageNavTitleColor(int i10) {
            this.T0 = i10;
            return this;
        }

        public Builder setProtocolPageNavTitleDpSize(int i10) {
            this.V0 = i10;
            return this;
        }

        public Builder setProtocolPageNavTitleSize(int i10) {
            this.U0 = i10;
            return this;
        }

        public Builder setProtocolText(String str) {
            this.C0 = str;
            return this;
        }

        public Builder setSloganBottomYOffset(int i10) {
            this.N = i10;
            return this;
        }

        public Builder setSloganColor(int i10) {
            this.L = i10;
            return this;
        }

        public Builder setSloganDpSize(int i10) {
            this.K = i10;
            return this;
        }

        public Builder setSloganSize(int i10) {
            this.J = i10;
            return this;
        }

        public Builder setSloganTopYOffset(int i10) {
            this.M = i10;
            return this;
        }

        public Builder setSloganXOffset(int i10) {
            this.O = i10;
            return this;
        }

        public Builder setStatusBarColor(int i10) {
            this.f75956a = i10;
            return this;
        }

        public Builder setStatusBarDarkColor(boolean z10) {
            this.f75959b = z10;
            return this;
        }

        public Builder setUnCheckedImageDrawable(Drawable drawable) {
            this.f76017u0 = drawable;
            return this;
        }

        public Builder setUnCheckedImageName(String str) {
            this.f76014t0 = str;
            return this;
        }

        public Builder setUserProtocolConnect(String str) {
            this.F0 = str;
            return this;
        }

        public Builder setDialogMode(boolean z10, int i10, int i11, int i12, int i13, boolean z11) {
            this.f75964c1 = z10;
            this.f75967d1 = i10;
            this.f75970e1 = i11;
            this.f75973f1 = i12;
            this.f75976g1 = i13;
            this.f75979h1 = z11;
            return this;
        }

        public Builder setProtocolPageNavTitle(String str, String str2, String str3) {
            this.M0 = str;
            this.O0 = str2;
            this.N0 = str3;
            return this;
        }

        public Builder setBackgroundVideo(String str, Drawable drawable) {
            this.f76000o1 = str;
            this.f76006q1 = drawable;
            return this;
        }

        public Builder setProtocolPageNavTitle(String str, String str2, String str3, String str4, String str5, String str6) {
            this.M0 = str;
            this.O0 = str2;
            this.N0 = str3;
            this.P0 = str4;
            this.Q0 = str5;
            this.R0 = str6;
            return this;
        }
    }

    class a implements GenLoginClickListener {
        a(UnifyUiConfig unifyUiConfig) {
        }

        @Override // com.cmic.gen.sdk.view.GenLoginClickListener
        public void onLoginClickComplete(Context context, JSONObject jSONObject) {
        }

        @Override // com.cmic.gen.sdk.view.GenLoginClickListener
        public void onLoginClickStart(Context context, JSONObject jSONObject) {
        }
    }

    /* synthetic */ UnifyUiConfig(Builder builder, Context context, a aVar) {
        this(builder, context);
    }

    private void createCmAuthUiBuilder() {
        GenAuthThemeConfig.Builder builder = new GenAuthThemeConfig.Builder();
        int iC = this.navHeight;
        if (iC == 0) {
            iC = i.c(this.context);
        }
        int i10 = this.maskNumberSize;
        if (i10 != 0) {
            builder.setNumberSize(i10, false);
        }
        int i11 = this.maskNumberColor;
        if (i11 != 0) {
            builder.setNumberColor(i11);
        }
        int i12 = this.maskNumberTopYOffset;
        if (i12 != 0) {
            builder.setNumFieldOffsetY(i12 + iC);
        }
        int i13 = this.maskNumberBottomYOffset;
        if (i13 != 0) {
            builder.setNumFieldOffsetY_B(i13);
        }
        builder.setLogBtn(this.loginBtnWidth, this.loginBtnHeight).setLogBtnMargin(0, 0).setLogBtnText(this.loginBtnText, this.loginBtnTextColor, this.loginBtnTextSize, false);
        int i14 = this.loginBtnTopYOffset;
        if (i14 != 0) {
            builder.setLogBtnOffsetY(i14 + iC);
        }
        int i15 = this.loginBtnBottomYOffset;
        if (i15 != 0) {
            builder.setLogBtnOffsetY_B(i15);
        }
        builder.setLogBtnClickListener(new a(this));
        String str = this.activityEnterAnimation;
        builder.setAuthPageActIn(str, str);
        String str2 = this.activityExitAnimation;
        builder.setAuthPageActOut(str2, str2);
        builder.setAuthLayoutResID(h.a(this.context).d("yd_activity_quick_login_cm") == 0 ? R.layout.yd_activity_quick_login_cm : h.a(this.context).d("yd_activity_quick_login_cm"));
        this.cmAuthThemeConfig = builder.build();
        GenAuthnHelper.getInstance(this.context).setAuthThemeConfig(this.cmAuthThemeConfig);
    }

    public String getActivityEnterAnimation() {
        return this.activityEnterAnimation;
    }

    public String getActivityExitAnimation() {
        return this.activityExitAnimation;
    }

    public ActivityLifecycleCallbacks getActivityLifecycleCallbacks() {
        return this.activityLifecycleCallbacks;
    }

    public ActivityResultCallbacks getActivityResultCallbacks() {
        return this.activityResultCallbacks;
    }

    public boolean getBackPressedAvailable() {
        return this.backPressedAvailable;
    }

    public String getBackgroundGif() {
        return this.backgroundGif;
    }

    public Drawable getBackgroundGifDrawable() {
        return this.backgroundGifDrawable;
    }

    public String getBackgroundImage() {
        return this.backgroundImage;
    }

    public Drawable getBackgroundImageDrawable() {
        return this.backgroundImageDrawable;
    }

    public View getBackgroundShadow() {
        return this.backgroundShadow;
    }

    public String getBackgroundVideo() {
        return this.backgroundVideo;
    }

    public String getBackgroundVideoImage() {
        return this.backgroundVideoImage;
    }

    public Drawable getBackgroundVideoImageDrawable() {
        return this.backgroundVideoImageDrawable;
    }

    public int getCheckBoxGravity() {
        return this.checkBoxGravity;
    }

    public Drawable getCheckedImageDrawable() {
        return this.checkedImageDrawable;
    }

    public String getCheckedImageName() {
        return this.checkedImageName;
    }

    public ClickEventListener getClickEventListener() {
        return this.clickEventListener;
    }

    public GenAuthThemeConfig getCmAuthThemeConfig() {
        GenAuthThemeConfig genAuthThemeConfig = this.cmAuthThemeConfig;
        return genAuthThemeConfig == null ? new GenAuthThemeConfig.Builder().build() : genAuthThemeConfig;
    }

    public String getCmProtocolNavTitle() {
        return this.cmProtocolNavTitle;
    }

    public String getCtProtocolNavTitle() {
        return this.ctProtocolNavTitle;
    }

    public String getCuProtocolNavTitle() {
        return this.cuProtocolNavTitle;
    }

    public String getCustomProtocol2NavTitle() {
        return this.customProtocol2NavTitle;
    }

    public String getCustomProtocol3NavTitle() {
        return this.customProtocol3NavTitle;
    }

    public String getCustomProtocolNavTitle() {
        return this.customProtocolNavTitle;
    }

    public ArrayList<LoginUiHelper.a> getCustomViewHolders() {
        return this.customViewHolders;
    }

    public int getDialogHeight() {
        return this.dialogHeight;
    }

    public int getDialogWidth() {
        return this.dialogWidth;
    }

    public int getDialogX() {
        return this.dialogX;
    }

    public int getDialogY() {
        return this.dialogY;
    }

    public ViewGroup getLoadingView() {
        return this.loadingView;
    }

    public boolean getLoadingVisible() {
        return this.loadingVisible;
    }

    public Drawable getLoginBtnBackgroundDrawable() {
        return this.loginBtnBackgroundDrawable;
    }

    public String getLoginBtnBackgroundRes() {
        return this.loginBtnBackgroundRes;
    }

    public int getLoginBtnBottomYOffset() {
        return this.loginBtnBottomYOffset;
    }

    public int getLoginBtnHeight() {
        return this.loginBtnHeight;
    }

    public String getLoginBtnText() {
        return this.loginBtnText;
    }

    public int getLoginBtnTextColor() {
        return this.loginBtnTextColor;
    }

    public int getLoginBtnTextDpSize() {
        return this.loginBtnTextDpSize;
    }

    public int getLoginBtnTextSize() {
        return this.loginBtnTextSize;
    }

    public int getLoginBtnTopYOffset() {
        return this.loginBtnTopYOffset;
    }

    public int getLoginBtnWidth() {
        return this.loginBtnWidth;
    }

    public int getLoginBtnXOffset() {
        return this.loginBtnXOffset;
    }

    public LoginListener getLoginListener() {
        return this.loginListener;
    }

    public int getLogoBottomYOffset() {
        return this.logoBottomYOffset;
    }

    public int getLogoHeight() {
        return this.logoHeight;
    }

    public Drawable getLogoIconDrawable() {
        return this.logoIconDrawable;
    }

    public String getLogoIconName() {
        return this.logoIconName;
    }

    public int getLogoTopYOffset() {
        return this.logoTopYOffset;
    }

    public int getLogoWidth() {
        return this.logoWidth;
    }

    public int getLogoXOffset() {
        return this.logoXOffset;
    }

    public String getMaskNumberBackgroundRes() {
        return this.maskNumberBackgroundRes;
    }

    public int getMaskNumberBottomYOffset() {
        return this.maskNumberBottomYOffset;
    }

    public int getMaskNumberColor() {
        return this.maskNumberColor;
    }

    public int getMaskNumberDpSize() {
        return this.maskNumberDpSize;
    }

    public MaskNumberListener getMaskNumberListener() {
        return this.maskNumberListener;
    }

    public int getMaskNumberSize() {
        return this.maskNumberSize;
    }

    public int getMaskNumberTopYOffset() {
        return this.maskNumberTopYOffset;
    }

    public Typeface getMaskNumberTypeface() {
        return this.maskNumberTf;
    }

    public int getMaskNumberXOffset() {
        return this.maskNumberXOffset;
    }

    public String getNavBackIcon() {
        return this.navBackIcon;
    }

    public Drawable getNavBackIconDrawable() {
        return this.navBackIconDrawable;
    }

    public int getNavBackIconGravity() {
        return this.navBackIconGravity;
    }

    public int getNavBackIconHeight() {
        return this.navBackIconHeight;
    }

    public int getNavBackIconMargin() {
        return this.navBackIconMargin;
    }

    public int getNavBackIconWidth() {
        return this.navBackIconWidth;
    }

    public int getNavBackgroundColor() {
        return this.navBackgroundColor;
    }

    public int getNavHeight() {
        return this.navHeight;
    }

    public String getNavTitle() {
        return this.navTitle;
    }

    public int getNavTitleColor() {
        return this.navTitleColor;
    }

    public int getNavTitleDpSize() {
        return this.navTitleDpSize;
    }

    public Drawable getNavTitleDrawable() {
        return this.navTitleDrawable;
    }

    public int getNavTitleDrawablePadding() {
        return this.navTitleDrawablePadding;
    }

    public int getNavTitleSize() {
        return this.navTitleSize;
    }

    public int getPrivacyBottomYOffset() {
        return this.privacyBottomYOffset;
    }

    public int getPrivacyCheckBoxHeight() {
        return this.privacyCheckBoxHeight;
    }

    public int getPrivacyCheckBoxWidth() {
        return this.privacyCheckBoxWidth;
    }

    public boolean getPrivacyDialogAuto() {
        return this.privacyDialogAuto;
    }

    public String getPrivacyDialogText() {
        return this.privacyDialogText;
    }

    public float getPrivacyDialogTextSize() {
        return this.privacyDialogTextSize;
    }

    public int getPrivacyDpSize() {
        return this.privacyDpSize;
    }

    public float getPrivacyLineSpacingAdd() {
        return this.privacyLineSpacingAdd;
    }

    public float getPrivacyLineSpacingMul() {
        return this.privacyLineSpacingMul;
    }

    public int getPrivacyMarginLeft() {
        return this.privacyMarginLeft;
    }

    public int getPrivacyMarginRight() {
        return this.privacyMarginRight;
    }

    public int getPrivacyProtocolColor() {
        return this.privacyProtocolColor;
    }

    public int getPrivacySize() {
        return this.privacySize;
    }

    public int getPrivacyTextColor() {
        return this.privacyTextColor;
    }

    public String getPrivacyTextEnd() {
        return this.privacyTextEnd;
    }

    public int getPrivacyTextLayoutGravity() {
        return this.privacyTextLayoutGravity;
    }

    public int getPrivacyTextMarginLeft() {
        return this.privacyTextMarginLeft;
    }

    public String getPrivacyTextStart() {
        return this.privacyTextStart;
    }

    public float getPrivacyTextStartSize() {
        return this.privacyTextStartSize;
    }

    public int getPrivacyTopYOffset() {
        return this.privacyTopYOffset;
    }

    public String getProtocol2Link() {
        return this.protocol2Link;
    }

    public String getProtocol2Text() {
        return this.protocol2Text;
    }

    public String getProtocol3Link() {
        return this.protocol3Link;
    }

    public String getProtocol3Text() {
        return this.protocol3Text;
    }

    public String getProtocolBackgroundImage() {
        return this.protocolBackgroundImage;
    }

    public String getProtocolConnect() {
        return this.protocolConnect;
    }

    public String getProtocolLink() {
        return this.protocolLink;
    }

    public String getProtocolNavBackIcon() {
        return this.protocolNavBackIcon;
    }

    public Drawable getProtocolNavBackIconDrawable() {
        return this.protocolNavBackIconDrawable;
    }

    public int getProtocolNavBackIconHeight() {
        return this.protocolNavBackIconHeight;
    }

    public int getProtocolNavBackIconMargin() {
        return this.protocolNavBackIconMargin;
    }

    public int getProtocolNavBackIconWidth() {
        return this.protocolNavBackIconWidth;
    }

    public int getProtocolNavColor() {
        return this.protocolNavColor;
    }

    public int getProtocolNavHeight() {
        return this.protocolNavHeight;
    }

    public String getProtocolNavTitle() {
        return this.protocolNavTitle;
    }

    public int getProtocolNavTitleColor() {
        return this.protocolNavTitleColor;
    }

    public int getProtocolNavTitleDpSize() {
        return this.protocolNavTitleDpSize;
    }

    public int getProtocolNavTitleSize() {
        return this.protocolNavTitleSize;
    }

    public String getProtocolText() {
        return this.protocolText;
    }

    public int getSloganBottomYOffset() {
        return this.sloganBottomYOffset;
    }

    public int getSloganColor() {
        return this.sloganColor;
    }

    public int getSloganDpSize() {
        return this.sloganDpSize;
    }

    public int getSloganSize() {
        return this.sloganSize;
    }

    public int getSloganTopYOffset() {
        return this.sloganTopYOffset;
    }

    public int getSloganXOffset() {
        return this.sloganXOffset;
    }

    public int getStatusBarColor() {
        return this.statusBarColor;
    }

    public String getUnCheckedImageName() {
        return this.unCheckedImageName;
    }

    public Drawable getUnCheckedImageNameDrawable() {
        return this.unCheckedImageNameDrawable;
    }

    public String getUserProtocolConnect() {
        return this.userProtocolConnect;
    }

    public boolean isBottomDialog() {
        return this.isBottomDialog;
    }

    public boolean isDialogMode() {
        return this.isDialogMode;
    }

    public boolean isHideBackIcon() {
        return this.isHideBackIcon;
    }

    public boolean isHideLogo() {
        return this.isHideLogo;
    }

    public boolean isHideNav() {
        return this.isHideNav;
    }

    public boolean isHidePrivacyCheckBox() {
        return this.isHidePrivacyCheckBox;
    }

    public boolean isHidePrivacySmh() {
        return this.isHidePrivacySmh;
    }

    public boolean isLandscape() {
        return this.isLandscape;
    }

    public boolean isNavTitleBold() {
        return this.isNavTitleBold;
    }

    public boolean isPrivacyState() {
        return this.privacyState;
    }

    public boolean isPrivacyTextGravityCenter() {
        return this.isPrivacyTextGravityCenter;
    }

    public boolean isProtocolDialogMode() {
        return this.isProtocolDialogMode;
    }

    public boolean isStatusBarDarkColor() {
        return this.isStatusBarDarkColor;
    }

    private UnifyUiConfig(Builder builder, Context context) {
        this.statusBarColor = builder.f75956a;
        this.isStatusBarDarkColor = builder.f75959b;
        this.navBackIcon = builder.f75962c;
        this.navBackIconDrawable = builder.f75965d;
        this.navBackIconWidth = builder.f75971f;
        this.navBackIconHeight = builder.f75974g;
        this.navBackIconGravity = builder.f75977h;
        this.navBackIconMargin = builder.f75980i;
        this.isHideBackIcon = builder.f75968e;
        this.navBackgroundColor = builder.f75983j;
        this.navTitle = builder.f75986k;
        this.navHeight = builder.f75989l;
        this.navTitleColor = builder.f75992m;
        this.navTitleSize = builder.f75995n;
        this.navTitleDpSize = builder.f75998o;
        this.isHideNav = builder.f76001p;
        this.isNavTitleBold = builder.f76004q;
        this.navTitleDrawable = builder.f76007r;
        this.navTitleDrawablePadding = builder.f76010s;
        this.logoIconName = builder.f76013t;
        this.logoIconDrawable = builder.f76016u;
        this.logoWidth = builder.f76019v;
        this.logoHeight = builder.f76022w;
        this.logoTopYOffset = builder.f76025x;
        this.logoBottomYOffset = builder.f76028y;
        this.logoXOffset = builder.f76031z;
        this.isHideLogo = builder.A;
        this.maskNumberColor = builder.B;
        this.maskNumberSize = builder.C;
        this.maskNumberTf = builder.E;
        this.maskNumberDpSize = builder.D;
        this.maskNumberTopYOffset = builder.F;
        this.maskNumberBottomYOffset = builder.G;
        this.maskNumberXOffset = builder.H;
        this.maskNumberBackgroundRes = builder.I;
        this.sloganSize = builder.J;
        this.sloganDpSize = builder.K;
        this.sloganColor = builder.L;
        this.sloganTopYOffset = builder.M;
        this.sloganBottomYOffset = builder.N;
        this.sloganXOffset = builder.O;
        this.loginBtnText = builder.P;
        this.loginBtnTextSize = builder.Q;
        this.loginBtnTextDpSize = builder.R;
        this.loginBtnTextColor = builder.S;
        this.loginBtnWidth = builder.T;
        this.loginBtnHeight = builder.U;
        this.loginBtnBackgroundRes = builder.V;
        this.loginBtnBackgroundDrawable = builder.W;
        this.loginBtnTopYOffset = builder.X;
        this.loginBtnBottomYOffset = builder.Y;
        this.loginBtnXOffset = builder.Z;
        this.privacyTextColor = builder.f75957a0;
        this.privacyProtocolColor = builder.f75960b0;
        this.privacySize = builder.f75963c0;
        this.privacyDpSize = builder.f75966d0;
        this.privacyTopYOffset = builder.f75969e0;
        this.privacyBottomYOffset = builder.f75972f0;
        this.privacyTextMarginLeft = builder.f75996n0;
        this.privacyMarginLeft = builder.f75975g0;
        this.privacyMarginRight = builder.f75978h0;
        this.privacyState = builder.f75981i0;
        this.isHidePrivacySmh = builder.f75987k0;
        this.isHidePrivacyCheckBox = builder.f75984j0;
        this.isPrivacyTextGravityCenter = builder.f75990l0;
        this.privacyTextLayoutGravity = builder.f75993m0;
        this.checkBoxGravity = builder.f75999o0;
        this.privacyCheckBoxWidth = builder.f76002p0;
        this.privacyCheckBoxHeight = builder.f76005q0;
        this.checkedImageName = builder.f76008r0;
        this.checkedImageDrawable = builder.f76011s0;
        this.unCheckedImageName = builder.f76014t0;
        this.unCheckedImageNameDrawable = builder.f76017u0;
        this.privacyDialogText = builder.f76020v0;
        this.privacyDialogAuto = builder.f76023w0;
        this.privacyDialogTextSize = builder.f76026x0;
        this.privacyTextStart = builder.f76029y0;
        this.privacyLineSpacingAdd = builder.A0;
        this.privacyLineSpacingMul = builder.B0;
        this.privacyTextStartSize = builder.f76032z0;
        this.protocolText = builder.C0;
        this.protocolLink = builder.D0;
        this.protocolConnect = builder.E0;
        this.userProtocolConnect = builder.F0;
        this.protocol2Text = builder.G0;
        this.protocol2Link = builder.H0;
        this.protocol3Text = builder.I0;
        this.protocol3Link = builder.J0;
        this.privacyTextEnd = builder.K0;
        this.customViewHolders = builder.f76027x1;
        this.backgroundImage = builder.f75985j1;
        this.protocolBackgroundImage = builder.f75988k1;
        this.backgroundImageDrawable = builder.f75991l1;
        this.backgroundGif = builder.f75994m1;
        this.backgroundGifDrawable = builder.f75997n1;
        this.backgroundVideo = builder.f76000o1;
        this.backgroundVideoImage = builder.f76003p1;
        this.backgroundVideoImageDrawable = builder.f76006q1;
        this.activityEnterAnimation = builder.f76009r1;
        this.activityExitAnimation = builder.f76012s1;
        this.protocolNavTitle = builder.L0;
        this.cmProtocolNavTitle = builder.M0;
        this.ctProtocolNavTitle = builder.N0;
        this.cuProtocolNavTitle = builder.O0;
        this.customProtocolNavTitle = builder.P0;
        this.customProtocol2NavTitle = builder.Q0;
        this.customProtocol3NavTitle = builder.R0;
        this.protocolNavBackIcon = builder.Y0;
        this.protocolNavBackIconDrawable = builder.Z0;
        this.protocolNavBackIconMargin = builder.f75958a1;
        this.protocolNavColor = builder.f75961b1;
        this.protocolNavHeight = builder.S0;
        this.protocolNavTitleColor = builder.T0;
        this.protocolNavTitleSize = builder.U0;
        this.protocolNavTitleDpSize = builder.V0;
        this.protocolNavBackIconWidth = builder.W0;
        this.protocolNavBackIconHeight = builder.X0;
        this.isDialogMode = builder.f75964c1;
        this.dialogWidth = builder.f75967d1;
        this.dialogHeight = builder.f75970e1;
        this.dialogX = builder.f75973f1;
        this.dialogY = builder.f75976g1;
        this.isBottomDialog = builder.f75979h1;
        this.isProtocolDialogMode = builder.f75982i1;
        this.isLandscape = builder.isLandscape;
        this.context = context;
        this.maskNumberListener = builder.f76015t1;
        this.loginListener = builder.f76018u1;
        this.clickEventListener = builder.f76021v1;
        this.backgroundShadow = builder.f76024w1;
        this.activityLifecycleCallbacks = builder.f76030y1;
        this.activityResultCallbacks = builder.f76033z1;
        this.backPressedAvailable = builder.A1;
        this.loadingVisible = builder.B1;
        this.loadingView = builder.C1;
        try {
            createCmAuthUiBuilder();
        } catch (Exception e10) {
            Logger.e(e10.getMessage());
        }
    }
}

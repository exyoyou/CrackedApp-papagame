package com.beizi.fusion.work.a;

import android.R;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Color;
import android.os.Handler;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.beizi.ad.e;
import com.beizi.ad.internal.c.d;
import com.beizi.ad.internal.e.t;
import com.beizi.ad.lance.ApkBean;
import com.beizi.ad.model.m;
import com.beizi.ad.v2.d.c;
import com.beizi.fusion.bzunified.BeiZiUnifiedAdDownloadAppInfo;
import com.beizi.fusion.bzunified.BeiZiUnifiedAdEventListener;
import com.beizi.fusion.bzunified.BeiZiUnifiedAdResponse;
import com.beizi.fusion.c.b;
import com.beizi.fusion.c.g;
import com.beizi.fusion.c.n;
import com.beizi.fusion.events.EventBean;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.tool.ab;
import com.beizi.fusion.tool.ac;
import com.beizi.fusion.tool.ad;
import com.beizi.fusion.tool.ai;
import com.beizi.fusion.tool.ap;
import com.beizi.fusion.tool.as;
import com.beizi.fusion.tool.au;
import com.beizi.fusion.tool.aw;
import com.beizi.fusion.widget.BeiZiAdContainer;
import com.beizi.fusion.widget.ScrollClickView;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class a extends com.beizi.fusion.work.a {
    private int A;
    private View C;
    private boolean E;
    private boolean F;
    private Boolean G;
    private boolean H;
    private long I;
    private long J;
    private long K;
    private boolean L;
    private boolean M;
    private long N;
    private int O;
    private int P;
    private FrameLayout Q;
    private boolean R;
    private long T;
    private String U;
    private boolean V;
    private boolean W;
    private boolean Y;
    private boolean Z;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private ViewGroup f11005aa;

    /* JADX INFO: renamed from: ab, reason: collision with root package name */
    private FrameLayout f11006ab;

    /* JADX INFO: renamed from: ac, reason: collision with root package name */
    private long f11007ac;

    /* JADX INFO: renamed from: ad, reason: collision with root package name */
    private boolean f11008ad;
    private long ae;
    private BeiZiUnifiedAdResponse af;
    private FrameLayout ag;
    private BeiZiUnifiedAdEventListener aj;
    private ab an;
    private C0250a ao;
    private String aq;
    private String ar;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Context f11011p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private c f11012q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private e f11013r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.ShakeViewBean f11014s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.CoolShakeViewBean f11015t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private ad f11016u;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f11021z;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private String f11017v = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f11018w = false;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f11019x = false;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f11020y = false;
    private int B = 0;
    private String D = null;
    private String[] S = new String[4];
    private String X = "#00000000";
    private boolean ah = false;
    private boolean ai = false;
    private boolean ak = true;
    private ViewTreeObserver.OnScrollChangedListener al = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.beizi.fusion.work.a.a.2
        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public void onScrollChanged() {
            try {
                if (a.this.R && !a.this.L && !a.this.V && System.currentTimeMillis() - a.this.T >= a.this.N && System.currentTimeMillis() - a.this.K >= 50) {
                    a.this.K = System.currentTimeMillis();
                    if (aw.a(a.this.ag, 0.8d)) {
                        int[] iArr = new int[2];
                        if (a.this.ag != null) {
                            a.this.ag.getLocationOnScreen(iArr);
                        }
                        if (iArr[1] > 0 && a.this.P == 0) {
                            a.this.P = iArr[1];
                        }
                        ac.c("BeiZis", "mOnScrollChangedListener mAdSlideScrollDistance:" + a.this.P + ";mAdSlideClickDistance:" + a.this.O + ";screenLocation[1]:" + iArr[1]);
                        if (Math.abs(a.this.P - iArr[1]) < a.this.O) {
                            return;
                        }
                        a aVar = a.this;
                        aVar.a(aVar.S, 0);
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    };
    private ViewTreeObserver.OnScrollChangedListener am = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.beizi.fusion.work.a.a.4
        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public void onScrollChanged() {
            try {
                if (a.this.ag != null && System.currentTimeMillis() - a.this.f11007ac >= 100) {
                    a.this.f11007ac = System.currentTimeMillis();
                    int[] iArr = new int[2];
                    a.this.ag.getLocationOnScreen(iArr);
                    if (iArr[1] < 0) {
                        a.this.ag.getViewTreeObserver().removeOnScrollChangedListener(this);
                        if (a.this.f11006ab == null || a.this.f11005aa == null) {
                            return;
                        }
                        a.this.f11005aa.removeView(a.this.f11006ab);
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    };

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f11009n = "com.beizi.fusion.install.receiver";

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public String f11010o = "com.beizi.fusion.download.receiver";
    private int ap = 0;

    /* JADX INFO: renamed from: com.beizi.fusion.work.a.a$a, reason: collision with other inner class name */
    private class C0250a extends BroadcastReceiver {
        private C0250a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null) {
                return;
            }
            try {
                if (a.this.f11013r == null || TextUtils.isEmpty(a.this.aq)) {
                    return;
                }
                String stringExtra = intent.getStringExtra("pkName");
                if (!TextUtils.isEmpty(stringExtra) && stringExtra.equals(a.this.aq)) {
                    if (a.this.f11010o.equals(intent.getAction())) {
                        a.this.ap = 4;
                        if (a.this.aj != null) {
                            a.this.aj.onADStatusChanged();
                        }
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    public a(Context context, long j10, long j11, AdSpacesBean.BuyerBean buyerBean, AdSpacesBean.ForwardBean forwardBean, com.beizi.fusion.c.e eVar) {
        this.f11011p = context;
        this.ae = j11;
        this.f10982e = buyerBean;
        this.f10981d = eVar;
        this.f10983f = forwardBean;
        this.J = j10;
        this.E = true;
        this.F = true;
        r();
    }

    private void aA() {
        this.af = new BeiZiUnifiedAdResponse() { // from class: com.beizi.fusion.work.a.a.7
            @Override // com.beizi.fusion.bzunified.BeiZiUnifiedAdResponse
            public void bindAdToView(Context context, BeiZiAdContainer beiZiAdContainer, List<View> list) {
                a.this.a(context, beiZiAdContainer, list);
            }

            @Override // com.beizi.fusion.bzunified.BeiZiUnifiedAdResponse
            public String getAdLogoUrl() {
                return a.this.aL();
            }

            @Override // com.beizi.fusion.bzunified.BeiZiUnifiedAdResponse
            public String getAppName() {
                return a.this.aD();
            }

            @Override // com.beizi.fusion.bzunified.BeiZiUnifiedAdResponse
            public int getAppStatus() {
                return a.this.ap;
            }

            @Override // com.beizi.fusion.bzunified.BeiZiUnifiedAdResponse
            public String getDesc() {
                return a.this.aC();
            }

            @Override // com.beizi.fusion.bzunified.BeiZiUnifiedAdResponse
            public BeiZiUnifiedAdDownloadAppInfo getDownloadAppInfo() {
                return a.this.aP();
            }

            @Override // com.beizi.fusion.bzunified.BeiZiUnifiedAdResponse
            public int getECPM() {
                String strI = a.this.i();
                if (strI == null) {
                    return -1;
                }
                try {
                    return Integer.parseInt(strI);
                } catch (Exception unused) {
                    return -1;
                }
            }

            @Override // com.beizi.fusion.bzunified.BeiZiUnifiedAdResponse
            public Map<String, Object> getExtraInfo() {
                return null;
            }

            @Override // com.beizi.fusion.bzunified.BeiZiUnifiedAdResponse
            public String getIconUrl() {
                return a.this.aE();
            }

            @Override // com.beizi.fusion.bzunified.BeiZiUnifiedAdResponse
            public String getRewardTaskAction() {
                return a.this.ar;
            }

            @Override // com.beizi.fusion.bzunified.BeiZiUnifiedAdResponse
            public String getTitle() {
                return a.this.aB();
            }

            @Override // com.beizi.fusion.bzunified.BeiZiUnifiedAdResponse
            public boolean isValid() {
                return a.this.aF();
            }

            @Override // com.beizi.fusion.bzunified.BeiZiUnifiedAdResponse
            public void setNativeADEventListener(BeiZiUnifiedAdEventListener beiZiUnifiedAdEventListener) {
                a.this.a(beiZiUnifiedAdEventListener);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String aB() {
        ArrayList<String> arrayListI;
        String strA = null;
        try {
            e eVar = this.f11013r;
            if (eVar == null) {
                return null;
            }
            strA = eVar.a();
            return (!TextUtils.isEmpty(strA) || (arrayListI = this.f11013r.i()) == null || arrayListI.size() < 1) ? strA : arrayListI.get(0);
        } catch (Exception e10) {
            e10.printStackTrace();
            return strA;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String aC() {
        ArrayList<String> arrayListI;
        String strC = null;
        try {
            e eVar = this.f11013r;
            if (eVar == null || TextUtils.isEmpty(eVar.c())) {
                return null;
            }
            strC = this.f11013r.c();
            return (!TextUtils.isEmpty(strC) || (arrayListI = this.f11013r.i()) == null || arrayListI.size() < 2) ? strC : arrayListI.get(1);
        } catch (Exception e10) {
            e10.printStackTrace();
            return strC;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String aD() {
        e eVar = this.f11013r;
        if (eVar == null) {
            return null;
        }
        return eVar.p();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String aE() {
        e eVar = this.f11013r;
        if (eVar == null || TextUtils.isEmpty(eVar.d())) {
            return null;
        }
        return this.f11013r.d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean aF() {
        c cVar = this.f11012q;
        if (cVar == null) {
            return false;
        }
        return cVar.q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aG() {
        if (this.ah) {
            return;
        }
        this.T = System.currentTimeMillis();
        this.f10987j = com.beizi.fusion.e.a.ADSHOW;
        if (this.H) {
            this.f10979b.setIsCacheAd("1");
            if (this.I > 0) {
                this.f10979b.setCacheTime(String.valueOf(System.currentTimeMillis() - this.I));
            }
            ao();
        }
        if (!this.ah) {
            com.beizi.fusion.c.e eVar = this.f10981d;
            if (eVar != null && eVar.t() != 2) {
                this.f10981d.b(f());
            }
            this.ah = true;
            B();
            C();
            ac();
        }
        BeiZiUnifiedAdEventListener beiZiUnifiedAdEventListener = this.aj;
        if (beiZiUnifiedAdEventListener != null) {
            beiZiUnifiedAdEventListener.onADExposed();
        }
        aQ();
        aS();
        aH();
    }

    private void aH() {
        int iA;
        c cVar = this.f11012q;
        if (cVar == null) {
            return;
        }
        try {
            m mVarP = cVar.p();
            if (mVarP != null && (iA = mVarP.a()) > 0) {
                new Handler().postDelayed(new Runnable() { // from class: com.beizi.fusion.work.a.a.9
                    @Override // java.lang.Runnable
                    public void run() {
                        a.this.aI();
                    }
                }, iA);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aI() {
        FrameLayout frameLayout;
        try {
            if (!this.V && !this.L && this.f11013r != null && (frameLayout = this.ag) != null) {
                int[] iArr = new int[2];
                int width = frameLayout.getWidth();
                int height = this.ag.getHeight();
                this.ag.getLocationOnScreen(iArr);
                int[] iArrA = ai.a(width / 2, height / 2);
                a(new String[]{String.valueOf(iArrA[0]), String.valueOf(iArrA[1]), String.valueOf(iArrA[0] + iArr[0]), String.valueOf(iArrA[1] + iArr[1])}, 0);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aJ() {
        ad adVar;
        AdSpacesBean.BuyerBean buyerBean;
        try {
            if ("1".equals(this.ar) || "2".equals(this.ar)) {
                if (au.a(this.f11011p, this.aq)) {
                    this.ap = 1;
                } else if ("2".equals(this.ar)) {
                    this.ap = 8;
                }
                BeiZiUnifiedAdEventListener beiZiUnifiedAdEventListener = this.aj;
                if (beiZiUnifiedAdEventListener != null) {
                    beiZiUnifiedAdEventListener.onADStatusChanged();
                }
            }
            aT();
            this.L = true;
            this.V = false;
            this.W = false;
            aR();
            if (this.f11019x && (buyerBean = this.f10982e) != null) {
                this.f10979b.setCallBackStrategyUuid(buyerBean.getCallBackStrategyUuid());
                ao();
            }
            E();
            if (!this.f11019x || this.f11020y) {
                com.beizi.fusion.c.e eVar = this.f10981d;
                if (eVar != null && eVar.t() != 2) {
                    this.f10981d.d(f());
                }
                D();
                ad();
                BeiZiUnifiedAdEventListener beiZiUnifiedAdEventListener2 = this.aj;
                if (beiZiUnifiedAdEventListener2 != null) {
                    beiZiUnifiedAdEventListener2.onADClicked();
                }
                if (this.B != 0 && (adVar = this.f11016u) != null && this.C != null) {
                    adVar.c();
                    this.C.setVisibility(8);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aK() {
        try {
            if (this.f11013r == null || this.E) {
                return;
            }
            LinearLayout linearLayout = new LinearLayout(this.f11011p);
            linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 17));
            FrameLayout frameLayoutA = t.a(this.f11011p, this.f11013r.k());
            frameLayoutA.setVisibility(0);
            linearLayout.addView(frameLayoutA, new LinearLayout.LayoutParams(-2, -2, 17.0f));
            View viewB = t.b(this.f11011p, this.f11013r.j());
            viewB.setVisibility(0);
            linearLayout.addView(viewB, new LinearLayout.LayoutParams(-2, -2, 17.0f));
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) viewB.getLayoutParams();
            layoutParams.setMargins(5, 0, 0, 0);
            layoutParams.gravity = 17;
            viewB.setLayoutParams(layoutParams);
            this.ag.addView(linearLayout, new FrameLayout.LayoutParams(-2, -2, 85));
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) linearLayout.getLayoutParams();
            int iA = au.a(this.f11011p, 6.0f);
            layoutParams2.setMargins(0, 0, iA, iA);
            linearLayout.setLayoutParams(layoutParams2);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String aL() {
        if (this.f11012q == null) {
            return null;
        }
        try {
            com.beizi.ad.internal.d.a.C0216a c0216aK = this.f11013r.k();
            if (c0216aK == null) {
                return null;
            }
            return c0216aK.a();
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    private boolean aM() {
        try {
            return System.currentTimeMillis() - au.p(this.f11011p).longValue() < this.f11015t.getUserProtectTime();
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    private boolean aN() {
        AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean = this.f11014s;
        if (shakeViewBean == null) {
            return false;
        }
        return ai.a(shakeViewBean.getRenderRate());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aO() {
        View viewA;
        try {
            e eVar = this.f11013r;
            if (eVar == null || this.F || eVar.m() == null || (viewA = d.a(this.f11011p, this.f11013r)) == null) {
                return;
            }
            viewA.setLayoutParams(new FrameLayout.LayoutParams((this.ag.getLayoutParams().width * 2) / 3, -2));
            this.ag.addView(viewA, new FrameLayout.LayoutParams(-2, -2, 51));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public BeiZiUnifiedAdDownloadAppInfo aP() {
        try {
            ApkBean apkBeanM = this.f11013r.m();
            if (apkBeanM == null || TextUtils.isEmpty(apkBeanM.getApkName()) || TextUtils.isEmpty(apkBeanM.getAppDeveloper()) || TextUtils.isEmpty(apkBeanM.getAppVersion()) || TextUtils.isEmpty(apkBeanM.getAppPrivacyUrl()) || TextUtils.isEmpty(apkBeanM.getAppintro())) {
                return null;
            }
            String appPermissionsUrl = apkBeanM.getAppPermissionsUrl();
            String appPermissionsDesc = apkBeanM.getAppPermissionsDesc();
            if (TextUtils.isEmpty(appPermissionsUrl) && TextUtils.isEmpty(appPermissionsDesc)) {
                return null;
            }
            BeiZiUnifiedAdDownloadAppInfo beiZiUnifiedAdDownloadAppInfo = new BeiZiUnifiedAdDownloadAppInfo();
            beiZiUnifiedAdDownloadAppInfo.setAppName(apkBeanM.getApkName());
            beiZiUnifiedAdDownloadAppInfo.setAppVersion(apkBeanM.getAppVersion());
            beiZiUnifiedAdDownloadAppInfo.setAppDeveloper(apkBeanM.getAppDeveloper());
            String appPermissionsUrl2 = apkBeanM.getAppPermissionsUrl();
            if (TextUtils.isEmpty(appPermissionsUrl2)) {
                String appPermissionsDesc2 = apkBeanM.getAppPermissionsDesc();
                if (!TextUtils.isEmpty(appPermissionsDesc2)) {
                    beiZiUnifiedAdDownloadAppInfo.setAppPermission(appPermissionsDesc2);
                }
            } else {
                beiZiUnifiedAdDownloadAppInfo.setAppPermission(appPermissionsUrl2);
            }
            if (!TextUtils.isEmpty(apkBeanM.getAppPrivacyUrl())) {
                beiZiUnifiedAdDownloadAppInfo.setAppPrivacy(apkBeanM.getAppPrivacyUrl());
            }
            beiZiUnifiedAdDownloadAppInfo.setAppIntro(apkBeanM.getAppintro());
            return beiZiUnifiedAdDownloadAppInfo;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    private void aQ() {
        try {
            if (this.M && this.ag != null && this.f11011p != null) {
                this.Q = new FrameLayout(this.f11011p);
                int width = this.ag.getWidth();
                int height = this.ag.getHeight();
                if (width <= 0) {
                    width = -1;
                }
                if (height <= 0) {
                    height = -1;
                }
                this.Q.setLayoutParams(new FrameLayout.LayoutParams(width, height));
                this.Q.setBackgroundColor(Color.parseColor(this.X));
                this.ag.addView(this.Q);
                this.Q.setOnTouchListener(new View.OnTouchListener() { // from class: com.beizi.fusion.work.a.a.13
                    @Override // android.view.View.OnTouchListener
                    public boolean onTouch(View view, MotionEvent motionEvent) {
                        if (motionEvent.getAction() == 0) {
                            a.this.R = true;
                            a.this.S[0] = motionEvent.getX() + "";
                            a.this.S[1] = motionEvent.getY() + "";
                            a.this.S[2] = motionEvent.getRawX() + "";
                            a.this.S[3] = motionEvent.getRawY() + "";
                        }
                        return false;
                    }
                });
                this.Q.getViewTreeObserver().addOnScrollChangedListener(this.al);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void aR() {
        FrameLayout frameLayout;
        FrameLayout frameLayout2;
        try {
            FrameLayout frameLayout3 = this.Q;
            if (frameLayout3 != null && this.al != null) {
                frameLayout3.getViewTreeObserver().removeOnScrollChangedListener(this.al);
            }
            FrameLayout frameLayout4 = this.ag;
            if (frameLayout4 != null && (frameLayout2 = this.Q) != null) {
                frameLayout4.removeView(frameLayout2);
                this.Q = null;
            }
            FrameLayout frameLayout5 = this.ag;
            if (frameLayout5 != null && this.am != null) {
                frameLayout5.getViewTreeObserver().removeOnScrollChangedListener(this.am);
            }
            ViewGroup viewGroup = this.f11005aa;
            if (viewGroup == null || (frameLayout = this.f11006ab) == null) {
                return;
            }
            viewGroup.removeView(frameLayout);
            this.f11006ab = null;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void aS() {
        AdSpacesBean.BuyerBean buyerBean;
        AdSpacesBean.NativeOptimizeBean nativeOptimize;
        AdSpacesBean.NativeOptimizeClickAreaBean clickArea;
        try {
            if (this.ag != null && this.f11011p != null && (buyerBean = this.f10982e) != null) {
                if ((this.Y || this.Z) && (nativeOptimize = buyerBean.getNativeOptimize()) != null && (clickArea = nativeOptimize.getClickArea()) != null && ai.a(clickArea.getRandomNum())) {
                    int reference = clickArea.getReference();
                    String width = clickArea.getWidth();
                    String height = clickArea.getHeight();
                    String horizontalSpace = clickArea.getHorizontalSpace();
                    String verticalSpace = clickArea.getVerticalSpace();
                    View rootView = this.ag.getRootView();
                    if (rootView == null) {
                        return;
                    }
                    ViewGroup viewGroup = (ViewGroup) rootView.findViewById(R.id.content);
                    this.f11005aa = viewGroup;
                    if (viewGroup == null) {
                        return;
                    }
                    int iM = au.m(this.f11011p);
                    int iN = au.n(this.f11011p);
                    int width2 = this.ag.getWidth();
                    int height2 = this.ag.getHeight();
                    int[] iArr = new int[2];
                    this.ag.getLocationOnScreen(iArr);
                    int i10 = iArr[0];
                    int i11 = iArr[1];
                    int i12 = -1;
                    if (reference == 0) {
                        iM = width2;
                        iN = height2;
                    } else if (reference != 1) {
                        iM = -1;
                        iN = -1;
                    }
                    try {
                        if (!TextUtils.isEmpty(width)) {
                            iM = width.endsWith("%") ? (Integer.parseInt(width.substring(0, width.indexOf("%"))) * iM) / 100 : Integer.parseInt(width);
                        }
                        if (!TextUtils.isEmpty(height)) {
                            iN = height.endsWith("%") ? (Integer.parseInt(height.substring(0, height.indexOf("%"))) * iN) / 100 : Integer.parseInt(height);
                        }
                    } catch (NumberFormatException e10) {
                        e10.printStackTrace();
                    }
                    if (iM < 0) {
                        iM = -1;
                    }
                    if (iN >= 0) {
                        i12 = iN;
                    }
                    this.f11006ab = new FrameLayout(this.f11011p);
                    this.f11006ab.setLayoutParams(new FrameLayout.LayoutParams(iM, i12));
                    int iA = a(horizontalSpace, iM, width2, i10);
                    int iB = b(verticalSpace, i12, height2, i11);
                    int iA2 = au.a(this.f11011p, 25.0f);
                    if (iB > iA2) {
                        iB -= iA2;
                    }
                    this.f11006ab.setX(iA);
                    this.f11006ab.setY(iB);
                    this.f11006ab.setBackgroundColor(Color.parseColor(this.X));
                    this.f11005aa.addView(this.f11006ab);
                    final float[] fArr = new float[4];
                    this.f11006ab.setOnTouchListener(new View.OnTouchListener() { // from class: com.beizi.fusion.work.a.a.3
                        @Override // android.view.View.OnTouchListener
                        public boolean onTouch(View view, MotionEvent motionEvent) {
                            try {
                                if (motionEvent.getAction() == 0) {
                                    fArr[0] = motionEvent.getX();
                                    fArr[1] = motionEvent.getY();
                                    fArr[2] = motionEvent.getRawX();
                                    fArr[3] = motionEvent.getRawY();
                                    if (a.this.Y) {
                                        a aVar = a.this;
                                        FrameLayout frameLayout = aVar.f11006ab;
                                        FrameLayout frameLayout2 = a.this.ag;
                                        float[] fArr2 = fArr;
                                        a.this.a(aVar.a(frameLayout, frameLayout2, fArr2[0], fArr2[1], fArr2[2], fArr2[3]), 0);
                                    }
                                }
                                if (motionEvent.getAction() == 1 && a.this.Z) {
                                    a aVar2 = a.this;
                                    FrameLayout frameLayout3 = aVar2.f11006ab;
                                    FrameLayout frameLayout4 = a.this.ag;
                                    float[] fArr3 = fArr;
                                    a.this.a(aVar2.a(frameLayout3, frameLayout4, fArr3[0], fArr3[1], fArr3[2], fArr3[3]), 0);
                                }
                                return a.this.Y || a.this.Z;
                            } catch (Exception e11) {
                                e11.printStackTrace();
                            }
                        }
                    });
                    this.ag.getViewTreeObserver().addOnScrollChangedListener(this.am);
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void aT() {
        try {
            if (("1".equals(this.ar) || "2".equals(this.ar)) && "1".equals(this.ar) && this.an == null) {
                this.an = ab.a(this.f11011p.getApplicationContext());
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction(this.f11009n);
                intentFilter.addAction(this.f11010o);
                C0250a c0250a = new C0250a();
                this.ao = c0250a;
                this.an.a(c0250a, intentFilter);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void aU() {
        C0250a c0250a;
        try {
            ab abVar = this.an;
            if (abVar != null && (c0250a = this.ao) != null) {
                abVar.a(c0250a);
            }
            this.an = null;
            this.ao = null;
        } catch (Exception unused) {
        }
    }

    private void aV() {
    }

    private void az() {
        if (this.f10981d == null) {
            return;
        }
        Z();
        g gVar = this.f10984g;
        if (gVar == g.SUCCESS) {
            aA();
            this.f10981d.a(f(), this.af);
        } else if (gVar == g.FAIL) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("other worker shown,");
            sb2.append(f());
            sb2.append(" remove");
        }
    }

    @Override // com.beizi.fusion.work.a
    public String aw() {
        c cVar = this.f11012q;
        if (cVar == null) {
            return null;
        }
        return cVar.h();
    }

    @Override // com.beizi.fusion.work.a
    public JSONObject ax() {
        c cVar = this.f11012q;
        if (cVar == null) {
            return null;
        }
        return cVar.m();
    }

    @Override // com.beizi.fusion.work.a
    public boolean ay() {
        c cVar = this.f11012q;
        if (cVar == null) {
            return false;
        }
        return cVar.q();
    }

    @Override // com.beizi.fusion.work.a
    public void e() {
    }

    @Override // com.beizi.fusion.work.a
    public String f() {
        return "BEIZI";
    }

    @Override // com.beizi.fusion.work.a
    public com.beizi.fusion.e.a h() {
        return this.f10987j;
    }

    @Override // com.beizi.fusion.work.a
    public String i() {
        c cVar = this.f11012q;
        if (cVar == null) {
            return null;
        }
        return cVar.a();
    }

    @Override // com.beizi.fusion.work.a
    public AdSpacesBean.BuyerBean j() {
        return this.f10982e;
    }

    @Override // com.beizi.fusion.work.a
    protected void k() {
        v();
        ab();
        AdSpacesBean.BuyerBean.ShakeViewBean shakeView = this.f10982e.getShakeView();
        this.f11014s = shakeView;
        if (shakeView != null) {
            this.f11015t = shakeView.getCoolShakeView();
            this.B = this.f11014s.getClkremove();
            this.D = this.f11014s.getTitle();
        }
        this.f11017v = "cool_" + this.f10986i;
        c cVar = new c(this.f11011p, this.f10986i, new com.beizi.ad.d() { // from class: com.beizi.fusion.work.a.a.1
            @Override // com.beizi.ad.d
            public void a(e eVar) {
                ApkBean apkBeanM;
                ((com.beizi.fusion.work.a) a.this).f10987j = com.beizi.fusion.e.a.ADLOAD;
                a aVar = a.this;
                aVar.G = Boolean.valueOf(aVar.f11012q.l());
                a aVar2 = a.this;
                aVar2.H = aVar2.f11012q.i();
                if (a.this.H) {
                    a aVar3 = a.this;
                    aVar3.I = aVar3.f11012q.j();
                    ((com.beizi.fusion.work.a) a.this).f10979b.setIsCacheAd("1");
                    if (a.this.I > 0) {
                        ((com.beizi.fusion.work.a) a.this).f10979b.setCacheTime(String.valueOf(System.currentTimeMillis() - a.this.I));
                    }
                    a.this.ao();
                }
                if (a.this.f11012q.a() != null) {
                    try {
                        a aVar4 = a.this;
                        aVar4.a(Double.parseDouble(aVar4.f11012q.a()));
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
                a.this.x();
                if (eVar == null) {
                    a.this.d(-991);
                    return;
                }
                eVar.a(1);
                a.this.f11013r = eVar;
                a aVar5 = a.this;
                aVar5.ar = aVar5.f11013r.n();
                if ("1".equals(a.this.ar)) {
                    if (a.this.f11013r != null && (apkBeanM = a.this.f11013r.m()) != null) {
                        a.this.aq = apkBeanM.getPkgName();
                    }
                } else if ("2".equals(a.this.ar) && a.this.f11013r != null) {
                    a aVar6 = a.this;
                    aVar6.aq = aVar6.f11013r.o();
                }
                a.this.b();
            }

            @Override // com.beizi.ad.d
            public void a(int i10) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("showBeiZiNativeUnifiedAd onAdFailed: ");
                sb2.append(i10);
                a.this.a(String.valueOf(i10), i10);
            }
        });
        this.f11012q = cVar;
        cVar.a(true);
        try {
            this.f11012q.a(this.f10979b.m15clone());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        this.f11012q.a((int) this.J);
        this.f11012q.a(this.f10982e);
        if ("S2S".equals(g())) {
            this.f11012q.c(g());
            com.beizi.fusion.c.e eVar = this.f10981d;
            if (eVar != null) {
                String strB = eVar.B();
                if (!TextUtils.isEmpty(strB)) {
                    this.f11012q.b(strB);
                }
            }
        }
        com.beizi.fusion.c.e eVar2 = this.f10981d;
        if (eVar2 != null) {
            this.f11012q.c(eVar2.C());
            this.f11012q.d(this.f10981d.D());
            this.f11012q.b(true);
        }
        this.f11012q.c();
    }

    @Override // com.beizi.fusion.work.a
    public void l() {
        e eVar = this.f11013r;
        if (eVar != null) {
            eVar.g();
        }
        c cVar = this.f11012q;
        if (cVar != null) {
            cVar.f();
        }
        ad adVar = this.f11016u;
        if (adVar != null) {
            adVar.c();
        }
        aR();
        aU();
        aV();
    }

    @Override // com.beizi.fusion.work.a
    public void m() {
        ad adVar;
        try {
            if (!b.a().o() || (adVar = this.f11016u) == null) {
                return;
            }
            adVar.d();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.beizi.fusion.work.a
    public void n() {
        ad adVar;
        try {
            if (!b.a().o() || (adVar = this.f11016u) == null) {
                return;
            }
            adVar.a(false);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.beizi.fusion.work.a
    protected void z() {
        if (!y() || this.f11012q == null) {
            return;
        }
        ag();
    }

    @Override // com.beizi.fusion.work.a
    public void d() {
        if (this.f10981d == null) {
            return;
        }
        this.f10985h = this.f10982e.getAppId();
        this.f10986i = this.f10982e.getSpaceId();
        this.f10980c = this.f10982e.getBuyerSpaceUuId();
        AdSpacesBean.NativeOptimizeBean nativeOptimize = this.f10982e.getNativeOptimize();
        if (nativeOptimize != null) {
            this.U = nativeOptimize.getNativeUuid();
            AdSpacesBean.NativeOptimizeAdSlideBean adSlide = nativeOptimize.getAdSlide();
            if (adSlide != null) {
                this.M = ai.a(adSlide.getRandomNum());
                this.N = adSlide.getNeedTime();
                this.O = adSlide.getDistance();
            }
            this.W = ai.a(nativeOptimize.getCloseClickNum());
            this.Y = ai.a(nativeOptimize.getTouchDownNum());
            this.Z = ai.a(nativeOptimize.getHoldSlideNum());
            this.f11008ad = ai.a(nativeOptimize.getAddClickNum());
        }
        try {
            List<AdSpacesBean.CallBackStrategyBean> callBackStrategy = this.f10982e.getCallBackStrategy();
            if (callBackStrategy != null && callBackStrategy.size() > 0) {
                this.f11019x = true;
                for (int i10 = 0; i10 < callBackStrategy.size(); i10++) {
                    AdSpacesBean.CallBackStrategyBean callBackStrategyBean = callBackStrategy.get(i10);
                    if ("290.300".equalsIgnoreCase(callBackStrategyBean.getEventCode())) {
                        this.f11020y = ai.a(Integer.parseInt(callBackStrategyBean.getRate()));
                        break;
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        com.beizi.fusion.events.b bVar = this.f10978a;
        if (bVar != null) {
            EventBean eventBeanA = bVar.a().a(this.f10980c);
            this.f10979b = eventBeanA;
            if (eventBeanA != null) {
                s();
                t();
                n.a(this.f11011p, this.f10985h);
                u();
            }
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(f());
        sb2.append(":requestAd:");
        sb2.append(this.f10985h);
        sb2.append("====");
        sb2.append(this.f10986i);
        sb2.append("===");
        sb2.append(this.ae);
        long j10 = this.ae;
        if (j10 > 0) {
            this.f10990m.sendEmptyMessageDelayed(1, j10);
            return;
        }
        com.beizi.fusion.c.e eVar = this.f10981d;
        if (eVar == null || eVar.u() >= 1 || this.f10981d.t() == 2) {
            return;
        }
        k();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        if (Y()) {
            az();
        } else {
            P();
        }
    }

    private boolean b(final AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean) {
        long jLongValue = ((Long) as.b(this.f11011p, this.f11017v, 0L)).longValue();
        if (jLongValue != 0) {
            long jCurrentTimeMillis = System.currentTimeMillis() - jLongValue;
            if (jCurrentTimeMillis < this.f11015t.getCoolTime()) {
                new Handler().postDelayed(new Runnable() { // from class: com.beizi.fusion.work.a.a.11
                    @Override // java.lang.Runnable
                    public void run() {
                        a.this.f11016u.a(shakeViewBean);
                    }
                }, this.f11015t.getCoolTime() - jCurrentTimeMillis);
                return true;
            }
            ap.a().a(this.f11017v);
        }
        return false;
    }

    @Override // com.beizi.fusion.work.a
    public void b(Map map) {
        Object obj;
        Object obj2;
        Object obj3;
        try {
            c cVar = this.f11012q;
            if (cVar == null) {
                return;
            }
            cVar.b(map);
            if (map.containsKey("winPrice") && (obj3 = map.get("winPrice")) != null && (obj3 instanceof String)) {
                String str = (String) obj3;
                if (!TextUtils.isEmpty(str)) {
                    this.f10979b.setWinPrice(str);
                }
            }
            if (map.containsKey("adnId") && (obj2 = map.get("adnId")) != null && (obj2 instanceof String)) {
                String str2 = (String) obj2;
                if (!TextUtils.isEmpty(str2)) {
                    this.f10979b.setAdnId(str2);
                }
            }
            if (map.containsKey("lossReason") && (obj = map.get("lossReason")) != null && (obj instanceof String)) {
                String str3 = (String) obj;
                if (!TextUtils.isEmpty(str3)) {
                    this.f10979b.setLossReason(str3);
                }
            }
            ao();
            N();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, BeiZiAdContainer beiZiAdContainer, final List<View> list) {
        try {
            this.ag = beiZiAdContainer;
            if (beiZiAdContainer != null) {
                beiZiAdContainer.post(new Runnable() { // from class: com.beizi.fusion.work.a.a.8
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            if (a.this.ag != null) {
                                a.this.aK();
                                a.this.aO();
                                a aVar = a.this;
                                aVar.f11021z = aVar.ag.getWidth();
                                a aVar2 = a.this;
                                aVar2.A = aVar2.ag.getHeight();
                                a aVar3 = a.this;
                                aVar3.a(aVar3.f11021z, a.this.A, a.this.A);
                            }
                            if (a.this.Y || a.this.Z) {
                                a.this.a((List<View>) list);
                            } else {
                                List list2 = list;
                                if (list2 == null || list2.size() <= 0) {
                                    d.a(a.this.f11013r, a.this.ag, new com.beizi.ad.internal.c.b() { // from class: com.beizi.fusion.work.a.a.8.2
                                        @Override // com.beizi.ad.internal.c.b
                                        public void a() {
                                            a.this.aJ();
                                        }

                                        @Override // com.beizi.ad.internal.c.b
                                        public void b() {
                                        }
                                    });
                                } else {
                                    d.a(a.this.f11013r, a.this.ag, list, new com.beizi.ad.internal.c.b() { // from class: com.beizi.fusion.work.a.a.8.1
                                        @Override // com.beizi.ad.internal.c.b
                                        public void a() {
                                            a.this.aJ();
                                        }

                                        @Override // com.beizi.ad.internal.c.b
                                        public void b() {
                                        }
                                    });
                                }
                            }
                            if (!a.this.ak && ("1".equals(a.this.ar) || "2".equals(a.this.ar))) {
                                if (au.a(a.this.f11011p, a.this.aq)) {
                                    a.this.ap = 1;
                                }
                                if (a.this.aj != null) {
                                    a.this.aj.onADStatusChanged();
                                }
                            }
                            a.this.ak = false;
                            if (a.this.ah || a.this.f11012q == null) {
                                return;
                            }
                            a.this.f11012q.a(a.this.ag, new com.beizi.ad.internal.c.c() { // from class: com.beizi.fusion.work.a.a.8.3
                                @Override // com.beizi.ad.internal.c.c
                                public void a() {
                                    a.this.aG();
                                }
                            });
                        } catch (Throwable th) {
                            th.printStackTrace();
                        }
                    }
                });
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(BeiZiUnifiedAdEventListener beiZiUnifiedAdEventListener) {
        this.aj = beiZiUnifiedAdEventListener;
    }

    private AdSpacesBean.BuyerBean.OrderDataShakeViewBean a(List<AdSpacesBean.BuyerBean.OrderDataShakeViewBean> list, String str) {
        if (list != null && str != null) {
            for (AdSpacesBean.BuyerBean.OrderDataShakeViewBean orderDataShakeViewBean : list) {
                List<String> orderList = orderDataShakeViewBean.getOrderList();
                if (orderList != null && orderList.contains(str)) {
                    return orderDataShakeViewBean;
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final int i10, final int i11, int i12) {
        AdSpacesBean.BuyerBean.ShakeViewBean shakeView;
        try {
            if (!b.a().p() && aN()) {
                if (this.f11016u == null) {
                    this.f11016u = new ad(this.f11011p);
                }
                AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean = this.f11014s;
                if (shakeViewBean == null || this.f11016u == null || shakeViewBean.getPosition() == null) {
                    return;
                }
                String shakeViewUuid = this.f11014s.getShakeViewUuid();
                AdSpacesBean.BuyerBean.OrderDataShakeViewBean orderDataShakeViewBeanA = a(this.f11014s.getOrderData(), this.f11012q.b());
                if (orderDataShakeViewBeanA == null || orderDataShakeViewBeanA.getShakeView() == null) {
                    shakeView = null;
                } else {
                    shakeView = orderDataShakeViewBeanA.getShakeView();
                    if (shakeView != null) {
                        shakeViewUuid = shakeView.getShakeViewUuid();
                    }
                }
                EventBean eventBean = this.f10979b;
                if (eventBean != null) {
                    eventBean.setShakeViewUuid(shakeViewUuid);
                    ao();
                }
                if (i11 <= 0) {
                    i11 = i12;
                }
                this.f11016u.a(this.G);
                View viewA = this.f11016u.a(au.b(this.f11011p, i10), au.b(this.f11011p, i11), this.f11014s.getPosition(), this.D);
                this.C = viewA;
                if (viewA != null) {
                    ViewGroup.LayoutParams layoutParams = viewA.getLayoutParams();
                    if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(marginLayoutParams.width, marginLayoutParams.height);
                        layoutParams2.leftMargin = marginLayoutParams.leftMargin;
                        layoutParams2.topMargin = marginLayoutParams.topMargin;
                        AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean2 = this.f11014s;
                        if (shakeViewBean2 != null && shakeViewBean2.getIsHideAnim() == 0) {
                            this.ag.addView(this.C, layoutParams2);
                        }
                    }
                }
                a(shakeView);
                this.f11016u.a(new ad.a() { // from class: com.beizi.fusion.work.a.a.10
                    @Override // com.beizi.fusion.tool.ad.a
                    public void a() {
                        try {
                            if (!aw.a(a.this.ag) || a.this.V) {
                                return;
                            }
                            a.this.L = true;
                            a.this.V = true;
                            int[] iArr = new int[2];
                            a.this.ag.getLocationOnScreen(iArr);
                            int[] iArrA = ai.a(i10 / 2, i11 / 2);
                            if (a.this.f11013r != null && a.this.ag != null) {
                                a.this.f11013r.a(a.this.ag, String.valueOf(iArrA[0]), String.valueOf(iArrA[1]), String.valueOf(iArrA[0] + iArr[0]), String.valueOf(iArrA[1] + iArr[1]), 2, new com.beizi.ad.internal.c.b() { // from class: com.beizi.fusion.work.a.a.10.1
                                    @Override // com.beizi.ad.internal.c.b
                                    public void a() {
                                        a.this.aJ();
                                    }

                                    @Override // com.beizi.ad.internal.c.b
                                    public void b() {
                                    }
                                });
                            }
                            if (!a.this.f11018w || a.this.f11015t == null) {
                                return;
                            }
                            a.this.f11018w = false;
                            a.this.f11016u.a(a.this.f11015t);
                            as.a(a.this.f11011p, a.this.f11017v, (Object) Long.valueOf(System.currentTimeMillis()));
                            ap.a().a(a.this.f11017v, System.currentTimeMillis());
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    }
                });
                AdSpacesBean.BuyerBean.CoolShakeViewBean coolShakeViewBean = this.f11015t;
                if (coolShakeViewBean != null) {
                    this.f11016u.a(coolShakeViewBean, this.f11017v);
                }
                this.f11016u.a(this.ag);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private int b(String str, int i10, int i11, int i12) {
        int i13;
        int i14;
        try {
            if (TextUtils.isEmpty(str)) {
                return i12;
            }
            if (!"top".equals(str)) {
                if ("center".equals(str)) {
                    if (i10 > i11) {
                        i14 = (i10 - i11) / 2;
                        i12 -= i14;
                    } else {
                        i13 = (i11 - i10) / 2;
                        i12 += i13;
                    }
                } else if (!"bottom".equals(str)) {
                    i12 = 0;
                } else if (i10 > i11) {
                    i14 = i10 - i11;
                    i12 -= i14;
                } else {
                    i13 = i11 - i10;
                    i12 += i13;
                }
            }
            if (i12 < 0) {
                return 0;
            }
            return i12;
        } catch (Exception e10) {
            e10.printStackTrace();
            return i12;
        }
    }

    private void a(AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean) {
        if (shakeViewBean == null) {
            try {
                shakeViewBean = this.f11014s;
            } catch (Exception e10) {
                e10.printStackTrace();
                return;
            }
        }
        int regulatoryAngle = shakeViewBean.getRegulatoryAngle();
        ad adVar = this.f11016u;
        if (adVar != null) {
            adVar.c(regulatoryAngle);
        }
        if (this.f11015t == null) {
            this.f11018w = true;
            this.f11016u.a(shakeViewBean);
        } else if (b(shakeViewBean)) {
            this.f11016u.a(this.f11015t);
        } else if (aM()) {
            this.f11016u.a(this.f11015t);
        } else {
            this.f11018w = true;
            this.f11016u.a(shakeViewBean);
        }
    }

    @Override // com.beizi.fusion.work.a
    public void a(Map map) {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        try {
            c cVar = this.f11012q;
            if (cVar == null) {
                return;
            }
            cVar.a(map);
            if (map.containsKey("winPrice") && (obj4 = map.get("winPrice")) != null && (obj4 instanceof String)) {
                String str = (String) obj4;
                if (!TextUtils.isEmpty(str)) {
                    this.f10979b.setWinPrice(str);
                }
            }
            if (map.containsKey("adnId") && (obj3 = map.get("adnId")) != null && (obj3 instanceof String)) {
                String str2 = (String) obj3;
                if (!TextUtils.isEmpty(str2)) {
                    this.f10979b.setAdnId(str2);
                }
            }
            if (map.containsKey("highestLossPrice") && (obj2 = map.get("highestLossPrice")) != null && (obj2 instanceof String)) {
                String str3 = (String) obj2;
                if (!TextUtils.isEmpty(str3)) {
                    this.f10979b.setHighestLossPrice(str3);
                }
            }
            if (map.containsKey("auctionExt") && (obj = map.get("auctionExt")) != null && (obj instanceof String)) {
                String str4 = (String) obj;
                if (!TextUtils.isEmpty(str4)) {
                    this.f10979b.setSecondPrice(str4);
                }
            }
            ao();
            M();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String[] strArr, int i10) {
        FrameLayout frameLayout;
        try {
            aR();
            if (this.f11013r != null && this.ag != null && !this.V && !this.L) {
                this.L = true;
                this.V = true;
                EventBean eventBean = this.f10979b;
                if (eventBean != null) {
                    eventBean.setNativeRuleUuid(this.U);
                    ao();
                }
                e eVar = this.f11013r;
                if (eVar == null || (frameLayout = this.ag) == null) {
                    return;
                }
                eVar.a(frameLayout, strArr[0], strArr[1], strArr[2], strArr[3], i10, new com.beizi.ad.internal.c.b() { // from class: com.beizi.fusion.work.a.a.12
                    @Override // com.beizi.ad.internal.c.b
                    public void a() {
                        a.this.aJ();
                    }

                    @Override // com.beizi.ad.internal.c.b
                    public void b() {
                    }
                });
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private int a(String str, int i10, int i11, int i12) {
        int i13;
        int i14;
        try {
            if (TextUtils.isEmpty(str)) {
                return i12;
            }
            if (!ScrollClickView.DIR_LEFT.equals(str)) {
                if ("center".equals(str)) {
                    if (i10 > i11) {
                        i14 = (i10 - i11) / 2;
                        i12 -= i14;
                    } else {
                        i13 = (i11 - i10) / 2;
                        i12 += i13;
                    }
                } else if (!ScrollClickView.DIR_RIGHT.equals(str)) {
                    i12 = 0;
                } else if (i10 > i11) {
                    i14 = i10 - i11;
                    i12 -= i14;
                } else {
                    i13 = i11 - i10;
                    i12 += i13;
                }
            }
            if (i12 < 0) {
                return 0;
            }
            return i12;
        } catch (Exception e10) {
            e10.printStackTrace();
            return i12;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String[] a(View view, View view2, float f10, float f11, float f12, float f13) {
        String[] strArr = new String[0];
        try {
            String[] strArr2 = {f10 + "", f11 + "", f12 + "", f13 + ""};
            if (view == null || view2 == null) {
                return strArr2;
            }
            try {
                view.getLocationOnScreen(new int[2]);
                int width = (int) ((((double) f10) * 100.0d) / ((double) view.getWidth()));
                int height = (int) ((((double) f11) * 100.0d) / ((double) view.getHeight()));
                int width2 = view2.getWidth();
                int height2 = view2.getHeight();
                int[] iArr = new int[2];
                view2.getLocationOnScreen(iArr);
                int i10 = (width2 * width) / 100;
                int i11 = (height2 * height) / 100;
                int i12 = iArr[0] + i10;
                int i13 = iArr[1] + i11;
                strArr2[0] = i10 + "";
                strArr2[1] = i11 + "";
                strArr2[2] = i12 + "";
                strArr2[3] = i13 + "";
                return strArr2;
            } catch (Exception e10) {
                try {
                    e10.printStackTrace();
                    return strArr2;
                } catch (Exception e11) {
                    e = e11;
                    strArr = strArr2;
                    e.printStackTrace();
                    return strArr;
                }
            }
        } catch (Exception e12) {
            e = e12;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(List<View> list) {
        FrameLayout frameLayout;
        if (list == null || list.size() == 0) {
            list = new ArrayList<>();
        }
        if (this.f11008ad && (frameLayout = this.ag) != null) {
            list.add(frameLayout);
        }
        if (list.size() == 0) {
            return;
        }
        for (final View view : list) {
            if (view != null) {
                view.setOnTouchListener(new View.OnTouchListener() { // from class: com.beizi.fusion.work.a.a.5

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    String[] f11035a = new String[4];

                    @Override // android.view.View.OnTouchListener
                    public boolean onTouch(View view2, MotionEvent motionEvent) {
                        View view3;
                        ViewParent parent;
                        try {
                            if (motionEvent.getAction() == 0) {
                                if ((a.this.Y || a.this.Z) && (view3 = view) != null && (parent = view3.getParent()) != null) {
                                    parent.requestDisallowInterceptTouchEvent(true);
                                }
                                this.f11035a[0] = motionEvent.getX() + "";
                                this.f11035a[1] = motionEvent.getY() + "";
                                this.f11035a[2] = motionEvent.getRawX() + "";
                                this.f11035a[3] = motionEvent.getRawY() + "";
                                if (a.this.Y) {
                                    a.this.a(this.f11035a);
                                }
                            }
                            if (motionEvent.getAction() == 1 && a.this.Z) {
                                a.this.a(this.f11035a);
                            }
                            return a.this.Y || a.this.Z;
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String[] strArr) {
        FrameLayout frameLayout;
        try {
            aR();
            if (this.f11013r == null || this.ag == null || this.V) {
                return;
            }
            this.L = true;
            this.V = true;
            EventBean eventBean = this.f10979b;
            if (eventBean != null) {
                eventBean.setNativeRuleUuid(this.U);
                ao();
            }
            e eVar = this.f11013r;
            if (eVar == null || (frameLayout = this.ag) == null) {
                return;
            }
            eVar.a(frameLayout, strArr[0], strArr[1], strArr[2], strArr[3], 0, new com.beizi.ad.internal.c.b() { // from class: com.beizi.fusion.work.a.a.6
                @Override // com.beizi.ad.internal.c.b
                public void a() {
                    a.this.aJ();
                }

                @Override // com.beizi.ad.internal.c.b
                public void b() {
                }
            });
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}

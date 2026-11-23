package com.beizi.fusion.work.d;

import android.R;
import android.content.Context;
import android.content.Intent;
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
import com.beizi.ad.internal.activity.DownloadAppInfoActivity;
import com.beizi.ad.internal.c.d;
import com.beizi.ad.internal.e.t;
import com.beizi.ad.lance.ApkBean;
import com.beizi.ad.v2.d.c;
import com.beizi.fusion.c.n;
import com.beizi.fusion.events.EventBean;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.model.UnifiedAdDownloadAppInfo;
import com.beizi.fusion.tool.ac;
import com.beizi.fusion.tool.ad;
import com.beizi.fusion.tool.ai;
import com.beizi.fusion.tool.ap;
import com.beizi.fusion.tool.as;
import com.beizi.fusion.tool.au;
import com.beizi.fusion.tool.aw;
import com.beizi.fusion.widget.ScrollClickView;
import com.bykv.vk.component.ttvideo.player.C;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Random;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class b extends a {
    private String A;
    private boolean B;
    private boolean C;
    private boolean D;
    private int E;
    private int F;
    private int G;
    private View H;
    private String I;
    private boolean J;
    private boolean K;
    private Boolean L;
    private boolean M;
    private long N;
    private long O;
    private long P;
    private boolean Q;
    private boolean R;
    private long S;
    private int T;
    private int U;
    private FrameLayout V;
    private boolean W;
    private String[] X;
    private long Y;
    private String Z;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private boolean f11180aa;

    /* JADX INFO: renamed from: ab, reason: collision with root package name */
    private boolean f11181ab;

    /* JADX INFO: renamed from: ac, reason: collision with root package name */
    private String f11182ac;

    /* JADX INFO: renamed from: ad, reason: collision with root package name */
    private boolean f11183ad;
    private boolean ae;
    private ViewGroup af;
    private FrameLayout ag;
    private long ah;
    private boolean ai;
    private String[] aj;
    private String[] ak;
    private int al;
    private ViewTreeObserver.OnScrollChangedListener am;
    private ViewTreeObserver.OnScrollChangedListener an;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private c f11184v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private e f11185w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.ShakeViewBean f11186x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.CoolShakeViewBean f11187y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private ad f11188z;

    public b(Context context, long j10, long j11, AdSpacesBean.BuyerBean buyerBean, AdSpacesBean.ForwardBean forwardBean, com.beizi.fusion.c.e eVar, int i10, boolean z10, boolean z11) {
        super(context, j11, buyerBean, forwardBean, eVar, i10);
        this.A = null;
        this.B = false;
        this.C = false;
        this.D = false;
        this.G = 0;
        this.I = null;
        this.X = new String[4];
        this.f11182ac = "#00000000";
        this.aj = new String[]{"为您推荐", "精选呈现", "精彩内容更新", "今日推荐"};
        this.ak = new String[]{"点击发现更多精彩", "点击即刻了解详情", "立即探索新发现", "精选内容不容错过"};
        this.al = new Random().nextInt(4);
        this.am = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.beizi.fusion.work.d.b.11
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public void onScrollChanged() {
                try {
                    if (b.this.W && !b.this.Q && !b.this.f11180aa && System.currentTimeMillis() - b.this.Y >= b.this.S && System.currentTimeMillis() - b.this.P >= 50) {
                        b.this.P = System.currentTimeMillis();
                        if (aw.a(((a) b.this).f11176s, 0.8d)) {
                            int[] iArr = new int[2];
                            FrameLayout frameLayout = ((a) b.this).f11176s;
                            if (frameLayout != null) {
                                frameLayout.getLocationOnScreen(iArr);
                            }
                            if (iArr[1] > 0 && b.this.U == 0) {
                                b.this.U = iArr[1];
                            }
                            ac.c("BeiZis", "mOnScrollChangedListener mAdSlideScrollDistance:" + b.this.U + ";mAdSlideClickDistance:" + b.this.T + ";screenLocation[1]:" + iArr[1]);
                            if (Math.abs(b.this.U - iArr[1]) < b.this.T) {
                                return;
                            }
                            b bVar = b.this;
                            bVar.a(bVar.X, 0);
                        }
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        };
        this.an = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.beizi.fusion.work.d.b.2
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public void onScrollChanged() {
                try {
                    if (((a) b.this).f11176s != null && System.currentTimeMillis() - b.this.ah >= 100) {
                        b.this.ah = System.currentTimeMillis();
                        int[] iArr = new int[2];
                        ((a) b.this).f11176s.getLocationOnScreen(iArr);
                        if (iArr[1] < 0) {
                            ((a) b.this).f11176s.getViewTreeObserver().removeOnScrollChangedListener(this);
                            if (b.this.ag == null || b.this.af == null) {
                                return;
                            }
                            b.this.af.removeView(b.this.ag);
                        }
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        };
        this.O = j10;
        this.J = z10;
        this.K = z11;
        AdSpacesBean.NativeOptimizeBean nativeOptimize = this.f10982e.getNativeOptimize();
        if (nativeOptimize != null) {
            this.Z = nativeOptimize.getNativeUuid();
            AdSpacesBean.NativeOptimizeAdSlideBean adSlide = nativeOptimize.getAdSlide();
            if (adSlide != null) {
                this.R = ai.a(adSlide.getRandomNum());
                this.S = adSlide.getNeedTime();
                this.T = adSlide.getDistance();
            }
            this.f11181ab = ai.a(nativeOptimize.getCloseClickNum());
            this.f11183ad = ai.a(nativeOptimize.getTouchDownNum());
            this.ae = ai.a(nativeOptimize.getHoldSlideNum());
            this.ai = ai.a(nativeOptimize.getAddClickNum());
        }
        try {
            List<AdSpacesBean.CallBackStrategyBean> callBackStrategy = this.f10982e.getCallBackStrategy();
            if (callBackStrategy != null && callBackStrategy.size() > 0) {
                this.C = true;
                for (int i11 = 0; i11 < callBackStrategy.size(); i11++) {
                    AdSpacesBean.CallBackStrategyBean callBackStrategyBean = callBackStrategy.get(i11);
                    if ("290.300".equalsIgnoreCase(callBackStrategyBean.getEventCode())) {
                        this.D = ai.a(Integer.parseInt(callBackStrategyBean.getRate()));
                        break;
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        AdSpacesBean.BuyerBean.ShakeViewBean shakeView = this.f10982e.getShakeView();
        this.f11186x = shakeView;
        if (shakeView != null) {
            this.f11187y = shakeView.getCoolShakeView();
            this.G = this.f11186x.getClkremove();
            this.I = this.f11186x.getTitle();
        }
        this.A = "cool_" + this.f10986i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aO() {
        this.Y = System.currentTimeMillis();
        float fK = au.k(((a) this).f11171n);
        int iA = au.a(((a) this).f11171n, 40.0f);
        this.E = ((a) this).f11176s.getWidth();
        int height = ((a) this).f11176s.getHeight();
        this.F = height;
        if (this.E < fK / 4.0f || height < iA) {
            return;
        }
        this.f10987j = com.beizi.fusion.e.a.ADSHOW;
        if (this.M) {
            this.f10979b.setIsCacheAd("1");
            if (this.N > 0) {
                this.f10979b.setCacheTime(String.valueOf(System.currentTimeMillis() - this.N));
            }
            ao();
        }
        com.beizi.fusion.c.e eVar = this.f10981d;
        if (eVar != null && eVar.t() != 2) {
            this.f10981d.b(f());
        }
        if (!((a) this).f11177t) {
            ((a) this).f11177t = true;
            B();
            C();
            ac();
        }
        aT();
        aV();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aP() {
        ad adVar;
        AdSpacesBean.BuyerBean buyerBean;
        try {
            this.Q = true;
            this.f11180aa = false;
            this.f11181ab = false;
            aU();
            if (this.C && (buyerBean = this.f10982e) != null) {
                this.f10979b.setCallBackStrategyUuid(buyerBean.getCallBackStrategyUuid());
                ao();
            }
            E();
            if (!this.C || this.D) {
                com.beizi.fusion.c.e eVar = this.f10981d;
                if (eVar != null && eVar.t() != 2) {
                    this.f10981d.d(f());
                }
                D();
                ad();
                if (this.G != 0 && (adVar = this.f11188z) != null && this.H != null) {
                    adVar.c();
                    this.H.setVisibility(8);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private boolean aQ() {
        try {
            return System.currentTimeMillis() - au.p(((a) this).f11171n).longValue() < this.f11187y.getUserProtectTime();
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    private boolean aR() {
        AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean = this.f11186x;
        if (shakeViewBean == null) {
            return false;
        }
        return ai.a(shakeViewBean.getRenderRate());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aS() {
        View viewA;
        try {
            e eVar = this.f11185w;
            if (eVar == null || this.K || eVar.m() == null || (viewA = d.a(((a) this).f11171n, this.f11185w)) == null) {
                return;
            }
            viewA.setLayoutParams(new FrameLayout.LayoutParams((((a) this).f11176s.getLayoutParams().width * 2) / 3, -2));
            ((a) this).f11176s.addView(viewA, new FrameLayout.LayoutParams(-2, -2, 51));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void aT() {
        try {
            if (this.R && ((a) this).f11176s != null && ((a) this).f11171n != null) {
                this.V = new FrameLayout(((a) this).f11171n);
                int width = ((a) this).f11176s.getWidth();
                int height = ((a) this).f11176s.getHeight();
                if (width <= 0) {
                    width = -1;
                }
                if (height <= 0) {
                    height = -1;
                }
                this.V.setLayoutParams(new FrameLayout.LayoutParams(width, height));
                this.V.setBackgroundColor(Color.parseColor(this.f11182ac));
                ((a) this).f11176s.addView(this.V);
                this.V.setOnTouchListener(new View.OnTouchListener() { // from class: com.beizi.fusion.work.d.b.10
                    @Override // android.view.View.OnTouchListener
                    public boolean onTouch(View view, MotionEvent motionEvent) {
                        if (motionEvent.getAction() == 0) {
                            b.this.W = true;
                            b.this.X[0] = motionEvent.getX() + "";
                            b.this.X[1] = motionEvent.getY() + "";
                            b.this.X[2] = motionEvent.getRawX() + "";
                            b.this.X[3] = motionEvent.getRawY() + "";
                        }
                        return false;
                    }
                });
                this.V.getViewTreeObserver().addOnScrollChangedListener(this.am);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void aU() {
        FrameLayout frameLayout;
        FrameLayout frameLayout2;
        try {
            FrameLayout frameLayout3 = this.V;
            if (frameLayout3 != null && this.am != null) {
                frameLayout3.getViewTreeObserver().removeOnScrollChangedListener(this.am);
            }
            FrameLayout frameLayout4 = ((a) this).f11176s;
            if (frameLayout4 != null && (frameLayout2 = this.V) != null) {
                frameLayout4.removeView(frameLayout2);
                this.V = null;
            }
            FrameLayout frameLayout5 = ((a) this).f11176s;
            if (frameLayout5 != null && this.an != null) {
                frameLayout5.getViewTreeObserver().removeOnScrollChangedListener(this.an);
            }
            ViewGroup viewGroup = this.af;
            if (viewGroup == null || (frameLayout = this.ag) == null) {
                return;
            }
            viewGroup.removeView(frameLayout);
            this.ag = null;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void aV() {
        AdSpacesBean.BuyerBean buyerBean;
        AdSpacesBean.NativeOptimizeBean nativeOptimize;
        AdSpacesBean.NativeOptimizeClickAreaBean clickArea;
        try {
            if (((a) this).f11176s != null && ((a) this).f11171n != null && (buyerBean = this.f10982e) != null) {
                if ((this.f11183ad || this.ae) && (nativeOptimize = buyerBean.getNativeOptimize()) != null && (clickArea = nativeOptimize.getClickArea()) != null && ai.a(clickArea.getRandomNum())) {
                    int reference = clickArea.getReference();
                    String width = clickArea.getWidth();
                    String height = clickArea.getHeight();
                    String horizontalSpace = clickArea.getHorizontalSpace();
                    String verticalSpace = clickArea.getVerticalSpace();
                    View rootView = ((a) this).f11176s.getRootView();
                    if (rootView == null) {
                        return;
                    }
                    ViewGroup viewGroup = (ViewGroup) rootView.findViewById(R.id.content);
                    this.af = viewGroup;
                    if (viewGroup == null) {
                        return;
                    }
                    int iM = au.m(((a) this).f11171n);
                    int iN = au.n(((a) this).f11171n);
                    int width2 = ((a) this).f11176s.getWidth();
                    int height2 = ((a) this).f11176s.getHeight();
                    int[] iArr = new int[2];
                    ((a) this).f11176s.getLocationOnScreen(iArr);
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
                    this.ag = new FrameLayout(((a) this).f11171n);
                    this.ag.setLayoutParams(new FrameLayout.LayoutParams(iM, i12));
                    int iA = a(horizontalSpace, iM, width2, i10);
                    int iB = b(verticalSpace, i12, height2, i11);
                    int iA2 = au.a(((a) this).f11171n, 25.0f);
                    if (iB > iA2) {
                        iB -= iA2;
                    }
                    this.ag.setX(iA);
                    this.ag.setY(iB);
                    this.ag.setBackgroundColor(Color.parseColor(this.f11182ac));
                    this.af.addView(this.ag);
                    final float[] fArr = new float[4];
                    this.ag.setOnTouchListener(new View.OnTouchListener() { // from class: com.beizi.fusion.work.d.b.12
                        @Override // android.view.View.OnTouchListener
                        public boolean onTouch(View view, MotionEvent motionEvent) {
                            try {
                                if (motionEvent.getAction() == 0) {
                                    fArr[0] = motionEvent.getX();
                                    fArr[1] = motionEvent.getY();
                                    fArr[2] = motionEvent.getRawX();
                                    fArr[3] = motionEvent.getRawY();
                                    if (b.this.f11183ad) {
                                        b bVar = b.this;
                                        FrameLayout frameLayout = bVar.ag;
                                        FrameLayout frameLayout2 = ((a) b.this).f11176s;
                                        float[] fArr2 = fArr;
                                        b.this.a(bVar.a(frameLayout, frameLayout2, fArr2[0], fArr2[1], fArr2[2], fArr2[3]), 0);
                                    }
                                }
                                if (motionEvent.getAction() == 1 && b.this.ae) {
                                    b bVar2 = b.this;
                                    FrameLayout frameLayout3 = bVar2.ag;
                                    FrameLayout frameLayout4 = ((a) b.this).f11176s;
                                    float[] fArr3 = fArr;
                                    b.this.a(bVar2.a(frameLayout3, frameLayout4, fArr3[0], fArr3[1], fArr3[2], fArr3[3]), 0);
                                }
                                return b.this.f11183ad || b.this.ae;
                            } catch (Exception e11) {
                                e11.printStackTrace();
                            }
                        }
                    });
                    ((a) this).f11176s.getViewTreeObserver().addOnScrollChangedListener(this.an);
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.beizi.fusion.work.d.a
    public String aA() {
        ArrayList<String> arrayListI;
        String strA = null;
        try {
            e eVar = this.f11185w;
            if (eVar != null) {
                strA = eVar.a();
                if (TextUtils.isEmpty(strA) && (arrayListI = this.f11185w.i()) != null && arrayListI.size() >= 1) {
                    strA = arrayListI.get(0);
                }
            }
            return TextUtils.isEmpty(strA) ? this.aj[this.al] : strA;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.beizi.fusion.work.d.a
    public String aB() {
        ArrayList<String> arrayListI;
        String strC = null;
        try {
            e eVar = this.f11185w;
            if (eVar != null && !TextUtils.isEmpty(eVar.c())) {
                strC = this.f11185w.c();
                if (TextUtils.isEmpty(strC) && (arrayListI = this.f11185w.i()) != null && arrayListI.size() >= 2) {
                    strC = arrayListI.get(1);
                }
            }
            return TextUtils.isEmpty(strC) ? this.ak[this.al] : strC;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.beizi.fusion.work.d.a
    public String aC() {
        e eVar = this.f11185w;
        if (eVar == null || TextUtils.isEmpty(eVar.d())) {
            return null;
        }
        return this.f11185w.d();
    }

    @Override // com.beizi.fusion.work.d.a
    public String aD() {
        e eVar = this.f11185w;
        if (eVar == null || TextUtils.isEmpty(eVar.b())) {
            return null;
        }
        return this.f11185w.b();
    }

    @Override // com.beizi.fusion.work.d.a
    public List<String> aE() {
        e eVar = this.f11185w;
        if (eVar == null) {
            return null;
        }
        if ((eVar.h() != null) && (this.f11185w.h().size() > 0)) {
            return this.f11185w.h();
        }
        return null;
    }

    @Override // com.beizi.fusion.work.d.a
    public int aF() {
        return 1;
    }

    @Override // com.beizi.fusion.work.d.a
    public String aG() {
        String strE;
        ArrayList<String> arrayListI;
        e eVar = this.f11185w;
        if (eVar != null) {
            strE = eVar.e();
            if (TextUtils.isEmpty(strE) && (arrayListI = this.f11185w.i()) != null && arrayListI.size() >= 3) {
                strE = arrayListI.get(2);
            }
        } else {
            strE = null;
        }
        return TextUtils.isEmpty(strE) ? "查看详情" : strE;
    }

    @Override // com.beizi.fusion.work.d.a
    public boolean aH() {
        return false;
    }

    @Override // com.beizi.fusion.work.d.a
    public ViewGroup aI() {
        return ((a) this).f11176s;
    }

    @Override // com.beizi.fusion.work.d.a
    public void aK() {
        try {
            if (this.f11185w == null || this.J) {
                return;
            }
            LinearLayout linearLayout = new LinearLayout(((a) this).f11171n);
            linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 17));
            FrameLayout frameLayoutA = t.a(((a) this).f11171n, this.f11185w.k());
            frameLayoutA.setVisibility(0);
            linearLayout.addView(frameLayoutA, new LinearLayout.LayoutParams(-2, -2, 17.0f));
            View viewB = t.b(((a) this).f11171n, this.f11185w.j());
            viewB.setVisibility(0);
            linearLayout.addView(viewB, new LinearLayout.LayoutParams(-2, -2, 17.0f));
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) viewB.getLayoutParams();
            layoutParams.setMargins(5, 0, 0, 0);
            layoutParams.gravity = 17;
            viewB.setLayoutParams(layoutParams);
            ((a) this).f11176s.addView(linearLayout, new FrameLayout.LayoutParams(-2, -2, 85));
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) linearLayout.getLayoutParams();
            int iA = au.a(((a) this).f11171n, 6.0f);
            layoutParams2.setMargins(0, 0, iA, iA);
            linearLayout.setLayoutParams(layoutParams2);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.beizi.fusion.work.d.a
    public String aL() {
        if (this.f11184v == null) {
            return null;
        }
        try {
            com.beizi.ad.internal.d.a.C0216a c0216aK = this.f11185w.k();
            if (c0216aK == null) {
                return null;
            }
            return c0216aK.a();
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.beizi.fusion.work.d.a
    public UnifiedAdDownloadAppInfo aM() {
        try {
            ApkBean apkBeanM = this.f11185w.m();
            if (apkBeanM == null) {
                return null;
            }
            UnifiedAdDownloadAppInfo unifiedAdDownloadAppInfo = new UnifiedAdDownloadAppInfo();
            unifiedAdDownloadAppInfo.setAppName(apkBeanM.getApkName());
            unifiedAdDownloadAppInfo.setAppVersion(apkBeanM.getAppVersion());
            unifiedAdDownloadAppInfo.setAppDeveloper(apkBeanM.getAppDeveloper());
            String appPermissionsUrl = apkBeanM.getAppPermissionsUrl();
            if (TextUtils.isEmpty(appPermissionsUrl)) {
                String appPermissionsDesc = apkBeanM.getAppPermissionsDesc();
                if (!TextUtils.isEmpty(appPermissionsDesc)) {
                    unifiedAdDownloadAppInfo.setAppPermission(appPermissionsDesc);
                }
            } else {
                unifiedAdDownloadAppInfo.setAppPermission(appPermissionsUrl);
            }
            if (!TextUtils.isEmpty(apkBeanM.getAppPrivacyUrl())) {
                unifiedAdDownloadAppInfo.setAppPrivacy(apkBeanM.getAppPrivacyUrl());
            }
            unifiedAdDownloadAppInfo.setAppIntro(apkBeanM.getAppintro());
            return unifiedAdDownloadAppInfo;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.beizi.fusion.work.a
    public String aw() {
        c cVar = this.f11184v;
        if (cVar == null) {
            return null;
        }
        return cVar.h();
    }

    @Override // com.beizi.fusion.work.a
    public JSONObject ax() {
        c cVar = this.f11184v;
        if (cVar == null) {
            return null;
        }
        return cVar.m();
    }

    @Override // com.beizi.fusion.work.a
    public boolean ay() {
        c cVar = this.f11184v;
        if (cVar == null) {
            return false;
        }
        return cVar.q();
    }

    @Override // com.beizi.fusion.work.d.a
    public void az() {
        ((a) this).f11176s = new FrameLayout(((a) this).f11171n);
        c cVar = new c(((a) this).f11171n, this.f10986i, new com.beizi.ad.d() { // from class: com.beizi.fusion.work.d.b.1
            @Override // com.beizi.ad.d
            public void a(e eVar) {
                ((com.beizi.fusion.work.a) b.this).f10987j = com.beizi.fusion.e.a.ADLOAD;
                b bVar = b.this;
                bVar.L = Boolean.valueOf(bVar.f11184v.l());
                b bVar2 = b.this;
                bVar2.M = bVar2.f11184v.i();
                if (b.this.M) {
                    b bVar3 = b.this;
                    bVar3.N = bVar3.f11184v.j();
                    ((com.beizi.fusion.work.a) b.this).f10979b.setIsCacheAd("1");
                    if (b.this.N > 0) {
                        ((com.beizi.fusion.work.a) b.this).f10979b.setCacheTime(String.valueOf(System.currentTimeMillis() - b.this.N));
                    }
                    b.this.ao();
                }
                if (b.this.f11184v.a() != null) {
                    try {
                        b bVar4 = b.this;
                        bVar4.a(Double.parseDouble(bVar4.f11184v.a()));
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
                b.this.x();
                if (eVar == null) {
                    b.this.d(-991);
                } else {
                    b.this.f11185w = eVar;
                    b.this.aN();
                }
            }

            @Override // com.beizi.ad.d
            public void a(int i10) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("showBeiZiNativeUnifiedAd onAdFailed: ");
                sb2.append(i10);
                b.this.a(String.valueOf(i10), i10);
            }
        });
        this.f11184v = cVar;
        cVar.a(true);
        try {
            this.f11184v.a(this.f10979b.m15clone());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        this.f11184v.a((int) this.O);
        this.f11184v.a(this.f10982e);
        if ("S2S".equals(g())) {
            this.f11184v.c(g());
            com.beizi.fusion.c.e eVar = this.f10981d;
            if (eVar != null) {
                String strB = eVar.B();
                if (!TextUtils.isEmpty(strB)) {
                    this.f11184v.b(strB);
                }
            }
        }
        com.beizi.fusion.c.e eVar2 = this.f10981d;
        if (eVar2 != null) {
            this.f11184v.c(eVar2.C());
            this.f11184v.d(this.f10981d.D());
        }
        this.f11184v.c();
    }

    @Override // com.beizi.fusion.work.d.a, com.beizi.fusion.work.a
    public String f() {
        return "BEIZI";
    }

    @Override // com.beizi.fusion.work.a
    public String i() {
        c cVar = this.f11184v;
        if (cVar == null) {
            return null;
        }
        return cVar.a();
    }

    @Override // com.beizi.fusion.work.a
    public void l() {
        e eVar = this.f11185w;
        if (eVar != null) {
            eVar.g();
        }
        c cVar = this.f11184v;
        if (cVar != null) {
            cVar.f();
        }
        ad adVar = this.f11188z;
        if (adVar != null) {
            adVar.c();
        }
        aU();
    }

    @Override // com.beizi.fusion.work.a
    public void m() {
        ad adVar;
        try {
            if (!com.beizi.fusion.c.b.a().o() || (adVar = this.f11188z) == null) {
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
            if (!com.beizi.fusion.c.b.a().o() || (adVar = this.f11188z) == null) {
                return;
            }
            adVar.a(false);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.beizi.fusion.work.a
    protected void z() {
        if (!y() || this.f11184v == null) {
            return;
        }
        ag();
    }

    @Override // com.beizi.fusion.work.d.a
    public void b() {
        t();
        n.a(((a) this).f11171n, this.f10985h);
        u();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(f());
        sb2.append(":requestAd:");
        sb2.append(this.f10985h);
        sb2.append("====");
        sb2.append(this.f10986i);
        sb2.append("===");
        sb2.append(((a) this).f11172o);
        long j10 = ((a) this).f11172o;
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

    private boolean b(final AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean) {
        long jLongValue = ((Long) as.b(((a) this).f11171n, this.A, 0L)).longValue();
        if (jLongValue != 0) {
            long jCurrentTimeMillis = System.currentTimeMillis() - jLongValue;
            if (jCurrentTimeMillis < this.f11187y.getCoolTime()) {
                new Handler().postDelayed(new Runnable() { // from class: com.beizi.fusion.work.d.b.7
                    @Override // java.lang.Runnable
                    public void run() {
                        b.this.f11188z.a(shakeViewBean);
                    }
                }, this.f11187y.getCoolTime() - jCurrentTimeMillis);
                return true;
            }
            ap.a().a(this.A);
        }
        return false;
    }

    @Override // com.beizi.fusion.work.d.a
    public void a(final List<View> list) {
        try {
            FrameLayout frameLayout = ((a) this).f11176s;
            if (frameLayout != null) {
                frameLayout.post(new Runnable() { // from class: com.beizi.fusion.work.d.b.5
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            b bVar = b.this;
                            if (((a) bVar).f11176s != null) {
                                bVar.aK();
                                b.this.aS();
                                b bVar2 = b.this;
                                bVar2.E = ((a) bVar2).f11176s.getWidth();
                                b bVar3 = b.this;
                                bVar3.F = ((a) bVar3).f11176s.getHeight();
                                b bVar4 = b.this;
                                bVar4.a(bVar4.E, b.this.F, b.this.F);
                            }
                            if (b.this.f11183ad || b.this.ae) {
                                b.this.b((List<View>) list);
                            } else {
                                List list2 = list;
                                if (list2 == null || list2.size() <= 0) {
                                    d.a(b.this.f11185w, ((a) b.this).f11176s, new com.beizi.ad.internal.c.b() { // from class: com.beizi.fusion.work.d.b.5.2
                                        @Override // com.beizi.ad.internal.c.b
                                        public void a() {
                                            b.this.aP();
                                        }

                                        @Override // com.beizi.ad.internal.c.b
                                        public void b() {
                                        }
                                    });
                                } else {
                                    d.a(b.this.f11185w, ((a) b.this).f11176s, list, new com.beizi.ad.internal.c.b() { // from class: com.beizi.fusion.work.d.b.5.1
                                        @Override // com.beizi.ad.internal.c.b
                                        public void a() {
                                            b.this.aP();
                                        }

                                        @Override // com.beizi.ad.internal.c.b
                                        public void b() {
                                        }
                                    });
                                }
                            }
                            if (b.this.f11184v != null) {
                                b.this.f11184v.a(((a) b.this).f11176s, new com.beizi.ad.internal.c.c() { // from class: com.beizi.fusion.work.d.b.5.3
                                    @Override // com.beizi.ad.internal.c.c
                                    public void a() {
                                        b.this.aO();
                                    }
                                });
                            }
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
            if (!com.beizi.fusion.c.b.a().p() && aR()) {
                if (this.f11188z == null) {
                    this.f11188z = new ad(((a) this).f11171n);
                }
                AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean = this.f11186x;
                if (shakeViewBean == null || this.f11188z == null || shakeViewBean.getPosition() == null) {
                    return;
                }
                String shakeViewUuid = this.f11186x.getShakeViewUuid();
                AdSpacesBean.BuyerBean.OrderDataShakeViewBean orderDataShakeViewBeanA = a(this.f11186x.getOrderData(), this.f11184v.b());
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
                this.f11188z.a(this.L);
                View viewA = this.f11188z.a(au.b(((a) this).f11171n, i10), au.b(((a) this).f11171n, i11), this.f11186x.getPosition(), this.I);
                this.H = viewA;
                if (viewA != null) {
                    ViewGroup.LayoutParams layoutParams = viewA.getLayoutParams();
                    if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(marginLayoutParams.width, marginLayoutParams.height);
                        layoutParams2.leftMargin = marginLayoutParams.leftMargin;
                        layoutParams2.topMargin = marginLayoutParams.topMargin;
                        AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean2 = this.f11186x;
                        if (shakeViewBean2 != null && shakeViewBean2.getIsHideAnim() == 0) {
                            ((a) this).f11176s.addView(this.H, layoutParams2);
                        }
                    }
                }
                a(shakeView);
                this.f11188z.a(new ad.a() { // from class: com.beizi.fusion.work.d.b.6
                    @Override // com.beizi.fusion.tool.ad.a
                    public void a() {
                        try {
                            if (!aw.a(((a) b.this).f11176s) || b.this.f11180aa) {
                                return;
                            }
                            b.this.Q = true;
                            b.this.f11180aa = true;
                            int[] iArr = new int[2];
                            ((a) b.this).f11176s.getLocationOnScreen(iArr);
                            int[] iArrA = ai.a(i10 / 2, i11 / 2);
                            if (b.this.f11185w != null) {
                                b bVar = b.this;
                                if (((a) bVar).f11176s != null) {
                                    bVar.f11185w.a(((a) b.this).f11176s, String.valueOf(iArrA[0]), String.valueOf(iArrA[1]), String.valueOf(iArrA[0] + iArr[0]), String.valueOf(iArrA[1] + iArr[1]), 2, new com.beizi.ad.internal.c.b() { // from class: com.beizi.fusion.work.d.b.6.1
                                        @Override // com.beizi.ad.internal.c.b
                                        public void a() {
                                            b.this.aP();
                                        }

                                        @Override // com.beizi.ad.internal.c.b
                                        public void b() {
                                        }
                                    });
                                }
                            }
                            if (!b.this.B || b.this.f11187y == null) {
                                return;
                            }
                            b.this.B = false;
                            b.this.f11188z.a(b.this.f11187y);
                            b bVar2 = b.this;
                            as.a(((a) bVar2).f11171n, bVar2.A, (Object) Long.valueOf(System.currentTimeMillis()));
                            ap.a().a(b.this.A, System.currentTimeMillis());
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    }
                });
                AdSpacesBean.BuyerBean.CoolShakeViewBean coolShakeViewBean = this.f11187y;
                if (coolShakeViewBean != null) {
                    this.f11188z.a(coolShakeViewBean, this.A);
                }
                this.f11188z.a(((a) this).f11176s);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.beizi.fusion.work.a
    public void b(Map map) {
        Object obj;
        Object obj2;
        Object obj3;
        try {
            c cVar = this.f11184v;
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

    /* JADX INFO: Access modifiers changed from: private */
    public void b(List<View> list) {
        FrameLayout frameLayout;
        if (list == null || list.size() == 0) {
            list = new ArrayList<>();
        }
        if (this.ai && (frameLayout = ((a) this).f11176s) != null) {
            list.add(frameLayout);
        }
        if (list.size() == 0) {
            return;
        }
        for (final View view : list) {
            if (view != null) {
                view.setOnTouchListener(new View.OnTouchListener() { // from class: com.beizi.fusion.work.d.b.3

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    String[] f11195a = new String[4];

                    @Override // android.view.View.OnTouchListener
                    public boolean onTouch(View view2, MotionEvent motionEvent) {
                        View view3;
                        ViewParent parent;
                        try {
                            if (motionEvent.getAction() == 0) {
                                if ((b.this.f11183ad || b.this.ae) && (view3 = view) != null && (parent = view3.getParent()) != null) {
                                    parent.requestDisallowInterceptTouchEvent(true);
                                }
                                this.f11195a[0] = motionEvent.getX() + "";
                                this.f11195a[1] = motionEvent.getY() + "";
                                this.f11195a[2] = motionEvent.getRawX() + "";
                                this.f11195a[3] = motionEvent.getRawY() + "";
                                if (b.this.f11183ad) {
                                    b.this.a(this.f11195a);
                                }
                            }
                            if (motionEvent.getAction() == 1 && b.this.ae) {
                                b.this.a(this.f11195a);
                            }
                            return b.this.f11183ad || b.this.ae;
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    }
                });
            }
        }
    }

    private void a(AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean) {
        if (shakeViewBean == null) {
            try {
                shakeViewBean = this.f11186x;
            } catch (Exception e10) {
                e10.printStackTrace();
                return;
            }
        }
        int regulatoryAngle = shakeViewBean.getRegulatoryAngle();
        ad adVar = this.f11188z;
        if (adVar != null) {
            adVar.c(regulatoryAngle);
        }
        if (this.f11187y == null) {
            this.B = true;
            this.f11188z.a(shakeViewBean);
        } else if (b(shakeViewBean)) {
            this.f11188z.a(this.f11187y);
        } else if (aQ()) {
            this.f11188z.a(this.f11187y);
        } else {
            this.B = true;
            this.f11188z.a(shakeViewBean);
        }
    }

    @Override // com.beizi.fusion.work.a
    public void a(Map map) {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        try {
            c cVar = this.f11184v;
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

    @Override // com.beizi.fusion.work.d.a
    public void a(View view) {
        if (view == null) {
            return;
        }
        view.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.fusion.work.d.b.8
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                ApkBean apkBeanM;
                try {
                    b bVar = b.this;
                    if (((a) bVar).f11171n == null || (apkBeanM = bVar.f11185w.m()) == null) {
                        return;
                    }
                    String apkName = apkBeanM.getApkName();
                    String appPermissionsUrl = apkBeanM.getAppPermissionsUrl();
                    String appPermissionsDesc = apkBeanM.getAppPermissionsDesc();
                    if (TextUtils.isEmpty(appPermissionsUrl)) {
                        appPermissionsUrl = appPermissionsDesc;
                    }
                    String appPrivacyUrl = apkBeanM.getAppPrivacyUrl();
                    String appintro = apkBeanM.getAppintro();
                    Intent intent = new Intent(((a) b.this).f11171n, (Class<?>) DownloadAppInfoActivity.class);
                    intent.putExtra("title_content_key", apkName);
                    intent.putExtra("privacy_content_key", appPrivacyUrl);
                    intent.putExtra("permission_content_key", appPermissionsUrl);
                    intent.putExtra("intro_content_key", appintro);
                    intent.setFlags(C.ENCODING_PCM_MU_LAW);
                    ((a) b.this).f11171n.startActivity(intent);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String[] strArr, int i10) {
        FrameLayout frameLayout;
        try {
            aU();
            if (this.f11185w != null && ((a) this).f11176s != null && !this.f11180aa && !this.Q) {
                this.Q = true;
                this.f11180aa = true;
                EventBean eventBean = this.f10979b;
                if (eventBean != null) {
                    eventBean.setNativeRuleUuid(this.Z);
                    ao();
                }
                e eVar = this.f11185w;
                if (eVar == null || (frameLayout = ((a) this).f11176s) == null) {
                    return;
                }
                eVar.a(frameLayout, strArr[0], strArr[1], strArr[2], strArr[3], i10, new com.beizi.ad.internal.c.b() { // from class: com.beizi.fusion.work.d.b.9
                    @Override // com.beizi.ad.internal.c.b
                    public void a() {
                        b.this.aP();
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
    public void a(String[] strArr) {
        FrameLayout frameLayout;
        try {
            aU();
            if (this.f11185w == null || ((a) this).f11176s == null || this.f11180aa) {
                return;
            }
            this.Q = true;
            this.f11180aa = true;
            EventBean eventBean = this.f10979b;
            if (eventBean != null) {
                eventBean.setNativeRuleUuid(this.Z);
                ao();
            }
            e eVar = this.f11185w;
            if (eVar == null || (frameLayout = ((a) this).f11176s) == null) {
                return;
            }
            eVar.a(frameLayout, strArr[0], strArr[1], strArr[2], strArr[3], 0, new com.beizi.ad.internal.c.b() { // from class: com.beizi.fusion.work.d.b.4
                @Override // com.beizi.ad.internal.c.b
                public void a() {
                    b.this.aP();
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

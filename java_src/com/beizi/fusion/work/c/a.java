package com.beizi.fusion.work.c;

import android.R;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.beizi.ad.e;
import com.beizi.ad.internal.e.h;
import com.beizi.fusion.c.g;
import com.beizi.fusion.c.n;
import com.beizi.fusion.events.EventBean;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.tool.ac;
import com.beizi.fusion.tool.ad;
import com.beizi.fusion.tool.ai;
import com.beizi.fusion.tool.ap;
import com.beizi.fusion.tool.as;
import com.beizi.fusion.tool.au;
import com.beizi.fusion.tool.aw;
import com.beizi.fusion.tool.o;
import com.beizi.fusion.tool.y;
import com.beizi.fusion.widget.ScrollClickView;
import com.beizi.fusion.work.splash.SplashContainer;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class a extends com.beizi.fusion.work.a implements com.beizi.fusion.c.c {
    protected ad A;
    protected AdSpacesBean.BuyerBean.DislikeConfigBean D;
    protected AdSpacesBean.BuyerBean.DislikeConfigBean E;
    protected e K;
    protected com.beizi.ad.v2.d.c L;
    protected View M;
    protected AdSpacesBean.ComplainBean N;
    protected Boolean R;
    protected int S;
    protected int T;
    protected boolean U;
    private boolean V;
    private long W;
    private long X;
    private boolean Y;
    private boolean Z;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private long f11060aa;

    /* JADX INFO: renamed from: ab, reason: collision with root package name */
    private int f11061ab;

    /* JADX INFO: renamed from: ac, reason: collision with root package name */
    private int f11062ac;

    /* JADX INFO: renamed from: ad, reason: collision with root package name */
    private FrameLayout f11063ad;
    private boolean ae;
    private long ag;
    private String ah;
    private boolean ai;
    private boolean ak;
    private boolean al;
    private ViewGroup am;
    private FrameLayout an;
    private long ao;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    protected Context f11064n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected String f11065o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected long f11066p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    protected long f11067q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    protected float f11068r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected float f11069s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    protected ViewGroup f11070t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    protected View f11071u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    protected List<AdSpacesBean.RenderViewBean> f11072v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    protected AdSpacesBean.RenderViewBean f11073w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    protected List<Pair<String, Integer>> f11074x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    protected AdSpacesBean.BuyerBean.ShakeViewBean f11075y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    protected AdSpacesBean.BuyerBean.CoolShakeViewBean f11076z;
    protected String B = null;
    protected boolean C = false;
    protected float F = 0.0f;
    protected float G = 0.0f;
    protected float H = 0.0f;
    protected float I = 0.0f;
    protected String J = null;
    protected String O = null;
    protected boolean P = false;
    protected boolean Q = false;
    private String[] af = new String[4];
    private String aj = "#00000000";
    private ViewTreeObserver.OnScrollChangedListener ap = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.beizi.fusion.work.c.a.3
        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public void onScrollChanged() {
            try {
                if (a.this.ae && !a.this.Y && !a.this.ai && System.currentTimeMillis() - a.this.ag >= a.this.f11060aa && System.currentTimeMillis() - a.this.X >= 50) {
                    a.this.X = System.currentTimeMillis();
                    if (aw.a(a.this.f11071u, 0.8d)) {
                        int[] iArr = new int[2];
                        View view = a.this.f11071u;
                        if (view != null) {
                            view.getLocationOnScreen(iArr);
                        }
                        if (iArr[1] > 0 && a.this.f11062ac == 0) {
                            a.this.f11062ac = iArr[1];
                        }
                        if (Math.abs(a.this.f11062ac - iArr[1]) < a.this.f11061ab) {
                            return;
                        }
                        a aVar = a.this;
                        aVar.a(aVar.af, 0);
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    };
    private ViewTreeObserver.OnScrollChangedListener aq = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.beizi.fusion.work.c.a.5
        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public void onScrollChanged() {
            try {
                if (a.this.f11070t != null && System.currentTimeMillis() - a.this.ao >= 50) {
                    a.this.ao = System.currentTimeMillis();
                    int[] iArr = new int[2];
                    a.this.f11070t.getLocationOnScreen(iArr);
                    if (iArr[1] < 0) {
                        a.this.f11070t.getViewTreeObserver().removeOnScrollChangedListener(this);
                        if (a.this.an == null || a.this.am == null) {
                            return;
                        }
                        a.this.am.removeView(a.this.an);
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    };

    public a(Context context, String str, long j10, long j11, AdSpacesBean.BuyerBean buyerBean, AdSpacesBean.ForwardBean forwardBean, com.beizi.fusion.c.e eVar, float f10, float f11) {
        this.f11064n = context;
        this.f11065o = str;
        this.f11066p = j10;
        this.f11067q = j11;
        this.f10982e = buyerBean;
        this.f10981d = eVar;
        this.f10983f = forwardBean;
        this.f11068r = f10;
        this.f11069s = f11;
        this.f11070t = new SplashContainer(context);
        r();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aF() {
        AdSpacesBean.BuyerBean buyerBean;
        this.Y = true;
        this.ai = false;
        this.U = false;
        aL();
        if (this.P && (buyerBean = this.f10982e) != null) {
            this.f10979b.setCallBackStrategyUuid(buyerBean.getCallBackStrategyUuid());
            ao();
        }
        E();
        if (!this.P || this.Q) {
            com.beizi.fusion.c.e eVar = this.f10981d;
            if (eVar != null && eVar.t() != 2) {
                this.f10981d.d(f());
            }
            D();
            ad();
            com.beizi.ad.v2.d.c cVar = this.L;
            if (cVar != null) {
                cVar.u();
            }
        }
    }

    private boolean aG() {
        try {
            return System.currentTimeMillis() - au.p(this.f11064n).longValue() < this.f11076z.getUserProtectTime();
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    private void aH() {
        AdSpacesBean.BuyerBean.DislikeConfigBean dislikeConfig = this.f10982e.getDislikeConfig();
        this.D = dislikeConfig;
        if (dislikeConfig == null) {
            return;
        }
        String dislikeUuid = dislikeConfig.getDislikeUuid();
        AdSpacesBean.BuyerBean.DislikeConfigBean dislikeConfigBeanB = b(this.D.getOrderData(), this.L.b());
        if (dislikeConfigBeanB != null) {
            this.E = dislikeConfigBeanB;
            dislikeUuid = dislikeConfigBeanB.getDislikeUuid();
        }
        EventBean eventBean = this.f10979b;
        if (eventBean != null) {
            eventBean.setDislikeUuid(dislikeUuid);
            ao();
        }
    }

    private boolean aI() {
        try {
            AdSpacesBean.BuyerBean.DislikeConfigBean dislikeConfigBean = this.E;
            if (dislikeConfigBean != null) {
                return dislikeConfigBean.getIsShowDialog() == 1;
            }
            AdSpacesBean.BuyerBean.DislikeConfigBean dislikeConfigBean2 = this.D;
            return dislikeConfigBean2 != null && dislikeConfigBean2.getIsShowDialog() == 1;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return false;
    }

    private boolean aJ() {
        AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean = this.f11075y;
        if (shakeViewBean == null) {
            return false;
        }
        return ai.a(shakeViewBean.getRenderRate());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aK() {
        try {
            if (this.Z && this.f11070t != null && this.f11064n != null) {
                this.f11063ad = new FrameLayout(this.f11064n);
                int width = this.f11070t.getWidth();
                int height = this.f11070t.getHeight();
                if (width <= 0) {
                    width = -1;
                }
                if (height <= 0) {
                    height = -1;
                }
                this.f11063ad.setLayoutParams(new FrameLayout.LayoutParams(width, height));
                this.f11063ad.setBackgroundColor(Color.parseColor(this.aj));
                this.f11070t.addView(this.f11063ad);
                this.f11063ad.setOnTouchListener(new View.OnTouchListener() { // from class: com.beizi.fusion.work.c.a.2
                    @Override // android.view.View.OnTouchListener
                    public boolean onTouch(View view, MotionEvent motionEvent) {
                        if (motionEvent.getAction() == 0) {
                            a.this.ae = true;
                            a.this.af[0] = motionEvent.getX() + "";
                            a.this.af[1] = motionEvent.getY() + "";
                            a.this.af[2] = motionEvent.getRawX() + "";
                            a.this.af[3] = motionEvent.getRawY() + "";
                        }
                        return false;
                    }
                });
                this.f11063ad.getViewTreeObserver().addOnScrollChangedListener(this.ap);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void aL() {
        FrameLayout frameLayout;
        FrameLayout frameLayout2;
        try {
            FrameLayout frameLayout3 = this.f11063ad;
            if (frameLayout3 != null && this.ap != null) {
                frameLayout3.getViewTreeObserver().removeOnScrollChangedListener(this.ap);
            }
            ViewGroup viewGroup = this.f11070t;
            if (viewGroup != null && (frameLayout2 = this.f11063ad) != null) {
                viewGroup.removeView(frameLayout2);
                this.f11063ad = null;
            }
            ViewGroup viewGroup2 = this.f11070t;
            if (viewGroup2 != null && this.aq != null) {
                viewGroup2.getViewTreeObserver().removeOnScrollChangedListener(this.aq);
            }
            ViewGroup viewGroup3 = this.am;
            if (viewGroup3 == null || (frameLayout = this.an) == null) {
                return;
            }
            viewGroup3.removeView(frameLayout);
            this.an = null;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aM() {
        AdSpacesBean.BuyerBean buyerBean;
        AdSpacesBean.NativeOptimizeBean nativeOptimize;
        AdSpacesBean.NativeOptimizeClickAreaBean clickArea;
        try {
            if (this.f11070t != null && this.f11064n != null && (buyerBean = this.f10982e) != null) {
                if ((this.ak || this.al) && (nativeOptimize = buyerBean.getNativeOptimize()) != null && (clickArea = nativeOptimize.getClickArea()) != null && ai.a(clickArea.getRandomNum())) {
                    int reference = clickArea.getReference();
                    String width = clickArea.getWidth();
                    String height = clickArea.getHeight();
                    String horizontalSpace = clickArea.getHorizontalSpace();
                    String verticalSpace = clickArea.getVerticalSpace();
                    View rootView = this.f11070t.getRootView();
                    if (rootView == null) {
                        return;
                    }
                    ViewGroup viewGroup = (ViewGroup) rootView.findViewById(R.id.content);
                    this.am = viewGroup;
                    if (viewGroup == null) {
                        return;
                    }
                    int iM = au.m(this.f11064n);
                    int iN = au.n(this.f11064n);
                    int width2 = this.f11070t.getWidth();
                    int height2 = this.f11070t.getHeight();
                    int[] iArr = new int[2];
                    this.f11070t.getLocationOnScreen(iArr);
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
                    this.an = new FrameLayout(this.f11064n);
                    this.an.setLayoutParams(new FrameLayout.LayoutParams(iM, i12));
                    int iA = a(horizontalSpace, iM, width2, i10);
                    int iB = b(verticalSpace, i12, height2, i11);
                    int iA2 = au.a(this.f11064n, 25.0f);
                    if (iB > iA2) {
                        iB -= iA2;
                    }
                    this.an.setX(iA);
                    this.an.setY(iB);
                    this.an.setBackgroundColor(Color.parseColor(this.aj));
                    this.am.addView(this.an);
                    final float[] fArr = new float[4];
                    this.an.setOnTouchListener(new View.OnTouchListener() { // from class: com.beizi.fusion.work.c.a.4
                        @Override // android.view.View.OnTouchListener
                        public boolean onTouch(View view, MotionEvent motionEvent) {
                            try {
                                if (motionEvent.getAction() == 0) {
                                    fArr[0] = motionEvent.getX();
                                    fArr[1] = motionEvent.getY();
                                    fArr[2] = motionEvent.getRawX();
                                    fArr[3] = motionEvent.getRawY();
                                    if (a.this.ak) {
                                        a aVar = a.this;
                                        FrameLayout frameLayout = aVar.an;
                                        ViewGroup viewGroup2 = a.this.f11070t;
                                        float[] fArr2 = fArr;
                                        a.this.a(aVar.a(frameLayout, viewGroup2, fArr2[0], fArr2[1], fArr2[2], fArr2[3]), 0);
                                    }
                                }
                                if (motionEvent.getAction() == 1 && a.this.al) {
                                    a aVar2 = a.this;
                                    FrameLayout frameLayout2 = aVar2.an;
                                    ViewGroup viewGroup3 = a.this.f11070t;
                                    float[] fArr3 = fArr;
                                    a.this.a(aVar2.a(frameLayout2, viewGroup3, fArr3[0], fArr3[1], fArr3[2], fArr3[3]), 0);
                                }
                                return a.this.ak || a.this.al;
                            } catch (Exception e11) {
                                e11.printStackTrace();
                            }
                        }
                    });
                    this.f11070t.getViewTreeObserver().addOnScrollChangedListener(this.aq);
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void aN() {
        ViewGroup viewGroup = this.f11070t;
        if (viewGroup == null) {
            return;
        }
        viewGroup.setOnTouchListener(new View.OnTouchListener() { // from class: com.beizi.fusion.work.c.a.6

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            String[] f11097a = new String[4];

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                ViewGroup viewGroup2;
                ViewParent parent;
                try {
                    if (motionEvent.getAction() == 0) {
                        if ((a.this.ak || a.this.al) && (viewGroup2 = a.this.f11070t) != null && (parent = viewGroup2.getParent()) != null) {
                            parent.requestDisallowInterceptTouchEvent(true);
                        }
                        this.f11097a[0] = motionEvent.getX() + "";
                        this.f11097a[1] = motionEvent.getY() + "";
                        this.f11097a[2] = motionEvent.getRawX() + "";
                        this.f11097a[3] = motionEvent.getRawY() + "";
                        if (a.this.ak) {
                            a.this.a(this.f11097a);
                        }
                    }
                    if (motionEvent.getAction() == 1 && a.this.al) {
                        a.this.a(this.f11097a);
                    }
                    return a.this.ak || a.this.al;
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        });
    }

    public void a(e eVar) {
    }

    public void aA() {
        View view;
        try {
            e eVar = this.K;
            if (eVar != null && (view = this.M) != null) {
                if (this.ak || this.al) {
                    aN();
                } else {
                    com.beizi.ad.internal.c.d.a(eVar, view, new com.beizi.ad.internal.c.b() { // from class: com.beizi.fusion.work.c.a.11

                        /* JADX INFO: renamed from: a, reason: collision with root package name */
                        boolean f11080a = false;

                        @Override // com.beizi.ad.internal.c.b
                        public void a() {
                            a.this.aF();
                        }

                        @Override // com.beizi.ad.internal.c.b
                        public void b() {
                        }
                    });
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void aB() {
        View view;
        try {
            com.beizi.ad.v2.d.c cVar = this.L;
            if (cVar != null && (view = this.M) != null) {
                cVar.a(view, new com.beizi.ad.internal.c.c() { // from class: com.beizi.fusion.work.c.a.12
                    @Override // com.beizi.ad.internal.c.c
                    public void a() {
                        a.this.ag = System.currentTimeMillis();
                        ((com.beizi.fusion.work.a) a.this).f10987j = com.beizi.fusion.e.a.ADSHOW;
                        if (a.this.V) {
                            ((com.beizi.fusion.work.a) a.this).f10979b.setIsCacheAd("1");
                            if (a.this.W > 0) {
                                ((com.beizi.fusion.work.a) a.this).f10979b.setCacheTime(String.valueOf(System.currentTimeMillis() - a.this.W));
                            }
                            a.this.ao();
                        }
                        if (((com.beizi.fusion.work.a) a.this).f10981d != null && ((com.beizi.fusion.work.a) a.this).f10981d.t() != 2) {
                            ((com.beizi.fusion.work.a) a.this).f10981d.b(a.this.f());
                        }
                        a.this.B();
                        a.this.C();
                        a.this.ac();
                        a.this.aK();
                        a.this.aM();
                    }
                });
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public boolean aC() {
        AdSpacesBean.BuyerBean.DislikeConfigBean dislikeConfigBean = this.E;
        if (dislikeConfigBean != null) {
            return dislikeConfigBean.getIsHide() == 0;
        }
        AdSpacesBean.BuyerBean.DislikeConfigBean dislikeConfigBean2 = this.D;
        return dislikeConfigBean2 != null && dislikeConfigBean2.getIsHide() == 0;
    }

    public boolean aD() {
        return this.U;
    }

    public void aE() {
        try {
            if (aI()) {
                com.beizi.fusion.widget.dialog.dislike.a.C0247a c0247a = new com.beizi.fusion.widget.dialog.dislike.a.C0247a(this.f11064n);
                c0247a.a(new com.beizi.fusion.widget.dialog.dislike.a.c() { // from class: com.beizi.fusion.work.c.a.15
                    @Override // com.beizi.fusion.widget.dialog.dislike.a.c
                    public void a() {
                        try {
                            if (((com.beizi.fusion.work.a) a.this).f10981d != null && ((com.beizi.fusion.work.a) a.this).f10981d.t() != 2) {
                                ((com.beizi.fusion.work.a) a.this).f10981d.b(a.this.f(), a.this.f11071u);
                            }
                            a.this.F();
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    }
                });
                c0247a.a().show();
            } else {
                com.beizi.fusion.c.e eVar = this.f10981d;
                if (eVar != null && eVar.t() != 2) {
                    this.f10981d.b(f(), this.f11071u);
                }
                F();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.beizi.fusion.work.a
    public String aw() {
        com.beizi.ad.v2.d.c cVar = this.L;
        if (cVar == null) {
            return null;
        }
        return cVar.h();
    }

    @Override // com.beizi.fusion.work.a
    public JSONObject ax() {
        com.beizi.ad.v2.d.c cVar = this.L;
        if (cVar == null) {
            return null;
        }
        return cVar.m();
    }

    @Override // com.beizi.fusion.work.a
    public boolean ay() {
        com.beizi.ad.v2.d.c cVar = this.L;
        if (cVar == null) {
            return false;
        }
        return cVar.q();
    }

    public void az() {
        try {
            if (Y()) {
                com.beizi.fusion.c.e eVar = this.f10981d;
                if (eVar == null) {
                    return;
                }
                Map<String, com.beizi.fusion.work.a> mapS = eVar.s();
                StringBuilder sb2 = new StringBuilder();
                sb2.append(f());
                sb2.append(" NativeAdWorker:");
                sb2.append(mapS.toString());
                Z();
                g gVar = this.f10984g;
                if (gVar == g.SUCCESS) {
                    if (this.f11071u != null) {
                        this.f10981d.a(f(), this.f11071u);
                    } else {
                        this.f10981d.b(10140);
                    }
                } else if (gVar == g.FAIL) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("other worker shown,");
                    sb3.append(f());
                    sb3.append(" remove");
                }
            } else {
                P();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void b() {
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
        com.beizi.ad.v2.d.c cVar = this.L;
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
        this.f11075y = shakeView;
        if (shakeView != null) {
            this.f11076z = shakeView.getCoolShakeView();
        }
        this.B = "cool_" + this.f10986i;
        this.J = "dl_cool_" + this.f10986i;
        if (this.f11068r <= 0.0f) {
            this.f11068r = au.i(this.f11064n);
        }
        if (this.f11069s <= 0.0f) {
            this.f11069s = 0.0f;
        }
        com.beizi.ad.v2.d.c cVar = new com.beizi.ad.v2.d.c(this.f11064n, this.f10986i, new com.beizi.ad.d() { // from class: com.beizi.fusion.work.c.a.1
            @Override // com.beizi.ad.d
            public void a(e eVar) {
                ((com.beizi.fusion.work.a) a.this).f10987j = com.beizi.fusion.e.a.ADLOAD;
                a aVar = a.this;
                aVar.R = Boolean.valueOf(aVar.L.l());
                a aVar2 = a.this;
                aVar2.V = aVar2.L.i();
                if (a.this.V) {
                    a aVar3 = a.this;
                    aVar3.W = aVar3.L.j();
                    ((com.beizi.fusion.work.a) a.this).f10979b.setIsCacheAd("1");
                    if (a.this.W > 0) {
                        ((com.beizi.fusion.work.a) a.this).f10979b.setCacheTime(String.valueOf(System.currentTimeMillis() - a.this.W));
                    }
                    a.this.ao();
                }
                if (a.this.L.a() != null) {
                    try {
                        a aVar4 = a.this;
                        aVar4.a(Double.parseDouble(aVar4.L.a()));
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
                a.this.x();
                if (eVar == null) {
                    a.this.d(-991);
                    return;
                }
                a aVar5 = a.this;
                aVar5.K = eVar;
                aVar5.b();
            }

            @Override // com.beizi.ad.d
            public void a(int i10) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("showBeiZiNativeUnifiedAd onAdFailed: ");
                sb2.append(i10);
                a.this.a(String.valueOf(i10), i10);
            }
        });
        this.L = cVar;
        cVar.a(true);
        try {
            this.L.a(this.f10979b.m15clone());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        this.L.a((int) this.f11066p);
        this.L.a(this.f10982e);
        if ("S2S".equals(g())) {
            this.L.c(g());
            com.beizi.fusion.c.e eVar = this.f10981d;
            if (eVar != null) {
                String strB = eVar.B();
                if (!TextUtils.isEmpty(strB)) {
                    this.L.b(strB);
                }
            }
        }
        com.beizi.fusion.c.e eVar2 = this.f10981d;
        if (eVar2 != null) {
            this.L.c(eVar2.C());
            this.L.d(this.f10981d.D());
        }
        this.L.c();
    }

    @Override // com.beizi.fusion.work.a
    public void l() {
        e eVar = this.K;
        if (eVar != null) {
            eVar.g();
        }
        com.beizi.ad.v2.d.c cVar = this.L;
        if (cVar != null) {
            cVar.f();
        }
        ad adVar = this.A;
        if (adVar != null) {
            adVar.c();
        }
        aL();
    }

    @Override // com.beizi.fusion.work.a
    public void m() {
        ad adVar;
        try {
            if (!com.beizi.fusion.c.b.a().o() || (adVar = this.A) == null) {
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
            if (!com.beizi.fusion.c.b.a().o() || (adVar = this.A) == null) {
                return;
            }
            adVar.a(false);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.beizi.fusion.work.a
    public View o() {
        return this.f11071u;
    }

    @Override // com.beizi.fusion.work.a
    protected void z() {
        if (!y() || this.L == null) {
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
        this.N = this.f10982e.getComplain();
        this.O = "complain_config_" + this.f10986i;
        AdSpacesBean.NativeOptimizeBean nativeOptimize = this.f10982e.getNativeOptimize();
        if (nativeOptimize != null) {
            this.ah = nativeOptimize.getNativeUuid();
            AdSpacesBean.NativeOptimizeAdSlideBean adSlide = nativeOptimize.getAdSlide();
            if (adSlide != null) {
                this.Z = ai.a(adSlide.getRandomNum());
                this.f11060aa = adSlide.getNeedTime();
                this.f11061ab = adSlide.getDistance();
            }
            this.U = ai.a(nativeOptimize.getCloseClickNum());
            this.ak = ai.a(nativeOptimize.getTouchDownNum());
            this.al = ai.a(nativeOptimize.getHoldSlideNum());
        }
        try {
            List<AdSpacesBean.CallBackStrategyBean> callBackStrategy = this.f10982e.getCallBackStrategy();
            if (callBackStrategy != null && callBackStrategy.size() > 0) {
                this.P = true;
                for (int i10 = 0; i10 < callBackStrategy.size(); i10++) {
                    AdSpacesBean.CallBackStrategyBean callBackStrategyBean = callBackStrategy.get(i10);
                    if ("290.300".equalsIgnoreCase(callBackStrategyBean.getEventCode())) {
                        this.Q = ai.a(Integer.parseInt(callBackStrategyBean.getRate()));
                        break;
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        List<AdSpacesBean.RenderViewBean> renderView = this.f10982e.getRenderView();
        this.f11072v = renderView;
        if (renderView != null && renderView.size() > 0) {
            AdSpacesBean.RenderViewBean renderViewBean = this.f11072v.get(0);
            this.f11073w = renderViewBean;
            this.f11074x = o.a(renderViewBean.getDpLinkUrlList());
        }
        com.beizi.fusion.events.b bVar = this.f10978a;
        if (bVar != null) {
            EventBean eventBeanA = bVar.a().a(this.f10980c);
            this.f10979b = eventBeanA;
            if (eventBeanA != null) {
                s();
                t();
                n.a(this.f11064n, this.f10985h);
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
        sb2.append(this.f11067q);
        long j10 = this.f11067q;
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
        long jLongValue = ((Long) as.b(this.f11064n, this.B, 0L)).longValue();
        if (jLongValue != 0) {
            long jCurrentTimeMillis = System.currentTimeMillis() - jLongValue;
            if (jCurrentTimeMillis < this.f11076z.getCoolTime()) {
                new Handler().postDelayed(new Runnable() { // from class: com.beizi.fusion.work.c.a.14
                    @Override // java.lang.Runnable
                    public void run() {
                        a.this.A.a(shakeViewBean);
                    }
                }, this.f11076z.getCoolTime() - jCurrentTimeMillis);
                return true;
            }
            ap.a().a(this.B);
        }
        return false;
    }

    public void a(final TextView textView, final ImageView imageView) {
        ArrayList<String> arrayListI;
        try {
            e eVar = this.K;
            if (eVar == null) {
                return;
            }
            String strE = eVar.e();
            if (TextUtils.isEmpty(strE) && (arrayListI = this.K.i()) != null && arrayListI.size() >= 3) {
                strE = arrayListI.get(2);
            }
            if (TextUtils.isEmpty(strE)) {
                if (textView != null) {
                    textView.setVisibility(8);
                }
                if (imageView != null) {
                    imageView.setVisibility(8);
                    return;
                }
                return;
            }
            if (strE.startsWith("http")) {
                h.a((Context) null).a(strE, new h.a() { // from class: com.beizi.fusion.work.c.a.9
                    @Override // com.beizi.ad.internal.e.h.a
                    public void a() {
                    }

                    @Override // com.beizi.ad.internal.e.h.a
                    public void a(Bitmap bitmap) {
                        try {
                            TextView textView2 = textView;
                            if (textView2 != null) {
                                textView2.setVisibility(8);
                            }
                            ImageView imageView2 = imageView;
                            if (imageView2 != null) {
                                imageView2.setVisibility(0);
                                imageView.setImageBitmap(bitmap);
                            }
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    }
                });
                return;
            }
            if (imageView != null) {
                imageView.setVisibility(8);
            }
            if (textView != null) {
                textView.setVisibility(0);
                textView.setText(strE);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private AdSpacesBean.BuyerBean.DislikeConfigBean b(List<AdSpacesBean.BuyerBean.OrderDataDislikeConfigBean> list, String str) {
        AdSpacesBean.BuyerBean.DislikeConfigBean dislike;
        if (list != null && str != null) {
            for (AdSpacesBean.BuyerBean.OrderDataDislikeConfigBean orderDataDislikeConfigBean : list) {
                List<String> orderList = orderDataDislikeConfigBean.getOrderList();
                if (orderList != null && orderList.contains(str) && (dislike = orderDataDislikeConfigBean.getDislike()) != null) {
                    return dislike;
                }
            }
        }
        return null;
    }

    @Override // com.beizi.fusion.work.a
    public void b(Map map) {
        Object obj;
        Object obj2;
        Object obj3;
        try {
            com.beizi.ad.v2.d.c cVar = this.L;
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

    public void a(final View view) {
        try {
            int iA = au.a(this.f11064n, this.f11068r);
            float f10 = this.f11069s;
            int iA2 = f10 > 0.0f ? au.a(this.f11064n, f10) : -2;
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(iA, iA2);
            ViewGroup viewGroup = this.f11070t;
            if (viewGroup != null) {
                viewGroup.removeAllViews();
                StringBuilder sb2 = new StringBuilder();
                sb2.append("mNativeAd != null ? ");
                boolean z10 = true;
                sb2.append(this.L != null);
                sb2.append(",renderViewBean != null ? ");
                if (this.f11073w == null) {
                    z10 = false;
                }
                sb2.append(z10);
                ac.a("BeiZis", sb2.toString());
                this.f11070t.addView(this.M, layoutParams);
                this.M.measure(0, 0);
                a(this.K, iA, iA2, this.M.getMeasuredHeight());
                aH();
                if (aC()) {
                    a(this.K);
                }
                ViewGroup viewGroup2 = this.f11070t;
                this.f11071u = viewGroup2;
                ad adVar = this.A;
                if (adVar != null) {
                    adVar.a(viewGroup2);
                }
            }
            com.beizi.ad.v2.d.c cVar = this.L;
            if (cVar == null || this.f11073w == null) {
                return;
            }
            cVar.a(this.f11074x);
            this.L.b(this.f11073w.getOptimizePercent());
            ac.a("BeiZis", "percent = " + this.f11073w.getOptimizePercent());
            this.f11070t.post(new Runnable() { // from class: com.beizi.fusion.work.c.a.10
                @Override // java.lang.Runnable
                public void run() {
                    a aVar = a.this;
                    com.beizi.ad.v2.d.c cVar2 = aVar.L;
                    int optimizeSize = aVar.f11073w.getOptimizeSize();
                    View view2 = view;
                    a aVar2 = a.this;
                    cVar2.a(optimizeSize, view2, aVar2.f11070t, aVar2.f11073w.getDirection());
                }
            });
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

    private void a(final e eVar, final int i10, final int i11, int i12) {
        AdSpacesBean.BuyerBean.ShakeViewBean shakeView;
        try {
            if (!com.beizi.fusion.c.b.a().p() && aJ()) {
                if (this.A == null) {
                    this.A = new ad(this.f11064n);
                }
                AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean = this.f11075y;
                if (shakeViewBean == null || this.A == null || shakeViewBean.getPosition() == null) {
                    return;
                }
                String shakeViewUuid = this.f11075y.getShakeViewUuid();
                AdSpacesBean.BuyerBean.OrderDataShakeViewBean orderDataShakeViewBeanA = a(this.f11075y.getOrderData(), this.L.b());
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
                this.A.a(this.R);
                View viewA = this.A.a(au.b(this.f11064n, i10), au.b(this.f11064n, i11), this.f11075y.getPosition());
                if (viewA != null) {
                    ViewGroup.LayoutParams layoutParams = viewA.getLayoutParams();
                    if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(marginLayoutParams.width, marginLayoutParams.height);
                        layoutParams2.leftMargin = marginLayoutParams.leftMargin;
                        layoutParams2.topMargin = marginLayoutParams.topMargin;
                        AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean2 = this.f11075y;
                        if (shakeViewBean2 != null && shakeViewBean2.getIsHideAnim() == 0) {
                            this.f11070t.addView(viewA, layoutParams2);
                        }
                    }
                }
                a(shakeView);
                this.A.a(new ad.a() { // from class: com.beizi.fusion.work.c.a.13
                    @Override // com.beizi.fusion.tool.ad.a
                    public void a() {
                        AdSpacesBean.BuyerBean.CoolShakeViewBean coolShakeViewBean;
                        View view;
                        try {
                            if (!aw.a(a.this.f11071u) || a.this.ai) {
                                return;
                            }
                            a.this.Y = true;
                            a.this.ai = true;
                            int[] iArr = new int[2];
                            a.this.f11071u.getLocationOnScreen(iArr);
                            int[] iArrA = ai.a(i10 / 2, i11 / 2);
                            e eVar2 = eVar;
                            if (eVar2 != null && (view = a.this.f11071u) != null) {
                                eVar2.a(view, String.valueOf(iArrA[0]), String.valueOf(iArrA[1]), String.valueOf(iArrA[0] + iArr[0]), String.valueOf(iArrA[1] + iArr[1]), 2, new com.beizi.ad.internal.c.b() { // from class: com.beizi.fusion.work.c.a.13.1
                                    @Override // com.beizi.ad.internal.c.b
                                    public void a() {
                                        a.this.aF();
                                    }

                                    @Override // com.beizi.ad.internal.c.b
                                    public void b() {
                                    }
                                });
                            }
                            a aVar = a.this;
                            if (!aVar.C || (coolShakeViewBean = aVar.f11076z) == null) {
                                return;
                            }
                            aVar.C = false;
                            aVar.A.a(coolShakeViewBean);
                            a aVar2 = a.this;
                            as.a(aVar2.f11064n, aVar2.B, (Object) Long.valueOf(System.currentTimeMillis()));
                            ap.a().a(a.this.B, System.currentTimeMillis());
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    }
                });
                AdSpacesBean.BuyerBean.CoolShakeViewBean coolShakeViewBean = this.f11076z;
                if (coolShakeViewBean != null) {
                    this.A.a(coolShakeViewBean, this.B);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void a(AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean) {
        if (shakeViewBean == null) {
            shakeViewBean = this.f11075y;
        }
        int regulatoryAngle = shakeViewBean.getRegulatoryAngle();
        ad adVar = this.A;
        if (adVar != null) {
            adVar.c(regulatoryAngle);
        }
        if (this.f11076z == null) {
            this.C = true;
            this.A.a(shakeViewBean);
        } else if (b(shakeViewBean)) {
            this.A.a(this.f11076z);
        } else if (aG()) {
            this.A.a(this.f11076z);
        } else {
            this.C = true;
            this.A.a(shakeViewBean);
        }
    }

    @Override // com.beizi.fusion.work.a
    public void a(Map map) {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        try {
            com.beizi.ad.v2.d.c cVar = this.L;
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

    protected void a(String[] strArr, int i10) {
        View view;
        try {
            aL();
            if (this.K != null && this.f11071u != null && !this.ai && !this.Y) {
                this.Y = true;
                this.ai = true;
                EventBean eventBean = this.f10979b;
                if (eventBean != null) {
                    eventBean.setNativeRuleUuid(this.ah);
                    ao();
                }
                e eVar = this.K;
                if (eVar == null || (view = this.f11071u) == null) {
                    return;
                }
                eVar.a(view, strArr[0], strArr[1], strArr[2], strArr[3], 0, new com.beizi.ad.internal.c.b() { // from class: com.beizi.fusion.work.c.a.16
                    @Override // com.beizi.ad.internal.c.b
                    public void a() {
                        a.this.aF();
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
        View view;
        try {
            aL();
            if (this.K == null || this.f11071u == null || this.ai) {
                return;
            }
            this.Y = true;
            this.ai = true;
            EventBean eventBean = this.f10979b;
            if (eventBean != null) {
                eventBean.setNativeRuleUuid(this.ah);
                ao();
            }
            e eVar = this.K;
            if (eVar == null || (view = this.f11071u) == null) {
                return;
            }
            eVar.a(view, strArr[0], strArr[1], strArr[2], strArr[3], 0, new com.beizi.ad.internal.c.b() { // from class: com.beizi.fusion.work.c.a.7
                @Override // com.beizi.ad.internal.c.b
                public void a() {
                    a.this.aF();
                }

                @Override // com.beizi.ad.internal.c.b
                public void b() {
                }
            });
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    protected void a(int i10, int i11, float f10, final Bitmap bitmap, final ImageView imageView) {
        try {
            float fAbs = Math.abs(((float) ((((double) i10) * 1.0d) / ((double) i11))) - f10);
            if (fAbs > 0.15f) {
                com.beizi.ad.lance.a.c.b().e().execute(new Runnable() { // from class: com.beizi.fusion.work.c.a.8
                    @Override // java.lang.Runnable
                    public void run() {
                        Bitmap bitmap2;
                        try {
                            Context context = a.this.f11064n;
                            if (context == null || (bitmap2 = bitmap) == null) {
                                return;
                            }
                            final BitmapDrawable bitmapDrawable = new BitmapDrawable(y.a(context, bitmap2, 20.0f));
                            if (((com.beizi.fusion.work.a) a.this).f10990m != null) {
                                ((com.beizi.fusion.work.a) a.this).f10990m.post(new Runnable() { // from class: com.beizi.fusion.work.c.a.8.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        ImageView imageView2;
                                        try {
                                            BitmapDrawable bitmapDrawable2 = bitmapDrawable;
                                            if (bitmapDrawable2 == null || (imageView2 = imageView) == null) {
                                                return;
                                            }
                                            imageView2.setBackground(bitmapDrawable2);
                                        } catch (Throwable th) {
                                            th.printStackTrace();
                                        }
                                    }
                                });
                            }
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    }
                });
            } else if (imageView != null) {
                if (fAbs > 0.1d) {
                    imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
                } else {
                    imageView.setScaleType(ImageView.ScaleType.FIT_XY);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}

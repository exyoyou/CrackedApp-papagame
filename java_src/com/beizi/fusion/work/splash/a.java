package com.beizi.fusion.work.splash;

import android.content.Context;
import android.graphics.Color;
import android.os.Handler;
import android.os.Message;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.beizi.ad.model.l;
import com.beizi.ad.model.m;
import com.beizi.ad.model.n;
import com.beizi.fusion.c.e;
import com.beizi.fusion.c.g;
import com.beizi.fusion.e.b;
import com.beizi.fusion.events.EventBean;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.tool.ac;
import com.beizi.fusion.tool.ae;
import com.beizi.fusion.tool.ai;
import com.beizi.fusion.tool.aj;
import com.beizi.fusion.tool.ak;
import com.beizi.fusion.tool.am;
import com.beizi.fusion.tool.an;
import com.beizi.fusion.tool.ao;
import com.beizi.fusion.tool.aq;
import com.beizi.fusion.tool.as;
import com.beizi.fusion.tool.au;
import com.beizi.fusion.tool.f;
import com.beizi.fusion.tool.s;
import com.beizi.fusion.update.ShakeArcView;
import com.beizi.fusion.widget.CircleProgressView;
import com.beizi.fusion.widget.ScrollClickView;
import com.beizi.fusion.widget.SkipView;
import com.googlecode.mp4parser.boxes.mp4.samplegrouping.d;
import com.haima.hmcp.beans.HmInputMappingContent;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class a extends com.beizi.fusion.work.a implements aj.a, am.a, aq.a {
    private View A;
    private List<AdSpacesBean.RenderViewBean> B;
    private long K;
    private long L;
    private boolean M;
    private CircleProgressView N;
    private AdSpacesBean.PositionBean O;
    private AdSpacesBean.PositionBean P;
    private float Q;
    private float R;
    private AdSpacesBean.RenderViewBean S;
    private int T;
    private int U;
    private String V;
    private String W;
    private String X;
    private AdSpacesBean.BuyerBean.CoolShakeViewBean Y;
    private boolean aA;
    private ao aB;
    private an aC;
    private boolean aD;
    private ae aE;

    /* JADX INFO: renamed from: ad, reason: collision with root package name */
    private aq f11292ad;
    private aj ae;
    private am af;
    private AdSpacesBean.BuyerBean.RollViewBean ag;
    private AdSpacesBean.BuyerBean.CoolRollViewBean ah;
    private ak ai;
    private AdSpacesBean.BuyerBean.EulerAngleViewBean aj;
    private s ak;
    private List<AdSpacesBean.ScreenConfigVoBean> al;
    private View am;
    private Boolean an;
    private int aq;
    private int ar;
    private boolean as;
    private int at;
    private boolean au;
    private long av;
    private boolean ax;
    private boolean ay;
    private boolean az;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    AdSpacesBean.BuyerBean.ShakeViewBean f11293n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    AdSpacesBean.BuyerBean.RegionalClickViewBean f11294o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    AdSpacesBean.BuyerBean.ScrollClickBean f11295p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    AdSpacesBean.BuyerBean.ScrollClickBean f11296q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    AdSpacesBean.BuyerBean.ScrollClickBean f11297r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    AdSpacesBean.BuyerBean.FullScreenClickBean f11298s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    View.OnClickListener f11299t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private Context f11300u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private String f11301v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private long f11302w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private com.beizi.ad.v2.g.a f11303x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private ViewGroup f11304y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private ViewGroup f11305z;
    private List<AdSpacesBean.RenderViewBean> C = new ArrayList();
    private List<AdSpacesBean.RenderViewBean> D = new ArrayList();
    private boolean E = false;
    private boolean F = false;
    private boolean G = false;
    private boolean H = false;
    private boolean I = false;
    private long J = 5000;
    private String Z = null;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private boolean f11289aa = false;

    /* JADX INFO: renamed from: ab, reason: collision with root package name */
    private int f11290ab = -1;

    /* JADX INFO: renamed from: ac, reason: collision with root package name */
    private String f11291ac = "full";
    private boolean ao = false;
    private boolean ap = false;
    private int aw = 5;

    public a(Context context, String str, long j10, View view, ViewGroup viewGroup, AdSpacesBean.BuyerBean buyerBean, AdSpacesBean.ForwardBean forwardBean, List<AdSpacesBean.RenderViewBean> list, int i10, int i11, e eVar) {
        this.f11300u = context;
        this.f11301v = str;
        this.f11302w = j10;
        this.f11304y = viewGroup;
        this.f10982e = buyerBean;
        this.f10983f = forwardBean;
        this.f10981d = eVar;
        this.f11305z = new SplashContainer(context);
        this.A = view;
        this.B = list;
        this.aq = i10;
        this.ar = i11;
        r();
    }

    private void aR() {
        try {
            if (this.f11295p != null) {
                this.aC = new an(this.f11300u);
                int width = this.f11305z.getWidth();
                int height = this.f11305z.getHeight();
                if (this.aD) {
                    this.aC.a(this.f11297r, aZ(), this.an.booleanValue(), width, height);
                } else {
                    AdSpacesBean.BuyerBean.ScrollClickBean scrollClickBean = this.f11296q;
                    if (scrollClickBean != null) {
                        this.aC.a(scrollClickBean, aZ(), this.an.booleanValue(), width, height);
                    } else {
                        this.aC.a(this.f11295p, aZ(), this.an.booleanValue(), width, height);
                    }
                }
                View viewA = this.aC.a(this.f11305z);
                ViewGroup.LayoutParams layoutParams = viewA.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(marginLayoutParams.width, layoutParams.height);
                    layoutParams2.topMargin = marginLayoutParams.topMargin;
                    layoutParams2.leftMargin = marginLayoutParams.leftMargin;
                    ViewGroup viewGroup = this.f11304y;
                    if (viewGroup != null) {
                        viewGroup.addView(viewA, layoutParams2);
                    }
                }
                this.aC.a(new an.a() { // from class: com.beizi.fusion.work.splash.a.2
                    @Override // com.beizi.fusion.tool.an.a
                    public void a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
                        try {
                            if (!a.this.aD) {
                                as.a(a.this.f11300u, a.this.Z, (Object) Long.valueOf(System.currentTimeMillis()));
                            }
                            a.this.f11291ac = "scroll";
                            ((com.beizi.fusion.work.a) a.this).f10979b.setClickType(a.this.f11291ac);
                            a.this.ao();
                            ac.a("BeiZis", "enter onScrollSlideCallBack ");
                            a.this.a(str, str2, str3, str4, str5, str6, str7, str8, 1);
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    }
                });
                this.aC.a();
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aS() {
        try {
            AdSpacesBean.BuyerBean.RollViewBean rollView = this.f10982e.getRollView();
            this.ag = rollView;
            if (rollView == null) {
                return;
            }
            AdSpacesBean.BuyerBean.OrderDataRollViewBean orderDataRollViewBeanE = e(rollView.getOrderData(), this.f11303x.b());
            AdSpacesBean.BuyerBean.RollViewBean rollView2 = (orderDataRollViewBeanE == null || orderDataRollViewBeanE.getRollView() == null) ? null : orderDataRollViewBeanE.getRollView();
            if (rollView2 == null) {
                rollView2 = this.ag;
            }
            if (rollView2.getPosition() == null) {
                return;
            }
            EventBean eventBean = this.f10979b;
            if (eventBean != null) {
                eventBean.setRollViewUuid(rollView2.getRollViewUuid());
                ao();
            }
            if (this.ai == null) {
                this.ai = new ak(this.f11300u);
            }
            this.ai.a(this.an);
            this.ai.a(this.f11304y, au.b(this.f11300u, this.f11305z.getWidth()), au.b(this.f11300u, this.f11305z.getHeight()), rollView2);
            AdSpacesBean.BuyerBean.RollViewBean rollViewBean = this.ag;
            if (rollViewBean != null) {
                this.ah = rollViewBean.getCoolRollView();
            }
            a(rollView2);
            this.ai.a();
            final int isClick = rollView2.getIsClick();
            this.ai.a(new ak.a() { // from class: com.beizi.fusion.work.splash.a.3
                @Override // com.beizi.fusion.tool.ak.a
                public void a() {
                    if (a.this.f11289aa && a.this.ah != null) {
                        as.a(a.this.f11300u, a.this.Z, (Object) Long.valueOf(System.currentTimeMillis()));
                    }
                    a.this.f11291ac = d.f33665b;
                    ((com.beizi.fusion.work.a) a.this).f10979b.setClickType(d.f33665b);
                    a.this.ao();
                    ac.a("BeiZis", "enter onRollHappened  ");
                    a.this.a("", "", "", "", "", "", "", "", 5);
                }

                @Override // com.beizi.fusion.tool.ak.a
                public void a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
                    if (isClick == 1) {
                        a.this.f11291ac = "regionalClick";
                        ((com.beizi.fusion.work.a) a.this).f10979b.setClickType("regionalClick");
                        a.this.ao();
                        ac.a("BeiZis", "enter onClickHappened  ");
                        a.this.a(str, str2, str3, str4, str5, str6, str7, str8, 0);
                        a.this.ai.c();
                    }
                }
            });
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aT() {
        try {
            AdSpacesBean.BuyerBean.EulerAngleViewBean eulerAngleRule = this.f10982e.getEulerAngleRule();
            this.aj = eulerAngleRule;
            if (eulerAngleRule == null) {
                return;
            }
            AdSpacesBean.BuyerBean.OrderDataEulerAngleViewBean orderDataEulerAngleViewBeanF = f(eulerAngleRule.getOrderData(), this.f11303x.b());
            AdSpacesBean.BuyerBean.EulerAngleViewBean eulerAngleRule2 = (orderDataEulerAngleViewBeanF == null || orderDataEulerAngleViewBeanF.getEulerAngleRule() == null) ? null : orderDataEulerAngleViewBeanF.getEulerAngleRule();
            if (eulerAngleRule2 != null) {
                EventBean eventBean = this.f10979b;
                if (eventBean != null) {
                    eventBean.setEulerAngleUuid(eulerAngleRule2.getEulerAngleUuid());
                    ao();
                }
            } else {
                EventBean eventBean2 = this.f10979b;
                if (eventBean2 != null) {
                    eventBean2.setEulerAngleUuid(this.aj.getEulerAngleUuid());
                    ao();
                }
            }
            if (this.ak == null) {
                this.ak = new s(this.f11300u, this.f10986i, this.aj, eulerAngleRule2);
            }
            this.ak.a(this.an);
            this.ak.a(this.f11304y, au.b(this.f11300u, this.f11305z.getWidth()), au.b(this.f11300u, this.f11305z.getHeight()));
            this.ak.a(new s.a() { // from class: com.beizi.fusion.work.splash.a.4
                @Override // com.beizi.fusion.tool.s.a
                public void a() {
                    try {
                        a.this.f11291ac = "eulerAngle";
                        ((com.beizi.fusion.work.a) a.this).f10979b.setClickType("eulerAngle");
                        a.this.ao();
                        a.this.a("", "", "", "", "", "", "", "", 2);
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            });
            this.ak.a();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aU() {
        try {
            List<AdSpacesBean.ScreenConfigVoBean> list = this.al;
            if (list != null && list.size() != 0) {
                for (AdSpacesBean.ScreenConfigVoBean screenConfigVoBean : this.al) {
                    float width = this.f11305z.getWidth();
                    float height = this.f11305z.getHeight();
                    if (width == 0.0f) {
                        width = this.Q;
                    }
                    final float f10 = width;
                    final float f11 = height == 0.0f ? this.R : height;
                    String screenW = screenConfigVoBean.getScreenW();
                    String screenH = screenConfigVoBean.getScreenH();
                    String screenX = screenConfigVoBean.getScreenX();
                    String screenY = screenConfigVoBean.getScreenY();
                    int i10 = (TextUtils.isEmpty(screenW) || screenW.equals("0")) ? (int) f10 : screenW.endsWith("%") ? (((int) f10) * Integer.parseInt(screenW.substring(0, screenW.indexOf("%")))) / 100 : au.a(this.f11300u, Integer.parseInt(screenW));
                    int i11 = (TextUtils.isEmpty(screenH) || screenH.equals("0")) ? (int) f11 : screenH.endsWith("%") ? (((int) f11) * Integer.parseInt(screenH.substring(0, screenH.indexOf("%")))) / 100 : au.a(this.f11300u, Integer.parseInt(screenH));
                    int i12 = (TextUtils.isEmpty(screenX) || screenX.equals("0")) ? (int) f10 : screenX.endsWith("%") ? (((int) f10) * Integer.parseInt(screenX.substring(0, screenX.indexOf("%")))) / 100 : au.a(this.f11300u, Integer.parseInt(screenX));
                    int i13 = (TextUtils.isEmpty(screenY) || screenY.equals("0")) ? (int) f11 : screenY.endsWith("%") ? (((int) f11) * Integer.parseInt(screenY.substring(0, screenY.indexOf("%")))) / 100 : au.a(this.f11300u, Integer.parseInt(screenY));
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i10, i11);
                    int i14 = i13 - (i11 / 2);
                    int i15 = i12 - (i10 / 2);
                    if (i14 < 0) {
                        i14 = 0;
                    }
                    if (i15 < 0) {
                        i15 = 0;
                    }
                    layoutParams.topMargin = i14;
                    layoutParams.leftMargin = i15;
                    final ImageView imageView = new ImageView(this.f11300u);
                    imageView.setScaleType(ImageView.ScaleType.FIT_XY);
                    imageView.setVisibility(0);
                    imageView.setLayoutParams(layoutParams);
                    String screenImage = screenConfigVoBean.getScreenImage();
                    if (!TextUtils.isEmpty(screenImage) && screenImage.contains("http")) {
                        f.a(this.f11300u).a(screenImage).a(imageView);
                    }
                    final float[] fArr = new float[1];
                    final float[] fArr2 = new float[1];
                    final float[] fArr3 = new float[1];
                    final float[] fArr4 = new float[1];
                    imageView.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.fusion.work.splash.a.5
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            int i16;
                            int iA;
                            int left;
                            int top;
                            try {
                                float f12 = fArr[0] / imageView.getLayoutParams().width;
                                float f13 = fArr2[0] / imageView.getLayoutParams().height;
                                if (a.this.am != null) {
                                    i16 = a.this.am.getLayoutParams().width;
                                    iA = a.this.am.getLayoutParams().height;
                                    left = a.this.am.getLeft();
                                    top = a.this.am.getTop();
                                } else {
                                    i16 = (int) (((double) f10) * 0.9d);
                                    iA = au.a(a.this.f11300u, 65.0f);
                                    left = (int) ((((double) f10) * 0.1d) / 2.0d);
                                    top = (int) (((double) f11) * 0.8d);
                                }
                                int i17 = (int) (i16 * f12);
                                int i18 = (int) (iA * f13);
                                int i19 = left + i17;
                                int i20 = top + i18;
                                a.this.a(i17 + ".0", i18 + ".0", i19 + ".0", i20 + ".0", i17 + ".0", i18 + ".0", i19 + ".0", i20 + ".0");
                            } catch (Exception e10) {
                                e10.printStackTrace();
                            }
                        }
                    });
                    imageView.setOnTouchListener(new View.OnTouchListener() { // from class: com.beizi.fusion.work.splash.a.6
                        @Override // android.view.View.OnTouchListener
                        public boolean onTouch(View view, MotionEvent motionEvent) {
                            try {
                                if (motionEvent.getAction() == 0) {
                                    fArr[0] = motionEvent.getX();
                                    fArr2[0] = motionEvent.getY();
                                    fArr3[0] = motionEvent.getRawX();
                                    fArr4[0] = motionEvent.getRawY();
                                }
                            } catch (Exception e10) {
                                e10.printStackTrace();
                            }
                            return false;
                        }
                    });
                    this.f11304y.addView(imageView, layoutParams);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private boolean aV() {
        try {
            if (this.f10982e.getInteractionRules() != null && this.f10982e.getInteractionRules().size() > 0) {
                if ("shake".equals(b.a(this.f10982e.getInteractionRules(), ai.b(100))) && !com.beizi.fusion.c.b.a().p() && this.f11293n != null) {
                    return true;
                }
            } else if (!com.beizi.fusion.c.b.a().p() && this.f11293n != null) {
                return true;
            }
            return false;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aW() {
        com.beizi.ad.v2.g.a aVar = this.f11303x;
        if (aVar == null || this.f11304y == null || this.f11305z == null) {
            return;
        }
        try {
            l lVarO = aVar.o();
            if (lVarO != null && lVarO.c() > 0) {
                this.aE = new ae();
                this.aE.a(lVarO.l() == 0 ? this.f11304y : this.f11305z, this.f11305z.getWidth(), this.f11305z.getHeight(), lVarO, new ae.a() { // from class: com.beizi.fusion.work.splash.a.7
                    @Override // com.beizi.fusion.tool.ae.a
                    public void a() {
                    }

                    @Override // com.beizi.fusion.tool.ae.a
                    public void b() {
                        a.this.ba();
                    }
                });
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aX() {
        try {
            ae aeVar = this.aE;
            if (aeVar != null) {
                aeVar.b();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aY() {
        com.beizi.ad.v2.g.a aVar = this.f11303x;
        if (aVar == null) {
            return;
        }
        try {
            m mVarP = aVar.p();
            if (mVarP == null) {
                return;
            }
            int iA = mVarP.a();
            boolean z10 = true;
            if (mVarP.b() != 1) {
                z10 = false;
            }
            this.az = z10;
            if (iA <= 0) {
                return;
            }
            new Handler().postDelayed(new Runnable() { // from class: com.beizi.fusion.work.splash.a.8
                @Override // java.lang.Runnable
                public void run() {
                    a.this.ba();
                }
            }, iA);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private boolean aZ() {
        com.beizi.ad.v2.g.a aVar = this.f11303x;
        if (aVar == null) {
            return false;
        }
        try {
            m mVarP = aVar.p();
            if (mVarP == null) {
                return false;
            }
            boolean z10 = true;
            if (mVarP.b() != 1) {
                z10 = false;
            }
            this.az = z10;
            return z10;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void ba() {
        try {
            if (this.ay) {
                return;
            }
            this.ay = true;
            this.f11291ac = "regionalClick";
            this.f10979b.setClickType("regionalClick");
            ao();
            ac.a("BeiZis", "enter onClick");
            double width = this.f11305z.getWidth();
            int[] iArr = {((int) (0.1d * width)) / 2, (int) (((double) this.f11305z.getHeight()) * 0.8d)};
            int[] iArrA = ai.a(((int) (width * 0.9d)) / 2, au.a(this.f11300u, 65.0f) / 2);
            a(String.valueOf(iArrA[0]), String.valueOf(iArrA[1]), String.valueOf(iArrA[0] + iArr[0]), String.valueOf(iArrA[1] + iArr[1]), String.valueOf(iArrA[0]), String.valueOf(iArrA[1]), String.valueOf(iArrA[0] + iArr[0]), String.valueOf(iArrA[1] + iArr[1]), 0);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void bb() {
        List<com.beizi.ad.model.e> listS;
        ViewGroup viewGroup;
        int i10;
        int i11;
        int i12;
        int i13;
        try {
            com.beizi.ad.v2.g.a aVar = this.f11303x;
            if (aVar == null || (listS = aVar.s()) == null || listS.isEmpty() || (viewGroup = this.f11305z) == null) {
                return;
            }
            float width = viewGroup.getWidth();
            float height = this.f11305z.getHeight();
            if (width == 0.0f) {
                width = this.Q;
            }
            final float f10 = width;
            if (height == 0.0f) {
                height = this.R;
            }
            final float f11 = height;
            Iterator<com.beizi.ad.model.e> it2 = listS.iterator();
            while (it2.hasNext()) {
                com.beizi.ad.model.e next = it2.next();
                if (next != null) {
                    n nVarA = next.a();
                    String strD = nVarA.d();
                    String strE = nVarA.e();
                    String strA = nVarA.a();
                    String strB = nVarA.b();
                    if (TextUtils.isEmpty(strD) || strD.equals("0")) {
                        i10 = (int) f10;
                    } else {
                        i10 = strD.endsWith("%") ? (((int) f10) * Integer.parseInt(strD.substring(0, strD.indexOf("%")))) / 100 : au.a(this.f11300u, Integer.parseInt(strD));
                    }
                    if (TextUtils.isEmpty(strE) || strE.equals("0")) {
                        i11 = (int) f11;
                    } else {
                        i11 = strE.endsWith("%") ? (((int) f11) * Integer.parseInt(strE.substring(0, strE.indexOf("%")))) / 100 : au.a(this.f11300u, Integer.parseInt(strE));
                    }
                    if (TextUtils.isEmpty(strA) || strA.equals("0")) {
                        i12 = (int) f10;
                    } else {
                        i12 = strA.endsWith("%") ? (((int) f10) * Integer.parseInt(strA.substring(0, strA.indexOf("%")))) / 100 : au.a(this.f11300u, Integer.parseInt(strA));
                    }
                    if (TextUtils.isEmpty(strB) || strB.equals("0")) {
                        i13 = (int) f11;
                    } else {
                        i13 = strB.endsWith("%") ? (((int) f11) * Integer.parseInt(strB.substring(0, strB.indexOf("%")))) / 100 : au.a(this.f11300u, Integer.parseInt(strB));
                    }
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i10, i11);
                    int i14 = i13 - (i11 / 2);
                    int i15 = i12 - (i10 / 2);
                    if (i14 < 0) {
                        i14 = 0;
                    }
                    if (i15 < 0) {
                        i15 = 0;
                    }
                    layoutParams.topMargin = i14;
                    layoutParams.leftMargin = i15;
                    final ImageView imageView = new ImageView(this.f11300u);
                    imageView.setVisibility(0);
                    imageView.setLayoutParams(layoutParams);
                    String strB2 = next.b();
                    if (!TextUtils.isEmpty(strB2) && strB2.startsWith("#")) {
                        imageView.setBackgroundColor(Color.parseColor(strB2));
                    }
                    String strC = next.c();
                    if (!TextUtils.isEmpty(strC) && strC.contains("http")) {
                        f.a(this.f11300u).a(strC).a(imageView);
                    }
                    final float[] fArr = new float[1];
                    final float[] fArr2 = new float[1];
                    final float[] fArr3 = new float[1];
                    final float[] fArr4 = new float[1];
                    Iterator<com.beizi.ad.model.e> it3 = it2;
                    imageView.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.fusion.work.splash.a.9
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            int i16;
                            int iA;
                            int left;
                            int top;
                            try {
                                float f12 = fArr[0] / imageView.getLayoutParams().width;
                                float f13 = fArr2[0] / imageView.getLayoutParams().height;
                                if (a.this.am != null) {
                                    i16 = a.this.am.getLayoutParams().width;
                                    iA = a.this.am.getLayoutParams().height;
                                    left = a.this.am.getLeft();
                                    top = a.this.am.getTop();
                                } else {
                                    i16 = (int) (((double) f10) * 0.9d);
                                    iA = au.a(a.this.f11300u, 65.0f);
                                    left = (int) ((((double) f10) * 0.1d) / 2.0d);
                                    top = (int) (((double) f11) * 0.8d);
                                }
                                int i17 = (int) (i16 * f12);
                                int i18 = (int) (iA * f13);
                                int i19 = left + i17;
                                int i20 = top + i18;
                                a.this.a(i17 + ".0", i18 + ".0", i19 + ".0", i20 + ".0", i17 + ".0", i18 + ".0", i19 + ".0", i20 + ".0");
                            } catch (Exception e10) {
                                e10.printStackTrace();
                            }
                        }
                    });
                    imageView.setOnTouchListener(new View.OnTouchListener() { // from class: com.beizi.fusion.work.splash.a.10
                        @Override // android.view.View.OnTouchListener
                        public boolean onTouch(View view, MotionEvent motionEvent) {
                            try {
                                if (motionEvent.getAction() == 0) {
                                    fArr[0] = motionEvent.getX();
                                    fArr2[0] = motionEvent.getY();
                                    fArr3[0] = motionEvent.getRawX();
                                    fArr4[0] = motionEvent.getRawY();
                                }
                            } catch (Exception e10) {
                                e10.printStackTrace();
                            }
                            return false;
                        }
                    });
                    this.f11305z.addView(imageView, layoutParams);
                    it2 = it3;
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.beizi.fusion.tool.am.a
    public void a_() {
        this.f11291ac = "scroll";
        this.f10979b.setClickType("scroll");
        ao();
        ac.a("BeiZis", "enter onScrollDistanceMeet ");
        aM();
    }

    @Override // com.beizi.fusion.work.a
    public String f() {
        return "BEIZI";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aA() {
        e eVar = this.f10981d;
        if (eVar == null) {
            return;
        }
        Map<String, com.beizi.fusion.work.a> mapS = eVar.s();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("splashWorkers:");
        sb2.append(mapS.toString());
        Z();
        g gVar = this.f10984g;
        if (gVar == g.SUCCESS) {
            az();
            this.f10981d.a(f(), (View) null);
        } else if (gVar == g.FAIL) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("other worker shown,");
            sb3.append(f());
            sb3.append(" remove");
        }
    }

    private void aB() {
        ViewGroup viewGroup;
        final boolean z10;
        com.beizi.ad.v2.g.a aVar = this.f11303x;
        if (aVar == null || !aVar.d() || (viewGroup = this.f11304y) == null) {
            ap();
            return;
        }
        viewGroup.removeAllViews();
        this.f11304y.addView(this.f11305z);
        AdSpacesBean.BuyerBean buyerBean = this.f10982e;
        boolean z11 = false;
        if (buyerBean != null) {
            boolean z12 = buyerBean.getIsImageSpeed() == 1;
            z11 = z12;
            z10 = this.f10982e.getIsHideInteraction() == 1;
        } else {
            z10 = false;
        }
        if (!z11) {
            aC();
            return;
        }
        this.f11303x.a(new com.beizi.ad.v2.b.a() { // from class: com.beizi.fusion.work.splash.a.11
            @Override // com.beizi.ad.v2.b.a
            public void a() {
                if (z10) {
                    a.this.aC();
                }
            }
        });
        if (z10) {
            return;
        }
        aC();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aC() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("shakeViewBean != null ? ");
        sb2.append(this.f11293n != null);
        sb2.append(",regionalClickViewBean != null ? ");
        sb2.append(this.f11294o != null);
        sb2.append(",fullScreenClickBean != null ? ");
        sb2.append(this.f11298s != null);
        ac.a("BeiZis", sb2.toString());
        this.f11305z.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.beizi.fusion.work.splash.a.12

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            boolean f11315a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            boolean f11316b;

            protected void a(boolean z10) {
                if (z10 || a.this.f11303x == null) {
                    return;
                }
                a.this.f11303x.a(new View.OnTouchListener() { // from class: com.beizi.fusion.work.splash.a.12.1
                    @Override // android.view.View.OnTouchListener
                    public boolean onTouch(View view, MotionEvent motionEvent) {
                        return true;
                    }
                });
            }

            /* JADX WARN: Code duplicated, block: B:42:0x0125  */
            /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                byte b10;
                try {
                    if (a.this.f11305z == null) {
                        return;
                    }
                    a.this.f11305z.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                    if (((com.beizi.fusion.work.a) a.this).f10982e == null) {
                        return;
                    }
                    AdSpacesBean.BuyerBean.FullScreenClickBean fullScreenClickBean = a.this.f11298s;
                    if (fullScreenClickBean != null) {
                        String fullScreenClickUuid = fullScreenClickBean.getFullScreenClickUuid();
                        a aVar = a.this;
                        AdSpacesBean.BuyerBean.OrderDataFullScreenClickBean orderDataFullScreenClickBeanD = aVar.d(aVar.f11298s.getOrderData(), a.this.f11303x.b());
                        if (orderDataFullScreenClickBeanD != null) {
                            AdSpacesBean.BuyerBean.FullScreenClickBean fullScreenClick = orderDataFullScreenClickBeanD.getFullScreenClick();
                            if (fullScreenClick != null) {
                                fullScreenClickUuid = fullScreenClick.getFullScreenClickUuid();
                                this.f11316b = ai.a(fullScreenClick.getRandomClickNum());
                                ac.a("BeiZis", "beizi clickable = " + this.f11316b);
                                a(this.f11316b);
                            }
                        } else {
                            this.f11315a = ai.a(a.this.f11298s.getRandomClickNum());
                            ac.a("BeiZis", "beizi clickable Two = " + this.f11315a);
                            a(this.f11315a);
                        }
                        if (((com.beizi.fusion.work.a) a.this).f10979b != null) {
                            ((com.beizi.fusion.work.a) a.this).f10979b.setFullScreenClickUuid(fullScreenClickUuid);
                            a.this.ao();
                        }
                    }
                    a.this.aU();
                    if (((com.beizi.fusion.work.a) a.this).f10982e.getInteractionRules() != null && ((com.beizi.fusion.work.a) a.this).f10982e.getInteractionRules().size() > 0) {
                        String strA = b.a(((com.beizi.fusion.work.a) a.this).f10982e.getInteractionRules(), ai.b(100));
                        switch (strA.hashCode()) {
                            case -1671124246:
                                if (!strA.equals("eulerAngle")) {
                                    b10 = -1;
                                } else {
                                    b10 = 4;
                                }
                                break;
                            case -907680051:
                                if (!strA.equals("scroll")) {
                                    b10 = -1;
                                } else {
                                    b10 = 2;
                                }
                                break;
                            case -690338273:
                                if (!strA.equals("regional")) {
                                    b10 = -1;
                                } else {
                                    b10 = 1;
                                }
                                break;
                            case 3506301:
                                if (!strA.equals(d.f33665b)) {
                                    b10 = -1;
                                } else {
                                    b10 = 3;
                                }
                                break;
                            case 109399814:
                                if (!strA.equals("shake")) {
                                    b10 = -1;
                                } else {
                                    b10 = 0;
                                }
                                break;
                            default:
                                b10 = -1;
                                break;
                        }
                        if (b10 == 0) {
                            if (com.beizi.fusion.c.b.a().p()) {
                                a.this.aN();
                                return;
                            }
                            a.this.aE();
                        } else if (b10 == 1) {
                            a.this.aN();
                        } else if (b10 == 2) {
                            a.this.aO();
                        } else if (b10 == 3) {
                            if (com.beizi.fusion.c.b.a().p()) {
                                a.this.aN();
                                return;
                            }
                            a.this.aS();
                        } else if (b10 == 4) {
                            if (com.beizi.fusion.c.b.a().p()) {
                                a.this.aN();
                                return;
                            }
                            a.this.aT();
                        }
                    } else if (com.beizi.fusion.c.b.a().p()) {
                        a.this.aN();
                        a.this.aO();
                    } else {
                        a.this.aE();
                        a.this.aN();
                        a.this.aO();
                        a.this.aS();
                        a.this.aT();
                    }
                    a.this.bb();
                    a.this.aD();
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aD() {
        View viewAI = aI();
        if (this.N != null) {
            this.f11304y.addView(this.N, new FrameLayout.LayoutParams(-2, -2));
        }
        this.f11303x.a(viewAI);
        aJ();
        if (this.M) {
            aH();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aE() {
        AdSpacesBean.BuyerBean.ShakeViewBean shakeView;
        try {
            if (this.f11292ad == null) {
                this.f11292ad = new aq(this.f11300u);
            }
            AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean = this.f11293n;
            if (shakeViewBean == null || this.f11292ad == null || shakeViewBean.getPosition() == null) {
                return;
            }
            this.ao = true;
            String shakeViewUuid = this.f11293n.getShakeViewUuid();
            AdSpacesBean.BuyerBean.OrderDataShakeViewBean orderDataShakeViewBeanA = a(this.f11293n.getOrderData(), this.f11303x.b());
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
            this.f11292ad.a(this.an);
            View viewA = this.f11292ad.a(au.b(this.f11300u, this.f11305z.getWidth()), au.b(this.f11300u, this.f11305z.getHeight()), this.f11293n.getPosition());
            if (viewA != null) {
                ViewGroup.LayoutParams layoutParams = viewA.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(marginLayoutParams.width, marginLayoutParams.height);
                    layoutParams2.leftMargin = marginLayoutParams.leftMargin;
                    layoutParams2.topMargin = marginLayoutParams.topMargin;
                    this.f11304y.addView(viewA, layoutParams2);
                }
            }
            aF();
            a(shakeView);
            this.f11292ad.a(this);
            a(shakeView, viewA);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void aF() {
        AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean = this.f11293n;
        if (shakeViewBean == null) {
            return;
        }
        int sensorParam = shakeViewBean.getSensorParam();
        int compliantAngle = this.f11293n.getCompliantAngle();
        boolean zIsReturnAngle = this.f11293n.isReturnAngle();
        com.beizi.ad.v2.g.a aVar = this.f11303x;
        Map mapG = aVar != null ? aVar.g() : null;
        aq aqVar = this.f11292ad;
        if (aqVar == null) {
            return;
        }
        aqVar.a(sensorParam, compliantAngle, zIsReturnAngle, mapG);
    }

    private void aG() {
        for (int i10 = 0; i10 < this.B.size(); i10++) {
            AdSpacesBean.RenderViewBean renderViewBean = this.B.get(i10);
            String type = renderViewBean.getType();
            if ("SKIPVIEW".equals(type)) {
                this.D.add(renderViewBean);
            } else if ("MATERIALVIEW".equals(type)) {
                this.C.add(renderViewBean);
            }
        }
        if (this.D.size() > 0) {
            AdSpacesBean.RenderViewBean renderViewBean2 = this.D.get(0);
            this.S = renderViewBean2;
            if (renderViewBean2 != null) {
                this.P = renderViewBean2.getTapPosition();
                this.O = this.S.getLayerPosition();
                long skipViewTotalTime = this.S.getSkipViewTotalTime();
                if (skipViewTotalTime > 0) {
                    this.J = skipViewTotalTime;
                }
                long skipUnavailableTime = this.S.getSkipUnavailableTime();
                if (skipUnavailableTime > 0) {
                    this.L = skipUnavailableTime;
                }
                this.T = this.S.getShowCountDown();
                this.U = this.S.getShowBorder();
                String skipText = this.S.getSkipText();
                this.V = skipText;
                if (TextUtils.isEmpty(skipText)) {
                    this.V = "跳过";
                }
                String textColor = this.S.getTextColor();
                this.W = textColor;
                if (TextUtils.isEmpty(textColor)) {
                    this.W = "#FFFFFF";
                }
                String countDownColor = this.S.getCountDownColor();
                this.X = countDownColor;
                if (TextUtils.isEmpty(countDownColor)) {
                    this.X = "#FFFFFF";
                }
                this.aA = ai.a(this.S.getRandomClick());
                List<AdSpacesBean.PassPolicyBean> passPolicy = this.S.getPassPolicy();
                if (passPolicy != null && passPolicy.size() > 0) {
                    for (AdSpacesBean.PassPolicyBean passPolicyBean : passPolicy) {
                        String passType = passPolicyBean.getPassType();
                        int passPercent = passPolicyBean.getPassPercent();
                        passType.hashCode();
                        switch (passType) {
                            case "RANDOMPASS":
                                this.F = ai.a(passPercent);
                                break;
                            case "WAITPASS":
                                this.E = ai.a(passPercent);
                                break;
                            case "LAYERPASS":
                                AdSpacesBean.PositionBean positionBean = this.O;
                                if (positionBean != null && this.P != null) {
                                    double centerX = positionBean.getCenterX();
                                    double centerY = this.O.getCenterY();
                                    double width = this.O.getWidth();
                                    double height = this.O.getHeight();
                                    double centerX2 = this.P.getCenterX();
                                    double centerY2 = this.P.getCenterY();
                                    double width2 = this.P.getWidth();
                                    double height2 = this.P.getHeight();
                                    if ((centerX > 0.0d && centerX2 > 0.0d && centerX != centerX2) || ((centerY > 0.0d && centerY2 > 0.0d && centerY != centerY2) || ((width > 0.0d && width2 > 0.0d && width != width2) || (height > 0.0d && height2 > 0.0d && height != height2)))) {
                                        this.G = ai.a(passPercent);
                                    }
                                    if (width2 * height2 < width * height) {
                                        this.H = true;
                                    }
                                    break;
                                } else {
                                    break;
                                }
                                break;
                        }
                    }
                }
            }
        }
        if (this.C.size() > 0) {
            Collections.sort(this.C, new Comparator<AdSpacesBean.RenderViewBean>() { // from class: com.beizi.fusion.work.splash.a.16
                @Override // java.util.Comparator
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public int compare(AdSpacesBean.RenderViewBean renderViewBean3, AdSpacesBean.RenderViewBean renderViewBean4) {
                    return renderViewBean4.getLevel() - renderViewBean3.getLevel();
                }
            });
        }
    }

    private void aH() {
        if (this.E) {
            R();
        }
        if (this.F) {
            S();
        }
        if (this.G) {
            T();
        }
        if (this.H) {
            U();
        }
        this.K = this.J - this.L;
    }

    private View aI() {
        View view;
        String str;
        this.f11299t = new View.OnClickListener() { // from class: com.beizi.fusion.work.splash.a.17
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                try {
                    if (a.this.aA && !a.this.ay) {
                        a.this.aA = false;
                        a.this.ba();
                    } else {
                        if (a.this.f11303x != null) {
                            a.this.f11303x.e();
                        }
                        a.this.G();
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        };
        if (this.M) {
            View view2 = this.A;
            if (view2 != null) {
                view2.setVisibility(8);
                view2.setAlpha(0.0f);
            }
            SkipView skipView = new SkipView(this.f11300u);
            this.A = skipView;
            skipView.setOnClickListener(this.f11299t);
            CircleProgressView circleProgressView = new CircleProgressView(this.f11300u);
            this.N = circleProgressView;
            circleProgressView.setAlpha(0.0f);
            view = this.N;
            str = "beizi";
        } else {
            view = this.A;
            if (view != null) {
                CircleProgressView circleProgressView2 = new CircleProgressView(this.f11300u);
                this.N = circleProgressView2;
                circleProgressView2.setAlpha(0.0f);
                view = this.N;
                str = "app";
            } else {
                str = "buyer";
            }
        }
        EventBean eventBean = this.f10979b;
        if (eventBean != null) {
            eventBean.setSkipType(str);
            ao();
        }
        return view;
    }

    private void aJ() {
        n nVarR;
        if (!this.M) {
            View view = this.A;
            if (view != null) {
                view.setVisibility(0);
                this.A.setAlpha(1.0f);
                return;
            }
            return;
        }
        if (this.O == null || this.S == null) {
            aK();
            return;
        }
        float f10 = this.Q;
        float height = this.f11304y.getHeight();
        if (height == 0.0f) {
            height = this.R - au.a(this.f11300u, 100.0f);
        }
        int width = (int) (((double) f10) * this.O.getWidth() * 0.01d);
        if (this.O.getHeight() < 12.0d) {
            aK();
            return;
        }
        int height2 = (int) (((double) width) * this.O.getHeight() * 0.01d);
        int paddingHeight = (int) (((double) height2) * this.S.getPaddingHeight() * 0.01d);
        if (paddingHeight < 0) {
            paddingHeight = 0;
        }
        ((SkipView) this.A).setData(this.U, paddingHeight);
        e(this.aw);
        this.f11304y.addView(this.A, new FrameLayout.LayoutParams(width, height2));
        float centerX = (((float) (this.O.getCenterX() * 0.01d)) * f10) - (width / 2);
        float centerY = (((float) (this.O.getCenterY() * 0.01d)) * height) - (height2 / 2);
        try {
            com.beizi.ad.v2.g.a aVar = this.f11303x;
            if (aVar != null && (nVarR = aVar.r()) != null) {
                String strA = nVarR.a();
                String strC = nVarR.c();
                if (!TextUtils.isEmpty(strA)) {
                    centerX = strA.endsWith("%") ? (f10 * Integer.parseInt(strA.substring(0, strA.indexOf("%")))) / 100.0f : Integer.parseInt(strA);
                }
                if (!TextUtils.isEmpty(strC)) {
                    centerY = strC.endsWith("%") ? ((height * Integer.parseInt(strC.substring(0, strC.indexOf("%")))) / 100.0f) + (height2 / 2) : Integer.parseInt(strC);
                }
            }
        } catch (Exception unused) {
        }
        this.A.setX(centerX);
        this.A.setY(centerY);
        View view2 = this.A;
        if (view2 != null) {
            view2.setVisibility(0);
        }
    }

    private void aK() {
        int i10 = (int) (((double) this.Q) * 0.15d);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i10, (int) (((double) i10) * 0.45d));
        layoutParams.gravity = 53;
        layoutParams.topMargin = au.a(this.f11300u, 20.0f);
        layoutParams.rightMargin = au.a(this.f11300u, 20.0f);
        ViewGroup viewGroup = this.f11304y;
        if (viewGroup != null) {
            viewGroup.addView(this.A, layoutParams);
        }
        View view = this.A;
        if (view != null) {
            this.T = 1;
            this.U = 1;
            ((SkipView) view).setData(1, 0);
            ((SkipView) this.A).setText(String.format("跳过 %d", Integer.valueOf(this.aw)));
            this.A.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aL() {
        float pivotX;
        float pivotY;
        float height;
        try {
            View view = this.A;
            if (view == null) {
                return;
            }
            int[] iArr = new int[2];
            view.getLocationOnScreen(iArr);
            if (this.P != null) {
                float f10 = this.Q;
                float height2 = this.f11304y.getHeight();
                if (height2 == 0.0f) {
                    height2 = this.R - au.a(this.f11300u, 100.0f);
                }
                int width = (int) (((double) f10) * this.P.getWidth() * 0.01d);
                int height3 = (int) (((double) width) * this.P.getHeight() * 0.01d);
                ViewGroup.LayoutParams layoutParams = this.N.getLayoutParams();
                layoutParams.width = width;
                layoutParams.height = height3;
                this.N.setLayoutParams(layoutParams);
                pivotX = (f10 * ((float) (this.P.getCenterX() * 0.01d))) - (width / 2);
                pivotY = height2 * ((float) (this.P.getCenterY() * 0.01d));
                height = height3 / 2;
            } else {
                pivotX = (iArr[0] + this.A.getPivotX()) - (this.N.getWidth() / 2);
                pivotY = iArr[1] + this.A.getPivotY();
                height = this.N.getHeight() / 2;
            }
            float f11 = pivotY - height;
            this.N.setX(pivotX);
            this.N.setY(f11);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void aM() {
        try {
            this.ay = true;
            com.beizi.ad.v2.g.a aVar = this.f11303x;
            if (aVar != null) {
                aVar.t();
            }
            ae aeVar = this.aE;
            if (aeVar != null) {
                aeVar.a();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aN() {
        try {
            if (this.f11294o == null && com.beizi.fusion.c.b.a().p()) {
                AdSpacesBean.BuyerBean.RegionalClickViewBean regionalClickViewBean = new AdSpacesBean.BuyerBean.RegionalClickViewBean();
                this.f11294o = regionalClickViewBean;
                regionalClickViewBean.setTitleColor("#FFFFFF");
                this.f11294o.setTitle("点击跳转至网页或第三方应用");
                this.f11294o.setRegionalClickUuid("-4");
                this.f11294o.setIsDisableClick(0);
                AdSpacesBean.BuyerBean.PercentPositionBean percentPositionBean = new AdSpacesBean.BuyerBean.PercentPositionBean();
                percentPositionBean.setCenterX("50%");
                percentPositionBean.setCenterY("80%");
                this.f11294o.setPosition(percentPositionBean);
            }
            AdSpacesBean.BuyerBean.RegionalClickViewBean regionalClickViewBean2 = this.f11294o;
            if (regionalClickViewBean2 == null || this.ae == null || regionalClickViewBean2.getPosition() == null) {
                return;
            }
            String regionalClickUuid = this.f11294o.getRegionalClickUuid();
            AdSpacesBean.BuyerBean.OrderDataRegionalClickViewBean orderDataRegionalClickViewBeanB = b(this.f11294o.getOrderData(), this.f11303x.b());
            if (orderDataRegionalClickViewBeanB != null) {
                AdSpacesBean.BuyerBean.RegionalClickViewBean regionalClickView = orderDataRegionalClickViewBeanB.getRegionalClickView();
                if (regionalClickView != null) {
                    regionalClickUuid = regionalClickView.getRegionalClickUuid();
                }
                this.ae.a(regionalClickView);
            } else {
                this.ae.a(this.f11294o);
            }
            EventBean eventBean = this.f10979b;
            if (eventBean != null) {
                eventBean.setRegionalClickUuid(regionalClickUuid);
                ao();
            }
            this.ae.a(this.an);
            View viewA = this.ae.a(au.b(this.f11300u, this.f11305z.getWidth()), au.b(this.f11300u, this.f11305z.getHeight()), this.f11294o.getPosition(), true);
            this.am = viewA;
            if (viewA != null) {
                ViewGroup.LayoutParams layoutParams = viewA.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(marginLayoutParams.width, marginLayoutParams.height);
                    layoutParams2.leftMargin = marginLayoutParams.leftMargin;
                    layoutParams2.topMargin = marginLayoutParams.topMargin;
                    try {
                        this.f11304y.addView(this.am, layoutParams2);
                        this.ae.a(this);
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aO() {
        int style;
        String scrollClickUuid;
        try {
            AdSpacesBean.BuyerBean.ScrollClickBean scrollClickBean = this.f11295p;
            if (scrollClickBean == null) {
                return;
            }
            AdSpacesBean.BuyerBean.ScrollClickBean coolScrollClick = scrollClickBean.getCoolScrollClick();
            this.f11297r = coolScrollClick;
            if (coolScrollClick != null && (c(coolScrollClick.getUserProtectTime()) || b(this.f11297r.getCoolTime()))) {
                this.aD = true;
            }
            if (this.aD) {
                style = this.f11297r.getStyle();
            } else {
                AdSpacesBean.BuyerBean.OrderDataScrollViewOrderBean orderDataScrollViewOrderBeanC = c(this.f11295p.getOrderData(), this.f11303x.b());
                if (orderDataScrollViewOrderBeanC != null) {
                    this.f11296q = orderDataScrollViewOrderBeanC.getScrollClick();
                }
                AdSpacesBean.BuyerBean.ScrollClickBean scrollClickBean2 = this.f11296q;
                style = scrollClickBean2 != null ? scrollClickBean2.getStyle() : this.f11295p.getStyle();
            }
            if (this.aD) {
                scrollClickUuid = this.f11297r.getScrollClickUuid();
            } else {
                AdSpacesBean.BuyerBean.ScrollClickBean scrollClickBean3 = this.f11296q;
                scrollClickUuid = scrollClickBean3 != null ? scrollClickBean3.getScrollClickUuid() : this.f11295p.getScrollClickUuid();
            }
            EventBean eventBean = this.f10979b;
            if (eventBean != null) {
                eventBean.setScrollClickUuid(scrollClickUuid);
                ao();
            }
            if (style == 1) {
                aQ();
            } else if (style == 2) {
                aR();
            } else {
                aP();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void aP() {
        if (this.f11295p == null) {
            return;
        }
        am amVar = new am(this.f11300u);
        this.af = amVar;
        if (this.aD) {
            amVar.a(this.f11297r);
        } else {
            AdSpacesBean.BuyerBean.ScrollClickBean scrollClickBean = this.f11296q;
            if (scrollClickBean != null) {
                amVar.a(scrollClickBean);
            } else {
                amVar.a(this.f11295p);
            }
        }
        this.af.a(this.an);
        View viewA = this.af.a(au.b(this.f11300u, this.f11305z.getWidth()), au.b(this.f11300u, this.f11305z.getHeight()), this.f11295p.getPosition());
        if (viewA != null) {
            ViewGroup.LayoutParams layoutParams = viewA.getLayoutParams();
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(marginLayoutParams.width, marginLayoutParams.height);
                layoutParams2.leftMargin = marginLayoutParams.leftMargin;
                layoutParams2.topMargin = marginLayoutParams.topMargin;
                try {
                    this.f11304y.addView(viewA, layoutParams2);
                    this.af.a(this);
                    a(this.f11295p.getScrollDirection(), this.f11295p.getScrollDistance(), this);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
    }

    private void aQ() {
        try {
            if (this.f11295p != null) {
                this.aB = new ao(this.f11300u);
                int width = this.f11305z.getWidth();
                int height = this.f11305z.getHeight();
                if (this.aD) {
                    this.aB.a(this.f11297r, aZ(), this.an.booleanValue(), width, height);
                } else {
                    AdSpacesBean.BuyerBean.ScrollClickBean scrollClickBean = this.f11296q;
                    if (scrollClickBean != null) {
                        this.aB.a(scrollClickBean, aZ(), this.an.booleanValue(), width, height);
                    } else {
                        this.aB.a(this.f11295p, aZ(), this.an.booleanValue(), width, height);
                    }
                }
                View viewA = this.aB.a(this.f11305z);
                ViewGroup.LayoutParams layoutParams = viewA.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2);
                    layoutParams2.topMargin = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                    ViewGroup viewGroup = this.f11304y;
                    if (viewGroup != null) {
                        viewGroup.addView(viewA, layoutParams2);
                    }
                }
                this.aB.a(new ao.a() { // from class: com.beizi.fusion.work.splash.a.18
                    @Override // com.beizi.fusion.tool.ao.a
                    public void a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
                        try {
                            if (!a.this.aD) {
                                as.a(a.this.f11300u, a.this.Z, (Object) Long.valueOf(System.currentTimeMillis()));
                            }
                            a.this.f11291ac = "scroll";
                            ((com.beizi.fusion.work.a) a.this).f10979b.setClickType(a.this.f11291ac);
                            a.this.ao();
                            ac.a("BeiZis", "enter onScrollSlideCallBack ");
                            a.this.a(str, str2, str3, str4, str5, str6, str7, str8, 1);
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    }
                });
                this.aB.a();
            }
        } catch (Exception unused) {
        }
    }

    private void az() {
        View view;
        View.OnClickListener onClickListener;
        if (this.M || (view = this.A) == null || (onClickListener = this.f11299t) == null) {
            return;
        }
        view.setOnClickListener(onClickListener);
    }

    @Override // com.beizi.fusion.work.a
    public Map av() {
        try {
            if (!this.ax) {
                if (!this.ap) {
                    return null;
                }
                if (this.ao) {
                    aq aqVar = this.f11292ad;
                    if (aqVar == null) {
                        return null;
                    }
                    return aqVar.e();
                }
                AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean = this.f11293n;
                if (shakeViewBean == null || shakeViewBean.getSensorParam() == 0) {
                    return null;
                }
                HashMap map = new HashMap();
                map.put("actionType", 0);
                return map;
            }
            if (!aV()) {
                HashMap map2 = new HashMap();
                map2.put("actionType", 0);
                return map2;
            }
            com.beizi.ad.v2.g.a aVar = this.f11303x;
            if (aVar == null) {
                return null;
            }
            Map mapN = aVar.n();
            if (mapN == null) {
                mapN = new HashMap();
                mapN.put("maxAcc", 15);
                mapN.put("angle", 35);
                mapN.put("duration", 3000);
                mapN.put(HmInputMappingContent.FIELD_DIRECTION, "x或y或z");
            }
            mapN.put("actionType", 1);
            return mapN;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.beizi.fusion.work.a
    public String aw() {
        com.beizi.ad.v2.g.a aVar = this.f11303x;
        if (aVar == null) {
            return null;
        }
        return aVar.h();
    }

    @Override // com.beizi.fusion.work.a
    public JSONObject ax() {
        com.beizi.ad.v2.g.a aVar = this.f11303x;
        if (aVar == null) {
            return null;
        }
        return aVar.m();
    }

    @Override // com.beizi.fusion.work.a
    public boolean ay() {
        com.beizi.ad.v2.g.a aVar = this.f11303x;
        if (aVar == null) {
            return false;
        }
        return aVar.q();
    }

    @Override // com.beizi.fusion.work.a
    public com.beizi.fusion.e.a h() {
        return this.f10987j;
    }

    @Override // com.beizi.fusion.work.a
    public String i() {
        com.beizi.ad.v2.g.a aVar = this.f11303x;
        if (aVar == null) {
            return null;
        }
        return aVar.a();
    }

    @Override // com.beizi.fusion.work.a
    public AdSpacesBean.BuyerBean j() {
        return this.f10982e;
    }

    @Override // com.beizi.fusion.work.a
    protected void k() {
        Object obj;
        EventBean eventBean;
        AdSpacesBean.BuyerBean.ShakeViewBean shakeView = this.f10982e.getShakeView();
        this.f11293n = shakeView;
        if (shakeView != null) {
            this.Y = shakeView.getCoolShakeView();
        }
        this.f11294o = this.f10982e.getRegionalClickView();
        this.f11298s = this.f10982e.getFullScreenClick();
        this.f11295p = this.f10982e.getScrollClick();
        this.al = this.f10982e.getScreenConfigVo();
        try {
            AdSpacesBean.BuyerBean buyerBean = this.f10982e;
            if (buyerBean != null && buyerBean.getIsImageSpeed() == 1 && (eventBean = this.f10979b) != null) {
                eventBean.setIsImageSpeed("1");
                ao();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        v();
        ab();
        com.beizi.ad.a aVar = new com.beizi.ad.a() { // from class: com.beizi.fusion.work.splash.a.1

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            boolean f11306a = false;

            @Override // com.beizi.ad.a
            public void a() {
                if (com.beizi.fusion.c.b.a().i() && a.this.f11302w - (System.currentTimeMillis() - ((com.beizi.fusion.work.a) a.this).f10981d.z()) < a.this.at) {
                    a.this.as = true;
                    a.this.a(String.valueOf(3), 3);
                    return;
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("showBeiZiSplash onAdLoaded:");
                sb2.append(System.currentTimeMillis());
                a aVar2 = a.this;
                aVar2.aw = aVar2.f11303x.k();
                ((com.beizi.fusion.work.a) a.this).f10987j = com.beizi.fusion.e.a.ADLOAD;
                if (a.this.f11303x.a() != null) {
                    try {
                        a aVar3 = a.this;
                        aVar3.a(Double.parseDouble(aVar3.f11303x.a()));
                    } catch (Exception e11) {
                        e11.printStackTrace();
                    }
                }
                a aVar4 = a.this;
                aVar4.an = Boolean.valueOf(aVar4.f11303x.l());
                a aVar5 = a.this;
                aVar5.au = aVar5.f11303x.i();
                if (a.this.au) {
                    a aVar6 = a.this;
                    aVar6.av = aVar6.f11303x.j();
                    ((com.beizi.fusion.work.a) a.this).f10979b.setIsCacheAd("1");
                    if (a.this.av > 0) {
                        ((com.beizi.fusion.work.a) a.this).f10979b.setCacheTime(String.valueOf(System.currentTimeMillis() - a.this.av));
                    }
                    a.this.ao();
                }
                a.this.x();
                if (a.this.Y()) {
                    a.this.aA();
                } else {
                    a.this.P();
                }
            }

            @Override // com.beizi.ad.a
            public void b() {
                ((com.beizi.fusion.work.a) a.this).f10987j = com.beizi.fusion.e.a.ADSHOW;
                if (a.this.au) {
                    ((com.beizi.fusion.work.a) a.this).f10979b.setIsCacheAd("1");
                    if (a.this.av > 0) {
                        ((com.beizi.fusion.work.a) a.this).f10979b.setCacheTime(String.valueOf(System.currentTimeMillis() - a.this.av));
                    }
                    a.this.ao();
                }
                if (((com.beizi.fusion.work.a) a.this).f10981d != null) {
                    if (((com.beizi.fusion.work.a) a.this).f10981d.t() != 2) {
                        ((com.beizi.fusion.work.a) a.this).f10981d.b(a.this.f());
                    }
                    a.this.ac();
                }
                a.this.B();
                a.this.V();
                a.this.C();
                a.this.aW();
                a.this.aY();
            }

            @Override // com.beizi.ad.a
            public void c() {
                try {
                    if (((com.beizi.fusion.work.a) a.this).f10981d != null) {
                        ((com.beizi.fusion.work.a) a.this).f10981d.c(a.this.f());
                    }
                    a.this.F();
                    if (a.this.f11292ad != null) {
                        a.this.f11292ad.c();
                    }
                    if (a.this.ae != null) {
                        a.this.ae.a();
                    }
                    if (a.this.af != null) {
                        a.this.af.b();
                    }
                    if (a.this.ai != null) {
                        a.this.ai.b();
                    }
                    if (a.this.ak != null) {
                        a.this.ak.b();
                    }
                    if (a.this.aB != null) {
                        a.this.aB.b();
                    }
                    if (a.this.aC != null) {
                        a.this.aC.b();
                    }
                    a.this.aX();
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }

            @Override // com.beizi.ad.a
            public void d() {
                Exception exc;
                boolean z10;
                boolean zA;
                as.a(a.this.f11300u, "uniteTime", (Object) Long.valueOf(System.currentTimeMillis()));
                boolean z11 = false;
                try {
                    List<AdSpacesBean.CallBackStrategyBean> callBackStrategy = ((com.beizi.fusion.work.a) a.this).f10982e.getCallBackStrategy();
                    if (callBackStrategy == null || callBackStrategy.size() <= 0) {
                        zA = false;
                        break;
                    }
                    int i10 = 0;
                    while (true) {
                        try {
                            if (i10 >= callBackStrategy.size()) {
                                z11 = true;
                                zA = false;
                                break;
                            }
                            AdSpacesBean.CallBackStrategyBean callBackStrategyBean = callBackStrategy.get(i10);
                            if ("290.300".equalsIgnoreCase(callBackStrategyBean.getEventCode())) {
                                zA = ai.a(Integer.parseInt(callBackStrategyBean.getRate()));
                                z11 = true;
                                break;
                            }
                            i10++;
                            zA = false;
                            break;
                        } catch (Exception e11) {
                            exc = e11;
                            z10 = true;
                            exc.printStackTrace();
                            z11 = z10;
                        }
                    }
                } catch (Exception e12) {
                    exc = e12;
                    z10 = false;
                }
                if (z11 && ((com.beizi.fusion.work.a) a.this).f10982e != null) {
                    ((com.beizi.fusion.work.a) a.this).f10979b.setCallBackStrategyUuid(((com.beizi.fusion.work.a) a.this).f10982e.getCallBackStrategyUuid());
                    a.this.ao();
                }
                a.this.E();
                if (!z11 || zA) {
                    a.this.ap = true;
                    if (((com.beizi.fusion.work.a) a.this).f10981d != null) {
                        ((com.beizi.fusion.work.a) a.this).f10981d.d(a.this.f());
                        a.this.ad();
                    }
                    a.this.D();
                }
            }

            @Override // com.beizi.ad.a
            public void a(int i10) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("showBeiZiSplash onAdFailedToLoad:");
                sb2.append(i10);
                a.this.a(String.valueOf(i10), i10);
            }

            @Override // com.beizi.ad.a
            public void a(long j10) {
                try {
                    if (!this.f11306a) {
                        a.this.aL();
                        this.f11306a = true;
                    }
                    if (a.this.M) {
                        if (a.this.L > 0 && a.this.L <= a.this.J) {
                            if (a.this.E) {
                                if (a.this.K <= 0 || j10 <= a.this.K) {
                                    a.this.I = false;
                                    a.this.A.setAlpha(1.0f);
                                } else {
                                    a.this.I = true;
                                    a.this.A.setAlpha(0.2f);
                                }
                            }
                            if (a.this.L == a.this.J) {
                                a.this.A.setEnabled(false);
                            } else {
                                a.this.A.setEnabled(true);
                            }
                        }
                        a.this.e(Math.round(j10 / 1000.0f));
                    }
                    if (((com.beizi.fusion.work.a) a.this).f10981d == null || ((com.beizi.fusion.work.a) a.this).f10981d.t() == 2) {
                        return;
                    }
                    ((com.beizi.fusion.work.a) a.this).f10981d.a(j10);
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
        };
        com.beizi.ad.v2.g.a aVar2 = new com.beizi.ad.v2.g.a(this.f11300u, this.f11305z, null, this.f10986i);
        this.f11303x = aVar2;
        aVar2.a((int) this.f11302w);
        this.f11303x.a(this.f10982e);
        try {
            this.f11303x.a(this.f10979b.m15clone());
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        this.f11303x.a(10, 20, 10, 10);
        this.f11303x.a(true);
        this.f11303x.a(aVar);
        this.f11303x.a(au.a(this.f11300u, this.aq), au.a(this.f11300u, this.ar));
        if ("S2S".equals(g())) {
            this.f11303x.c(g());
            e eVar = this.f10981d;
            if (eVar != null) {
                String strB = eVar.B();
                if (!TextUtils.isEmpty(strB)) {
                    this.f11303x.b(strB);
                }
            }
        }
        e eVar2 = this.f10981d;
        if (eVar2 != null) {
            Map<String, Object> mapC = eVar2.C();
            this.f11303x.c(mapC);
            if (mapC != null && mapC.containsKey("returnInteraction") && (obj = mapC.get("returnInteraction")) != null && (obj instanceof Boolean)) {
                this.ax = ((Boolean) obj).booleanValue();
            }
            this.f11303x.d(this.f10981d.D());
        }
        this.f11303x.c();
    }

    @Override // com.beizi.fusion.work.a
    public void l() {
        super.l();
        com.beizi.ad.v2.g.a aVar = this.f11303x;
        if (aVar != null) {
            aVar.f();
            this.f11303x = null;
        }
    }

    @Override // com.beizi.fusion.work.a
    protected void z() {
        if (!y() || this.f11303x == null) {
            return;
        }
        ag();
    }

    private boolean c(long j10) {
        try {
            return System.currentTimeMillis() - au.p(this.f11300u).longValue() < j10;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    @Override // com.beizi.fusion.work.a
    public void d() {
        if (this.f10981d == null) {
            return;
        }
        this.f10985h = this.f10982e.getAppId();
        this.f10986i = this.f10982e.getSpaceId();
        this.f10980c = this.f10982e.getBuyerSpaceUuId();
        this.Z = "splash_cool_" + this.f10986i;
        this.at = this.f10982e.getMinShowTime();
        ac.b("BeiZis", "AdWorker chanel = " + this.f10980c);
        com.beizi.fusion.events.b bVar = this.f10978a;
        if (bVar != null) {
            EventBean eventBeanA = bVar.a().a(this.f10980c);
            this.f10979b = eventBeanA;
            if (eventBeanA != null) {
                s();
                t();
                com.beizi.fusion.c.n.a(this.f11300u, this.f10985h);
                u();
            }
        }
        long sleepTime = this.f10983f.getSleepTime();
        if (this.f10981d.v()) {
            sleepTime = Math.max(sleepTime, this.f10983f.getHotRequestDelay());
        }
        List<AdSpacesBean.RenderViewBean> list = this.B;
        boolean z10 = list != null && list.size() > 0;
        this.M = z10;
        if (z10) {
            aG();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(f());
        sb2.append(":requestAd:");
        sb2.append(this.f10985h);
        sb2.append("====");
        sb2.append(this.f10986i);
        sb2.append("===");
        sb2.append(sleepTime);
        if (sleepTime > 0) {
            this.f10990m.sendEmptyMessageDelayed(1, sleepTime);
        } else {
            e eVar = this.f10981d;
            if (eVar != null && eVar.u() < 1 && this.f10981d.t() != 2) {
                k();
            }
        }
        this.Q = au.k(this.f11300u);
        this.R = au.l(this.f11300u);
        this.ae = new aj(this.f11300u);
    }

    @Override // com.beizi.fusion.work.a
    public void e() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(f());
        sb2.append(" out make show ad");
        try {
            aB();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private AdSpacesBean.BuyerBean.OrderDataEulerAngleViewBean f(List<AdSpacesBean.BuyerBean.OrderDataEulerAngleViewBean> list, String str) {
        if (list != null && str != null) {
            for (AdSpacesBean.BuyerBean.OrderDataEulerAngleViewBean orderDataEulerAngleViewBean : list) {
                List<String> orderList = orderDataEulerAngleViewBean.getOrderList();
                if (orderList != null && orderList.contains(str)) {
                    return orderDataEulerAngleViewBean;
                }
            }
        }
        return null;
    }

    private boolean b(long j10) {
        long jLongValue = ((Long) as.b(this.f11300u, this.Z, 0L)).longValue();
        return jLongValue != 0 && System.currentTimeMillis() - jLongValue < j10;
    }

    private AdSpacesBean.BuyerBean.OrderDataScrollViewOrderBean c(List<AdSpacesBean.BuyerBean.OrderDataScrollViewOrderBean> list, String str) {
        if (list != null && str != null) {
            for (AdSpacesBean.BuyerBean.OrderDataScrollViewOrderBean orderDataScrollViewOrderBean : list) {
                List<String> orderList = orderDataScrollViewOrderBean.getOrderList();
                if (orderList != null && orderList.contains(str)) {
                    return orderDataScrollViewOrderBean;
                }
            }
        }
        return null;
    }

    private AdSpacesBean.BuyerBean.OrderDataRollViewBean e(List<AdSpacesBean.BuyerBean.OrderDataRollViewBean> list, String str) {
        if (list != null && str != null) {
            for (AdSpacesBean.BuyerBean.OrderDataRollViewBean orderDataRollViewBean : list) {
                List<String> orderList = orderDataRollViewBean.getOrderList();
                if (orderList != null && orderList.contains(str)) {
                    return orderDataRollViewBean;
                }
            }
        }
        return null;
    }

    private boolean b(AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean) {
        if (shakeViewBean != null) {
            AdSpacesBean.BuyerBean.AliaseShakeViewBean aliaseShakeView = shakeViewBean.getAliaseShakeView();
            if (aliaseShakeView != null && aliaseShakeView.getPassivationTime() > 0 && (aliaseShakeView.getShakeCount() > 0 || aliaseShakeView.getRotatCount() > 0)) {
                return true;
            }
        } else {
            AdSpacesBean.BuyerBean.AliaseShakeViewBean aliaseShakeView2 = this.f11293n.getAliaseShakeView();
            if (this.f11293n.getAliaseShakeView() != null && aliaseShakeView2.getPassivationTime() > 0 && (aliaseShakeView2.getShakeCount() > 0 || aliaseShakeView2.getRotatCount() > 0)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(int i10) {
        if (this.T == 1) {
            String strValueOf = String.valueOf(i10);
            String str = this.V + " ";
            String str2 = str + strValueOf;
            SpannableString spannableString = new SpannableString(str2);
            spannableString.setSpan(new ForegroundColorSpan(Color.parseColor(this.W)), 0, str.length(), 33);
            spannableString.setSpan(new ForegroundColorSpan(Color.parseColor(this.X)), str2.indexOf(strValueOf), str2.length(), 33);
            ((SkipView) this.A).setText(spannableString);
            return;
        }
        SpannableString spannableString2 = new SpannableString(this.V);
        spannableString2.setSpan(new ForegroundColorSpan(Color.parseColor(this.W)), 0, this.V.length(), 33);
        ((SkipView) this.A).setText(spannableString2);
    }

    @Override // com.beizi.fusion.work.a
    protected void a(Message message) {
        EventBean eventBean = this.f10979b;
        if (eventBean != null) {
            int i10 = message.what;
            if (this.as) {
                i10 = 10180;
            }
            eventBean.setError(String.valueOf(i10));
            this.f10979b.setErrorCode(String.valueOf(i10));
            ao();
            A();
        }
    }

    private AdSpacesBean.BuyerBean.OrderDataRegionalClickViewBean b(List<AdSpacesBean.BuyerBean.OrderDataRegionalClickViewBean> list, String str) {
        if (list != null && str != null) {
            for (AdSpacesBean.BuyerBean.OrderDataRegionalClickViewBean orderDataRegionalClickViewBean : list) {
                List<String> orderList = orderDataRegionalClickViewBean.getOrderList();
                if (orderList != null && orderList.contains(str)) {
                    return orderDataRegionalClickViewBean;
                }
            }
        }
        return null;
    }

    private void a(AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean) {
        final AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean2 = shakeViewBean != null ? shakeViewBean : this.f11293n;
        int regulatoryAngle = shakeViewBean2.getRegulatoryAngle();
        aq aqVar = this.f11292ad;
        if (aqVar != null) {
            aqVar.h(regulatoryAngle);
        }
        AdSpacesBean.BuyerBean.CoolShakeViewBean coolShakeViewBean = this.Y;
        if (coolShakeViewBean == null) {
            if (b(shakeViewBean)) {
                AdSpacesBean.BuyerBean.AliaseShakeViewBean aliaseShakeView = shakeViewBean2.getAliaseShakeView();
                if (aliaseShakeView != null) {
                    this.f11292ad.a(aliaseShakeView);
                    new Handler().postDelayed(new Runnable() { // from class: com.beizi.fusion.work.splash.a.13
                        @Override // java.lang.Runnable
                        public void run() {
                            a.this.f11289aa = true;
                            a.this.f11292ad.a(shakeViewBean2);
                        }
                    }, ai.b(aliaseShakeView.getPassivationTime()));
                    return;
                }
                return;
            }
            this.f11289aa = true;
            this.f11292ad.a(shakeViewBean2);
            return;
        }
        if (b(coolShakeViewBean.getCoolTime())) {
            this.f11290ab = this.Y.getFeedback();
            this.f11292ad.a(this.Y);
            return;
        }
        if (c(this.Y.getUserProtectTime())) {
            this.f11290ab = this.Y.getFeedback();
            this.f11292ad.a(this.Y);
        } else {
            if (b(shakeViewBean)) {
                AdSpacesBean.BuyerBean.AliaseShakeViewBean aliaseShakeView2 = shakeViewBean2.getAliaseShakeView();
                if (aliaseShakeView2 != null) {
                    this.f11292ad.a(aliaseShakeView2);
                    new Handler().postDelayed(new Runnable() { // from class: com.beizi.fusion.work.splash.a.14
                        @Override // java.lang.Runnable
                        public void run() {
                            a.this.f11289aa = true;
                            a.this.f11292ad.a(shakeViewBean2);
                        }
                    }, ai.b(aliaseShakeView2.getPassivationTime()));
                    return;
                }
                return;
            }
            this.f11289aa = true;
            this.f11292ad.a(shakeViewBean2);
        }
    }

    @Override // com.beizi.fusion.tool.aq.a
    public void b() {
        if (this.f11289aa && this.Y != null) {
            as.a(this.f11300u, this.Z, (Object) Long.valueOf(System.currentTimeMillis()));
        }
        this.f11291ac = "shake";
        this.f10979b.setClickType("shake");
        ao();
        ac.a("BeiZis", "enter onShakeHappened  ");
        a("", "", "", "", "", "", "", "", 2);
    }

    @Override // com.beizi.fusion.tool.am.a
    public void b(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        this.f11291ac = "scroll";
        this.f10979b.setClickType("scroll");
        ao();
        ac.a("BeiZis", "enter onScrollDistanceMeetByPosition ");
        a(str, str2, str3, str4, str5, str6, str7, str8, 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AdSpacesBean.BuyerBean.OrderDataFullScreenClickBean d(List<AdSpacesBean.BuyerBean.OrderDataFullScreenClickBean> list, String str) {
        if (list != null && str != null) {
            for (AdSpacesBean.BuyerBean.OrderDataFullScreenClickBean orderDataFullScreenClickBean : list) {
                List<String> orderList = orderDataFullScreenClickBean.getOrderList();
                if (orderList != null && orderList.contains(str)) {
                    return orderDataFullScreenClickBean;
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
            com.beizi.ad.v2.g.a aVar = this.f11303x;
            if (aVar == null) {
                return;
            }
            aVar.b(map);
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

    private void a(AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean, View view) {
        if (this.f11290ab == -1) {
            this.f11290ab = this.f11293n.getFeedback();
            if (shakeViewBean != null) {
                this.f11290ab = shakeViewBean.getFeedback();
            }
        }
        if (this.f11290ab == 0 || view == null || this.f11292ad == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            ShakeArcView shakeArcView = new ShakeArcView(this.f11300u);
            shakeArcView.setLineRadius(5);
            int i10 = (int) (((double) marginLayoutParams.width) * 0.5d);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(i10, i10);
            layoutParams2.leftMargin = marginLayoutParams.leftMargin + (((marginLayoutParams.width - i10) - 12) / 2);
            layoutParams2.topMargin = (int) (((double) marginLayoutParams.topMargin) + (((double) marginLayoutParams.height) * 0.08d));
            this.f11304y.addView(shakeArcView, layoutParams2);
            this.f11292ad.a(shakeArcView, this.f11290ab);
        }
    }

    private void a(final String str, int i10, final am.a aVar) {
        final int iA = au.a(this.f11300u, i10);
        this.f11303x.b(new View.OnTouchListener() { // from class: com.beizi.fusion.work.splash.a.15

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            float f11323a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            float f11324b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            float f11325c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            float f11326d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            float f11327e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            float f11328f;

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                int action = motionEvent.getAction();
                if (action == 0) {
                    this.f11323a = motionEvent.getX();
                    this.f11324b = motionEvent.getY();
                    this.f11325c = motionEvent.getX();
                    this.f11326d = motionEvent.getY();
                    this.f11327e = motionEvent.getRawX();
                    this.f11328f = motionEvent.getRawY();
                } else if (action == 1) {
                    ac.b("ScrollClickUtil", "mCurPosX = " + this.f11325c + ",mCurPosY = " + this.f11326d + ",mPosX = " + this.f11323a + ",mPosY = " + this.f11324b);
                    float f10 = this.f11326d;
                    float f11 = this.f11324b;
                    if (f10 - f11 <= 0.0f || Math.abs(f10 - f11) <= iA) {
                        float f12 = this.f11326d;
                        float f13 = this.f11324b;
                        if (f12 - f13 >= 0.0f || Math.abs(f12 - f13) <= iA) {
                            float f14 = this.f11325c;
                            float f15 = this.f11323a;
                            if (f14 - f15 >= 0.0f || Math.abs(f14 - f15) <= iA) {
                                float f16 = this.f11325c;
                                float f17 = this.f11323a;
                                if (f16 - f17 > 0.0f && Math.abs(f16 - f17) > iA && (ScrollClickView.DIR_RIGHT.equalsIgnoreCase(str) || a.this.az)) {
                                    a.this.a(aVar, this.f11323a + "", this.f11324b + "", this.f11327e + "", this.f11328f + "", motionEvent.getX() + "", motionEvent.getY() + "", motionEvent.getRawX() + "", motionEvent.getRawY() + "");
                                }
                            } else if (ScrollClickView.DIR_LEFT.equalsIgnoreCase(str) || a.this.az) {
                                a.this.a(aVar, this.f11323a + "", this.f11324b + "", this.f11327e + "", this.f11328f + "", motionEvent.getX() + "", motionEvent.getY() + "", motionEvent.getRawX() + "", motionEvent.getRawY() + "");
                            }
                        } else if ("up".equalsIgnoreCase(str) || a.this.az) {
                            a.this.a(aVar, this.f11323a + "", this.f11324b + "", this.f11327e + "", this.f11328f + "", motionEvent.getX() + "", motionEvent.getY() + "", motionEvent.getRawX() + "", motionEvent.getRawY() + "");
                        }
                    } else if (ScrollClickView.DIR_DOWN.equalsIgnoreCase(str) || a.this.az) {
                        a.this.a(aVar, this.f11323a + "", this.f11324b + "", this.f11327e + "", this.f11328f + "", motionEvent.getX() + "", motionEvent.getY() + "", motionEvent.getRawX() + "", motionEvent.getRawY() + "");
                    }
                } else if (action == 2) {
                    this.f11325c = motionEvent.getX();
                    this.f11326d = motionEvent.getY();
                }
                return true;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(am.a aVar, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        try {
            if (!this.aD) {
                as.a(this.f11300u, this.Z, (Object) Long.valueOf(System.currentTimeMillis()));
            }
            if (aVar != null) {
                aVar.b(str, str2, str3, str4, str5, str6, str7, str8);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
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

    @Override // com.beizi.fusion.tool.aj.a
    public void a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        this.f11291ac = "regionalClick";
        this.f10979b.setClickType("regionalClick");
        ao();
        ac.a("BeiZis", "enter onRegionClickByPosition ");
        a(str, str2, str3, str4, str5, str6, str7, str8, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, int i10) {
        try {
            this.ay = true;
            com.beizi.ad.v2.g.a aVar = this.f11303x;
            if (aVar != null) {
                aVar.a(str, str2, str3, str4, str5, str6, str7, str8, i10);
            }
            ae aeVar = this.aE;
            if (aeVar != null) {
                aeVar.a();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void a(AdSpacesBean.BuyerBean.RollViewBean rollViewBean) {
        AdSpacesBean.BuyerBean.CoolRollViewBean coolRollViewBean = this.ah;
        if (coolRollViewBean == null) {
            this.f11289aa = true;
            this.ai.a(rollViewBean);
        } else if (b(coolRollViewBean.getCoolTime())) {
            this.ai.a(this.ah);
        } else if (c(this.ah.getUserProtectTime())) {
            this.ai.a(this.ah);
        } else {
            this.f11289aa = true;
            this.ai.a(rollViewBean);
        }
    }

    @Override // com.beizi.fusion.work.a
    public void a(Map map) {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        try {
            com.beizi.ad.v2.g.a aVar = this.f11303x;
            if (aVar == null) {
                return;
            }
            aVar.a(map);
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
}

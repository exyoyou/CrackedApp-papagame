package com.beizi.fusion.work.c;

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
import android.widget.LinearLayout;
import android.widget.TextView;
import com.beizi.ad.e;
import com.beizi.ad.internal.e.h;
import com.beizi.ad.internal.e.t;
import com.beizi.fusion.R;
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
import com.beizi.fusion.tool.l;
import com.beizi.fusion.tool.o;
import com.beizi.fusion.tool.y;
import com.beizi.fusion.widget.ScrollClickView;
import com.beizi.fusion.work.splash.SplashContainer;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class d extends com.beizi.fusion.work.a implements com.beizi.fusion.c.c {
    private AdSpacesBean.BuyerBean.CoolShakeViewBean A;
    private ad B;
    private AdSpacesBean.BuyerBean.DislikeConfigBean E;
    private AdSpacesBean.BuyerBean.DislikeConfigBean F;
    private e L;
    private Boolean P;
    private long Q;
    private int R;
    private int S;
    private boolean T;
    private boolean U;
    private long V;
    private int W;
    private int X;
    private FrameLayout Y;
    private boolean Z;

    /* JADX INFO: renamed from: ab, reason: collision with root package name */
    private long f11122ab;

    /* JADX INFO: renamed from: ac, reason: collision with root package name */
    private String f11123ac;

    /* JADX INFO: renamed from: ad, reason: collision with root package name */
    private boolean f11124ad;
    private boolean ae;
    private boolean ag;
    private boolean ah;
    private ViewGroup ai;
    private FrameLayout aj;
    private long ak;
    private AdSpacesBean.ComplainBean al;
    private boolean am;
    private long an;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private Context f11125n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private String f11126o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long f11127p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private long f11128q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private float f11129r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private float f11130s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private com.beizi.ad.v2.d.a f11131t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private ViewGroup f11132u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private View f11133v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private List<AdSpacesBean.RenderViewBean> f11134w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private AdSpacesBean.RenderViewBean f11135x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private List<Pair<String, Integer>> f11136y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.ShakeViewBean f11137z;
    private String C = null;
    private boolean D = false;
    private float G = 0.0f;
    private float H = 0.0f;
    private float I = 0.0f;
    private float J = 0.0f;
    private String K = null;
    private String M = null;
    private boolean N = false;
    private boolean O = false;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private String[] f11121aa = new String[4];
    private String af = "#00000000";
    private ViewTreeObserver.OnScrollChangedListener ao = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.beizi.fusion.work.c.d.5
        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public void onScrollChanged() {
            try {
                if (d.this.Z && !d.this.T && !d.this.f11124ad && System.currentTimeMillis() - d.this.f11122ab >= d.this.V && System.currentTimeMillis() - d.this.Q >= 50) {
                    d.this.Q = System.currentTimeMillis();
                    if (aw.a(d.this.f11133v, 0.8d)) {
                        int[] iArr = new int[2];
                        if (d.this.f11133v != null) {
                            d.this.f11133v.getLocationOnScreen(iArr);
                        }
                        if (iArr[1] > 0 && d.this.X == 0) {
                            d.this.X = iArr[1];
                        }
                        if (Math.abs(d.this.X - iArr[1]) < d.this.W) {
                            return;
                        }
                        d dVar = d.this;
                        dVar.a(dVar.f11121aa, 0);
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    };
    private ViewTreeObserver.OnScrollChangedListener ap = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.beizi.fusion.work.c.d.7
        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public void onScrollChanged() {
            try {
                if (d.this.f11132u != null && System.currentTimeMillis() - d.this.ak >= 100) {
                    d.this.ak = System.currentTimeMillis();
                    int[] iArr = new int[2];
                    d.this.f11132u.getLocationOnScreen(iArr);
                    if (iArr[1] < 0) {
                        d.this.f11132u.getViewTreeObserver().removeOnScrollChangedListener(this);
                        if (d.this.aj == null || d.this.ai == null) {
                            return;
                        }
                        d.this.ai.removeView(d.this.aj);
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    };

    public d(Context context, String str, long j10, long j11, AdSpacesBean.BuyerBean buyerBean, AdSpacesBean.ForwardBean forwardBean, com.beizi.fusion.c.e eVar, float f10, float f11) {
        this.f11125n = context;
        this.f11126o = str;
        this.f11127p = j10;
        this.f11128q = j11;
        this.f10982e = buyerBean;
        this.f10981d = eVar;
        this.f10983f = forwardBean;
        this.f11129r = f10;
        this.f11130s = f11;
        this.f11132u = new SplashContainer(context);
        r();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aA() {
        try {
            LinearLayout linearLayout = new LinearLayout(this.f11125n);
            linearLayout.setOrientation(1);
            linearLayout.setGravity(17);
            linearLayout.setBackgroundColor(Color.parseColor("#FFFFFF"));
            ImageView imageView = new ImageView(this.f11125n);
            imageView.setImageResource(R.drawable.beizi_icon_checkbox);
            imageView.setColorFilter(Color.parseColor("#000000"));
            linearLayout.addView(imageView);
            TextView textView = new TextView(this.f11125n);
            textView.setText("投诉成功，我们将重视您的反馈。");
            textView.setTextColor(Color.parseColor("#000000"));
            textView.setTextSize(2, 13.0f);
            textView.setGravity(17);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
            layoutParams.setMargins(0, 30, 0, 0);
            linearLayout.addView(textView, layoutParams);
            this.f11133v.measure(0, 0);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(this.f11133v.getMeasuredWidth(), this.f11133v.getMeasuredHeight());
            layoutParams2.gravity = 17;
            this.f11132u.addView(linearLayout, layoutParams2);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private boolean aB() {
        try {
            return System.currentTimeMillis() - au.p(this.f11125n).longValue() < this.A.getUserProtectTime();
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aC() {
        AdSpacesBean.BuyerBean.DislikeConfigBean dislikeConfig = this.f10982e.getDislikeConfig();
        this.E = dislikeConfig;
        if (dislikeConfig == null) {
            return;
        }
        String dislikeUuid = dislikeConfig.getDislikeUuid();
        AdSpacesBean.BuyerBean.DislikeConfigBean dislikeConfigBeanB = b(this.E.getOrderData(), this.f11131t.b());
        if (dislikeConfigBeanB != null) {
            this.F = dislikeConfigBeanB;
            dislikeUuid = dislikeConfigBeanB.getDislikeUuid();
        }
        EventBean eventBean = this.f10979b;
        if (eventBean != null) {
            eventBean.setDislikeUuid(dislikeUuid);
            ao();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean aD() {
        AdSpacesBean.BuyerBean.DislikeConfigBean dislikeConfigBean = this.F;
        if (dislikeConfigBean != null) {
            return dislikeConfigBean.getIsHide() == 0;
        }
        AdSpacesBean.BuyerBean.DislikeConfigBean dislikeConfigBean2 = this.E;
        return dislikeConfigBean2 != null && dislikeConfigBean2.getIsHide() == 0;
    }

    private boolean aE() {
        try {
            AdSpacesBean.BuyerBean.DislikeConfigBean dislikeConfigBean = this.F;
            if (dislikeConfigBean != null) {
                return dislikeConfigBean.getIsShowDialog() == 1;
            }
            AdSpacesBean.BuyerBean.DislikeConfigBean dislikeConfigBean2 = this.E;
            return dislikeConfigBean2 != null && dislikeConfigBean2.getIsShowDialog() == 1;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean aF() {
        return this.ae;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aG() {
        try {
            if (aE()) {
                com.beizi.fusion.widget.dialog.dislike.a.C0247a c0247a = new com.beizi.fusion.widget.dialog.dislike.a.C0247a(this.f11125n);
                c0247a.a(new com.beizi.fusion.widget.dialog.dislike.a.c() { // from class: com.beizi.fusion.work.c.d.2
                    @Override // com.beizi.fusion.widget.dialog.dislike.a.c
                    public void a() {
                        try {
                            if (((com.beizi.fusion.work.a) d.this).f10981d != null && ((com.beizi.fusion.work.a) d.this).f10981d.t() != 2) {
                                ((com.beizi.fusion.work.a) d.this).f10981d.b(d.this.f(), d.this.f11133v);
                            }
                            d.this.F();
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    }
                });
                c0247a.a().show();
            } else {
                com.beizi.fusion.c.e eVar = this.f10981d;
                if (eVar != null && eVar.t() != 2) {
                    this.f10981d.b(f(), this.f11133v);
                }
                F();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private boolean aH() {
        AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean = this.f11137z;
        if (shakeViewBean == null) {
            return false;
        }
        return ai.a(shakeViewBean.getRenderRate());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aI() {
        try {
            if (this.U && this.f11132u != null && this.f11125n != null) {
                this.Y = new FrameLayout(this.f11125n);
                int width = this.f11132u.getWidth();
                int height = this.f11132u.getHeight();
                if (width <= 0) {
                    width = -1;
                }
                if (height <= 0) {
                    height = -1;
                }
                this.Y.setLayoutParams(new FrameLayout.LayoutParams(width, height));
                this.Y.setBackgroundColor(Color.parseColor(this.af));
                this.f11132u.addView(this.Y);
                this.Y.setOnTouchListener(new View.OnTouchListener() { // from class: com.beizi.fusion.work.c.d.4
                    @Override // android.view.View.OnTouchListener
                    public boolean onTouch(View view, MotionEvent motionEvent) {
                        if (motionEvent.getAction() == 0) {
                            d.this.Z = true;
                            d.this.f11121aa[0] = motionEvent.getX() + "";
                            d.this.f11121aa[1] = motionEvent.getY() + "";
                            d.this.f11121aa[2] = motionEvent.getRawX() + "";
                            d.this.f11121aa[3] = motionEvent.getRawY() + "";
                        }
                        return false;
                    }
                });
                this.Y.getViewTreeObserver().addOnScrollChangedListener(this.ao);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void aJ() {
        FrameLayout frameLayout;
        FrameLayout frameLayout2;
        try {
            FrameLayout frameLayout3 = this.Y;
            if (frameLayout3 != null && this.ao != null) {
                frameLayout3.getViewTreeObserver().removeOnScrollChangedListener(this.ao);
            }
            ViewGroup viewGroup = this.f11132u;
            if (viewGroup != null && (frameLayout2 = this.Y) != null) {
                viewGroup.removeView(frameLayout2);
                this.Y = null;
            }
            ViewGroup viewGroup2 = this.f11132u;
            if (viewGroup2 != null && this.ap != null) {
                viewGroup2.getViewTreeObserver().removeOnScrollChangedListener(this.ap);
            }
            ViewGroup viewGroup3 = this.ai;
            if (viewGroup3 == null || (frameLayout = this.aj) == null) {
                return;
            }
            viewGroup3.removeView(frameLayout);
            this.aj = null;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aK() {
        AdSpacesBean.BuyerBean buyerBean;
        AdSpacesBean.NativeOptimizeBean nativeOptimize;
        AdSpacesBean.NativeOptimizeClickAreaBean clickArea;
        try {
            if (this.f11132u != null && this.f11125n != null && (buyerBean = this.f10982e) != null) {
                if ((this.ag || this.ah) && (nativeOptimize = buyerBean.getNativeOptimize()) != null && (clickArea = nativeOptimize.getClickArea()) != null && ai.a(clickArea.getRandomNum())) {
                    int reference = clickArea.getReference();
                    String width = clickArea.getWidth();
                    String height = clickArea.getHeight();
                    String horizontalSpace = clickArea.getHorizontalSpace();
                    String verticalSpace = clickArea.getVerticalSpace();
                    View rootView = this.f11132u.getRootView();
                    if (rootView == null) {
                        return;
                    }
                    ViewGroup viewGroup = (ViewGroup) rootView.findViewById(android.R.id.content);
                    this.ai = viewGroup;
                    if (viewGroup == null) {
                        return;
                    }
                    int iM = au.m(this.f11125n);
                    int iN = au.n(this.f11125n);
                    int width2 = this.f11132u.getWidth();
                    int height2 = this.f11132u.getHeight();
                    int[] iArr = new int[2];
                    this.f11132u.getLocationOnScreen(iArr);
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
                    this.aj = new FrameLayout(this.f11125n);
                    this.aj.setLayoutParams(new FrameLayout.LayoutParams(iM, i12));
                    int iA = a(horizontalSpace, iM, width2, i10);
                    int iB = b(verticalSpace, i12, height2, i11);
                    int iA2 = au.a(this.f11125n, 25.0f);
                    if (iB > iA2) {
                        iB -= iA2;
                    }
                    this.aj.setX(iA);
                    this.aj.setY(iB);
                    this.aj.setBackgroundColor(Color.parseColor(this.af));
                    this.ai.addView(this.aj);
                    final float[] fArr = new float[4];
                    this.aj.setOnTouchListener(new View.OnTouchListener() { // from class: com.beizi.fusion.work.c.d.6
                        @Override // android.view.View.OnTouchListener
                        public boolean onTouch(View view, MotionEvent motionEvent) {
                            try {
                                if (motionEvent.getAction() == 0) {
                                    fArr[0] = motionEvent.getX();
                                    fArr[1] = motionEvent.getY();
                                    fArr[2] = motionEvent.getRawX();
                                    fArr[3] = motionEvent.getRawY();
                                    if (d.this.ag) {
                                        d dVar = d.this;
                                        FrameLayout frameLayout = dVar.aj;
                                        ViewGroup viewGroup2 = d.this.f11132u;
                                        float[] fArr2 = fArr;
                                        d.this.a(dVar.a(frameLayout, viewGroup2, fArr2[0], fArr2[1], fArr2[2], fArr2[3]), 0);
                                    }
                                }
                                if (motionEvent.getAction() == 1 && d.this.ah) {
                                    d dVar2 = d.this;
                                    FrameLayout frameLayout2 = dVar2.aj;
                                    ViewGroup viewGroup3 = d.this.f11132u;
                                    float[] fArr3 = fArr;
                                    d.this.a(dVar2.a(frameLayout2, viewGroup3, fArr3[0], fArr3[1], fArr3[2], fArr3[3]), 0);
                                }
                                return d.this.ag || d.this.ah;
                            } catch (Exception e11) {
                                e11.printStackTrace();
                            }
                        }
                    });
                    this.f11132u.getViewTreeObserver().addOnScrollChangedListener(this.ap);
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void aL() {
        ViewGroup viewGroup = this.f11132u;
        if (viewGroup == null) {
            return;
        }
        viewGroup.setOnTouchListener(new View.OnTouchListener() { // from class: com.beizi.fusion.work.c.d.8

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            String[] f11168a = new String[4];

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                ViewParent parent;
                try {
                    if (motionEvent.getAction() == 0) {
                        if ((d.this.ag || d.this.ah) && d.this.f11132u != null && (parent = d.this.f11132u.getParent()) != null) {
                            parent.requestDisallowInterceptTouchEvent(true);
                        }
                        this.f11168a[0] = motionEvent.getX() + "";
                        this.f11168a[1] = motionEvent.getY() + "";
                        this.f11168a[2] = motionEvent.getRawX() + "";
                        this.f11168a[3] = motionEvent.getRawY() + "";
                        if (d.this.ag) {
                            d.this.a(this.f11168a);
                        }
                    }
                    if (motionEvent.getAction() == 1 && d.this.ah) {
                        d.this.a(this.f11168a);
                    }
                    return d.this.ag || d.this.ah;
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void az() {
        try {
            AdSpacesBean.ComplainBean complainBean = this.al;
            if (complainBean != null && complainBean.getOpen() == 1) {
                l lVar = new l();
                lVar.a(this.f11125n, this.f11132u, "1");
                lVar.a(new l.a() { // from class: com.beizi.fusion.work.c.d.14
                    @Override // com.beizi.fusion.tool.l.a
                    public void a(String str) {
                        try {
                            as.a(d.this.f11125n, d.this.M, (Object) Long.valueOf(System.currentTimeMillis()));
                            ((com.beizi.fusion.work.a) d.this).f10979b.setComplain(str);
                            d.this.ao();
                            d.this.H();
                            d.this.aA();
                            if (((com.beizi.fusion.work.a) d.this).f10981d != null && ((com.beizi.fusion.work.a) d.this).f10981d.t() != 2) {
                                ((com.beizi.fusion.work.a) d.this).f10981d.b(d.this.f(), d.this.f11133v);
                            }
                            d.this.F();
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    }
                });
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.beizi.fusion.work.a
    public String aw() {
        com.beizi.ad.v2.d.a aVar = this.f11131t;
        if (aVar == null) {
            return null;
        }
        return aVar.h();
    }

    @Override // com.beizi.fusion.work.a
    public JSONObject ax() {
        com.beizi.ad.v2.d.a aVar = this.f11131t;
        if (aVar == null) {
            return null;
        }
        return aVar.m();
    }

    @Override // com.beizi.fusion.work.a
    public boolean ay() {
        com.beizi.ad.v2.d.a aVar = this.f11131t;
        if (aVar == null) {
            return false;
        }
        return aVar.q();
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
        com.beizi.ad.v2.d.a aVar = this.f11131t;
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
        v();
        ab();
        AdSpacesBean.BuyerBean.ShakeViewBean shakeView = this.f10982e.getShakeView();
        this.f11137z = shakeView;
        if (shakeView != null) {
            this.A = shakeView.getCoolShakeView();
        }
        this.C = "cool_" + this.f10986i;
        this.K = "dl_cool_" + this.f10986i;
        if (this.f11129r <= 0.0f) {
            this.f11129r = au.i(this.f11125n);
        }
        if (this.f11130s <= 0.0f) {
            this.f11130s = 0.0f;
        }
        com.beizi.ad.v2.d.a aVar = new com.beizi.ad.v2.d.a(this.f11125n, this.f10986i, 3, new com.beizi.ad.d() { // from class: com.beizi.fusion.work.c.d.1
            @Override // com.beizi.ad.d
            public void a(e eVar) {
                ((com.beizi.fusion.work.a) d.this).f10987j = com.beizi.fusion.e.a.ADLOAD;
                d.this.L = eVar;
                d dVar = d.this;
                dVar.P = Boolean.valueOf(dVar.f11131t.l());
                d dVar2 = d.this;
                dVar2.am = dVar2.f11131t.i();
                if (d.this.am) {
                    d dVar3 = d.this;
                    dVar3.an = dVar3.f11131t.j();
                    ((com.beizi.fusion.work.a) d.this).f10979b.setIsCacheAd("1");
                    if (d.this.an > 0) {
                        ((com.beizi.fusion.work.a) d.this).f10979b.setCacheTime(String.valueOf(System.currentTimeMillis() - d.this.an));
                    }
                    d.this.ao();
                }
                if (d.this.f11131t.a() != null) {
                    try {
                        d dVar4 = d.this;
                        dVar4.a(Double.parseDouble(dVar4.f11131t.a()));
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
                d.this.x();
                if (eVar == null) {
                    d.this.d(-991);
                } else {
                    d.this.c(eVar);
                }
            }

            @Override // com.beizi.ad.d
            public void a(int i10) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("showBeiZiNativeAd onAdFailed: ");
                sb2.append(i10);
                d.this.a(String.valueOf(i10), i10);
            }
        });
        this.f11131t = aVar;
        aVar.a(true);
        try {
            this.f11131t.a(this.f10979b.m15clone());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        this.f11131t.a((int) this.f11127p);
        this.f11131t.a(this.f10982e);
        if ("S2S".equals(g())) {
            this.f11131t.c(g());
            com.beizi.fusion.c.e eVar = this.f10981d;
            if (eVar != null) {
                String strB = eVar.B();
                if (!TextUtils.isEmpty(strB)) {
                    this.f11131t.b(strB);
                }
            }
        }
        com.beizi.fusion.c.e eVar2 = this.f10981d;
        if (eVar2 != null) {
            this.f11131t.c(eVar2.C());
            this.f11131t.d(this.f10981d.D());
        }
        this.f11131t.c();
    }

    @Override // com.beizi.fusion.work.a
    public void l() {
        e eVar = this.L;
        if (eVar != null) {
            eVar.g();
        }
        com.beizi.ad.v2.d.a aVar = this.f11131t;
        if (aVar != null) {
            aVar.f();
        }
        ad adVar = this.B;
        if (adVar != null) {
            adVar.c();
        }
        aJ();
    }

    @Override // com.beizi.fusion.work.a
    public void m() {
        ad adVar;
        try {
            if (!com.beizi.fusion.c.b.a().o() || (adVar = this.B) == null) {
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
            if (!com.beizi.fusion.c.b.a().o() || (adVar = this.B) == null) {
                return;
            }
            adVar.a(false);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.beizi.fusion.work.a
    public View o() {
        return this.f11133v;
    }

    @Override // com.beizi.fusion.work.a
    protected void z() {
        if (!y() || this.f11131t == null) {
            return;
        }
        ag();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(e eVar) {
        View viewA;
        if (eVar == null) {
            return;
        }
        try {
            if (eVar.m() == null || (viewA = com.beizi.ad.internal.c.d.a(this.f11125n, eVar)) == null) {
                return;
            }
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((this.f11132u.getLayoutParams().width * 2) / 3, -2);
            layoutParams.gravity = 83;
            this.f11132u.addView(viewA, layoutParams);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(e eVar) {
        ImageView imageView = new ImageView(this.f11125n);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(85, 85);
        imageView.setPadding(25, 15, 15, 25);
        imageView.setLayoutParams(layoutParams);
        imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        imageView.setVisibility(0);
        imageView.setImageResource(R.drawable.beizi_close);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(85, 85);
        layoutParams2.gravity = 5;
        this.f11132u.addView(imageView, layoutParams2);
        imageView.setOnTouchListener(new View.OnTouchListener() { // from class: com.beizi.fusion.work.c.d.17
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (motionEvent.getAction() != 1) {
                    return false;
                }
                d.this.G = motionEvent.getX();
                d.this.H = motionEvent.getY();
                d.this.I = motionEvent.getRawX();
                d.this.J = motionEvent.getRawY();
                return false;
            }
        });
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.beizi.fusion.work.c.d.18
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!d.this.aF()) {
                    d.this.aG();
                    return;
                }
                d.this.ae = false;
                d.this.a(new String[]{String.valueOf(d.this.G), String.valueOf(d.this.H), String.valueOf(d.this.I), String.valueOf(d.this.J)}, 0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(final e eVar) {
        if (eVar == null) {
            d(-991);
            return;
        }
        ArrayList<String> arrayListH = eVar.h();
        if (arrayListH != null && arrayListH.size() != 0) {
            final ImageView imageView = new ImageView(this.f11125n);
            imageView.setVisibility(0);
            h.a((Context) null).a(arrayListH.get(0), new h.a() { // from class: com.beizi.fusion.work.c.d.11
                @Override // com.beizi.ad.internal.e.h.a
                public void a(Bitmap bitmap) {
                    ViewGroup.LayoutParams layoutParams;
                    try {
                        int width = bitmap.getWidth();
                        int height = bitmap.getHeight();
                        float f10 = (float) ((((double) width) * 1.0d) / ((double) height));
                        int iA = au.a(d.this.f11125n, d.this.f11129r);
                        int iA2 = d.this.f11130s > 0.0f ? au.a(d.this.f11125n, d.this.f11130s) : (int) (iA / f10);
                        ImageView imageView2 = imageView;
                        if (imageView2 != null && (layoutParams = imageView2.getLayoutParams()) != null) {
                            layoutParams.width = iA;
                            layoutParams.height = iA2;
                            imageView.setLayoutParams(layoutParams);
                        }
                        ImageView imageView3 = imageView;
                        if (imageView3 != null) {
                            d.this.a(iA, iA2, f10, bitmap, imageView3);
                            imageView.setImageBitmap(bitmap);
                        }
                        d.this.R = iA;
                        d.this.S = iA2;
                        if (d.this.S < 0) {
                            d.this.S = height;
                        }
                        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(iA, iA2);
                        if (d.this.f11132u != null) {
                            d.this.f11132u.removeAllViews();
                            d.this.f11132u.setLayoutParams(layoutParams2);
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("mNativeAd != null ? ");
                            boolean z10 = true;
                            sb2.append(d.this.f11131t != null);
                            sb2.append(",renderViewBean != null ? ");
                            if (d.this.f11135x == null) {
                                z10 = false;
                            }
                            sb2.append(z10);
                            ac.a("BeiZis", sb2.toString());
                            d.this.f11132u.addView(imageView, layoutParams2);
                            d.this.d(eVar);
                            d.this.az();
                            d.this.e(eVar);
                            d.this.a(eVar, iA, iA2, bitmap.getHeight());
                            d.this.aC();
                            if (d.this.aD()) {
                                d.this.f(eVar);
                            }
                            d dVar = d.this;
                            dVar.f11133v = dVar.f11132u;
                            if (d.this.B != null) {
                                d.this.B.a(d.this.f11133v);
                            }
                        }
                        if (d.this.f11131t != null && d.this.f11135x != null) {
                            d.this.f11131t.a(d.this.f11136y);
                            d.this.f11131t.b(d.this.f11135x.getOptimizePercent());
                            ac.a("BeiZis", "percent = " + d.this.f11135x.getOptimizePercent());
                            d.this.f11132u.post(new Runnable() { // from class: com.beizi.fusion.work.c.d.11.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    com.beizi.ad.v2.d.a aVar = d.this.f11131t;
                                    int optimizeSize = d.this.f11135x.getOptimizeSize();
                                    AnonymousClass11 anonymousClass11 = AnonymousClass11.this;
                                    aVar.a(optimizeSize, imageView, d.this.f11132u, d.this.f11135x.getDirection());
                                }
                            });
                        }
                        d.this.b(eVar);
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }

                @Override // com.beizi.ad.internal.e.h.a
                public void a() {
                    d.this.a("sdk custom error ".concat("onBitmapLoadFailed"), 99991);
                }
            });
            if (!this.ag && !this.ah) {
                com.beizi.ad.internal.c.d.a(eVar, imageView, new com.beizi.ad.internal.c.b() { // from class: com.beizi.fusion.work.c.d.12

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    boolean f11148a = false;

                    @Override // com.beizi.ad.internal.c.b
                    public void a() {
                        d.this.b();
                    }

                    @Override // com.beizi.ad.internal.c.b
                    public void b() {
                    }
                });
            } else {
                aL();
            }
            com.beizi.ad.v2.d.a aVar = this.f11131t;
            if (aVar != null) {
                aVar.a(imageView, new com.beizi.ad.internal.c.c() { // from class: com.beizi.fusion.work.c.d.13
                    @Override // com.beizi.ad.internal.c.c
                    public void a() {
                        d.this.f11122ab = System.currentTimeMillis();
                        ((com.beizi.fusion.work.a) d.this).f10987j = com.beizi.fusion.e.a.ADSHOW;
                        if (d.this.am) {
                            ((com.beizi.fusion.work.a) d.this).f10979b.setIsCacheAd("1");
                            if (d.this.an > 0) {
                                ((com.beizi.fusion.work.a) d.this).f10979b.setCacheTime(String.valueOf(System.currentTimeMillis() - d.this.an));
                            }
                            d.this.ao();
                        }
                        if (((com.beizi.fusion.work.a) d.this).f10981d != null && ((com.beizi.fusion.work.a) d.this).f10981d.t() != 2) {
                            ((com.beizi.fusion.work.a) d.this).f10981d.b(d.this.f());
                        }
                        d.this.B();
                        d.this.C();
                        d.this.ac();
                        d.this.aI();
                        d.this.aK();
                    }
                });
                return;
            }
            return;
        }
        d(-991);
    }

    @Override // com.beizi.fusion.work.a
    public void d() {
        if (this.f10981d == null) {
            return;
        }
        this.f10985h = this.f10982e.getAppId();
        this.f10986i = this.f10982e.getSpaceId();
        this.f10980c = this.f10982e.getBuyerSpaceUuId();
        this.al = this.f10982e.getComplain();
        this.M = "complain_config_" + this.f10986i;
        AdSpacesBean.NativeOptimizeBean nativeOptimize = this.f10982e.getNativeOptimize();
        if (nativeOptimize != null) {
            this.f11123ac = nativeOptimize.getNativeUuid();
            AdSpacesBean.NativeOptimizeAdSlideBean adSlide = nativeOptimize.getAdSlide();
            if (adSlide != null) {
                this.U = ai.a(adSlide.getRandomNum());
                this.V = adSlide.getNeedTime();
                this.W = adSlide.getDistance();
            }
            this.ae = ai.a(nativeOptimize.getCloseClickNum());
            this.ag = ai.a(nativeOptimize.getTouchDownNum());
            this.ah = ai.a(nativeOptimize.getHoldSlideNum());
        }
        try {
            List<AdSpacesBean.CallBackStrategyBean> callBackStrategy = this.f10982e.getCallBackStrategy();
            if (callBackStrategy != null && callBackStrategy.size() > 0) {
                this.N = true;
                for (int i10 = 0; i10 < callBackStrategy.size(); i10++) {
                    AdSpacesBean.CallBackStrategyBean callBackStrategyBean = callBackStrategy.get(i10);
                    if ("290.300".equalsIgnoreCase(callBackStrategyBean.getEventCode())) {
                        this.O = ai.a(Integer.parseInt(callBackStrategyBean.getRate()));
                        break;
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        List<AdSpacesBean.RenderViewBean> renderView = this.f10982e.getRenderView();
        this.f11134w = renderView;
        if (renderView != null && renderView.size() > 0) {
            AdSpacesBean.RenderViewBean renderViewBean = this.f11134w.get(0);
            this.f11135x = renderViewBean;
            this.f11136y = o.a(renderViewBean.getDpLinkUrlList());
        }
        com.beizi.fusion.events.b bVar = this.f10978a;
        if (bVar != null) {
            EventBean eventBeanA = bVar.a().a(this.f10980c);
            this.f10979b = eventBeanA;
            if (eventBeanA != null) {
                s();
                t();
                n.a(this.f11125n, this.f10985h);
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
        sb2.append(this.f11128q);
        long j10 = this.f11128q;
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
    public void b(e eVar) {
        if (Y()) {
            a(eVar);
        } else {
            P();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        AdSpacesBean.BuyerBean buyerBean;
        this.T = true;
        this.f11124ad = false;
        this.ae = false;
        aJ();
        if (this.N && (buyerBean = this.f10982e) != null) {
            this.f10979b.setCallBackStrategyUuid(buyerBean.getCallBackStrategyUuid());
            ao();
        }
        E();
        if (!this.N || this.O) {
            com.beizi.fusion.c.e eVar = this.f10981d;
            if (eVar != null && eVar.t() != 2) {
                this.f10981d.d(f());
            }
            D();
            ad();
            com.beizi.ad.v2.d.a aVar = this.f11131t;
            if (aVar != null) {
                aVar.u();
            }
        }
    }

    private void a(e eVar) {
        com.beizi.fusion.c.e eVar2 = this.f10981d;
        if (eVar2 == null) {
            return;
        }
        Map<String, com.beizi.fusion.work.a> mapS = eVar2.s();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(f());
        sb2.append(" NativeAdWorker:");
        sb2.append(mapS.toString());
        Z();
        g gVar = this.f10984g;
        if (gVar == g.SUCCESS) {
            if (this.f11133v != null) {
                this.f10981d.a(f(), this.f11133v);
                return;
            } else {
                this.f10981d.b(10140);
                return;
            }
        }
        if (gVar == g.FAIL) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("other worker shown,");
            sb3.append(f());
            sb3.append(" remove");
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

    private boolean b(final AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean) {
        long jLongValue = ((Long) as.b(this.f11125n, this.C, 0L)).longValue();
        if (jLongValue != 0) {
            long jCurrentTimeMillis = System.currentTimeMillis() - jLongValue;
            if (jCurrentTimeMillis < this.A.getCoolTime()) {
                new Handler().postDelayed(new Runnable() { // from class: com.beizi.fusion.work.c.d.16
                    @Override // java.lang.Runnable
                    public void run() {
                        d.this.B.a(shakeViewBean);
                    }
                }, this.A.getCoolTime() - jCurrentTimeMillis);
                return true;
            }
            ap.a().a(this.C);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final e eVar, final int i10, final int i11, int i12) {
        AdSpacesBean.BuyerBean.ShakeViewBean shakeView;
        try {
            if (!com.beizi.fusion.c.b.a().p() && aH()) {
                if (this.B == null) {
                    this.B = new ad(this.f11125n);
                }
                AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean = this.f11137z;
                if (shakeViewBean == null || this.B == null || shakeViewBean.getPosition() == null) {
                    return;
                }
                String shakeViewUuid = this.f11137z.getShakeViewUuid();
                AdSpacesBean.BuyerBean.OrderDataShakeViewBean orderDataShakeViewBeanA = a(this.f11137z.getOrderData(), this.f11131t.b());
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
                this.B.a(this.P);
                View viewA = this.B.a(au.b(this.f11125n, i10), au.b(this.f11125n, i11), this.f11137z.getPosition());
                if (viewA != null) {
                    ViewGroup.LayoutParams layoutParams = viewA.getLayoutParams();
                    if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(marginLayoutParams.width, marginLayoutParams.height);
                        layoutParams2.leftMargin = marginLayoutParams.leftMargin;
                        layoutParams2.topMargin = marginLayoutParams.topMargin;
                        AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean2 = this.f11137z;
                        if (shakeViewBean2 != null && shakeViewBean2.getIsHideAnim() == 0) {
                            this.f11132u.addView(viewA, layoutParams2);
                        }
                    }
                }
                a(shakeView);
                this.B.a(new ad.a() { // from class: com.beizi.fusion.work.c.d.15
                    @Override // com.beizi.fusion.tool.ad.a
                    public void a() {
                        try {
                            if (!aw.a(d.this.f11133v) || d.this.f11124ad) {
                                return;
                            }
                            d.this.T = true;
                            d.this.f11124ad = true;
                            int[] iArr = new int[2];
                            d.this.f11133v.getLocationOnScreen(iArr);
                            int[] iArrA = ai.a(i10 / 2, i11 / 2);
                            if (eVar != null && d.this.f11133v != null) {
                                eVar.a(d.this.f11133v, String.valueOf(iArrA[0]), String.valueOf(iArrA[1]), String.valueOf(iArrA[0] + iArr[0]), String.valueOf(iArrA[1] + iArr[1]), 2, new com.beizi.ad.internal.c.b() { // from class: com.beizi.fusion.work.c.d.15.1
                                    @Override // com.beizi.ad.internal.c.b
                                    public void a() {
                                        d.this.b();
                                    }

                                    @Override // com.beizi.ad.internal.c.b
                                    public void b() {
                                    }
                                });
                            }
                            if (!d.this.D || d.this.A == null) {
                                return;
                            }
                            d.this.D = false;
                            d.this.B.a(d.this.A);
                            as.a(d.this.f11125n, d.this.C, (Object) Long.valueOf(System.currentTimeMillis()));
                            ap.a().a(d.this.C, System.currentTimeMillis());
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    }
                });
                AdSpacesBean.BuyerBean.CoolShakeViewBean coolShakeViewBean = this.A;
                if (coolShakeViewBean != null) {
                    this.B.a(coolShakeViewBean, this.C);
                }
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
            com.beizi.ad.v2.d.a aVar = this.f11131t;
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

    /* JADX INFO: Access modifiers changed from: private */
    public void d(e eVar) {
        try {
            LinearLayout linearLayout = new LinearLayout(this.f11125n);
            linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 17));
            FrameLayout frameLayoutA = t.a(this.f11125n, eVar.k());
            frameLayoutA.setVisibility(0);
            linearLayout.addView(frameLayoutA, new LinearLayout.LayoutParams(-2, -2, 17.0f));
            View viewB = t.b(this.f11125n, eVar.j());
            viewB.setVisibility(0);
            linearLayout.addView(viewB, new LinearLayout.LayoutParams(-2, -2, 17.0f));
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) viewB.getLayoutParams();
            layoutParams.setMargins(5, 0, 0, 0);
            layoutParams.gravity = 17;
            viewB.setLayoutParams(layoutParams);
            this.f11132u.addView(linearLayout, new FrameLayout.LayoutParams(-2, -2, 85));
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) linearLayout.getLayoutParams();
            int iA = au.a(this.f11125n, 12.0f);
            layoutParams2.setMargins(0, 0, iA, iA);
            linearLayout.setLayoutParams(layoutParams2);
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
            shakeViewBean = this.f11137z;
        }
        int regulatoryAngle = shakeViewBean.getRegulatoryAngle();
        ad adVar = this.B;
        if (adVar != null) {
            adVar.c(regulatoryAngle);
        }
        if (this.A == null) {
            this.D = true;
            this.B.a(shakeViewBean);
        } else if (b(shakeViewBean)) {
            this.B.a(this.A);
        } else if (aB()) {
            this.B.a(this.A);
        } else {
            this.D = true;
            this.B.a(shakeViewBean);
        }
    }

    @Override // com.beizi.fusion.work.a
    public void a(Map map) {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        try {
            com.beizi.ad.v2.d.a aVar = this.f11131t;
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

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String[] strArr, int i10) {
        View view;
        try {
            aJ();
            if (this.L != null && this.f11133v != null && !this.f11124ad && !this.T) {
                this.T = true;
                this.f11124ad = true;
                EventBean eventBean = this.f10979b;
                if (eventBean != null) {
                    eventBean.setNativeRuleUuid(this.f11123ac);
                    ao();
                }
                e eVar = this.L;
                if (eVar == null || (view = this.f11133v) == null) {
                    return;
                }
                eVar.a(view, strArr[0], strArr[1], strArr[2], strArr[3], 0, new com.beizi.ad.internal.c.b() { // from class: com.beizi.fusion.work.c.d.3
                    @Override // com.beizi.ad.internal.c.b
                    public void a() {
                        d.this.b();
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
            aJ();
            if (this.L == null || this.f11133v == null || this.f11124ad) {
                return;
            }
            this.T = true;
            this.f11124ad = true;
            EventBean eventBean = this.f10979b;
            if (eventBean != null) {
                eventBean.setNativeRuleUuid(this.f11123ac);
                ao();
            }
            e eVar = this.L;
            if (eVar == null || (view = this.f11133v) == null) {
                return;
            }
            eVar.a(view, strArr[0], strArr[1], strArr[2], strArr[3], 0, new com.beizi.ad.internal.c.b() { // from class: com.beizi.fusion.work.c.d.9
                @Override // com.beizi.ad.internal.c.b
                public void a() {
                    d.this.b();
                }

                @Override // com.beizi.ad.internal.c.b
                public void b() {
                }
            });
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i10, int i11, float f10, final Bitmap bitmap, final ImageView imageView) {
        try {
            float fAbs = Math.abs(((float) ((((double) i10) * 1.0d) / ((double) i11))) - f10);
            if (fAbs > 0.15f) {
                com.beizi.ad.lance.a.c.b().e().execute(new Runnable() { // from class: com.beizi.fusion.work.c.d.10
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            if (d.this.f11125n == null || bitmap == null) {
                                return;
                            }
                            final BitmapDrawable bitmapDrawable = new BitmapDrawable(y.a(d.this.f11125n, bitmap, 20.0f));
                            if (((com.beizi.fusion.work.a) d.this).f10990m != null) {
                                ((com.beizi.fusion.work.a) d.this).f10990m.post(new Runnable() { // from class: com.beizi.fusion.work.c.d.10.1
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

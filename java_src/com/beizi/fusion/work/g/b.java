package com.beizi.fusion.work.g;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.beizi.ad.d;
import com.beizi.ad.e;
import com.beizi.ad.internal.e.h;
import com.beizi.ad.v2.d.c;
import com.beizi.fusion.R;
import com.beizi.fusion.c.n;
import com.beizi.fusion.events.EventBean;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.tool.ac;
import com.beizi.fusion.tool.ai;
import com.beizi.fusion.tool.am;
import com.beizi.fusion.tool.aq;
import com.beizi.fusion.tool.au;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class b extends a implements View.OnClickListener, am.a, aq.a {
    private ViewGroup W;
    private FrameLayout X;
    private c Y;
    private e Z;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.ShakeViewBean f11278aa;

    /* JADX INFO: renamed from: ab, reason: collision with root package name */
    private AdSpacesBean.BuyerBean.ScrollClickBean f11279ab;

    /* JADX INFO: renamed from: ac, reason: collision with root package name */
    private List<View> f11280ac;

    /* JADX INFO: renamed from: ad, reason: collision with root package name */
    private Boolean f11281ad;

    public b(Context context, long j10, AdSpacesBean.BuyerBean buyerBean, AdSpacesBean.ForwardBean forwardBean, com.beizi.fusion.c.e eVar, int i10) {
        super(context, j10, buyerBean, forwardBean, eVar, i10);
        this.f11280ac = new ArrayList();
    }

    private void aS() {
        if (this.Y == null) {
            ap();
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("shakeViewBean != null ? ");
        sb2.append(this.f11278aa != null);
        ac.a("BeiZis", sb2.toString());
        ((a) this).f11260x.removeAllViews();
        ((a) this).f11260x.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.beizi.fusion.work.g.b.7
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                ViewGroup viewGroup = ((a) b.this).f11260x;
                if (viewGroup == null) {
                    return;
                }
                viewGroup.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                b.this.aT();
                b.this.aU();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aT() {
        if (com.beizi.fusion.c.b.a().p()) {
            return;
        }
        if (this.P == null) {
            this.P = new aq(this.N);
        }
        AdSpacesBean.BuyerBean.ShakeViewBean shakeViewBean = this.f11278aa;
        if (shakeViewBean == null || this.P == null || shakeViewBean.getPosition() == null) {
            return;
        }
        String shakeViewUuid = this.f11278aa.getShakeViewUuid();
        AdSpacesBean.BuyerBean.OrderDataShakeViewBean orderDataShakeViewBeanA = a(this.f11278aa.getOrderData(), this.Y.b());
        if (orderDataShakeViewBeanA != null) {
            AdSpacesBean.BuyerBean.ShakeViewBean shakeView = orderDataShakeViewBeanA.getShakeView();
            if (shakeView != null) {
                shakeViewUuid = shakeView.getShakeViewUuid();
            }
            this.P.a(orderDataShakeViewBeanA.getShakeView());
        } else {
            this.P.a(this.f11278aa);
        }
        EventBean eventBean = this.f10979b;
        if (eventBean != null) {
            eventBean.setShakeViewUuid(shakeViewUuid);
            ao();
        }
        this.P.a(this.f11281ad);
        View viewA = this.P.a(au.b(this.N, ((a) this).f11260x.getWidth()), au.b(this.N, ((a) this).f11260x.getHeight()), this.f11278aa.getPosition());
        if (viewA != null) {
            ViewGroup.LayoutParams layoutParams = viewA.getLayoutParams();
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(marginLayoutParams.width, marginLayoutParams.height);
                layoutParams2.leftMargin = marginLayoutParams.leftMargin;
                layoutParams2.topMargin = marginLayoutParams.topMargin;
                try {
                    ((a) this).f11260x.addView(viewA, layoutParams2);
                    this.P.a(this);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aU() {
        AdSpacesBean.BuyerBean.ScrollClickBean scrollClickBean = this.f11279ab;
        if (scrollClickBean == null || this.Q == null || scrollClickBean.getPosition() == null) {
            return;
        }
        String scrollClickUuid = this.f11279ab.getScrollClickUuid();
        AdSpacesBean.BuyerBean.OrderDataScrollViewOrderBean orderDataScrollViewOrderBeanB = b(this.f11279ab.getOrderData(), this.Y.b());
        if (orderDataScrollViewOrderBeanB != null) {
            AdSpacesBean.BuyerBean.ScrollClickBean scrollClick = orderDataScrollViewOrderBeanB.getScrollClick();
            if (scrollClick != null) {
                scrollClickUuid = scrollClick.getScrollClickUuid();
            }
            this.Q.a(orderDataScrollViewOrderBeanB.getScrollClick());
        } else {
            this.Q.a(this.f11279ab);
        }
        EventBean eventBean = this.f10979b;
        if (eventBean != null) {
            eventBean.setScrollClickUuid(scrollClickUuid);
            ao();
        }
        this.Q.a(this.f11281ad);
        View viewA = this.Q.a(au.b(this.N, ((a) this).f11260x.getWidth()), au.b(this.N, ((a) this).f11260x.getHeight()), this.f11279ab.getPosition());
        if (viewA != null) {
            ViewGroup.LayoutParams layoutParams = viewA.getLayoutParams();
            if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(marginLayoutParams.width, marginLayoutParams.height);
                layoutParams2.leftMargin = marginLayoutParams.leftMargin;
                layoutParams2.topMargin = marginLayoutParams.topMargin;
                try {
                    ((a) this).f11260x.addView(viewA, layoutParams2);
                    this.Q.a(this);
                    a(((a) this).f11260x, this.f11279ab.getScrollDirection(), this.f11279ab.getScrollDistance(), this);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
    }

    @Override // com.beizi.fusion.work.g.a
    public void aA() {
        super.aA();
        this.W = (ViewGroup) ((a) this).f11251o.findViewById(R.id.fl_container_mask);
    }

    @Override // com.beizi.fusion.work.g.a
    public void aB() {
        t();
        n.a(this.N, this.f10985h);
        u();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(f());
        sb2.append(":requestAd:");
        sb2.append(this.f10985h);
        sb2.append("====");
        sb2.append(this.f10986i);
        sb2.append("===");
        sb2.append(((a) this).H);
        long j10 = ((a) this).H;
        if (j10 > 0) {
            this.f10990m.sendEmptyMessageDelayed(1, j10);
        } else {
            com.beizi.fusion.c.e eVar = this.f10981d;
            if (eVar != null && eVar.u() < 1 && this.f10981d.t() != 2) {
                k();
            }
        }
        this.Q = new am(this.N);
    }

    @Override // com.beizi.fusion.work.g.a
    public void aC() {
        this.f11278aa = this.f10982e.getShakeView();
        this.f11279ab = this.f10982e.getScrollClick();
        c cVar = new c(this.N, this.f10986i, new d() { // from class: com.beizi.fusion.work.g.b.1
            @Override // com.beizi.ad.d
            public void a(e eVar) {
                ((com.beizi.fusion.work.a) b.this).f10987j = com.beizi.fusion.e.a.ADLOAD;
                b bVar = b.this;
                bVar.f11281ad = Boolean.valueOf(bVar.Y.l());
                if (b.this.Y.a() != null) {
                    try {
                        b bVar2 = b.this;
                        bVar2.a(Double.parseDouble(bVar2.Y.a()));
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
                b.this.x();
                if (eVar == null) {
                    b.this.d(-991);
                } else {
                    b.this.Z = eVar;
                    b.this.aF();
                }
            }

            @Override // com.beizi.ad.d
            public void a(int i10) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("showBeiZiUnifiedCustomAd onAdFailed: ");
                sb2.append(i10);
                b.this.a(String.valueOf(i10), i10);
            }
        });
        this.Y = cVar;
        cVar.a(true);
        if ("S2S".equals(g())) {
            this.Y.c(g());
            com.beizi.fusion.c.e eVar = this.f10981d;
            if (eVar != null) {
                String strB = eVar.B();
                if (!TextUtils.isEmpty(strB)) {
                    this.Y.b(strB);
                }
            }
        }
        com.beizi.fusion.c.e eVar2 = this.f10981d;
        if (eVar2 != null) {
            this.Y.c(eVar2.C());
            this.Y.d(this.f10981d.D());
        }
        this.Y.c();
    }

    @Override // com.beizi.fusion.work.g.a
    public void aH() {
        if (ai.a(this.T.getCec())) {
            b("regionalClick");
        } else {
            aR();
        }
    }

    @Override // com.beizi.fusion.work.g.a
    public void aI() {
        aS();
        List<View> list = this.f11280ac;
        if (list == null || list.size() <= 0) {
            com.beizi.ad.internal.c.d.a(this.Z, this.X, new com.beizi.ad.internal.c.b() { // from class: com.beizi.fusion.work.g.b.4
                @Override // com.beizi.ad.internal.c.b
                public void a() {
                    b.this.aD();
                }

                @Override // com.beizi.ad.internal.c.b
                public void b() {
                }
            });
        } else {
            com.beizi.ad.internal.c.d.a(this.Z, this.X, this.f11280ac, new com.beizi.ad.internal.c.b() { // from class: com.beizi.fusion.work.g.b.3
                @Override // com.beizi.ad.internal.c.b
                public void a() {
                    b.this.aD();
                }

                @Override // com.beizi.ad.internal.c.b
                public void b() {
                }
            });
        }
        c cVar = this.Y;
        if (cVar != null) {
            cVar.a(this.X, new com.beizi.ad.internal.c.c() { // from class: com.beizi.fusion.work.g.b.5
                @Override // com.beizi.ad.internal.c.c
                public void a() {
                    b.this.aE();
                }
            });
        }
        if (ai.a(this.T.getRmc())) {
            new Handler().postDelayed(new Runnable() { // from class: com.beizi.fusion.work.g.b.6
                @Override // java.lang.Runnable
                public void run() {
                    b.this.b("optimize");
                }
            }, (long) ((Math.random() * 1000.0d) + 1000.0d));
        }
    }

    @Override // com.beizi.fusion.work.g.a
    public void aK() {
        ((a) this).f11256t.removeAllViews();
        ((a) this).f11256t.addView(this.X, new FrameLayout.LayoutParams(-1, -1));
        this.W.setLayoutParams(((a) this).f11256t.getLayoutParams());
    }

    @Override // com.beizi.fusion.work.g.a
    public String aL() {
        return this.Z.a();
    }

    @Override // com.beizi.fusion.work.g.a
    public String aM() {
        return this.Z.c();
    }

    @Override // com.beizi.fusion.work.g.a
    public String aN() {
        return this.Z.d();
    }

    @Override // com.beizi.fusion.work.g.a
    public String aO() {
        ArrayList<String> arrayListI;
        String strE = this.Z.e();
        return (!TextUtils.isEmpty(strE) || (arrayListI = this.Z.i()) == null || arrayListI.size() < 3) ? strE : arrayListI.get(2);
    }

    @Override // com.beizi.fusion.work.g.a
    public void aQ() {
        if (this.Z == null) {
            d(-991);
        } else {
            h.a((Context) null).a(this.Z.b(), new h.a() { // from class: com.beizi.fusion.work.g.b.2
                @Override // com.beizi.ad.internal.e.h.a
                public void a(Bitmap bitmap) {
                    b bVar = b.this;
                    bVar.X = com.beizi.ad.internal.c.d.a(bVar.N, bitmap, bVar.Z);
                    b.this.aG();
                }

                @Override // com.beizi.ad.internal.e.h.a
                public void a() {
                    b.this.a("sdk custom error ".concat("onBitmapLoadFailed"), 99991);
                }
            });
        }
    }

    @Override // com.beizi.fusion.tool.am.a
    public void a_() {
        if (this.f11279ab != null) {
            ac.a("BeiZis", "enter showBeiZiUnifiedCustomAd onScrollDistanceMeet  ");
            b("scroll");
        }
    }

    @Override // com.beizi.fusion.work.a
    public String aw() {
        c cVar = this.Y;
        if (cVar == null) {
            return null;
        }
        return cVar.h();
    }

    @Override // com.beizi.fusion.work.a
    public JSONObject ax() {
        c cVar = this.Y;
        if (cVar == null) {
            return null;
        }
        return cVar.m();
    }

    @Override // com.beizi.fusion.work.a
    public boolean ay() {
        c cVar = this.Y;
        if (cVar == null) {
            return false;
        }
        return cVar.q();
    }

    @Override // com.beizi.fusion.work.g.a
    public int az() {
        return R.layout.beizi_layout_unified_view;
    }

    @Override // com.beizi.fusion.tool.am.a
    public void b(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
    }

    @Override // com.beizi.fusion.work.g.a, com.beizi.fusion.work.a
    public String f() {
        return "BEIZI";
    }

    @Override // com.beizi.fusion.work.g.a, com.beizi.fusion.work.a
    public void l() {
        e eVar = this.Z;
        if (eVar != null) {
            eVar.g();
        }
        c cVar = this.Y;
        if (cVar != null) {
            cVar.f();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        b("regionalClick");
    }

    @Override // com.beizi.fusion.work.a
    protected void z() {
        if (!y() || this.Y == null) {
            return;
        }
        ag();
    }

    private AdSpacesBean.BuyerBean.OrderDataScrollViewOrderBean b(List<AdSpacesBean.BuyerBean.OrderDataScrollViewOrderBean> list, String str) {
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

    @Override // com.beizi.fusion.tool.aq.a
    public void b() {
        ac.a("BeiZis", "enter showBeiZiUnifiedCustomAd onShakeHappened  ");
        b("shake");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str) {
        try {
            if (this.Y != null) {
                this.f10979b.setClickType(str);
                ao();
                ac.a("BeiZis", "enter showBeiZiUnifiedCustomAd clickUnifiedAd clickEventType:" + str);
                int[] iArr = new int[2];
                this.X.getLocationOnScreen(iArr);
                this.X.measure(0, 0);
                int[] iArrA = ai.a(this.X.getMeasuredWidth() / 2, this.X.getMeasuredHeight() / 2);
                com.beizi.ad.internal.c.d.a(this.Z, this.X, String.valueOf(iArrA[0]), String.valueOf(iArrA[1]), String.valueOf(iArrA[0] + iArr[0]), String.valueOf(iArrA[1] + iArr[1]), 2);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.beizi.fusion.work.g.a
    public void a(List<View> list) {
        List<String> clickView = this.T.getClickView();
        if (clickView != null && clickView.size() > 0) {
            if (!clickView.contains("bg") && !clickView.contains("ad") && !clickView.contains("image")) {
                this.W.setVisibility(0);
            } else {
                this.W.setVisibility(8);
            }
            this.f11280ac.clear();
            this.f11280ac.addAll(list);
            return;
        }
        this.W.setVisibility(0);
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

    @Override // com.beizi.fusion.work.a
    public void a(Map map) {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        try {
            c cVar = this.Y;
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

    @Override // com.beizi.fusion.work.g.a
    public void b(boolean z10) {
        boolean zA = ai.a(this.T.getSlc());
        boolean zA2 = ai.a(this.T.getSlac());
        if (z10 && zA) {
            b("regionalClick");
        } else if (!z10 && zA2) {
            b("regionalClick");
        } else {
            aR();
        }
    }

    @Override // com.beizi.fusion.work.a
    public void b(Map map) {
        Object obj;
        Object obj2;
        Object obj3;
        try {
            c cVar = this.Y;
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
}
